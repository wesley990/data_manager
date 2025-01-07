/// A versatile base entity class that provides a foundation for domain objects with advanced features.
///
/// This class implements a robust entity management system with support for:
/// * Hierarchical data structures using materialized paths
/// * Optimistic locking mechanism
/// * Access tracking and history
/// * Version control and schema management
/// * Comprehensive metadata management
/// * Workflow states and priorities
///
/// The class is generic, accepting a type parameter `T` that represents additional
/// data specific to the entity type.

/// The entity supports several extension methods through:
/// * [LockManagement] - For handling entity locking mechanisms
/// * [TrackingManagement] - For tracking access and modifications
/// * [EntityUtilities] - For general utility operations
/// * [HierarchyManagement] - For managing hierarchical relationships
/// * [MaterializedPathManagement] - For handling materialized paths
///
/// Key features:
/// * Immutable data structure using Freezed
/// * Built-in version control
/// * Hierarchical data management
/// * Access control and tracking
/// * History management with configurable depth
/// * Extensible attribute system
/// * Type-safe additional data handling
///
/// The entity maintains several types of history:
/// * Modification history - Tracks changes to the entity
/// * Access history - Tracks when and who accessed the entity
/// * Hierarchy updates - Tracks changes to the entity's position in hierarchies
///
/// For synchronization purposes, the entity includes:
/// * Schema versioning
/// * Hierarchy versioning
/// * Sync metadata
/// * Conflict resolution support
///
/// Performance optimizations:
/// * Denormalized ancestor data
/// * Pre-built search paths
/// * Custom query indexes
/// * Materialized paths for efficient traversal
library;

import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/domain/value_objects/user_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_entity.freezed.dart';
part 'base_entity.g.dart';

// Add type aliases at the top
typedef VersionVector = Map<String, int>;
typedef LockMetadata = Map<String, dynamic>;
typedef EventMetadata = Map<String, Object>;
typedef QueryIndex = Map<String, Object>;

// Group constants by category
class EntityConstants {
  // Status and workflow
  static const defaultVersion = '1.0.0';
  static const defaultStatus = EntityStatus.active;
  static const defaultPriority = Priority.medium;
  static const defaultWorkflowStage = WorkflowStage.draft;

  // Access control
  static const defaultIsPublic = true;
  static const defaultAccessCount = 0;

  // History limits
  static const maxHistoryLength = 50;
  static const defaultHistoryLimit = 50;
  static const maxHistoryLimit = 100;
  static const initialVersion = 1;

  // Lock durations
  static const defaultLockTimeout = Duration(minutes: 15);
  static const defaultLockExtensionPeriod = Duration(minutes: 5);
  static const minimumLockDuration = Duration(seconds: 30);
  static const maximumLockDuration = Duration(hours: 24);

  static const maximumHierarchyDepth = 10;
}

// Remove the PathManagement mixin and move its constants here
class PathConstants {
  static const pathSeparator = '/';
  static const encodedPathSeparator = '%2F';
  static const invalidPathChars = r'[<>:"|?*\x00-\x1F]';
  static const maxPathLength = 1024;
  static const maxSegmentLength = 255;
}

@Freezed(genericArgumentFactories: true)
class BaseEntity<T extends Object> with _$BaseEntity<T> {
  const BaseEntity._();

  static Clock clock = SystemClock(); // Default implementation

