// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseEntity<T> _$BaseEntityFromJson<T extends Object>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseEntity<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseEntity<T extends Object> {
// Update identifiers to use EntityId
  EntityId get entityId =>
      throw _privateConstructorUsedError; // renamed from uuid to id
  String get entityName => throw _privateConstructorUsedError;
  String? get entityDescription =>
      throw _privateConstructorUsedError; // Metadata
  DateTime get metaCreatedAt => throw _privateConstructorUsedError;
  DateTime get metaUpdatedAt => throw _privateConstructorUsedError;
  String get schemaVersion => throw _privateConstructorUsedError;
  EntityStatus get status => throw _privateConstructorUsedError;
  Map<String, Object> get metaAttributes =>
      throw _privateConstructorUsedError; // Hierarchy and Relations (using Materialized Path)
  String? get hierarchyPath => throw _privateConstructorUsedError;
  int get hierarchyDepth => throw _privateConstructorUsedError;
  Map<String, List<EntityId>> get relations =>
      throw _privateConstructorUsedError;
  int get maxDepth =>
      throw _privateConstructorUsedError; // Maximum allowed depth for hierarchical structures
// Firestore Hierarchy Optimizations
  List<EntityId> get hierarchyAncestors =>
      throw _privateConstructorUsedError; // For ancestor queries
  EntityId? get hierarchyParentId =>
      throw _privateConstructorUsedError; // Direct parent reference
  List<EntityId> get childrenIds =>
      throw _privateConstructorUsedError; // Direct children
// Collection paths for nested data
  Map<String, String> get subCollections =>
      throw _privateConstructorUsedError; // e.g. {'documents': 'documents/', 'attachments': 'attachments/'}
// Denormalized data for quick access
  Map<String, EntityMetadata> get ancestorMetadata =>
      throw _privateConstructorUsedError; // Contains name, type, etc
  String? get parentName =>
      throw _privateConstructorUsedError; // Indexed fields for querying
  List<String> get searchablePath =>
      throw _privateConstructorUsedError; // ['dept-001', 'dept-001/dept-002']
  String? get hierarchyLevel =>
      throw _privateConstructorUsedError; // Make nullable
// Batch operation tracking
  int get hierarchyVersion =>
      throw _privateConstructorUsedError; // For concurrent updates
  DateTime? get lastHierarchyUpdate =>
      throw _privateConstructorUsedError; // User Management
  UserAction get owner => throw _privateConstructorUsedError; // Replace ownerId
  UserAction get createdBy => throw _privateConstructorUsedError;
  UserAction get lastModifiedBy => throw _privateConstructorUsedError;
  UserAction? get accessLastBy => throw _privateConstructorUsedError; // Locking
  UserAction? get lockedBy =>
      throw _privateConstructorUsedError; // Replace lockId with full user context
  DateTime? get lockExpiresAt =>
      throw _privateConstructorUsedError; // Deletion tracking
  UserAction? get deletedBy =>
      throw _privateConstructorUsedError; // Combines deletedAt + deletedBy
// Optional: Add modification history
  @Assert('modificationHistory.length <= EntityConstants.maxHistoryLimit')
  List<UserAction> get modificationHistory =>
      throw _privateConstructorUsedError; // Optional: Add access history
  @Assert('accessHistory.length <= EntityConstants.maxHistoryLimit')
  List<UserAction> get accessHistory => throw _privateConstructorUsedError;
  bool get accessIsPublic =>
      throw _privateConstructorUsedError; // Access Tracking
  int get accessCount => throw _privateConstructorUsedError; // Classification
  List<String> get tags => throw _privateConstructorUsedError;
  Map<String, String> get labels =>
      throw _privateConstructorUsedError; // Workflow and Priority
  Priority get priority => throw _privateConstructorUsedError;
  WorkflowStage get workflowStage =>
      throw _privateConstructorUsedError; // Time-related
  DateTime? get expiresAt =>
      throw _privateConstructorUsedError; // Sync and Lock Mechanisms
  Map<String, Object> get syncMetadata => throw _privateConstructorUsedError;
  String? get lastSyncedVersion =>
      throw _privateConstructorUsedError; // Firestore-specific indexing
  Map<String, Object> get queryIndex =>
      throw _privateConstructorUsedError; // Custom indexes for complex queries
// Extension point
  T? get additionalData => throw _privateConstructorUsedError;

  /// Event sourcing support
  int get eventVersion => throw _privateConstructorUsedError;
  List<String> get eventPending => throw _privateConstructorUsedError;
  Map<String, Object> get eventMetadata =>
      throw _privateConstructorUsedError; // Add history size configuration
  int get historyLimit =>
      throw _privateConstructorUsedError; // Add version control fields
  int get entityVersion =>
      throw _privateConstructorUsedError; // For data changes
  int get structureVersion =>
      throw _privateConstructorUsedError; // For structure changes
  String? get lastKnownVersion =>
      throw _privateConstructorUsedError; // For CAS operations
// Add distributed lock fields
  String? get distributedLockId => throw _privateConstructorUsedError;
  DateTime? get distributedLockExpiry => throw _privateConstructorUsedError;
  String? get distributedLockNode => throw _privateConstructorUsedError;
  Map<String, dynamic> get lockMetadata =>
      throw _privateConstructorUsedError; // Add version vectors for conflict resolution
  Map<String, int> get versionVectors => throw _privateConstructorUsedError;
  Duration get lockTimeout =>
      throw _privateConstructorUsedError; // Add AI/LLM integration fields
  Map<String, List<double>> get aiEmbeddings =>
      throw _privateConstructorUsedError; // Store embeddings from different AI models
  Map<String, double> get aiScores =>
      throw _privateConstructorUsedError; // Store relevance/confidence scores
  Map<String, String> get aiMetadata =>
      throw _privateConstructorUsedError; // Store model-specific metadata
  List<String> get aiTags =>
      throw _privateConstructorUsedError; // AI-generated tags
  Map<String, Object> get aiAnnotations =>
      throw _privateConstructorUsedError; // AI-generated annotations
  DateTime? get lastAiProcessingTime => throw _privateConstructorUsedError;
  String? get aiProcessingVersion => throw _privateConstructorUsedError;

  /// Serializes this BaseEntity to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseEntityCopyWith<T, BaseEntity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseEntityCopyWith<T extends Object, $Res> {
  factory $BaseEntityCopyWith(
          BaseEntity<T> value, $Res Function(BaseEntity<T>) then) =
      _$BaseEntityCopyWithImpl<T, $Res, BaseEntity<T>>;
  @useResult
  $Res call(
      {EntityId entityId,
      String entityName,
      String? entityDescription,
      DateTime metaCreatedAt,
      DateTime metaUpdatedAt,
      String schemaVersion,
      EntityStatus status,
      Map<String, Object> metaAttributes,
      String? hierarchyPath,
      int hierarchyDepth,
      Map<String, List<EntityId>> relations,
      int maxDepth,
      List<EntityId> hierarchyAncestors,
      EntityId? hierarchyParentId,
      List<EntityId> childrenIds,
      Map<String, String> subCollections,
      Map<String, EntityMetadata> ancestorMetadata,
      String? parentName,
      List<String> searchablePath,
      String? hierarchyLevel,
      int hierarchyVersion,
      DateTime? lastHierarchyUpdate,
      UserAction owner,
      UserAction createdBy,
      UserAction lastModifiedBy,
      UserAction? accessLastBy,
      UserAction? lockedBy,
      DateTime? lockExpiresAt,
      UserAction? deletedBy,
      @Assert('modificationHistory.length <= EntityConstants.maxHistoryLimit')
      List<UserAction> modificationHistory,
      @Assert('accessHistory.length <= EntityConstants.maxHistoryLimit')
      List<UserAction> accessHistory,
      bool accessIsPublic,
      int accessCount,
      List<String> tags,
      Map<String, String> labels,
      Priority priority,
      WorkflowStage workflowStage,
      DateTime? expiresAt,
      Map<String, Object> syncMetadata,
      String? lastSyncedVersion,
      Map<String, Object> queryIndex,
      T? additionalData,
      int eventVersion,
      List<String> eventPending,
      Map<String, Object> eventMetadata,
      int historyLimit,
      int entityVersion,
      int structureVersion,
      String? lastKnownVersion,
      String? distributedLockId,
      DateTime? distributedLockExpiry,
      String? distributedLockNode,
      Map<String, dynamic> lockMetadata,
      Map<String, int> versionVectors,
      Duration lockTimeout,
      Map<String, List<double>> aiEmbeddings,
      Map<String, double> aiScores,
      Map<String, String> aiMetadata,
      List<String> aiTags,
      Map<String, Object> aiAnnotations,
      DateTime? lastAiProcessingTime,
      String? aiProcessingVersion});

  $EntityIdCopyWith<$Res> get entityId;
  $EntityIdCopyWith<$Res>? get hierarchyParentId;
  $UserActionCopyWith<$Res> get owner;
  $UserActionCopyWith<$Res> get createdBy;
  $UserActionCopyWith<$Res> get lastModifiedBy;
  $UserActionCopyWith<$Res>? get accessLastBy;
  $UserActionCopyWith<$Res>? get lockedBy;
  $UserActionCopyWith<$Res>? get deletedBy;
}

