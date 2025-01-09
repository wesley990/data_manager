import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/domain/value_objects/user_action.dart';

/// Tree Path Management Extension
extension TreePathExtension<T extends Object> on BaseEntity<T> {
  String sanitizePath(String? rawPath) {
    if (rawPath == null || rawPath.isEmpty) return '';

    try {
      final decodedPath = Uri.decodeFull(rawPath);

      if (decodedPath.length > SystemLimits.pathMaxLength) {
        throw ValidationException('Path exceeds maximum length');
      }

      final segments = decodedPath
          .split(EntityDefaults.pathSeparator)
          .where((s) => s.isNotEmpty)
          .map(_sanitizePathSegment)
          .where((s) => s.isNotEmpty)
          .toList();

      if (segments.any((s) => s.length > SystemLimits.pathMaxSegment)) {
        throw ValidationException('Path segment exceeds maximum length');
      }

      return segments.isEmpty
          ? ''
          : '${EntityDefaults.pathSeparator}${segments.join(EntityDefaults.pathSeparator)}${EntityDefaults.pathSeparator}';
    } catch (e) {
      throw PathValidationException('Invalid path format: ${e.toString()}');
    }
  }

  String _sanitizePathSegment(String segment) {
    final cleaned = segment.replaceAll(RegExp(EntityDefaults.invalidPathChars), '');
    final trimmed = cleaned.trim().replaceAll(RegExp(r'^\.+|\.+$'), '');
    return Uri.encodeComponent(trimmed)
        .replaceAll(EntityDefaults.encodedPathSeparator, EntityDefaults.pathSeparator);
  }

  bool isPathValid(String? path) {
    if (path == null) return true;
    try {
      return sanitizePath(path) == path;
    } catch (_) {
      return false;
    }
  }

  List<String> splitPath(String? path) {
    return sanitizePath(path)
        .split(EntityDefaults.pathSeparator)
        .where((s) => s.isNotEmpty)
        .toList();
  }

  String get canonicalPath => treePath?.toLowerCase() ?? id.value;
  List<String> get pathParts => treePath?.split(EntityDefaults.pathSeparator) ?? [id.value];
  List<String> get ancestorPaths => splitPath(treePath);

  String get absolutePath {
    final basePath = treePath ?? '';
    final entityPart = id.value;
    return sanitizePath('$basePath${EntityDefaults.pathSeparator}$entityPart');
  }

  List<String> buildTreePaths() {
    final paths = <String>[];
    final parts = treePath?.split(EntityDefaults.pathSeparator) ?? [];
    String currentPath = '';

    for (final part in parts) {
      currentPath = currentPath.isEmpty ? part : '$currentPath${EntityDefaults.pathSeparator}$part';
      paths.add(currentPath);
    }

    return paths;
  }

  Map<String, Object> buildTreeIndex() {
    return {
      'depth_name': '${treeDepth}_${name.toLowerCase()}',
      'parent_type': '${parentId ?? ''}_${treeLevel ?? ''}',
      'ancestry': ancestors.map((e) => e.value).join('|'),
    };
  }
}

/// History Management Extension
extension HistoryExtension<T extends Object> on BaseEntity<T> {
  static const _historyMaxSize = 50;

  BaseEntity<T> recordAction(UserAction action, {bool isAccessAction = false}) {
    final history = isAccessAction ? accessLog : modHistory;
    final updatedHistory = [action, ...history.take(_historyMaxSize - 1)];

    return copyWith(
      accessLog: isAccessAction ? updatedHistory : accessLog,
      modHistory: isAccessAction ? modHistory : updatedHistory,
    );
  }

  BaseEntity<T> pruneHistory() {
    return copyWith(
      accessLog: accessLog.take(_historyMaxSize).toList(),
      modHistory: modHistory.take(_historyMaxSize).toList(),
    );
  }
}

/// Version Control Extension
extension VersionControlExtension<T extends Object> on BaseEntity<T> {
  // Combine version management and locking
  bool hasValidVersion() {
    try {
      final parts = schemaVer.split('.');
      return parts.length == 3 && parts.every((p) => int.tryParse(p) != null);
    } catch (_) {
      return false;
    }
  }

  BaseEntity<T> incrementVersion({bool isStructural = false, String? nodeId}) {
    return copyWith(
      dataVer: isStructural ? dataVer : dataVer + 1,
      structVer: isStructural ? structVer + 1 : structVer,
      verVectors: {
        ...verVectors,
        'node-${nodeId ?? "local"}': dataVer + 1,
      },
    );
  }

