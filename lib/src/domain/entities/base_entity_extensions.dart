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
  List<String> splitPath(String? path) => _pathService.splitPath(path);
  String get canonicalPath => _pathService.getCanonicalPath(hierarchy.treePath, id.value);
  List<String> get pathParts => _pathService.splitPath(hierarchy.treePath);
  List<String> get ancestorPaths => _pathService.buildAncestorPaths(hierarchy.treePath ?? '');
  String get absolutePath => _pathService.getAbsolutePath(hierarchy.treePath, id.value);
}

/// Hierarchy navigation and relationships
extension HierarchyNavigationExtension<T extends Object> on BaseEntityModel<T> {
  List<String> get ancestorPaths => hierarchy.ancestors.map((a) => a.value).toList();
  String get fullPath => hierarchy.treePath ?? id.value;

  bool isAncestorOf(BaseEntityModel<T> other) => 
      _hierarchyService.isAncestorOf(hierarchy.ancestors, other.id);
      
  bool isDescendantOf(BaseEntityModel<T> other) =>
      _hierarchyService.isDescendantOf(id, other.hierarchy.ancestors);

  bool isRelatedTo(BaseEntityModel<T> other) =>
      isAncestorOf(other) || isDescendantOf(other);

  int getDepthTo(BaseEntityModel<T> ancestor) =>
      _hierarchyService.getDepthTo(hierarchy.ancestors, ancestor.id);
}

/// Hierarchy validation
extension HierarchyValidationExtension<T extends Object> on BaseEntityModel<T> {
  bool hasCircularReference() =>
      _hierarchyService.hasCircularReference(id, hierarchy.parentId, hierarchy.ancestors);

  BaseEntityModel<T> updateHierarchy({
    required EntityId? newParentId,
    String? newPath,
    List<EntityId>? newAncestors,
    bool validateDepth = true,  
  }) {
    if (validateDepth && newAncestors != null) {
      _hierarchyService.validateHierarchyDepth(newAncestors);
    }

    final updatedPath = newPath ?? hierarchy.treePath;
    final updatedAncestors = newAncestors ?? hierarchy.ancestors;
    final updatedMeta = _hierarchyService.getUpdatedHierarchyMeta(
      hierarchy.hierarchyMeta,
      newParentId,
    );

    return copyWith(
      hierarchy: hierarchy.copyWith(
        parentId: newParentId,
        treePath: updatedPath,
        ancestors: updatedAncestors,
        treeDepth: updatedAncestors.length,
        isHierarchyRoot: newParentId == null,
        isHierarchyLeaf: hierarchy.childIds.isEmpty,
        hierarchyMeta: updatedMeta,
      ),
    );
  }
}

/// Child management  
extension HierarchyManagementExtension<T extends Object> on BaseEntityModel<T> {
  BaseEntityModel<T> addChild(EntityId childId) {
    final updatedChildren = _hierarchyService.addChild(hierarchy.childIds, childId);
    if (updatedChildren == hierarchy.childIds) return this;

    return copyWith(
      hierarchy: hierarchy.copyWith(
        childIds: updatedChildren,
        isHierarchyLeaf: false,
        hierarchyMeta: {
          ...hierarchy.hierarchyMeta,
          'children_count': updatedChildren.length,
          'last_child_added': DateTime.now().toIso8601String(),
        },
      ),
    );
  }

  BaseEntityModel<T> removeChild(EntityId childId) {
    final updatedChildren = _hierarchyService.removeChild(hierarchy.childIds, childId);
    if (updatedChildren.length == hierarchy.childIds.length) return this;

    return copyWith(
      hierarchy: hierarchy.copyWith(
        childIds: updatedChildren,
        isHierarchyLeaf: updatedChildren.isEmpty,
        hierarchyMeta: {
          ...hierarchy.hierarchyMeta,
          'children_count': updatedChildren.length,
          'last_child_removed': DateTime.now().toIso8601String(),
        },
      ),
    );
  }
}

/// Hierarchy indexing and search
extension HierarchyIndexingExtension<T extends Object> on BaseEntityModel<T> {
  Map<String, Object> buildHierarchyIndex() {
    return _hierarchyService.buildHierarchyIndex(
      depth: hierarchy.treeDepth,
      parentId: hierarchy.parentId,
      ancestors: hierarchy.ancestors,
      children: hierarchy.childIds,
      isLeaf: hierarchy.isHierarchyLeaf,
      isRoot: hierarchy.isHierarchyRoot,
      meta: hierarchy.hierarchyMeta,
    );
  }
}

/// AI embeddings and scoring
extension AIEmbeddingExtension<T extends Object> on BaseEntityModel<T> {
  bool get hasEmbeddings => ai.aiVectors.isNotEmpty;
  bool get hasScores => ai.aiScores.isNotEmpty;
  bool get hasValidAiVersion => ai.aiVer != null && ai.aiVer!.isNotEmpty;

