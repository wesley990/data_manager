import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/services/ai_service.dart';
import 'package:data_manager/src/services/hierarchy_service.dart';
import 'package:data_manager/src/services/lock_service.dart';
import 'package:data_manager/src/services/path_service.dart';
import 'package:data_manager/src/services/version_service.dart';

/// Shared service instances for BaseEntityModel extensions.
///
/// These service instances handle various aspects of entity management like
/// path handling, hierarchy relationships, locking, versioning, and AI processing.
final _pathService = PathService(config: EntityConfig());
final _hierarchyService = HierarchyService(config: EntityConfig());
final _lockService = LockService(config: EntityConfig());
final _versionService = VersionService();
final _aiService = AIService();

/// Extension for path sanitization and validation operations.
///
/// Provides methods to sanitize and validate paths for entity hierarchies.
extension PathSanitizationExtension<T extends Object> on BaseEntityModel<T> {
  /// Sanitizes a raw path string by removing invalid characters and formatting.
  ///
  /// [rawPath] - The path string that needs to be sanitized.
  /// Returns a sanitized path string that complies with path formatting rules.
  String sanitizePath(String? rawPath) => _pathService.sanitizePath(rawPath);

  /// Checks if a given path string is valid according to path formatting rules.
  ///
  /// [path] - The path string to validate.
  /// Returns true if the path is valid, false otherwise.
  bool isPathValid(String? path) => _pathService.isValidPath(path);
}

/// Extension for path navigation and resolution operations.
///
/// Provides methods and getters to navigate and resolve paths in entity hierarchies.
extension PathNavigationExtension<T extends Object> on BaseEntityModel<T> {
  /// Splits a path string into its component parts.
  ///
  /// [path] - The path string to split.
  /// Returns a list of path components.
  List<String> splitPath(String? path) => _pathService.splitPath(path);

  /// Gets the canonical path for this entity.
  ///
  /// Returns a standardized path string combining the tree path and entity ID.
  String get canonicalPath =>
      _pathService.getCanonicalPath(hierarchy.treePath, id.value);

  /// Gets the individual components of this entity's tree path.
  ///
  /// Returns a list of path parts from the entity's tree path.
  List<String> get pathParts => _pathService.splitPath(hierarchy.treePath);

  /// Builds a list of ancestor paths from this entity's tree path.
  ///
  /// Returns a list of paths representing the ancestors of this entity.
  List<String> get pathAncestors =>
      _pathService.buildAncestorPaths(hierarchy.treePath ?? '');

  /// Gets the absolute path for this entity.
  ///
  /// Returns a fully qualified path string.
  String get absolutePath =>
      _pathService.getAbsolutePath(hierarchy.treePath, id.value);
}

/// Extension for hierarchy navigation and relationship operations.
///
/// Provides methods to navigate and determine relationships between entities in hierarchies.
extension HierarchyNavigationExtension<T extends Object> on BaseEntityModel<T> {
  /// Gets the paths of ancestor entities.
  ///
  /// Returns a list of ancestor entity ID strings.
  List<String> get ancestorPaths =>
      hierarchy.ancestors.map((a) => a.value).toList();

  /// Gets the full path of this entity.
  ///
  /// Returns the tree path if available, otherwise the entity ID.
  String get fullPath => hierarchy.treePath ?? id.value;

  /// Checks if this entity is an ancestor of another entity.
  ///
  /// [other] - The entity to check against.
  /// Returns true if this entity is an ancestor of the other entity.
  bool isAncestorOf(BaseEntityModel<T> other) =>
      _hierarchyService.isAncestorOf(hierarchy.ancestors, other.id);

  /// Checks if this entity is a descendant of another entity.
  ///
  /// [other] - The entity to check against.
  /// Returns true if this entity is a descendant of the other entity.
  bool isDescendantOf(BaseEntityModel<T> other) =>
      _hierarchyService.isDescendantOf(id, other.hierarchy.ancestors);

  /// Checks if this entity is related to another entity.
  ///
  /// Two entities are related if one is an ancestor of the other.
  /// [other] - The entity to check against.
  /// Returns true if the entities are related.
  bool isRelatedTo(BaseEntityModel<T> other) =>
      isAncestorOf(other) || isDescendantOf(other);

  /// Gets the depth between this entity and an ancestor.
  ///
  /// [ancestor] - The ancestor entity.
  /// Returns the number of levels between this entity and the ancestor.
  int getDepthTo(BaseEntityModel<T> ancestor) =>
      _hierarchyService.getDepthTo(hierarchy.ancestors, ancestor.id);
}

/// Hierarchy validation extension providing methods to validate and update hierarchy structures.
///
/// Offers functionality to detect circular references and update hierarchy information.
extension HierarchyValidationExtension<T extends Object> on BaseEntityModel<T> {
  /// Checks if there is a circular reference in the entity's hierarchy.
  ///
  /// Returns true if a circular reference is detected.
  bool hasCircularReference() => _hierarchyService.hasCircularReference(
      id, hierarchy.parentId, hierarchy.ancestors);