/// @nodoc
class _$BaseEntityCopyWithImpl<T extends Object, $Res,
    $Val extends BaseEntity<T>> implements $BaseEntityCopyWith<T, $Res> {
  _$BaseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityId = null,
    Object? entityName = null,
    Object? entityDescription = freezed,
    Object? metaCreatedAt = null,
    Object? metaUpdatedAt = null,
    Object? schemaVersion = null,
    Object? status = null,
    Object? metaAttributes = null,
    Object? hierarchyPath = freezed,
    Object? hierarchyDepth = null,
    Object? relations = null,
    Object? maxDepth = null,
    Object? hierarchyAncestors = null,
    Object? hierarchyParentId = freezed,
    Object? childrenIds = null,
    Object? subCollections = null,
    Object? ancestorMetadata = null,
    Object? parentName = freezed,
    Object? searchablePath = null,
    Object? hierarchyLevel = freezed,
    Object? hierarchyVersion = null,
    Object? lastHierarchyUpdate = freezed,
    Object? owner = null,
    Object? createdBy = null,
    Object? lastModifiedBy = null,
    Object? accessLastBy = freezed,
    Object? lockedBy = freezed,
    Object? lockExpiresAt = freezed,
    Object? deletedBy = freezed,
    Object? modificationHistory = null,
    Object? accessHistory = null,
    Object? accessIsPublic = null,
    Object? accessCount = null,
    Object? tags = null,
    Object? labels = null,
    Object? priority = null,
    Object? workflowStage = null,
    Object? expiresAt = freezed,
    Object? syncMetadata = null,
    Object? lastSyncedVersion = freezed,
    Object? queryIndex = null,
    Object? additionalData = freezed,
    Object? eventVersion = null,
    Object? eventPending = null,
    Object? eventMetadata = null,
    Object? historyLimit = null,
    Object? entityVersion = null,
    Object? structureVersion = null,
    Object? lastKnownVersion = freezed,
    Object? distributedLockId = freezed,
    Object? distributedLockExpiry = freezed,
    Object? distributedLockNode = freezed,
    Object? lockMetadata = null,
    Object? versionVectors = null,
    Object? lockTimeout = null,
    Object? aiEmbeddings = null,
    Object? aiScores = null,
    Object? aiMetadata = null,
    Object? aiTags = null,
    Object? aiAnnotations = null,
    Object? lastAiProcessingTime = freezed,
    Object? aiProcessingVersion = freezed,
  }) {
    return _then(_value.copyWith(
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as EntityId,
      entityName: null == entityName
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      entityDescription: freezed == entityDescription
          ? _value.entityDescription
          : entityDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      metaCreatedAt: null == metaCreatedAt
          ? _value.metaCreatedAt
          : metaCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metaUpdatedAt: null == metaUpdatedAt
          ? _value.metaUpdatedAt
          : metaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schemaVersion: null == schemaVersion
          ? _value.schemaVersion
          : schemaVersion // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EntityStatus,
      metaAttributes: null == metaAttributes
          ? _value.metaAttributes
          : metaAttributes // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      hierarchyPath: freezed == hierarchyPath
          ? _value.hierarchyPath
          : hierarchyPath // ignore: cast_nullable_to_non_nullable
              as String?,
      hierarchyDepth: null == hierarchyDepth
          ? _value.hierarchyDepth
          : hierarchyDepth // ignore: cast_nullable_to_non_nullable
              as int,
      relations: null == relations
          ? _value.relations
          : relations // ignore: cast_nullable_to_non_nullable
              as Map<String, List<EntityId>>,
      maxDepth: null == maxDepth
          ? _value.maxDepth
          : maxDepth // ignore: cast_nullable_to_non_nullable
              as int,
      hierarchyAncestors: null == hierarchyAncestors
          ? _value.hierarchyAncestors
          : hierarchyAncestors // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      hierarchyParentId: freezed == hierarchyParentId
          ? _value.hierarchyParentId
          : hierarchyParentId // ignore: cast_nullable_to_non_nullable
              as EntityId?,
      childrenIds: null == childrenIds
          ? _value.childrenIds
          : childrenIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      subCollections: null == subCollections
          ? _value.subCollections
          : subCollections // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ancestorMetadata: null == ancestorMetadata
          ? _value.ancestorMetadata
          : ancestorMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, EntityMetadata>,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      searchablePath: null == searchablePath
          ? _value.searchablePath
          : searchablePath // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hierarchyLevel: freezed == hierarchyLevel
          ? _value.hierarchyLevel
          : hierarchyLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      hierarchyVersion: null == hierarchyVersion
          ? _value.hierarchyVersion
          : hierarchyVersion // ignore: cast_nullable_to_non_nullable
              as int,
      lastHierarchyUpdate: freezed == lastHierarchyUpdate
          ? _value.lastHierarchyUpdate
          : lastHierarchyUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserAction,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserAction,
      lastModifiedBy: null == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as UserAction,
      accessLastBy: freezed == accessLastBy
          ? _value.accessLastBy
          : accessLastBy // ignore: cast_nullable_to_non_nullable
              as UserAction?,
      lockedBy: freezed == lockedBy
          ? _value.lockedBy
          : lockedBy // ignore: cast_nullable_to_non_nullable
              as UserAction?,
      lockExpiresAt: freezed == lockExpiresAt
          ? _value.lockExpiresAt
          : lockExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as UserAction?,
      modificationHistory: null == modificationHistory
          ? _value.modificationHistory
          : modificationHistory // ignore: cast_nullable_to_non_nullable
              as List<UserAction>,
      accessHistory: null == accessHistory
          ? _value.accessHistory
          : accessHistory // ignore: cast_nullable_to_non_nullable
              as List<UserAction>,
      accessIsPublic: null == accessIsPublic
          ? _value.accessIsPublic
          : accessIsPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      accessCount: null == accessCount
          ? _value.accessCount
          : accessCount // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      labels: null == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      workflowStage: null == workflowStage
          ? _value.workflowStage
          : workflowStage // ignore: cast_nullable_to_non_nullable
              as WorkflowStage,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      syncMetadata: null == syncMetadata
          ? _value.syncMetadata
          : syncMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      lastSyncedVersion: freezed == lastSyncedVersion
          ? _value.lastSyncedVersion
          : lastSyncedVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      queryIndex: null == queryIndex
          ? _value.queryIndex
          : queryIndex // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as T?,
      eventVersion: null == eventVersion
          ? _value.eventVersion
          : eventVersion // ignore: cast_nullable_to_non_nullable
              as int,
      eventPending: null == eventPending
          ? _value.eventPending
          : eventPending // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eventMetadata: null == eventMetadata
          ? _value.eventMetadata
          : eventMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      historyLimit: null == historyLimit
          ? _value.historyLimit
          : historyLimit // ignore: cast_nullable_to_non_nullable
              as int,
      entityVersion: null == entityVersion
          ? _value.entityVersion
          : entityVersion // ignore: cast_nullable_to_non_nullable
              as int,
      structureVersion: null == structureVersion
          ? _value.structureVersion
          : structureVersion // ignore: cast_nullable_to_non_nullable
              as int,
      lastKnownVersion: freezed == lastKnownVersion
          ? _value.lastKnownVersion
          : lastKnownVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      distributedLockId: freezed == distributedLockId
          ? _value.distributedLockId
          : distributedLockId // ignore: cast_nullable_to_non_nullable
              as String?,
      distributedLockExpiry: freezed == distributedLockExpiry
          ? _value.distributedLockExpiry
          : distributedLockExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distributedLockNode: freezed == distributedLockNode
          ? _value.distributedLockNode
          : distributedLockNode // ignore: cast_nullable_to_non_nullable
              as String?,
      lockMetadata: null == lockMetadata
          ? _value.lockMetadata
          : lockMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      versionVectors: null == versionVectors
          ? _value.versionVectors
          : versionVectors // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      lockTimeout: null == lockTimeout
          ? _value.lockTimeout
          : lockTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      aiEmbeddings: null == aiEmbeddings
          ? _value.aiEmbeddings
          : aiEmbeddings // ignore: cast_nullable_to_non_nullable
              as Map<String, List<double>>,
      aiScores: null == aiScores
          ? _value.aiScores
          : aiScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      aiMetadata: null == aiMetadata
          ? _value.aiMetadata
          : aiMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      aiTags: null == aiTags
          ? _value.aiTags
          : aiTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aiAnnotations: null == aiAnnotations
          ? _value.aiAnnotations
          : aiAnnotations // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      lastAiProcessingTime: freezed == lastAiProcessingTime
          ? _value.lastAiProcessingTime
          : lastAiProcessingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      aiProcessingVersion: freezed == aiProcessingVersion
          ? _value.aiProcessingVersion
          : aiProcessingVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityIdCopyWith<$Res> get entityId {
    return $EntityIdCopyWith<$Res>(_value.entityId, (value) {
      return _then(_value.copyWith(entityId: value) as $Val);
    });
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityIdCopyWith<$Res>? get hierarchyParentId {
    if (_value.hierarchyParentId == null) {
      return null;
    }

    return $EntityIdCopyWith<$Res>(_value.hierarchyParentId!, (value) {
      return _then(_value.copyWith(hierarchyParentId: value) as $Val);
    });
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res> get owner {
    return $UserActionCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res> get createdBy {
    return $UserActionCopyWith<$Res>(_value.createdBy, (value) {
      return _then(_value.copyWith(createdBy: value) as $Val);
    });
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res> get lastModifiedBy {
    return $UserActionCopyWith<$Res>(_value.lastModifiedBy, (value) {
      return _then(_value.copyWith(lastModifiedBy: value) as $Val);
    });
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res>? get accessLastBy {
    if (_value.accessLastBy == null) {
      return null;
    }

    return $UserActionCopyWith<$Res>(_value.accessLastBy!, (value) {
      return _then(_value.copyWith(accessLastBy: value) as $Val);
    });
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res>? get lockedBy {
    if (_value.lockedBy == null) {
      return null;
    }

    return $UserActionCopyWith<$Res>(_value.lockedBy!, (value) {
      return _then(_value.copyWith(lockedBy: value) as $Val);
    });
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res>? get deletedBy {
    if (_value.deletedBy == null) {
      return null;
    }

    return $UserActionCopyWith<$Res>(_value.deletedBy!, (value) {
      return _then(_value.copyWith(deletedBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseEntityImplCopyWith<T extends Object, $Res>
    implements $BaseEntityCopyWith<T, $Res> {
  factory _$$BaseEntityImplCopyWith(
          _$BaseEntityImpl<T> value, $Res Function(_$BaseEntityImpl<T>) then) =
      __$$BaseEntityImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {EntityId entityId,
      String entityName,
      String? entityDescription,
      DateTime metaCreatedAt,
      DateTime metaUpdatedAt,
      String schemaVersion,
      EntityStatus status,
      Map<String, Object> metaAttributes,
      String? hierarchyPath,
      int hierarchyDepth,
      Map<String, List<EntityId>> relations,
      int maxDepth,
      List<EntityId> hierarchyAncestors,
      EntityId? hierarchyParentId,
      List<EntityId> childrenIds,
      Map<String, String> subCollections,
      Map<String, EntityMetadata> ancestorMetadata,
      String? parentName,
      List<String> searchablePath,
      String? hierarchyLevel,
      int hierarchyVersion,
      DateTime? lastHierarchyUpdate,
      UserAction owner,
      UserAction createdBy,
      UserAction lastModifiedBy,
      UserAction? accessLastBy,
      UserAction? lockedBy,
      DateTime? lockExpiresAt,
      UserAction? deletedBy,
      @Assert('modificationHistory.length <= EntityConstants.maxHistoryLimit')
      List<UserAction> modificationHistory,
      @Assert('accessHistory.length <= EntityConstants.maxHistoryLimit')
      List<UserAction> accessHistory,
      bool accessIsPublic,
      int accessCount,
      List<String> tags,
      Map<String, String> labels,
      Priority priority,
      WorkflowStage workflowStage,
      DateTime? expiresAt,
      Map<String, Object> syncMetadata,
      String? lastSyncedVersion,
      Map<String, Object> queryIndex,
      T? additionalData,
      int eventVersion,
      List<String> eventPending,
      Map<String, Object> eventMetadata,
      int historyLimit,
      int entityVersion,
      int structureVersion,
      String? lastKnownVersion,
      String? distributedLockId,
      DateTime? distributedLockExpiry,
      String? distributedLockNode,
      Map<String, dynamic> lockMetadata,
      Map<String, int> versionVectors,
      Duration lockTimeout,
      Map<String, List<double>> aiEmbeddings,
      Map<String, double> aiScores,
      Map<String, String> aiMetadata,
      List<String> aiTags,
      Map<String, Object> aiAnnotations,
      DateTime? lastAiProcessingTime,
      String? aiProcessingVersion});

  @override
  $EntityIdCopyWith<$Res> get entityId;
  @override
  $EntityIdCopyWith<$Res>? get hierarchyParentId;
  @override
  $UserActionCopyWith<$Res> get owner;
  @override
  $UserActionCopyWith<$Res> get createdBy;
  @override
  $UserActionCopyWith<$Res> get lastModifiedBy;
  @override
  $UserActionCopyWith<$Res>? get accessLastBy;
  @override
  $UserActionCopyWith<$Res>? get lockedBy;
  @override
  $UserActionCopyWith<$Res>? get deletedBy;
}

/// @nodoc
class __$$BaseEntityImplCopyWithImpl<T extends Object, $Res>
    extends _$BaseEntityCopyWithImpl<T, $Res, _$BaseEntityImpl<T>>
    implements _$$BaseEntityImplCopyWith<T, $Res> {
  __$$BaseEntityImplCopyWithImpl(
      _$BaseEntityImpl<T> _value, $Res Function(_$BaseEntityImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityId = null,
    Object? entityName = null,
    Object? entityDescription = freezed,
    Object? metaCreatedAt = null,
    Object? metaUpdatedAt = null,
    Object? schemaVersion = null,
    Object? status = null,
    Object? metaAttributes = null,
    Object? hierarchyPath = freezed,
    Object? hierarchyDepth = null,
    Object? relations = null,
    Object? maxDepth = null,
    Object? hierarchyAncestors = null,
    Object? hierarchyParentId = freezed,
    Object? childrenIds = null,
    Object? subCollections = null,
    Object? ancestorMetadata = null,
    Object? parentName = freezed,
    Object? searchablePath = null,
    Object? hierarchyLevel = freezed,
    Object? hierarchyVersion = null,
    Object? lastHierarchyUpdate = freezed,
    Object? owner = null,
    Object? createdBy = null,
    Object? lastModifiedBy = null,
    Object? accessLastBy = freezed,
    Object? lockedBy = freezed,
    Object? lockExpiresAt = freezed,
    Object? deletedBy = freezed,
    Object? modificationHistory = null,
    Object? accessHistory = null,
    Object? accessIsPublic = null,
    Object? accessCount = null,
    Object? tags = null,
    Object? labels = null,
    Object? priority = null,
    Object? workflowStage = null,
    Object? expiresAt = freezed,
    Object? syncMetadata = null,
    Object? lastSyncedVersion = freezed,
    Object? queryIndex = null,
    Object? additionalData = freezed,
    Object? eventVersion = null,
    Object? eventPending = null,
    Object? eventMetadata = null,
    Object? historyLimit = null,
    Object? entityVersion = null,
    Object? structureVersion = null,
    Object? lastKnownVersion = freezed,
    Object? distributedLockId = freezed,
    Object? distributedLockExpiry = freezed,
    Object? distributedLockNode = freezed,
    Object? lockMetadata = null,
    Object? versionVectors = null,
    Object? lockTimeout = null,
    Object? aiEmbeddings = null,
    Object? aiScores = null,
    Object? aiMetadata = null,
    Object? aiTags = null,
    Object? aiAnnotations = null,
    Object? lastAiProcessingTime = freezed,
    Object? aiProcessingVersion = freezed,
  }) {
    return _then(_$BaseEntityImpl<T>(
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as EntityId,
      entityName: null == entityName
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      entityDescription: freezed == entityDescription
          ? _value.entityDescription
          : entityDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      metaCreatedAt: null == metaCreatedAt
          ? _value.metaCreatedAt
          : metaCreatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metaUpdatedAt: null == metaUpdatedAt
          ? _value.metaUpdatedAt
          : metaUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schemaVersion: null == schemaVersion
          ? _value.schemaVersion
          : schemaVersion // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EntityStatus,
      metaAttributes: null == metaAttributes
          ? _value._metaAttributes
          : metaAttributes // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      hierarchyPath: freezed == hierarchyPath
          ? _value.hierarchyPath
          : hierarchyPath // ignore: cast_nullable_to_non_nullable
              as String?,
      hierarchyDepth: null == hierarchyDepth
          ? _value.hierarchyDepth
          : hierarchyDepth // ignore: cast_nullable_to_non_nullable
              as int,
      relations: null == relations
          ? _value._relations
          : relations // ignore: cast_nullable_to_non_nullable
              as Map<String, List<EntityId>>,
      maxDepth: null == maxDepth
          ? _value.maxDepth
          : maxDepth // ignore: cast_nullable_to_non_nullable
              as int,
      hierarchyAncestors: null == hierarchyAncestors
          ? _value._hierarchyAncestors
          : hierarchyAncestors // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      hierarchyParentId: freezed == hierarchyParentId
          ? _value.hierarchyParentId
          : hierarchyParentId // ignore: cast_nullable_to_non_nullable
              as EntityId?,
      childrenIds: null == childrenIds
          ? _value._childrenIds
          : childrenIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      subCollections: null == subCollections
          ? _value._subCollections
          : subCollections // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ancestorMetadata: null == ancestorMetadata
          ? _value._ancestorMetadata
          : ancestorMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, EntityMetadata>,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      searchablePath: null == searchablePath
          ? _value._searchablePath
          : searchablePath // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hierarchyLevel: freezed == hierarchyLevel
          ? _value.hierarchyLevel
          : hierarchyLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      hierarchyVersion: null == hierarchyVersion
          ? _value.hierarchyVersion
          : hierarchyVersion // ignore: cast_nullable_to_non_nullable
              as int,
      lastHierarchyUpdate: freezed == lastHierarchyUpdate
          ? _value.lastHierarchyUpdate
          : lastHierarchyUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserAction,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserAction,
      lastModifiedBy: null == lastModifiedBy
          ? _value.lastModifiedBy
          : lastModifiedBy // ignore: cast_nullable_to_non_nullable
              as UserAction,
      accessLastBy: freezed == accessLastBy
          ? _value.accessLastBy
          : accessLastBy // ignore: cast_nullable_to_non_nullable
              as UserAction?,
      lockedBy: freezed == lockedBy
          ? _value.lockedBy
          : lockedBy // ignore: cast_nullable_to_non_nullable
              as UserAction?,
      lockExpiresAt: freezed == lockExpiresAt
          ? _value.lockExpiresAt
          : lockExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as UserAction?,
      modificationHistory: null == modificationHistory
          ? _value._modificationHistory
          : modificationHistory // ignore: cast_nullable_to_non_nullable
              as List<UserAction>,
      accessHistory: null == accessHistory
          ? _value._accessHistory
          : accessHistory // ignore: cast_nullable_to_non_nullable
              as List<UserAction>,
      accessIsPublic: null == accessIsPublic
          ? _value.accessIsPublic
          : accessIsPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      accessCount: null == accessCount
          ? _value.accessCount
          : accessCount // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      workflowStage: null == workflowStage
          ? _value.workflowStage
          : workflowStage // ignore: cast_nullable_to_non_nullable
              as WorkflowStage,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      syncMetadata: null == syncMetadata
          ? _value._syncMetadata
          : syncMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      lastSyncedVersion: freezed == lastSyncedVersion
          ? _value.lastSyncedVersion
          : lastSyncedVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      queryIndex: null == queryIndex
          ? _value._queryIndex
          : queryIndex // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as T?,
      eventVersion: null == eventVersion
          ? _value.eventVersion
          : eventVersion // ignore: cast_nullable_to_non_nullable
              as int,
      eventPending: null == eventPending
          ? _value._eventPending
          : eventPending // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eventMetadata: null == eventMetadata
          ? _value._eventMetadata
          : eventMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      historyLimit: null == historyLimit
          ? _value.historyLimit
          : historyLimit // ignore: cast_nullable_to_non_nullable
              as int,
      entityVersion: null == entityVersion
          ? _value.entityVersion
          : entityVersion // ignore: cast_nullable_to_non_nullable
              as int,
      structureVersion: null == structureVersion
          ? _value.structureVersion
          : structureVersion // ignore: cast_nullable_to_non_nullable
              as int,
      lastKnownVersion: freezed == lastKnownVersion
          ? _value.lastKnownVersion
          : lastKnownVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      distributedLockId: freezed == distributedLockId
          ? _value.distributedLockId
          : distributedLockId // ignore: cast_nullable_to_non_nullable
              as String?,
      distributedLockExpiry: freezed == distributedLockExpiry
          ? _value.distributedLockExpiry
          : distributedLockExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distributedLockNode: freezed == distributedLockNode
          ? _value.distributedLockNode
          : distributedLockNode // ignore: cast_nullable_to_non_nullable
              as String?,
      lockMetadata: null == lockMetadata
          ? _value._lockMetadata
          : lockMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      versionVectors: null == versionVectors
          ? _value._versionVectors
          : versionVectors // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      lockTimeout: null == lockTimeout
          ? _value.lockTimeout
          : lockTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      aiEmbeddings: null == aiEmbeddings
          ? _value._aiEmbeddings
          : aiEmbeddings // ignore: cast_nullable_to_non_nullable
              as Map<String, List<double>>,
      aiScores: null == aiScores
          ? _value._aiScores
          : aiScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      aiMetadata: null == aiMetadata
          ? _value._aiMetadata
          : aiMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      aiTags: null == aiTags
          ? _value._aiTags
          : aiTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aiAnnotations: null == aiAnnotations
          ? _value._aiAnnotations
          : aiAnnotations // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      lastAiProcessingTime: freezed == lastAiProcessingTime
          ? _value.lastAiProcessingTime
          : lastAiProcessingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      aiProcessingVersion: freezed == aiProcessingVersion
          ? _value.aiProcessingVersion
          : aiProcessingVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BaseEntityImpl<T extends Object> extends _BaseEntity<T> {
  const _$BaseEntityImpl(
      {required this.entityId,
      required this.entityName,
      this.entityDescription,
      required this.metaCreatedAt,
      required this.metaUpdatedAt,
      this.schemaVersion = EntityConstants.defaultVersion,
      this.status = EntityConstants.defaultStatus,
      final Map<String, Object> metaAttributes = const <String, Object>{},
      this.hierarchyPath,
      this.hierarchyDepth = 0,
      final Map<String, List<EntityId>> relations =
          const <String, List<EntityId>>{},
      this.maxDepth = 10,
      final List<EntityId> hierarchyAncestors = const <EntityId>[],
      this.hierarchyParentId,
      final List<EntityId> childrenIds = const <EntityId>[],
      final Map<String, String> subCollections = const <String, String>{},
      final Map<String, EntityMetadata> ancestorMetadata = const {},
      this.parentName,
      final List<String> searchablePath = const [],
      this.hierarchyLevel,
      this.hierarchyVersion = 0,
      this.lastHierarchyUpdate,
      required this.owner,
      required this.createdBy,
      required this.lastModifiedBy,
      this.accessLastBy,
      this.lockedBy,
      this.lockExpiresAt,
      this.deletedBy,
      @Assert('modificationHistory.length <= EntityConstants.maxHistoryLimit')
      final List<UserAction> modificationHistory = const <UserAction>[],
      @Assert('accessHistory.length <= EntityConstants.maxHistoryLimit')
      final List<UserAction> accessHistory = const <UserAction>[],
      this.accessIsPublic = EntityConstants.defaultIsPublic,
      this.accessCount = EntityConstants.defaultAccessCount,
      final List<String> tags = const [],
      final Map<String, String> labels = const {},
      this.priority = EntityConstants.defaultPriority,
      this.workflowStage = EntityConstants.defaultWorkflowStage,
      this.expiresAt,
      final Map<String, Object> syncMetadata = const {},
      this.lastSyncedVersion,
      final Map<String, Object> queryIndex = const {},
      this.additionalData,
      this.eventVersion = 0,
      final List<String> eventPending = const <String>[],
      final Map<String, Object> eventMetadata = const <String, Object>{},
      this.historyLimit = EntityConstants.defaultHistoryLimit,
      this.entityVersion = EntityConstants.initialVersion,
      this.structureVersion = EntityConstants.initialVersion,
      this.lastKnownVersion,
      this.distributedLockId,
      this.distributedLockExpiry,
      this.distributedLockNode,
      final Map<String, dynamic> lockMetadata = const {},
      final Map<String, int> versionVectors = const {},
      this.lockTimeout = EntityConstants.defaultLockTimeout,
      final Map<String, List<double>> aiEmbeddings = const {},
      final Map<String, double> aiScores = const {},
      final Map<String, String> aiMetadata = const {},
      final List<String> aiTags = const [],
      final Map<String, Object> aiAnnotations = const {},
      this.lastAiProcessingTime,
      this.aiProcessingVersion})
      : _metaAttributes = metaAttributes,
        _relations = relations,
        _hierarchyAncestors = hierarchyAncestors,
        _childrenIds = childrenIds,
        _subCollections = subCollections,
        _ancestorMetadata = ancestorMetadata,
        _searchablePath = searchablePath,
        _modificationHistory = modificationHistory,
        _accessHistory = accessHistory,
        _tags = tags,
        _labels = labels,
        _syncMetadata = syncMetadata,
        _queryIndex = queryIndex,
        _eventPending = eventPending,
        _eventMetadata = eventMetadata,
        _lockMetadata = lockMetadata,
        _versionVectors = versionVectors,
        _aiEmbeddings = aiEmbeddings,
        _aiScores = aiScores,
        _aiMetadata = aiMetadata,
        _aiTags = aiTags,
        _aiAnnotations = aiAnnotations,
        super._();

  factory _$BaseEntityImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BaseEntityImplFromJson(json, fromJsonT);

// Update identifiers to use EntityId
  @override
  final EntityId entityId;
// renamed from uuid to id
  @override
  final String entityName;
  @override
  final String? entityDescription;
// Metadata
  @override
  final DateTime metaCreatedAt;
  @override
  final DateTime metaUpdatedAt;
  @override
  @JsonKey()
  final String schemaVersion;
  @override
  @JsonKey()
  final EntityStatus status;
  final Map<String, Object> _metaAttributes;
  @override
  @JsonKey()
  Map<String, Object> get metaAttributes {
    if (_metaAttributes is EqualUnmodifiableMapView) return _metaAttributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metaAttributes);
  }

// Hierarchy and Relations (using Materialized Path)
  @override
  final String? hierarchyPath;
  @override
  @JsonKey()
  final int hierarchyDepth;
  final Map<String, List<EntityId>> _relations;
  @override
  @JsonKey()
  Map<String, List<EntityId>> get relations {
    if (_relations is EqualUnmodifiableMapView) return _relations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_relations);
  }

  @override
  @JsonKey()
  final int maxDepth;
// Maximum allowed depth for hierarchical structures
// Firestore Hierarchy Optimizations
  final List<EntityId> _hierarchyAncestors;
// Maximum allowed depth for hierarchical structures
// Firestore Hierarchy Optimizations
  @override
  @JsonKey()
  List<EntityId> get hierarchyAncestors {
    if (_hierarchyAncestors is EqualUnmodifiableListView)
      return _hierarchyAncestors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hierarchyAncestors);
  }

// For ancestor queries
  @override
  final EntityId? hierarchyParentId;
// Direct parent reference
  final List<EntityId> _childrenIds;
// Direct parent reference
  @override
  @JsonKey()
  List<EntityId> get childrenIds {
    if (_childrenIds is EqualUnmodifiableListView) return _childrenIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childrenIds);
  }

// Direct children
// Collection paths for nested data
  final Map<String, String> _subCollections;
// Direct children
// Collection paths for nested data
  @override
  @JsonKey()
  Map<String, String> get subCollections {
    if (_subCollections is EqualUnmodifiableMapView) return _subCollections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_subCollections);
  }

// e.g. {'documents': 'documents/', 'attachments': 'attachments/'}
// Denormalized data for quick access
  final Map<String, EntityMetadata> _ancestorMetadata;
// e.g. {'documents': 'documents/', 'attachments': 'attachments/'}
// Denormalized data for quick access
  @override
  @JsonKey()
  Map<String, EntityMetadata> get ancestorMetadata {
    if (_ancestorMetadata is EqualUnmodifiableMapView) return _ancestorMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ancestorMetadata);
  }

// Contains name, type, etc
  @override
  final String? parentName;
// Indexed fields for querying
  final List<String> _searchablePath;
// Indexed fields for querying
  @override
  @JsonKey()
  List<String> get searchablePath {
    if (_searchablePath is EqualUnmodifiableListView) return _searchablePath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchablePath);
  }

// ['dept-001', 'dept-001/dept-002']
  @override
  final String? hierarchyLevel;
// Make nullable
// Batch operation tracking
  @override
  @JsonKey()
  final int hierarchyVersion;
// For concurrent updates
  @override
  final DateTime? lastHierarchyUpdate;
// User Management
  @override
  final UserAction owner;
// Replace ownerId
  @override
  final UserAction createdBy;
  @override
  final UserAction lastModifiedBy;
  @override
  final UserAction? accessLastBy;
// Locking
  @override
  final UserAction? lockedBy;
// Replace lockId with full user context
  @override
  final DateTime? lockExpiresAt;
// Deletion tracking
  @override
  final UserAction? deletedBy;
// Combines deletedAt + deletedBy
// Optional: Add modification history
  final List<UserAction> _modificationHistory;
// Combines deletedAt + deletedBy
// Optional: Add modification history
  @override
  @JsonKey()
  @Assert('modificationHistory.length <= EntityConstants.maxHistoryLimit')
  List<UserAction> get modificationHistory {
    if (_modificationHistory is EqualUnmodifiableListView)
      return _modificationHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modificationHistory);
  }

// Optional: Add access history
  final List<UserAction> _accessHistory;
// Optional: Add access history
  @override
  @JsonKey()
  @Assert('accessHistory.length <= EntityConstants.maxHistoryLimit')
  List<UserAction> get accessHistory {
    if (_accessHistory is EqualUnmodifiableListView) return _accessHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accessHistory);
  }

  @override
  @JsonKey()
  final bool accessIsPublic;
// Access Tracking
  @override
  @JsonKey()
  final int accessCount;
// Classification
  final List<String> _tags;
// Classification
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final Map<String, String> _labels;
  @override
  @JsonKey()
  Map<String, String> get labels {
    if (_labels is EqualUnmodifiableMapView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_labels);
  }

// Workflow and Priority
  @override
  @JsonKey()
  final Priority priority;
  @override
  @JsonKey()
  final WorkflowStage workflowStage;
// Time-related
  @override
  final DateTime? expiresAt;
// Sync and Lock Mechanisms
  final Map<String, Object> _syncMetadata;
// Sync and Lock Mechanisms
  @override
  @JsonKey()
  Map<String, Object> get syncMetadata {
    if (_syncMetadata is EqualUnmodifiableMapView) return _syncMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_syncMetadata);
  }

  @override
  final String? lastSyncedVersion;
// Firestore-specific indexing
  final Map<String, Object> _queryIndex;
// Firestore-specific indexing
  @override
  @JsonKey()
  Map<String, Object> get queryIndex {
    if (_queryIndex is EqualUnmodifiableMapView) return _queryIndex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_queryIndex);
  }

// Custom indexes for complex queries
// Extension point
  @override
  final T? additionalData;

  /// Event sourcing support
  @override
  @JsonKey()
  final int eventVersion;
  final List<String> _eventPending;
  @override
  @JsonKey()
  List<String> get eventPending {
    if (_eventPending is EqualUnmodifiableListView) return _eventPending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventPending);
  }

  final Map<String, Object> _eventMetadata;
  @override
  @JsonKey()
  Map<String, Object> get eventMetadata {
    if (_eventMetadata is EqualUnmodifiableMapView) return _eventMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_eventMetadata);
  }

// Add history size configuration
  @override
  @JsonKey()
  final int historyLimit;
// Add version control fields
  @override
  @JsonKey()
  final int entityVersion;
// For data changes
  @override
  @JsonKey()
  final int structureVersion;
// For structure changes
  @override
  final String? lastKnownVersion;
// For CAS operations
// Add distributed lock fields
  @override
  final String? distributedLockId;
  @override
  final DateTime? distributedLockExpiry;
  @override
  final String? distributedLockNode;
  final Map<String, dynamic> _lockMetadata;
  @override
  @JsonKey()
  Map<String, dynamic> get lockMetadata {
    if (_lockMetadata is EqualUnmodifiableMapView) return _lockMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_lockMetadata);
  }

// Add version vectors for conflict resolution
  final Map<String, int> _versionVectors;
// Add version vectors for conflict resolution
  @override
  @JsonKey()
  Map<String, int> get versionVectors {
    if (_versionVectors is EqualUnmodifiableMapView) return _versionVectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_versionVectors);
  }

  @override
  @JsonKey()
  final Duration lockTimeout;
// Add AI/LLM integration fields
  final Map<String, List<double>> _aiEmbeddings;
// Add AI/LLM integration fields
  @override
  @JsonKey()
  Map<String, List<double>> get aiEmbeddings {
    if (_aiEmbeddings is EqualUnmodifiableMapView) return _aiEmbeddings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_aiEmbeddings);
  }

// Store embeddings from different AI models
  final Map<String, double> _aiScores;
// Store embeddings from different AI models
  @override
  @JsonKey()
  Map<String, double> get aiScores {
    if (_aiScores is EqualUnmodifiableMapView) return _aiScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_aiScores);
  }

// Store relevance/confidence scores
  final Map<String, String> _aiMetadata;
// Store relevance/confidence scores
  @override
  @JsonKey()
  Map<String, String> get aiMetadata {
    if (_aiMetadata is EqualUnmodifiableMapView) return _aiMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_aiMetadata);
  }

// Store model-specific metadata
  final List<String> _aiTags;
// Store model-specific metadata
  @override
  @JsonKey()
  List<String> get aiTags {
    if (_aiTags is EqualUnmodifiableListView) return _aiTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aiTags);
  }

