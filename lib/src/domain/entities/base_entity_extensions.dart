import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/services/path_service.dart';

/// Path sanitization and validation
extension PathSanitizationExtension<T extends Object> on BaseEntityModel<T> {
  static final _pathService = PathService(config: EntityConfig());

  String sanitizePath(String? rawPath) => _pathService.sanitizePath(rawPath);
  bool isPathValid(String? path) => _pathService.isValidPath(path);
}

/// Path navigation and resolution
extension PathNavigationExtension<T extends Object> on BaseEntityModel<T> {
  static final _pathService = PathService(config: EntityConfig());

  List<String> splitPath(String? path) => _pathService.splitPath(path);
  String get canonicalPath => _pathService.getCanonicalPath(treePath, id.value);
  List<String> get pathParts => splitPath(treePath);
  List<String> get ancestorPaths => splitPath(treePath);
  String get absolutePath => _pathService.getAbsolutePath(treePath, id.value);
  List<String> buildHierarchyPaths() => treePath != null ? _pathService.buildAncestorPaths(treePath!) : [];
}

/// Hierarchy navigation and relationships
extension HierarchyNavigationExtension<T extends Object> on BaseEntityModel<T> {
  List<String> get ancestorPaths => ancestors.map((a) => a.value).toList();
  String get fullPath => treePath ?? id.value;

  bool isAncestorOf(BaseEntityModel<T> other) => other.ancestors.contains(id);
  bool isDescendantOf(BaseEntityModel<T> other) => ancestors.contains(other.id);
  bool isRelatedTo(BaseEntityModel<T> other) =>
      isAncestorOf(other) || isDescendantOf(other);

  int getDepthTo(BaseEntityModel<T> ancestor) {
    if (!isDescendantOf(ancestor)) return -1;
    final ancestorIndex = ancestors.indexOf(ancestor.id);
    return ancestors.length - ancestorIndex;
  }
}

/// Hierarchy validation
extension HierarchyValidationExtension<T extends Object> on BaseEntityModel<T> {
  bool hasCircularReference() {
    if (parentId == null) return false;
    return ancestors.contains(id);
  }

  BaseEntityModel<T> updateHierarchy({
    required EntityId? newParentId,
    String? newPath,
    List<EntityId>? newAncestors,
    bool validateDepth = true,
  }) {
    if (validateDepth &&
        newAncestors != null &&
        newAncestors.length >= SystemLimits.hierarchyDepthMax) {
      throw HierarchyValidationException(
        message: 'New hierarchy would exceed maximum depth',
        field: 'hierarchy',
        depth: newAncestors.length,
        path: newAncestors.map((a) => a.value).toList(),
      );
    }

    final updatedPath = newPath ?? treePath;
    final updatedAncestors = newAncestors ?? ancestors;
    final existingHistory =
        hierarchyMeta['parent_history'] as List<String>? ?? [];

    return copyWith(
      parentId: newParentId,
      treePath: updatedPath,
      ancestors: updatedAncestors,
      treeDepth: updatedAncestors.length,
      isHierarchyRoot: newParentId == null,
      isHierarchyLeaf: childIds.isEmpty,
      hierarchyMeta: {
        ...hierarchyMeta,
        'last_hierarchy_update': DateTime.now().toIso8601String(),
        'parent_history': [...existingHistory, newParentId?.value ?? 'root'],
      },
    );
  }
}

/// Child management
extension HierarchyManagementExtension<T extends Object> on BaseEntityModel<T> {
  BaseEntityModel<T> addChild(EntityId childId) {
    if (childIds.contains(childId)) return this;

    final updatedChildren = [...childIds, childId];
    return copyWith(
      childIds: updatedChildren,
      isHierarchyLeaf: false,
      hierarchyMeta: {
        ...hierarchyMeta,
        'children_count': updatedChildren.length,
        'last_child_added': DateTime.now().toIso8601String(),
      },
    );
  }

  BaseEntityModel<T> removeChild(EntityId childId) {
    if (!childIds.contains(childId)) return this;

    final updatedChildren = childIds.where((id) => id != childId).toList();
    return copyWith(
      childIds: updatedChildren,
      isHierarchyLeaf: updatedChildren.isEmpty,
      hierarchyMeta: {
        ...hierarchyMeta,
        'children_count': updatedChildren.length,
        'last_child_removed': DateTime.now().toIso8601String(),
      },
    );
  }
}

/// Hierarchy indexing and search
extension HierarchyIndexingExtension<T extends Object> on BaseEntityModel<T> {
  Map<String, Object> buildHierarchyIndex() {
    return {
      'depth_level': treeDepth,
      'parent_type': parentId?.value ?? 'root',
      'ancestry_path': ancestors.map((a) => a.value).join('|'),
      'child_count': childIds.length,
      'is_leaf': isHierarchyLeaf,
      'is_root': isHierarchyRoot,
      ...hierarchyMeta,
    };
  }
}

/// AI embeddings and scoring
extension AIEmbeddingExtension<T extends Object> on BaseEntityModel<T> {
  bool get hasEmbeddings => aiVectors.isNotEmpty;
  bool get hasScores => aiScores.isNotEmpty;
  bool get hasValidAiVersion => aiVer != null && aiVer!.isNotEmpty;

  double? getScore(String modelId) => aiScores[modelId];
  List<double>? getVector(String modelId) => aiVectors[modelId];
  bool hasModel(String modelId) => aiVectors.containsKey(modelId);
}