  const factory BaseEntity({
    // Update identifiers to use EntityId
    required EntityId entityId, // renamed from uuid to id
    required String entityName,
    String? entityDescription,

    // Metadata
    required DateTime metaCreatedAt,
    required DateTime metaUpdatedAt,
    @Default(EntityConstants.defaultVersion) String schemaVersion,
    @Default(EntityConstants.defaultStatus) EntityStatus status,
    @Default(<String, Object>{}) Map<String, Object> metaAttributes,

    // Hierarchy and Relations (using Materialized Path)
    String? hierarchyPath,
    @Default(0) int hierarchyDepth,
    @Default(<String, List<EntityId>>{}) Map<String, List<EntityId>> relations,
    @Default(10)
    int maxDepth, // Maximum allowed depth for hierarchical structures

    // Firestore Hierarchy Optimizations
    @Default(<EntityId>[])
    List<EntityId> hierarchyAncestors, // For ancestor queries
    EntityId? hierarchyParentId, // Direct parent reference
    @Default(<EntityId>[]) List<EntityId> childrenIds, // Direct children

    // Collection paths for nested data
    @Default(<String, String>{})
    Map<String, String>
        subCollections, // e.g. {'documents': 'documents/', 'attachments': 'attachments/'}

    // Denormalized data for quick access
    @Default({})
    Map<String, EntityMetadata> ancestorMetadata, // Contains name, type, etc
    String? parentName,

    // Indexed fields for querying
    @Default([])
    List<String> searchablePath, // ['dept-001', 'dept-001/dept-002']
    String? hierarchyLevel, // Make nullable

    // Batch operation tracking
    @Default(0) int hierarchyVersion, // For concurrent updates
    DateTime? lastHierarchyUpdate,

    // User Management
    required UserAction owner, // Replace ownerId
    required UserAction createdBy,
    required UserAction lastModifiedBy,
    UserAction? accessLastBy,

    // Locking
    UserAction? lockedBy, // Replace lockId with full user context
    DateTime? lockExpiresAt,

    // Deletion tracking
    UserAction? deletedBy, // Combines deletedAt + deletedBy

    // Optional: Add modification history
    @Default(<UserAction>[])
    @Assert('modificationHistory.length <= EntityConstants.maxHistoryLimit')
    List<UserAction> modificationHistory,

    // Optional: Add access history
    @Default(<UserAction>[])
    @Assert('accessHistory.length <= EntityConstants.maxHistoryLimit')
    List<UserAction> accessHistory,
    @Default(EntityConstants.defaultIsPublic) bool accessIsPublic,

    // Access Tracking
    @Default(EntityConstants.defaultAccessCount) int accessCount,

    // Classification
    @Default([]) List<String> tags,
    @Default({}) Map<String, String> labels,

    // Workflow and Priority
    @Default(EntityConstants.defaultPriority) Priority priority,
    @Default(EntityConstants.defaultWorkflowStage) WorkflowStage workflowStage,

    // Time-related
    DateTime? expiresAt,

    // Sync and Lock Mechanisms
    @Default({}) Map<String, Object> syncMetadata,
    String? lastSyncedVersion,

    // Firestore-specific indexing
    @Default({})
    Map<String, Object> queryIndex, // Custom indexes for complex queries

    // Extension point
    T? additionalData,

    /// Event sourcing support
    @Default(0) int eventVersion,
    @Default(<String>[]) List<String> eventPending,
    @Default(<String, Object>{}) Map<String, Object> eventMetadata,

    // Add history size configuration
    @Default(EntityConstants.defaultHistoryLimit) int historyLimit,

    // Add version control fields
    @Default(EntityConstants.initialVersion)
    int entityVersion, // For data changes
    @Default(EntityConstants.initialVersion)
    int structureVersion, // For structure changes
    String? lastKnownVersion, // For CAS operations

    // Add distributed lock fields
    String? distributedLockId,
    DateTime? distributedLockExpiry,
    String? distributedLockNode,
    @Default({}) Map<String, dynamic> lockMetadata,

    // Add version vectors for conflict resolution
    @Default({}) Map<String, int> versionVectors,
    @Default(EntityConstants.defaultLockTimeout) Duration lockTimeout,

    // Add AI/LLM integration fields
    @Default({})
    Map<String, List<double>>
        aiEmbeddings, // Store embeddings from different AI models
    @Default({})
    Map<String, double> aiScores, // Store relevance/confidence scores
    @Default({})
    Map<String, String> aiMetadata, // Store model-specific metadata
    @Default([]) List<String> aiTags, // AI-generated tags
    @Default({}) Map<String, Object> aiAnnotations, // AI-generated annotations
    DateTime? lastAiProcessingTime,
    String? aiProcessingVersion,
  }) = _BaseEntity<T>;

  factory BaseEntity.fromJson(
          Map<String, Object> json, T Function(Object? json) fromJsonT) =>
      _$BaseEntityFromJson(json, fromJsonT);

  // Core utility methods

  // Essential getters and operators
  bool get isRoot => hierarchyPath == null || hierarchyPath == entityId.value;
  bool get isLeaf => !relations.containsKey('children');
  dynamic getAttribute(String key) => metaAttributes[key];
  dynamic operator [](String key) {
    return switch (key) {
      'entityId' => entityId,
      'entityName' => entityName,
      'entityDescription' => entityDescription,
      'status' => status,
      _ => metaAttributes[key],
    };
  }

  String get uuid => entityId.value;
  String get entityType => T.toString();

  // Keep only core ancestor name handling
  Map<EntityId, String> get ancestorNamesTyped => Map.fromEntries(
        ancestorMetadata.entries.map(
          (e) => MapEntry(EntityId(e.key), e.value.displayName),
        ),
      );
}

// Keep only the exception class
class PathValidationException implements Exception {
  final String message;
  PathValidationException(this.message);
  @override
  String toString() => 'PathValidationException: $message';
}

@freezed
class EntityMetadata with _$EntityMetadata {
  const EntityMetadata._();

  const factory EntityMetadata({
    required String displayName,
    required String entityType,
    String? description,
    DateTime? lastNameUpdate,
    @Default({}) Map<String, String> searchTerms,
  }) = _EntityMetadata;

  factory EntityMetadata.fromJson(Map<String, Object> json) =>
      _$EntityMetadataFromJson(json);
}