// AI-generated tags
  final Map<String, Object> _aiAnnotations;
// AI-generated tags
  @override
  @JsonKey()
  Map<String, Object> get aiAnnotations {
    if (_aiAnnotations is EqualUnmodifiableMapView) return _aiAnnotations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_aiAnnotations);
  }

// AI-generated annotations
  @override
  final DateTime? lastAiProcessingTime;
  @override
  final String? aiProcessingVersion;

  @override
  String toString() {
    return 'BaseEntity<$T>(entityId: $entityId, entityName: $entityName, entityDescription: $entityDescription, metaCreatedAt: $metaCreatedAt, metaUpdatedAt: $metaUpdatedAt, schemaVersion: $schemaVersion, status: $status, metaAttributes: $metaAttributes, hierarchyPath: $hierarchyPath, hierarchyDepth: $hierarchyDepth, relations: $relations, maxDepth: $maxDepth, hierarchyAncestors: $hierarchyAncestors, hierarchyParentId: $hierarchyParentId, childrenIds: $childrenIds, subCollections: $subCollections, ancestorMetadata: $ancestorMetadata, parentName: $parentName, searchablePath: $searchablePath, hierarchyLevel: $hierarchyLevel, hierarchyVersion: $hierarchyVersion, lastHierarchyUpdate: $lastHierarchyUpdate, owner: $owner, createdBy: $createdBy, lastModifiedBy: $lastModifiedBy, accessLastBy: $accessLastBy, lockedBy: $lockedBy, lockExpiresAt: $lockExpiresAt, deletedBy: $deletedBy, modificationHistory: $modificationHistory, accessHistory: $accessHistory, accessIsPublic: $accessIsPublic, accessCount: $accessCount, tags: $tags, labels: $labels, priority: $priority, workflowStage: $workflowStage, expiresAt: $expiresAt, syncMetadata: $syncMetadata, lastSyncedVersion: $lastSyncedVersion, queryIndex: $queryIndex, additionalData: $additionalData, eventVersion: $eventVersion, eventPending: $eventPending, eventMetadata: $eventMetadata, historyLimit: $historyLimit, entityVersion: $entityVersion, structureVersion: $structureVersion, lastKnownVersion: $lastKnownVersion, distributedLockId: $distributedLockId, distributedLockExpiry: $distributedLockExpiry, distributedLockNode: $distributedLockNode, lockMetadata: $lockMetadata, versionVectors: $versionVectors, lockTimeout: $lockTimeout, aiEmbeddings: $aiEmbeddings, aiScores: $aiScores, aiMetadata: $aiMetadata, aiTags: $aiTags, aiAnnotations: $aiAnnotations, lastAiProcessingTime: $lastAiProcessingTime, aiProcessingVersion: $aiProcessingVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEntityImpl<T> &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.entityName, entityName) ||
                other.entityName == entityName) &&
            (identical(other.entityDescription, entityDescription) ||
                other.entityDescription == entityDescription) &&
            (identical(other.metaCreatedAt, metaCreatedAt) ||
                other.metaCreatedAt == metaCreatedAt) &&
            (identical(other.metaUpdatedAt, metaUpdatedAt) ||
                other.metaUpdatedAt == metaUpdatedAt) &&
            (identical(other.schemaVersion, schemaVersion) ||
                other.schemaVersion == schemaVersion) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._metaAttributes, _metaAttributes) &&
            (identical(other.hierarchyPath, hierarchyPath) ||
                other.hierarchyPath == hierarchyPath) &&
            (identical(other.hierarchyDepth, hierarchyDepth) ||
                other.hierarchyDepth == hierarchyDepth) &&
            const DeepCollectionEquality()
                .equals(other._relations, _relations) &&
            (identical(other.maxDepth, maxDepth) ||
                other.maxDepth == maxDepth) &&
            const DeepCollectionEquality()
                .equals(other._hierarchyAncestors, _hierarchyAncestors) &&
            (identical(other.hierarchyParentId, hierarchyParentId) ||
                other.hierarchyParentId == hierarchyParentId) &&
            const DeepCollectionEquality()
                .equals(other._childrenIds, _childrenIds) &&
            const DeepCollectionEquality()
                .equals(other._subCollections, _subCollections) &&
            const DeepCollectionEquality()
                .equals(other._ancestorMetadata, _ancestorMetadata) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName) &&
            const DeepCollectionEquality()
                .equals(other._searchablePath, _searchablePath) &&
            (identical(other.hierarchyLevel, hierarchyLevel) ||
                other.hierarchyLevel == hierarchyLevel) &&
            (identical(other.hierarchyVersion, hierarchyVersion) ||
                other.hierarchyVersion == hierarchyVersion) &&
            (identical(other.lastHierarchyUpdate, lastHierarchyUpdate) ||
                other.lastHierarchyUpdate == lastHierarchyUpdate) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                other.lastModifiedBy == lastModifiedBy) &&
            (identical(other.accessLastBy, accessLastBy) ||
                other.accessLastBy == accessLastBy) &&
            (identical(other.lockedBy, lockedBy) ||
                other.lockedBy == lockedBy) &&
            (identical(other.lockExpiresAt, lockExpiresAt) ||
                other.lockExpiresAt == lockExpiresAt) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy) &&
            const DeepCollectionEquality()
                .equals(other._modificationHistory, _modificationHistory) &&
            const DeepCollectionEquality()
                .equals(other._accessHistory, _accessHistory) &&
            (identical(other.accessIsPublic, accessIsPublic) ||
                other.accessIsPublic == accessIsPublic) &&
            (identical(other.accessCount, accessCount) ||
                other.accessCount == accessCount) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.workflowStage, workflowStage) ||
                other.workflowStage == workflowStage) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality()
                .equals(other._syncMetadata, _syncMetadata) &&
            (identical(other.lastSyncedVersion, lastSyncedVersion) ||
                other.lastSyncedVersion == lastSyncedVersion) &&
            const DeepCollectionEquality()
                .equals(other._queryIndex, _queryIndex) &&
            const DeepCollectionEquality()
                .equals(other.additionalData, additionalData) &&
            (identical(other.eventVersion, eventVersion) ||
                other.eventVersion == eventVersion) &&
            const DeepCollectionEquality()
                .equals(other._eventPending, _eventPending) &&
            const DeepCollectionEquality()
                .equals(other._eventMetadata, _eventMetadata) &&
            (identical(other.historyLimit, historyLimit) ||
                other.historyLimit == historyLimit) &&
            (identical(other.entityVersion, entityVersion) || other.entityVersion == entityVersion) &&
            (identical(other.structureVersion, structureVersion) || other.structureVersion == structureVersion) &&
            (identical(other.lastKnownVersion, lastKnownVersion) || other.lastKnownVersion == lastKnownVersion) &&
            (identical(other.distributedLockId, distributedLockId) || other.distributedLockId == distributedLockId) &&
            (identical(other.distributedLockExpiry, distributedLockExpiry) || other.distributedLockExpiry == distributedLockExpiry) &&
            (identical(other.distributedLockNode, distributedLockNode) || other.distributedLockNode == distributedLockNode) &&
            const DeepCollectionEquality().equals(other._lockMetadata, _lockMetadata) &&
            const DeepCollectionEquality().equals(other._versionVectors, _versionVectors) &&
            (identical(other.lockTimeout, lockTimeout) || other.lockTimeout == lockTimeout) &&
            const DeepCollectionEquality().equals(other._aiEmbeddings, _aiEmbeddings) &&
            const DeepCollectionEquality().equals(other._aiScores, _aiScores) &&
            const DeepCollectionEquality().equals(other._aiMetadata, _aiMetadata) &&
            const DeepCollectionEquality().equals(other._aiTags, _aiTags) &&
            const DeepCollectionEquality().equals(other._aiAnnotations, _aiAnnotations) &&
            (identical(other.lastAiProcessingTime, lastAiProcessingTime) || other.lastAiProcessingTime == lastAiProcessingTime) &&
            (identical(other.aiProcessingVersion, aiProcessingVersion) || other.aiProcessingVersion == aiProcessingVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        entityId,
        entityName,
        entityDescription,
        metaCreatedAt,
        metaUpdatedAt,
        schemaVersion,
        status,
        const DeepCollectionEquality().hash(_metaAttributes),
        hierarchyPath,
        hierarchyDepth,
        const DeepCollectionEquality().hash(_relations),
        maxDepth,
        const DeepCollectionEquality().hash(_hierarchyAncestors),
        hierarchyParentId,
        const DeepCollectionEquality().hash(_childrenIds),
        const DeepCollectionEquality().hash(_subCollections),
        const DeepCollectionEquality().hash(_ancestorMetadata),
        parentName,
        const DeepCollectionEquality().hash(_searchablePath),
        hierarchyLevel,
        hierarchyVersion,
        lastHierarchyUpdate,
        owner,
        createdBy,
        lastModifiedBy,
        accessLastBy,
        lockedBy,
        lockExpiresAt,
        deletedBy,
        const DeepCollectionEquality().hash(_modificationHistory),
        const DeepCollectionEquality().hash(_accessHistory),
        accessIsPublic,
        accessCount,
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_labels),
        priority,
        workflowStage,
        expiresAt,
        const DeepCollectionEquality().hash(_syncMetadata),
        lastSyncedVersion,
        const DeepCollectionEquality().hash(_queryIndex),
        const DeepCollectionEquality().hash(additionalData),
        eventVersion,
        const DeepCollectionEquality().hash(_eventPending),
        const DeepCollectionEquality().hash(_eventMetadata),
        historyLimit,
        entityVersion,
        structureVersion,
        lastKnownVersion,
        distributedLockId,
        distributedLockExpiry,
        distributedLockNode,
        const DeepCollectionEquality().hash(_lockMetadata),
        const DeepCollectionEquality().hash(_versionVectors),
        lockTimeout,
        const DeepCollectionEquality().hash(_aiEmbeddings),
        const DeepCollectionEquality().hash(_aiScores),
        const DeepCollectionEquality().hash(_aiMetadata),
        const DeepCollectionEquality().hash(_aiTags),
        const DeepCollectionEquality().hash(_aiAnnotations),
        lastAiProcessingTime,
        aiProcessingVersion
      ]);

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseEntityImplCopyWith<T, _$BaseEntityImpl<T>> get copyWith =>
      __$$BaseEntityImplCopyWithImpl<T, _$BaseEntityImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseEntityImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseEntity<T extends Object> extends BaseEntity<T> {
  const factory _BaseEntity(
      {required final EntityId entityId,
      required final String entityName,
      final String? entityDescription,
      required final DateTime metaCreatedAt,
      required final DateTime metaUpdatedAt,
      final String schemaVersion,
      final EntityStatus status,
      final Map<String, Object> metaAttributes,
      final String? hierarchyPath,
      final int hierarchyDepth,
      final Map<String, List<EntityId>> relations,
      final int maxDepth,
      final List<EntityId> hierarchyAncestors,
      final EntityId? hierarchyParentId,
      final List<EntityId> childrenIds,
      final Map<String, String> subCollections,
      final Map<String, EntityMetadata> ancestorMetadata,
      final String? parentName,
      final List<String> searchablePath,
      final String? hierarchyLevel,
      final int hierarchyVersion,
      final DateTime? lastHierarchyUpdate,
      required final UserAction owner,
      required final UserAction createdBy,
      required final UserAction lastModifiedBy,
      final UserAction? accessLastBy,
      final UserAction? lockedBy,
      final DateTime? lockExpiresAt,
      final UserAction? deletedBy,
      @Assert('modificationHistory.length <= EntityConstants.maxHistoryLimit')
      final List<UserAction> modificationHistory,
      @Assert('accessHistory.length <= EntityConstants.maxHistoryLimit')
      final List<UserAction> accessHistory,
      final bool accessIsPublic,
      final int accessCount,
      final List<String> tags,
      final Map<String, String> labels,
      final Priority priority,
      final WorkflowStage workflowStage,
      final DateTime? expiresAt,
      final Map<String, Object> syncMetadata,
      final String? lastSyncedVersion,
      final Map<String, Object> queryIndex,
      final T? additionalData,
      final int eventVersion,
      final List<String> eventPending,
      final Map<String, Object> eventMetadata,
      final int historyLimit,
      final int entityVersion,
      final int structureVersion,
      final String? lastKnownVersion,
      final String? distributedLockId,
      final DateTime? distributedLockExpiry,
      final String? distributedLockNode,
      final Map<String, dynamic> lockMetadata,
      final Map<String, int> versionVectors,
      final Duration lockTimeout,
      final Map<String, List<double>> aiEmbeddings,
      final Map<String, double> aiScores,
      final Map<String, String> aiMetadata,
      final List<String> aiTags,
      final Map<String, Object> aiAnnotations,
      final DateTime? lastAiProcessingTime,
      final String? aiProcessingVersion}) = _$BaseEntityImpl<T>;
  const _BaseEntity._() : super._();

  factory _BaseEntity.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BaseEntityImpl<T>.fromJson;

// Update identifiers to use EntityId
  @override
  EntityId get entityId; // renamed from uuid to id
  @override
  String get entityName;
  @override
  String? get entityDescription; // Metadata
  @override
  DateTime get metaCreatedAt;
  @override
  DateTime get metaUpdatedAt;
  @override
  String get schemaVersion;
  @override
  EntityStatus get status;
  @override
  Map<String, Object>
      get metaAttributes; // Hierarchy and Relations (using Materialized Path)
  @override
  String? get hierarchyPath;
  @override
  int get hierarchyDepth;
  @override
  Map<String, List<EntityId>> get relations;
  @override
  int get maxDepth; // Maximum allowed depth for hierarchical structures
// Firestore Hierarchy Optimizations
  @override
  List<EntityId> get hierarchyAncestors; // For ancestor queries
  @override
  EntityId? get hierarchyParentId; // Direct parent reference
  @override
  List<EntityId> get childrenIds; // Direct children
// Collection paths for nested data
  @override
  Map<String, String>
      get subCollections; // e.g. {'documents': 'documents/', 'attachments': 'attachments/'}
// Denormalized data for quick access
  @override
  Map<String, EntityMetadata> get ancestorMetadata; // Contains name, type, etc
  @override
  String? get parentName; // Indexed fields for querying
  @override
  List<String> get searchablePath; // ['dept-001', 'dept-001/dept-002']
  @override
  String? get hierarchyLevel; // Make nullable
// Batch operation tracking
  @override
  int get hierarchyVersion; // For concurrent updates
  @override
  DateTime? get lastHierarchyUpdate; // User Management
  @override
  UserAction get owner; // Replace ownerId
  @override
  UserAction get createdBy;
  @override
  UserAction get lastModifiedBy;
  @override
  UserAction? get accessLastBy; // Locking
  @override
  UserAction? get lockedBy; // Replace lockId with full user context
  @override
  DateTime? get lockExpiresAt; // Deletion tracking
  @override
  UserAction? get deletedBy; // Combines deletedAt + deletedBy
// Optional: Add modification history
  @override
  @Assert('modificationHistory.length <= EntityConstants.maxHistoryLimit')
  List<UserAction> get modificationHistory; // Optional: Add access history
  @override
  @Assert('accessHistory.length <= EntityConstants.maxHistoryLimit')
  List<UserAction> get accessHistory;
  @override
  bool get accessIsPublic; // Access Tracking
  @override
  int get accessCount; // Classification
  @override
  List<String> get tags;
  @override
  Map<String, String> get labels; // Workflow and Priority
  @override
  Priority get priority;
  @override
  WorkflowStage get workflowStage; // Time-related
  @override
  DateTime? get expiresAt; // Sync and Lock Mechanisms
  @override
  Map<String, Object> get syncMetadata;
  @override
  String? get lastSyncedVersion; // Firestore-specific indexing
  @override
  Map<String, Object> get queryIndex; // Custom indexes for complex queries
// Extension point
  @override
  T? get additionalData;

  /// Event sourcing support
  @override
  int get eventVersion;
  @override
  List<String> get eventPending;
  @override
  Map<String, Object> get eventMetadata; // Add history size configuration
  @override
  int get historyLimit; // Add version control fields
  @override
  int get entityVersion; // For data changes
  @override
  int get structureVersion; // For structure changes
  @override
  String? get lastKnownVersion; // For CAS operations
// Add distributed lock fields
  @override
  String? get distributedLockId;
  @override
  DateTime? get distributedLockExpiry;
  @override
  String? get distributedLockNode;
  @override
  Map<String, dynamic>
      get lockMetadata; // Add version vectors for conflict resolution
  @override
  Map<String, int> get versionVectors;
  @override
  Duration get lockTimeout; // Add AI/LLM integration fields
  @override
  Map<String, List<double>>
      get aiEmbeddings; // Store embeddings from different AI models
  @override
  Map<String, double> get aiScores; // Store relevance/confidence scores
  @override
  Map<String, String> get aiMetadata; // Store model-specific metadata
  @override
  List<String> get aiTags; // AI-generated tags
  @override
  Map<String, Object> get aiAnnotations; // AI-generated annotations
  @override
  DateTime? get lastAiProcessingTime;
  @override
  String? get aiProcessingVersion;

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseEntityImplCopyWith<T, _$BaseEntityImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

EntityMetadata _$EntityMetadataFromJson(Map<String, dynamic> json) {
  return _EntityMetadata.fromJson(json);
}

/// @nodoc
mixin _$EntityMetadata {
  String get displayName => throw _privateConstructorUsedError;
  String get entityType => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get lastNameUpdate => throw _privateConstructorUsedError;
  Map<String, String> get searchTerms => throw _privateConstructorUsedError;

  /// Serializes this EntityMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntityMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityMetadataCopyWith<EntityMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityMetadataCopyWith<$Res> {
  factory $EntityMetadataCopyWith(
          EntityMetadata value, $Res Function(EntityMetadata) then) =
      _$EntityMetadataCopyWithImpl<$Res, EntityMetadata>;
  @useResult
  $Res call(
      {String displayName,
      String entityType,
      String? description,
      DateTime? lastNameUpdate,
      Map<String, String> searchTerms});
}

/// @nodoc
class _$EntityMetadataCopyWithImpl<$Res, $Val extends EntityMetadata>
    implements $EntityMetadataCopyWith<$Res> {
  _$EntityMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? entityType = null,
    Object? description = freezed,
    Object? lastNameUpdate = freezed,
    Object? searchTerms = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameUpdate: freezed == lastNameUpdate
          ? _value.lastNameUpdate
          : lastNameUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      searchTerms: null == searchTerms
          ? _value.searchTerms
          : searchTerms // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityMetadataImplCopyWith<$Res>
    implements $EntityMetadataCopyWith<$Res> {
  factory _$$EntityMetadataImplCopyWith(_$EntityMetadataImpl value,
          $Res Function(_$EntityMetadataImpl) then) =
      __$$EntityMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String displayName,
      String entityType,
      String? description,
      DateTime? lastNameUpdate,
      Map<String, String> searchTerms});
}

