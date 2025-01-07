import 'dart:convert';
import 'package:crypto/crypto.dart';

import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/domain/value_objects/user_action.dart';

///  Path Management Extension
extension PathManagement<T extends Object> on BaseEntity<T> {
  // Core path operations
  String normalizePath(String? rawPath) {
    if (rawPath == null || rawPath.isEmpty) return '';

    try {
      // Decode URI encoded path
      final decodedPath = Uri.decodeFull(rawPath);

      // Validate path length
      if (decodedPath.length > PathConstants.maxPathLength) {
        throw ValidationException('Path exceeds maximum length');
      }

      // Split and clean path segments
      final segments = decodedPath
          .split(PathConstants.pathSeparator)
          .where((s) => s.isNotEmpty)
          .map(_normalizePathSegment)
          .where((s) => s.isNotEmpty)
          .toList();

      // Validate segments
      if (segments.any((s) => s.length > PathConstants.maxSegmentLength)) {
        throw ValidationException('Path segment exceeds maximum length');
      }

      return segments.isEmpty
          ? ''
          : '${PathConstants.pathSeparator}${segments.join(PathConstants.pathSeparator)}${PathConstants.pathSeparator}';
    } catch (e) {
      throw PathValidationException('Invalid path format: ${e.toString()}');
    }
  }

  String _normalizePathSegment(String segment) {
    // Remove invalid characters
    final cleaned =
        segment.replaceAll(RegExp(PathConstants.invalidPathChars), '');

    // Trim whitespace and dots
    final trimmed = cleaned.trim().replaceAll(RegExp(r'^\.+|\.+$'), '');

    // URI encode the segment (preserve path separator)
    return Uri.encodeComponent(trimmed).replaceAll(
        PathConstants.encodedPathSeparator, PathConstants.pathSeparator);
  }

  bool isValidPath(String? path) {
    if (path == null) return true;
    try {
      return normalizePath(path) == path;
    } catch (_) {
      return false;
    }
  }

  List<String> parsePathSegments(String? path) {
    return normalizePath(path)
        .split(PathConstants.pathSeparator)
        .where((s) => s.isNotEmpty)
        .toList();
  }

  String get normalizedPath => hierarchyPath?.toLowerCase() ?? entityId.value;
  List<String> get pathSegments =>
      hierarchyPath?.split('/') ?? [entityId.value];

  List<String> getAncestors() => parsePathSegments(hierarchyPath);

  String get fullPath {
    final basePath = hierarchyPath ?? '';
    final entitySegment = entityId.value;
    return normalizePath(
        '$basePath${PathConstants.pathSeparator}$entitySegment');
  }
}

///  Concurrency Control Extension
extension ConcurrencyControl<T extends Object> on BaseEntity<T> {
  // Combine version management and locking
  bool hasValidVersion() {
    try {
      final parts = schemaVersion.split('.');
      return parts.length == 3 && parts.every((p) => int.tryParse(p) != null);
    } catch (_) {
      return false;
    }
  }

  BaseEntity<T> incrementVersion({
    bool isStructural = false,
    String? nodeId,
  }) {
    return copyWith(
      entityVersion: isStructural ? entityVersion : entityVersion + 1,
      structureVersion: isStructural ? structureVersion + 1 : structureVersion,
      versionVectors: {
        ...versionVectors,
        'node-${nodeId ?? "local"}': entityVersion + 1,
      },
    );
  }

  bool hasLockConflict(BaseEntity<T> other) {
    return distributedLockId != null &&
        other.distributedLockId != null &&
        distributedLockId != other.distributedLockId;
  }

  bool hasConflict(BaseEntity<T> other) =>
      structureVersion != other.structureVersion ||
      entityVersion != other.entityVersion ||
      _hasVersionVectorConflict(other) ||
      hasLockConflict(other);

  bool _hasVersionVectorConflict(BaseEntity<T> other) =>
      versionVectors.entries.any((entry) =>
          other.versionVectors[entry.key] != null &&
          entry.value > other.versionVectors[entry.key]!);

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