  /// Updates the hierarchy information for this entity.
  ///
  /// [newParentId] - The new parent ID to assign to this entity.
  /// [newPath] - Optional new tree path.
  /// [newAncestors] - Optional list of new ancestors.
  /// [validateDepth] - Whether to validate the hierarchy depth (default: true).
  /// Returns an updated entity with the new hierarchy information.
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

/// Child management extension for adding and removing child entities.
///
/// Provides methods to manipulate the child relationships of an entity.
extension HierarchyManagementExtension<T extends Object> on BaseEntityModel<T> {
  /// Adds a child entity to this entity.
  ///
  /// [childId] - The ID of the child entity to add.
  /// Returns an updated entity with the new child added.
  BaseEntityModel<T> addChild(EntityId childId) {
    final updatedChildren =
        _hierarchyService.addChild(hierarchy.childIds, childId);
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

  /// Removes a child entity from this entity.
  ///
  /// [childId] - The ID of the child entity to remove.
  /// Returns an updated entity with the child removed.
  BaseEntityModel<T> removeChild(EntityId childId) {
    final updatedChildren =
        _hierarchyService.removeChild(hierarchy.childIds, childId);
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

/// Hierarchy indexing and search extension
///
/// Provides methods to build search indices for hierarchical data.
extension HierarchyIndexingExtension<T extends Object> on BaseEntityModel<T> {
  /// Builds a search index for this entity's hierarchy information.
  ///
  /// Returns a map containing indexed hierarchy data for efficient searching.
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

/// AI embeddings and scoring extension
///
/// Provides getters and methods to access AI-related data.
extension AIEmbeddingExtension<T extends Object> on BaseEntityModel<T> {
  /// Whether this entity has any AI embeddings.
  bool get hasEmbeddings => ai.aiVectors.isNotEmpty;

  /// Whether this entity has any AI scores.
  bool get hasScores => ai.aiScores.isNotEmpty;

  /// Whether this entity has a valid AI version.
  bool get hasValidAiVersion => ai.aiVer != null && ai.aiVer!.isNotEmpty;

  /// Gets the AI score for a specific model.
  ///
  /// [modelId] - The ID of the AI model.
  /// Returns the score for the specified model, or null if not found.
  double? getScore(String modelId) => ai.aiScores[modelId];

  /// Gets the embedding vector for a specific model.
  ///
  /// [modelId] - The ID of the AI model.
  /// Returns the vector for the specified model, or null if not found.
  List<double>? getVector(String modelId) => ai.aiVectors[modelId];

  /// Checks if this entity has data for a specific AI model.
  ///
  /// [modelId] - The ID of the AI model to check.
  /// Returns true if the entity has embeddings for the specified model.
  bool hasModel(String modelId) => ai.aiVectors.containsKey(modelId);
}

/// AI processing and model execution extension
///
/// Provides methods to process entities with AI models and store results.
extension AIProcessingExtension<T extends Object> on BaseEntityModel<T> {
  /// Applies AI processing results to this entity.
  ///
  /// [modelId] - The ID of the AI model used.
  /// [input] - The input data provided to the AI model.
  /// [output] - The output data from the AI model.
  /// [embeddings] - Optional embedding vectors to store.
  /// [confidence] - Optional confidence score from the AI model.
  /// [useCache] - Whether to use/update the result cache (default: true).
  /// Returns an updated entity with the AI processing results.
  BaseEntityModel<T> applyAIProcessing({
    required String modelId,
    required Map<String, dynamic> input,
    required Map<String, dynamic> output,
    List<double>? embeddings,
    double? confidence,
    bool useCache = true,
  }) {
    final timestamp = DateTime.now();

    // More concise handling of embeddings
    final newEmbeddings = embeddings == null
        ? ai.aiVectors
        : {...ai.aiVectors, modelId: embeddings};

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
        aiScores: {
          ...ai.aiScores,
          if (confidence != null) modelId: confidence,
        },
        aiLastRun: timestamp,
      ),
    );
  }
}

/// AI result caching extension
///
/// Provides methods to check and retrieve cached AI results.
extension AICacheExtension<T extends Object> on BaseEntityModel<T> {
  /// Checks if a cached result exists for the given model and input.
  ///
  /// [modelId] - The ID of the AI model.
  /// [input] - The input data to check for cached results.
  /// Returns true if a cached result exists.
  bool hasCachedResult(String modelId, Map<String, dynamic> input) {
    final cacheKey = _aiService.generateCacheKey(modelId, input.toString());
    return _aiService.hasCachedResult(ai.aiMeta, cacheKey);
  }

  /// Gets a cached result for the given model and input.
  ///
  /// [modelId] - The ID of the AI model.
  /// [input] - The input data to retrieve cached results for.
  /// [requireLatestVersion] - Whether to only return results from the latest model version.
  /// Returns the cached result, or null if not found.
  Map<String, dynamic>? getCachedResult({
    required String modelId,
    required Map<String, dynamic> input,
    bool requireLatestVersion = false,
  }) {
    final cacheKey = _aiService.generateCacheKey(modelId, input.toString());
    return _aiService.getCachedResult(
      ai.aiMeta,
      cacheKey,
      ai.aiVer,
      requireLatestVersion: requireLatestVersion,
    );
  }
}

/// History tracking extension
///
/// Provides methods to record and manage entity action history.
extension HistoryExtension<T extends Object> on BaseEntityModel<T> {
  /// Maximum number of history entries to keep.
  static const _historyMaxSize = 50;

  /// Records a user action in the entity's history.
  ///
  /// [action] - The user action to record.
  /// [isAccessAction] - Whether this is an access action (vs. modification).
  /// Returns an updated entity with the action recorded in history.
  BaseEntityModel<T> recordAction(UserAction action,
      {bool isAccessAction = false}) {
    final history = isAccessAction ? security.accessLog : security.modHistory;
    final updatedHistory = [action, ...history.take(_historyMaxSize - 1)];

    return copyWith(
      security: security.copyWith(
        accessLog: isAccessAction ? updatedHistory : security.accessLog,
        modHistory: isAccessAction ? security.modHistory : updatedHistory,
      ),
    );
  }

  /// Prunes the entity's history to the maximum size.
  ///
  /// Returns an updated entity with history trimmed to the maximum allowed size.
  BaseEntityModel<T> pruneHistory() {
    return copyWith(
      security: security.copyWith(
        accessLog: security.accessLog.take(_historyMaxSize).toList(),
        modHistory: security.modHistory.take(_historyMaxSize).toList(),
      ),
    );
  }
}

/// Version validation and incrementation extension
///
/// Provides methods to validate and update entity versions.
extension EntityVersionExtension<T extends Object> on BaseEntityModel<T> {
  /// Checks if the entity has a valid version format.
  bool hasValidVersion() =>
      _versionService.isValidVersionFormat(version.schemaVer);

  /// Checks if the entity has a valid schema version format.
  bool hasValidSchemaVersion() =>
      _versionService.isValidVersionFormat(version.schemaVer);

  /// Checks if the entity has a valid data version number.
  bool hasValidDataVersion() => version.dataVer > 0;

  /// Increments the entity's version.
  ///
  /// [isStructural] - Whether this is a structural change (vs. data-only).
  /// [nodeId] - Optional ID of the node making the change.
  /// Returns an updated entity with incremented version numbers.
  BaseEntityModel<T> incrementVersion(
      {bool isStructural = false, String? nodeId}) {
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

/// Version conflict detection and resolution extension
///
/// Provides methods to detect and resolve version conflicts between entities.
extension VersionConflictExtension<T extends Object> on BaseEntityModel<T> {
  /// Checks if there is a version conflict with another entity.
  ///
  /// [other] - The other entity to check for conflicts.
  /// Returns true if a version conflict is detected.
  bool hasVersionConflict(BaseEntityModel<T> other) =>
      _versionService.hasVersionConflict(
        version.structVer,
        version.dataVer,
        version.verVectors,
        other,
      );

  /// Resolves a version conflict with a server version of this entity.
  ///
  /// [serverVersion] - The server version of the entity.
  /// Returns the resolved entity (either this entity, the server version, or a merge).
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

/// Core locking functionality extension
///
/// Provides methods to lock and unlock entities.
extension LockingExtension<T extends Object> on BaseEntityModel<T> {
  /// Whether this entity is currently locked.
  bool get isLocked => _lockService.isLocked(lock.lockOwner, lock.lockExpiry);

  /// Normalizes a lock duration to ensure it's within acceptable bounds.
  ///
  /// [duration] - The requested lock duration.
  /// Returns a duration that is within the allowed minimum and maximum.
  Duration normalizeLockDuration(Duration duration) =>
      _lockService.normalizeLockDuration(duration);

  /// Acquires a lock on this entity.
  ///
  /// [user] - The user acquiring the lock.
  /// [duration] - Optional lock duration (defaults to LockConfig.defaultTimeout).
  /// [isDistributed] - Whether this is a distributed lock across nodes.
  /// [nodeId] - Optional ID of the node acquiring the lock (for distributed locks).
  /// Returns an updated entity with the lock in place.
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

/// Distributed lock coordination extension
///
/// Provides methods to coordinate locks across distributed systems.
extension DistributedLockExtension<T extends Object> on BaseEntityModel<T> {
  /// Checks if there is a lock conflict with another entity.
  ///
  /// [other] - The other entity to check for lock conflicts.
  /// Returns true if a lock conflict is detected.
  bool hasLockConflict(BaseEntityModel<T> other) =>
      _lockService.hasLockConflict(lock.distLockId, other.lock.distLockId);
}