/// @nodoc
class __$$EntityMetadataImplCopyWithImpl<$Res>
    extends _$EntityMetadataCopyWithImpl<$Res, _$EntityMetadataImpl>
    implements _$$EntityMetadataImplCopyWith<$Res> {
  __$$EntityMetadataImplCopyWithImpl(
      _$EntityMetadataImpl _value, $Res Function(_$EntityMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? entityType = null,
    Object? description = freezed,
    Object? lastNameUpdate = freezed,
    Object? searchTerms = null,
  }) {
    return _then(_$EntityMetadataImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameUpdate: freezed == lastNameUpdate
          ? _value.lastNameUpdate
          : lastNameUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      searchTerms: null == searchTerms
          ? _value._searchTerms
          : searchTerms // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntityMetadataImpl extends _EntityMetadata {
  const _$EntityMetadataImpl(
      {required this.displayName,
      required this.entityType,
      this.description,
      this.lastNameUpdate,
      final Map<String, String> searchTerms = const {}})
      : _searchTerms = searchTerms,
        super._();

  factory _$EntityMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityMetadataImplFromJson(json);

  @override
  final String displayName;
  @override
  final String entityType;
  @override
  final String? description;
  @override
  final DateTime? lastNameUpdate;
  final Map<String, String> _searchTerms;
  @override
  @JsonKey()
  Map<String, String> get searchTerms {
    if (_searchTerms is EqualUnmodifiableMapView) return _searchTerms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_searchTerms);
  }

  @override
  String toString() {
    return 'EntityMetadata(displayName: $displayName, entityType: $entityType, description: $description, lastNameUpdate: $lastNameUpdate, searchTerms: $searchTerms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityMetadataImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lastNameUpdate, lastNameUpdate) ||
                other.lastNameUpdate == lastNameUpdate) &&
            const DeepCollectionEquality()
                .equals(other._searchTerms, _searchTerms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      displayName,
      entityType,
      description,
      lastNameUpdate,
      const DeepCollectionEquality().hash(_searchTerms));

  /// Create a copy of EntityMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityMetadataImplCopyWith<_$EntityMetadataImpl> get copyWith =>
      __$$EntityMetadataImplCopyWithImpl<_$EntityMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityMetadataImplToJson(
      this,
    );
  }
}

abstract class _EntityMetadata extends EntityMetadata {
  const factory _EntityMetadata(
      {required final String displayName,
      required final String entityType,
      final String? description,
      final DateTime? lastNameUpdate,
      final Map<String, String> searchTerms}) = _$EntityMetadataImpl;
  const _EntityMetadata._() : super._();

  factory _EntityMetadata.fromJson(Map<String, dynamic> json) =
      _$EntityMetadataImpl.fromJson;

  @override
  String get displayName;
  @override
  String get entityType;
  @override
  String? get description;
  @override
  DateTime? get lastNameUpdate;
  @override
  Map<String, String> get searchTerms;

  /// Create a copy of EntityMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityMetadataImplCopyWith<_$EntityMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