  BaseEntity<T> updateWithConflictResolution(BaseEntity<T> serverVersion) {
    final comparison =
        _compareVersions(schemaVersion, serverVersion.schemaVersion);
    if (comparison > 0) {
      return copyWith(
        syncMetadata: {
          ...syncMetadata,
          'conflictResolved': 'localWins',
          'serverVersion': serverVersion.schemaVersion,
        },
      );
    } else if (comparison < 0) {
      return serverVersion.copyWith(
        syncMetadata: {
          ...serverVersion.syncMetadata,
          'conflictResolved': 'serverWins',
          'localVersion': schemaVersion,
        },
      );
    }
    return this;
  }
}

///  History Tracking Extension
extension TrackingManagement<T extends Object> on BaseEntity<T> {
  static const _maxHistorySize = EntityConstants.maxHistoryLength;

  BaseEntity<T> addToHistory(UserAction action, {bool isAccess = false}) {
    final history = isAccess ? accessHistory : modificationHistory;
    final newHistory = [action, ...history.take(_maxHistorySize - 1)];

    return copyWith(
      accessHistory: isAccess ? newHistory : accessHistory,
      modificationHistory: isAccess ? modificationHistory : newHistory,
    );
  }

  BaseEntity<T> trimHistory() {
    return copyWith(
      accessHistory: accessHistory.take(_maxHistorySize).toList(),
      modificationHistory: modificationHistory.take(_maxHistorySize).toList(),
    );
  }
}

///  Lock Management Extension
extension LockManagement<T extends Object> on BaseEntity<T> {
  bool get isLocked =>
      lockedBy != null && (lockExpiresAt?.isAfter(DateTime.now()) ?? false);

  Duration _validateLockDuration(Duration duration) {
    if (duration < EntityConstants.minimumLockDuration) {
      return EntityConstants.minimumLockDuration;
    }
    if (duration > EntityConstants.maximumLockDuration) {
      return EntityConstants.maximumLockDuration;
    }
    return duration;
  }

  BaseEntity<T> acquireLock(
    UserAction user, {
    Duration? timeout,
    bool distributed = false,
    String? nodeId,
  }) {
    final duration =
        _validateLockDuration(timeout ?? EntityConstants.defaultLockTimeout);

    return copyWith(
      lockedBy: user,
      lockExpiresAt: DateTime.now().add(duration),
      distributedLockId: distributed
          ? '${entityId.value}-$nodeId-${DateTime.now().millisecondsSinceEpoch}'
          : null,
      distributedLockNode: distributed ? nodeId : null,
    );
  }
}

///  AI Integration Extension
extension AIIntegration<T extends Object> on BaseEntity<T> {
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
        ? {...aiEmbeddings, modelId: embeddings}
        : aiEmbeddings;

    // Handle cache
    final cacheKey =
        useCache ? _generateCacheKey(modelId, input.toString()) : null;
    final newMetadata = {
      ...aiMetadata,
      if (cacheKey != null)
        'cache_$cacheKey': {
          'output': output,
          'timestamp': timestamp.toIso8601String(),
          'confidence': confidence,
        }.toString(),
    };

    return copyWith(
      aiEmbeddings: newEmbeddings,
      aiMetadata: newMetadata,
      aiScores: {...aiScores, if (confidence != null) modelId: confidence},
      lastAiProcessingTime: timestamp,
    );
  }

  Map<String, dynamic>? getCachedResult(
      String modelId, Map<String, dynamic> input) {
    final cacheKey = _generateCacheKey(modelId, input.toString());
    final cached = aiMetadata['cache_$cacheKey'];
    return cached != null ? json.decode(cached) : null;
  }

  String _generateCacheKey(String modelId, String input) {
    final hash = sha256.convert(utf8.encode(input)).toString();
    return '$modelId:$hash';
  }
}
