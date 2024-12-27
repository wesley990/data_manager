import 'package:uuid/uuid.dart';
import 'package:authentication/authentication.dart';
import 'package:data_manager/data_manager.dart';

// Add EntityId type import

import '../value_objects/user_action.dart';

class EntityCreateParams<T> {
  final String name;
  final AuthUser currentUser;
  final T additionalData;
  final UserAction owner; // Change from optional to required
  final String? description;
  final Map<String, Object>? attributes;
  final String? parentPath;
  final List<String>? tags;
  final Map<String, String>? labels;
  final DateTime? expiresAt;
  final Priority? priority;
  final WorkflowStage? workflowStage;
  final EntityId? parentId;
  final List<EntityId>? ancestorIds;
  final Map<String, String>? ancestorNames;
  final String? hierarchyLevel;
  final Map<String, List<String>>? relations;
  final Map<String, String>? subCollections;
  final List<EntityId>? childrenIds;
  final String? parentName;
  final bool? isPublic;

  // Add AI/LLM fields
  final Map<String, List<double>>? aiEmbeddings;
  final Map<String, double>? aiScores;
  final Map<String, String>? aiMetadata;
  final List<String>? aiTags;
  final Map<String, Object>? aiAnnotations;
  final String? aiProcessingVersion;

  EntityCreateParams({
    required this.name,
    required this.currentUser,
    required this.owner, // Make owner required
    required this.additionalData,
    this.description,
    this.attributes,
    this.parentPath,
    this.parentId,
    this.ancestorIds,
    this.ancestorNames,
    this.hierarchyLevel,
    this.relations,
    this.subCollections,
    this.tags,
    this.labels,
    this.expiresAt,
    this.priority,
    this.workflowStage,
    this.childrenIds,
    this.parentName,
    this.isPublic,
    
    // Add AI parameters
    this.aiEmbeddings,
    this.aiScores,
    this.aiMetadata,
    this.aiTags,
    this.aiAnnotations,
    this.aiProcessingVersion,
  });
}

class EntityCloneParams<T extends Object> {
  final BaseEntity<T> source;
  final AuthUser currentUser;
  final String? newName;
  final String? newParentPath;
  final Map<String, Object>? newAttributes;
  final Map<String, String>? newLabels;
  final List<String>? newTags;

  EntityCloneParams({
    required this.source,
    required this.currentUser,
    this.newName,
    this.newParentPath,
    this.newAttributes,
    this.newLabels,
    this.newTags,
  });
}

class EntityFactory {
  // Update constants to match BaseEntity
  static const Priority defaultPriority = Priority.medium;
  static const WorkflowStage defaultWorkflowStage = WorkflowStage.draft;
  static const String defaultVersion = '1.0.0';
  static const EntityStatus defaultStatus = EntityStatus.active;
  static const int defaultMaxDepth = 10;
  static const bool defaultIsPublic = false;

  static final _validEntityTypes = <Type>{
    Owner,
    Site,
    Equipment,
    Vendor,
    Personnel,
  };