  bool hasConflict(BaseEntity<T> other) =>
      structVer != other.structVer ||
      dataVer != other.dataVer ||
      _hasVersionVectorConflict(other) ||
      hasLockConflict(other);

  bool _hasVersionVectorConflict(BaseEntity<T> other) =>
      verVectors.entries.any((entry) =>
          other.verVectors[entry.key] != null &&
          entry.value > other.verVectors[entry.key]!);

  BaseEntity<T> updateWithConflictResolution(BaseEntity<T> serverVersion) {
    final comparison = _compareVersions(schemaVer, serverVersion.schemaVer);
    if (comparison > 0) {
      return copyWith(
        syncMeta: {
          ...syncMeta,
          'conflictResolved': 'localWins',
          'serverVersion': serverVersion.schemaVer,
        },
      );
    } else if (comparison < 0) {
      return serverVersion.copyWith(
        syncMeta: {
          ...serverVersion.syncMeta,
          'conflictResolved': 'serverWins',
          'localVersion': schemaVer,
        },
      );
    }
    return this;
  }

  int _compareVersions(String v1, String v2) {
    final v1Parts = v1.split('.').map(int.parse).toList();
    final v2Parts = v2.split('.').map(int.parse).toList();
    for (var i = 0; i < 3; i++) {
      if (v1Parts[i] != v2Parts[i]) {
        return v1Parts[i].compareTo(v2Parts[i]);
      }
    }
    return 0;
  }
}

/// Lock Management Extension
extension LockExtension<T extends Object> on BaseEntity<T> {
  bool get isLockActive =>
      lockOwner != null && (lockExpiry?.isAfter(DateTime.now()) ?? false);

  Duration _normalizeLockDuration(Duration duration) {
    if (duration < LockConfig.minimumDuration) return LockConfig.minimumDuration;
    if (duration > LockConfig.maximumDuration) return LockConfig.maximumDuration;
    return duration;
  }

  bool hasLockConflict(BaseEntity<T> other) {
    return distLockId != null &&
        other.distLockId != null &&
        distLockId != other.distLockId;
  }

  BaseEntity<T> setLock(
    UserAction user, {
    Duration? duration,
    bool isDistributed = false,
    String? nodeId,
  }) {
    final lockDuration =
        _normalizeLockDuration(duration ?? LockConfig.defaultTimeout);

    return copyWith(
      lockOwner: user,
      lockExpiry: DateTime.now().add(lockDuration),
      distLockId: isDistributed
          ? '${id.value}-$nodeId-${DateTime.now().millisecondsSinceEpoch}'
          : null,
      distLockNode: isDistributed ? nodeId : null,
    );
  }
}

/// AI Processing Extension
extension AIExtension<T extends Object> on BaseEntity<T> {
  // Combine AI/LLM/RAG/CAG capabilities
  BaseEntity<T> processWithAI({
    required String modelId,
    required Map<String, dynamic> input,
    required Map<String, dynamic> output,
    List<double>? embeddings,
    double? confidence,
    bool useCache = true,
  }) {
    final timestamp = DateTime.now();

    // Handle embeddings
    final newEmbeddings = embeddings != null
        ? {...aiVectors, modelId: embeddings}
        : aiVectors;

    // Handle cache
    final cacheKey =
        useCache ? _generateCacheKey(modelId, input.toString()) : null;
    final newMeta = {
      ...aiMeta,
      if (cacheKey != null)
        'cache_$cacheKey': {
          'output': output,
          'timestamp': timestamp.toIso8601String(),
          'confidence': confidence,
        }.toString(),
    };

    return copyWith(
      aiVectors: newEmbeddings,
      aiMeta: newMeta,
      aiScores: {...aiScores, if (confidence != null) modelId: confidence},
      aiLastRun: timestamp,
    );
  }

  Map<String, dynamic>? getCachedResult(
      String modelId, Map<String, dynamic> input) {
    final cacheKey = _generateCacheKey(modelId, input.toString());
    final cached = aiMeta['cache_$cacheKey'];
    return cached != null ? json.decode(cached) : null;
  }

  String _generateCacheKey(String modelId, String input) {
    final hash = sha256.convert(utf8.encode(input)).toString();
    return '$modelId:$hash';
  }
}