/// AI processing and model execution
extension AIProcessingExtension<T extends Object> on BaseEntityModel<T> {
  BaseEntityModel<T> applyAIProcessing({
    required String modelId,
    required Map<String, dynamic> input,
    required Map<String, dynamic> output,
    List<double>? embeddings,
    double? confidence,
    bool useCache = true,
  }) {
    final timestamp = DateTime.now();
    final newEmbeddings =
        embeddings != null ? {...aiVectors, modelId: embeddings} : aiVectors;

    final cacheKey =
        useCache ? _generateCacheKey(modelId, input.toString()) : null;
    final newMeta = {
      ...aiMeta,
      if (cacheKey != null)
        'cache_$cacheKey': json.encode({
          'output': output,
          'timestamp': timestamp.toIso8601String(),
          'confidence': confidence,
          'model_version': aiVer,
        }),
    };

    return copyWith(
      aiVectors: newEmbeddings,
      aiMeta: newMeta,
      aiScores: {...aiScores, if (confidence != null) modelId: confidence},
      aiLastRun: timestamp,
    );
  }
}

/// AI result caching
extension AICacheExtension<T extends Object> on BaseEntityModel<T> {
  bool hasCachedResult(String modelId, Map<String, dynamic> input) {
    final cacheKey = _generateCacheKey(modelId, input.toString());
    return aiMeta.containsKey('cache_$cacheKey');
  }

  Map<String, dynamic>? getCachedResult(
      String modelId, Map<String, dynamic> input,
      {bool requireLatestVersion = false}) {
    final cacheKey = _generateCacheKey(modelId, input.toString());
    final cached = aiMeta['cache_$cacheKey'];

    if (cached == null) return null;

    final result = json.decode(cached) as Map<String, dynamic>;

    if (requireLatestVersion) {
      final cachedVersion = result['model_version'];
      if (cachedVersion != aiVer) return null;
    }

    return result;
  }

  String _generateCacheKey(String modelId, String input) {
    final hash = sha256.convert(utf8.encode(input)).toString();
    return '$modelId:$hash';
  }
}

/// History tracking
extension HistoryExtension<T extends Object> on BaseEntityModel<T> {
  static const _historyMaxSize = 50;

  BaseEntityModel<T> recordAction(UserAction action, {bool isAccessAction = false}) {
    final history = isAccessAction ? accessLog : modHistory;
    final updatedHistory = [action, ...history.take(_historyMaxSize - 1)];

    return copyWith(
      accessLog: isAccessAction ? updatedHistory : accessLog,
      modHistory: isAccessAction ? modHistory : updatedHistory,
    );
  }

  BaseEntityModel<T> pruneHistory() {
    return copyWith(
      accessLog: accessLog.take(_historyMaxSize).toList(),
      modHistory: modHistory.take(_historyMaxSize).toList(),
    );
  }
}

/// Version validation and incrementation
extension EntityVersionExtension<T extends Object> on BaseEntityModel<T> {
  bool hasValidVersion() => _isValidVersionFormat(schemaVer);
  bool hasValidSchemaVersion() => _isValidVersionFormat(schemaVer);
  bool hasValidDataVersion() => dataVer > 0;
  
  bool _isValidVersionFormat(String version) {
    try {
      final parts = version.split('.');
      return parts.length == 3 && parts.every((p) => int.tryParse(p) != null);
    } catch (_) {
      return false;
    }
  }

  BaseEntityModel<T> incrementVersion({bool isStructural = false, String? nodeId}) {
    return copyWith(
      dataVer: isStructural ? dataVer : dataVer + 1,
      structVer: isStructural ? structVer + 1 : structVer,
      verVectors: {
        ...verVectors,
        'node-${nodeId ?? "local"}': dataVer + 1,
      },
    );
  }
}

/// Version conflict detection and resolution
extension VersionConflictExtension<T extends Object> on BaseEntityModel<T> {
  bool hasVersionConflict(BaseEntityModel<T> other) =>
      structVer != other.structVer ||
      dataVer != other.dataVer ||
      _hasVersionVectorConflict(other);

  bool _hasVersionVectorConflict(BaseEntityModel<T> other) =>
      verVectors.entries.any((entry) =>
          other.verVectors[entry.key] != null &&
          entry.value > other.verVectors[entry.key]!);

  BaseEntityModel<T> resolveVersionConflict(BaseEntityModel<T> serverVersion) {  // Renamed from resolveConflict
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

/// Core locking functionality
extension LockingExtension<T extends Object> on BaseEntityModel<T> {
  bool get isLocked => 
      lockOwner != null && (lockExpiry?.isAfter(DateTime.now()) ?? false);

  Duration _normalizeLockDuration(Duration duration) {
    if (duration < LockConfig.minimumDuration) return LockConfig.minimumDuration;
    if (duration > LockConfig.maximumDuration) return LockConfig.maximumDuration;
    return duration;
  }

  BaseEntityModel<T> acquireLock(  // Renamed from setLock
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

/// Distributed lock coordination
extension DistributedLockExtension<T extends Object> on BaseEntityModel<T> {
  bool hasLockConflict(BaseEntityModel<T> other) {
    return distLockId != null &&
        other.distLockId != null &&
        distLockId != other.distLockId;
  }
}