  static BaseEntity<T> createEntity<T extends Object>(
      EntityCreateParams<T> params) {
    if (!_validEntityTypes.contains(T)) {
      throw ArgumentError('Invalid entity type: ${T.toString()}');
    }

    final now = DateTime.now();
    final userAction = UserAction.fromAuthUser(params.currentUser);
    final id = EntityId(const Uuid().v4());

    // Enhanced path handling with validation
    final path = _buildEntityPath(params.parentPath, id.value);
    if (!_isValidPath(path)) {
      throw PathValidationException('Invalid entity path: $path');
    }

    final ancestorIds = _buildAncestorIds(params.parentPath);
    final depth = ancestorIds.length + 1;

    // Enhanced ancestor metadata
    final ancestorMetadata =
        _convertAncestorNamesToMetadata(params.ancestorNames ?? {}, now);

    final entity = BaseEntity<T>(
      // Core fields
      entityId: id,
      entityName: params.name,
      entityDescription: params.description,
      metaCreatedAt: now,
      metaUpdatedAt: now,
      metaAttributes: params.attributes ?? {},

      // Hierarchy info with validation
      hierarchyPath: path,
      hierarchyDepth: depth,
      hierarchyParentId: params.parentId,
      hierarchyAncestors: params.ancestorIds ?? ancestorIds,
      hierarchyLevel: params.hierarchyLevel,

      // User info with full action context
      owner: params.owner,
      createdBy: userAction,
      lastModifiedBy: userAction,
      accessLastBy: userAction,

      // Relations and collections with type safety
      relations: _convertRelationsToEntityIds(params.relations ?? {}),
      subCollections: params.subCollections ?? {},
      childrenIds: params.childrenIds ?? [],

      // Enhanced metadata
      ancestorMetadata: ancestorMetadata,
      parentName: params.parentName,
      tags: params.tags ?? [],
      labels: params.labels ?? {},
      priority: params.priority ?? defaultPriority,
      workflowStage: params.workflowStage ?? defaultWorkflowStage,
      accessIsPublic: params.isPublic ?? defaultIsPublic,
      expiresAt: params.expiresAt,

      // History tracking
      modificationHistory: [userAction],
      accessHistory: [userAction],

      // Event sourcing support
      eventVersion: 0,
      eventPending: [],
      eventMetadata: _buildInitialEventMetadata(now, userAction, T.toString()),

      // Version control
      entityVersion: 1,
      structureVersion: 1,
      lastKnownVersion: '1-1',
      versionVectors: {'initial': 1},

      // Additional data
      additionalData: params.additionalData,

      // New fields with defaults
      syncMetadata: _buildInitialSyncMetadata(now),
      lastSyncedVersion: '1',
      status: defaultStatus,
      schemaVersion: defaultVersion,
      maxDepth: defaultMaxDepth,
      historyLimit: EntityConstants.defaultHistoryLimit,
      lockTimeout: EntityConstants.defaultLockTimeout,

      // Add AI/LLM fields
      aiEmbeddings: params.aiEmbeddings ?? {},
      aiScores: params.aiScores ?? {},
      aiMetadata: params.aiMetadata ?? {},
      aiTags: params.aiTags ?? [],
      aiAnnotations: params.aiAnnotations ?? {},
      aiProcessingVersion: params.aiProcessingVersion,
      lastAiProcessingTime: now,
    );

    return entity.copyWith(
      searchablePath: entity.buildSearchablePaths(),
      queryIndex: entity.buildQueryIndex(),
    );
  }

  // Remove _createEntity method as it's now merged into createEntity

  static BaseEntity<T> cloneEntity<T extends Object>(
      EntityCloneParams<T> params) {
    final now = DateTime.now();
    final userAction = UserAction.fromAuthUser(params.currentUser);
    final id = EntityId(const Uuid().v4());

    final path = _buildEntityPath(params.newParentPath, id.value);
    final ancestorIds = _buildAncestorIds(params.newParentPath);
    final depth = ancestorIds.length + 1;

    final ancestorMetadata = _convertAncestorNamesToMetadata(
        params.source.ancestorMetadata
            .map((key, value) => MapEntry(key, value.displayName)),
        now);

    final entity = BaseEntity<T>(
      entityId: id,
      entityName: params.newName ?? '${params.source.entityName} (Copy)',
      entityDescription: params.source.entityDescription,
      metaCreatedAt: now,
      metaUpdatedAt: now,
      metaAttributes: params.newAttributes ??
          Map<String, Object>.from(params.source.metaAttributes),
      hierarchyPath: path,
      hierarchyDepth: depth,
      hierarchyParentId: _deriveParentId(params.newParentPath),
      hierarchyAncestors: ancestorIds,
      hierarchyLevel: params.source.hierarchyLevel,
      owner: userAction,
      createdBy: userAction,
      lastModifiedBy: userAction,
      accessLastBy: userAction,
      relations: Map<String, List<EntityId>>.from(params.source.relations),
      subCollections: Map<String, String>.from(params.source.subCollections),
      childrenIds: [],
      ancestorMetadata: ancestorMetadata,
      parentName: params.source.parentName,
      tags: params.newTags ?? List<String>.from(params.source.tags),
      labels:
          params.newLabels ?? Map<String, String>.from(params.source.labels),
      priority: params.source.priority,
      workflowStage: params.source.workflowStage,
      accessIsPublic: params.source.accessIsPublic,
      expiresAt: params.source.expiresAt,
      additionalData: params.source.additionalData,
      modificationHistory: [userAction],
      accessHistory: [userAction],
      syncMetadata: _buildCloneSyncMetadata(now, params.source),
      lastSyncedVersion: '1',
      eventMetadata: _buildCloneEventMetadata(now, params.source, T.toString()),
      eventVersion: 0,
      eventPending: [],

      // Add missing default fields
      status: defaultStatus,
      schemaVersion: defaultVersion,
      maxDepth: defaultMaxDepth,

      // Clone AI/LLM data
      aiEmbeddings: Map<String, List<double>>.from(params.source.aiEmbeddings),
      aiScores: Map<String, double>.from(params.source.aiScores),
      aiMetadata: Map<String, String>.from(params.source.aiMetadata),
      aiTags: List<String>.from(params.source.aiTags),
      aiAnnotations: Map<String, Object>.from(params.source.aiAnnotations),
      aiProcessingVersion: params.source.aiProcessingVersion,
      lastAiProcessingTime: now,
    );

    return entity.copyWith(
      searchablePath: entity.buildSearchablePaths(),
      queryIndex: entity.buildQueryIndex(),
    );
  }

