import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/services/ai_service.dart';
import 'package:data_manager/src/services/hierarchy_service.dart';
import 'package:data_manager/src/services/lock_service.dart';
import 'package:data_manager/src/services/path_service.dart';
import 'package:data_manager/src/services/version_service.dart';

/// Shared service instances
final _pathService = PathService(config: EntityConfig());
final _hierarchyService = HierarchyService(config: EntityConfig());
final _lockService = LockService(config: EntityConfig());
final _versionService = VersionService();
final _aiService = AIService();

/// Path sanitization and validation
extension PathSanitizationExtension<T extends Object> on BaseEntityModel<T> {
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

  bool isAncestorOf(BaseEntityModel<T> other) => 
      _hierarchyService.isAncestorOf(ancestors, other.id);
      
  bool isDescendantOf(BaseEntityModel<T> other) =>
      _hierarchyService.isDescendantOf(id, other.ancestors);

  bool isRelatedTo(BaseEntityModel<T> other) =>
      isAncestorOf(other) || isDescendantOf(other);

  int getDepthTo(BaseEntityModel<T> ancestor) =>
      _hierarchyService.getDepthTo(ancestors, ancestor.id);
}

/// Hierarchy validation
extension HierarchyValidationExtension<T extends Object> on BaseEntityModel<T> {
  bool hasCircularReference() =>
      _hierarchyService.hasCircularReference(id, parentId, ancestors);

  BaseEntityModel<T> updateHierarchy({
    required EntityId? newParentId,
    String? newPath,
    List<EntityId>? newAncestors,
    bool validateDepth = true,  
  }) {
    if (validateDepth && newAncestors != null) {
      _hierarchyService.validateHierarchyDepth(newAncestors);
    }

    final updatedPath = newPath ?? treePath;
    final updatedAncestors = newAncestors ?? ancestors;
    final updatedMeta = _hierarchyService.getUpdatedHierarchyMeta(
      hierarchyMeta,
      newParentId,
    );

    return copyWith(
      parentId: newParentId,
      treePath: updatedPath,
      ancestors: updatedAncestors,
      treeDepth: updatedAncestors.length,
      isHierarchyRoot: newParentId == null,
      isHierarchyLeaf: childIds.isEmpty,
      hierarchyMeta: updatedMeta,
    );
  }
}

/// Child management  
extension HierarchyManagementExtension<T extends Object> on BaseEntityModel<T> {
  BaseEntityModel<T> addChild(EntityId childId) {
    final updatedChildren = _hierarchyService.addChild(childIds, childId);
    if (updatedChildren == childIds) return this;

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
    final updatedChildren = _hierarchyService.removeChild(childIds, childId);
    if (updatedChildren.length == childIds.length) return this;

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
    return _hierarchyService.buildHierarchyIndex(
      depth: treeDepth,
      parentId: parentId,
      ancestors: ancestors,
      children: childIds,
      isLeaf: isHierarchyLeaf,
      isRoot: isHierarchyRoot,
      meta: hierarchyMeta,
    );
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

    final newMeta = _aiService.getProcessingMeta(
      currentMeta: aiMeta,
      modelId: modelId,
      input: input,
      output: output,
      timestamp: timestamp,
      confidence: confidence,
      modelVersion: aiVer,
      useCache: useCache,
    );

    return copyWith(
      aiVectors: newEmbeddings,
      aiMeta: newMeta.map((key, value) => MapEntry(key, value.toString())),
      aiScores: {...aiScores, if (confidence != null) modelId: confidence},
      aiLastRun: timestamp,
    );
  }
}

/// AI result caching
extension AICacheExtension<T extends Object> on BaseEntityModel<T> {
  bool hasCachedResult(String modelId, Map<String, dynamic> input) {
    final cacheKey = _aiService.generateCacheKey(modelId, input.toString());
    return _aiService.hasCachedResult(aiMeta, cacheKey);
  }

  Map<String, dynamic>? getCachedResult(
    String modelId,
    Map<String, dynamic> input,
    {bool requireLatestVersion = false}
  ) {
    final cacheKey = _aiService.generateCacheKey(modelId, input.toString());
    return _aiService.getCachedResult(
      aiMeta,
      cacheKey,
      aiVer,
      requireLatestVersion: requireLatestVersion,
    );
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
  bool hasValidVersion() => _versionService.isValidVersionFormat(schemaVer);
  bool hasValidSchemaVersion() => _versionService.isValidVersionFormat(schemaVer);
  bool hasValidDataVersion() => dataVer > 0;

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
      _versionService.hasVersionConflict(
        structVer,
        dataVer,
        verVectors,
        other,
      );

  BaseEntityModel<T> resolveVersionConflict(BaseEntityModel<T> serverVersion) {
    final comparison = _versionService.compareVersions(
      schemaVer,
      serverVersion.schemaVer,
    );

    if (comparison > 0) {
      return copyWith(
        syncMeta: _versionService.getResolutionMeta(
          syncMeta,
          'localWins',
          serverVersion.schemaVer,
        ),
      );
    } else if (comparison < 0) {
      return serverVersion.copyWith(
        syncMeta: _versionService.getResolutionMeta(
          serverVersion.syncMeta,
          'serverWins', 
          schemaVer,
        ),
      );
    }
    return this;
  }
}

/// Core locking functionality
extension LockingExtension<T extends Object> on BaseEntityModel<T> {
  bool get isLocked => _lockService.isLocked(lockOwner, lockExpiry);

  Duration normalizeLockDuration(Duration duration) =>
      _lockService.normalizeLockDuration(duration);

  BaseEntityModel<T> acquireLock(
    UserAction user, {
    Duration? duration,
    bool isDistributed = false,
    String? nodeId,
  }) {
    final lockDuration = normalizeLockDuration(
      duration ?? LockConfig.defaultTimeout,
    );

    final distLockId = _lockService.generateDistributedLockId(
      id,
      nodeId,
      isDistributed,
    );

    return copyWith(
      lockOwner: user,
      lockExpiry: DateTime.now().add(lockDuration),
      distLockId: distLockId,
      distLockNode: isDistributed ? nodeId : null,
    );
  }
}

/// Distributed lock coordination
extension DistributedLockExtension<T extends Object> on BaseEntityModel<T> {
  bool hasLockConflict(BaseEntityModel<T> other) =>
      _lockService.hasLockConflict(distLockId, other.distLockId);
}