  double? getScore(String modelId) => ai.aiScores[modelId];
  List<double>? getVector(String modelId) => ai.aiVectors[modelId];
  bool hasModel(String modelId) => ai.aiVectors.containsKey(modelId);
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
        embeddings != null ? {...ai.aiVectors, modelId: embeddings} : ai.aiVectors;

    final newMeta = _aiService.getProcessingMeta(
      currentMeta: ai.aiMeta,
      modelId: modelId,
      input: input,
      output: output,
      timestamp: timestamp,
      confidence: confidence,
      modelVersion: ai.aiVer,
      useCache: useCache,
    );

    return copyWith(
      ai: ai.copyWith(
        aiVectors: newEmbeddings,
        aiMeta: newMeta.map((key, value) => MapEntry(key, value.toString())),
        aiScores: {...ai.aiScores, if (confidence != null) modelId: confidence},
        aiLastRun: timestamp,
      ),
    );
  }
}

/// AI result caching
extension AICacheExtension<T extends Object> on BaseEntityModel<T> {
  bool hasCachedResult(String modelId, Map<String, dynamic> input) {
    final cacheKey = _aiService.generateCacheKey(modelId, input.toString());
    return _aiService.hasCachedResult(ai.aiMeta, cacheKey);
  }

  Map<String, dynamic>? getCachedResult(
    String modelId,
    Map<String, dynamic> input,
    {bool requireLatestVersion = false}
  ) {
    final cacheKey = _aiService.generateCacheKey(modelId, input.toString());
    return _aiService.getCachedResult(
      ai.aiMeta,
      cacheKey,
      ai.aiVer,
      requireLatestVersion: requireLatestVersion,
    );
  }
}

/// History tracking
extension HistoryExtension<T extends Object> on BaseEntityModel<T> {
  static const _historyMaxSize = 50;

  BaseEntityModel<T> recordAction(UserAction action, {bool isAccessAction = false}) {
    final history = isAccessAction ? security.accessLog : security.modHistory;
    final updatedHistory = [action, ...history.take(_historyMaxSize - 1)];

    return copyWith(
      security: security.copyWith(
        accessLog: isAccessAction ? updatedHistory : security.accessLog,
        modHistory: isAccessAction ? security.modHistory : updatedHistory,
      ),
    );
  }

  BaseEntityModel<T> pruneHistory() {
    return copyWith(
      security: security.copyWith(
        accessLog: security.accessLog.take(_historyMaxSize).toList(),
        modHistory: security.modHistory.take(_historyMaxSize).toList(),
      ),
    );
  }
}

/// Version validation and incrementation
extension EntityVersionExtension<T extends Object> on BaseEntityModel<T> {
  bool hasValidVersion() => _versionService.isValidVersionFormat(version.schemaVer);
  bool hasValidSchemaVersion() => _versionService.isValidVersionFormat(version.schemaVer);
  bool hasValidDataVersion() => version.dataVer > 0;

  BaseEntityModel<T> incrementVersion({bool isStructural = false, String? nodeId}) {
    return copyWith(
      versioning: version.copyWith(
        dataVer: isStructural ? version.dataVer : version.dataVer + 1,
        structVer: isStructural ? version.structVer + 1 : version.structVer,
        verVectors: {
          ...version.verVectors,
          'node-${nodeId ?? "local"}': version.dataVer + 1,
        },
      ),
    );
  }
}

/// Version conflict detection and resolution  
extension VersionConflictExtension<T extends Object> on BaseEntityModel<T> {
  bool hasVersionConflict(BaseEntityModel<T> other) =>
      _versionService.hasVersionConflict(
        version.structVer,
        version.dataVer,
        version.verVectors,
        other,
      );

  BaseEntityModel<T> resolveVersionConflict(BaseEntityModel<T> serverVersion) {
    final comparison = _versionService.compareVersions(
      version.schemaVer,
      serverVersion.version.schemaVer,
    );

    if (comparison > 0) {
      return copyWith(
        versioning: version.copyWith(
          syncMeta: _versionService.getResolutionMeta(
            version.syncMeta,
            'localWins',
            serverVersion.version.schemaVer,
          ),
        ),
      );
    } else if (comparison < 0) {
      return serverVersion.copyWith(
        versioning: serverVersion.version.copyWith(
          syncMeta: _versionService.getResolutionMeta(
            serverVersion.version.syncMeta,
            'serverWins', 
            version.schemaVer,
          ),
        ),
      );
    }
    return this;
  }
}

/// Core locking functionality
extension LockingExtension<T extends Object> on BaseEntityModel<T> {
  bool get isLocked => _lockService.isLocked(lock.lockOwner, lock.lockExpiry);

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
      locking: lock.copyWith(
        lockOwner: user,
        lockExpiry: DateTime.now().add(lockDuration),
        distLockId: distLockId,
        distLockNode: isDistributed ? nodeId : null,
      ),
    );
  }
}

/// Distributed lock coordination
extension DistributedLockExtension<T extends Object> on BaseEntityModel<T> {
  bool hasLockConflict(BaseEntityModel<T> other) =>
      _lockService.hasLockConflict(lock.distLockId, other.lock.distLockId);
}