  // Updated helper methods
  static bool _isValidPath(String path) {
    if (path.length > PathConstants.maxPathLength) return false;
    final segments = path.split(PathConstants.pathSeparator);
    return segments.every((s) => s.length <= PathConstants.maxSegmentLength);
  }

  static String _buildEntityPath(String? parentPath, String id) {
    if (parentPath == null || parentPath.isEmpty) return id;
    return parentPath.endsWith(PathConstants.pathSeparator)
        ? '$parentPath$id'
        : '$parentPath${PathConstants.pathSeparator}$id';
  }

  static List<EntityId> _buildAncestorIds(String? parentPath) {
    if (parentPath == null || parentPath.isEmpty) return [];
    return parentPath
        .split(PathConstants.pathSeparator)
        .where((p) => p.isNotEmpty)
        .map((p) => EntityId(p))
        .toList();
  }

  static Map<String, EntityMetadata> _convertAncestorNamesToMetadata(
      Map<String, String> names, DateTime timestamp) {
    return names.map((key, value) => MapEntry(
          key,
          EntityMetadata(
            displayName: value,
            entityType: 'ancestor',
            lastNameUpdate: timestamp,
          ),
        ));
  }

  // Update helper method signatures to use EntityId
  static Map<String, List<EntityId>> _convertRelationsToEntityIds(
      Map<String, List<String>> relations) {
    return relations.map(
      (key, value) => MapEntry(
        key,
        value.map((id) => EntityId(id)).toList(),
      ),
    );
  }

  // Update sync metadata to use Object instead of String
  static Map<String, Object> _buildInitialSyncMetadata(DateTime now) => {
        'initialSync': now.toIso8601String(),
        'status': 'pending',
        'version': 1,
      };

  static Map<String, Object> _buildInitialEventMetadata(
          DateTime now, UserAction creator, String entityType) =>
      {
        'createdAt': now.toIso8601String(),
        'creator': creator.uid,
        'entityType': entityType,
        'operation': 'create',
        'version': 1,
      };

  static Map<String, Object> _buildCloneSyncMetadata(
          DateTime now, BaseEntity source) =>
      {
        'clonedFrom': source.entityId.value,
        'clonedAt': now.toIso8601String(),
        'originalCreatedAt': source.metaCreatedAt.toIso8601String(),
        'status': 'pending',
        'version': 1,
      };

  static Map<String, String> _buildCloneEventMetadata(
          DateTime now, BaseEntity source, String entityType) =>
      {
        'clonedFrom': source.entityId.value,
        'clonedAt': now.toIso8601String(),
        'originalEventVersion': source.eventVersion.toString(),
        'entityType': entityType,
        'operation': 'clone'
      };

  static EntityId? _deriveParentId(String? parentPath) {
    if (parentPath == null || parentPath.isEmpty) return null;
    final segments = parentPath.split(PathConstants.pathSeparator);
    final lastSegment =
        segments.lastWhere((s) => s.isNotEmpty, orElse: () => '');
    return lastSegment.isEmpty ? null : EntityId(lastSegment);
  }
}
