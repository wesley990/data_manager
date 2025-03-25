import 'package:data_manager/data_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_entity.freezed.dart';
part 'base_entity.g.dart';

/// Global type aliases for improved readability and maintenance
typedef EntityVersionVector = Map<String, int>;
typedef EntityLockMetadata = Map<String, dynamic>;
typedef EntityEventMeta = Map<String, Object>;
typedef EntitySearchIndex = Map<String, Object>;

/// System-wide constants for entity limitations and boundaries
abstract class SystemLimits {
  /// Maximum length of a path in characters
  static const int pathMaxLength = 1024;

  /// Maximum length of a path segment in characters
  static const int pathMaxSegment = 255;

  /// Maximum allowed depth in entity hierarchy
  static const int hierarchyDepthMax = 10;

  /// Maximum number of history entries to retain
  static const int historyMax = 50;

  /// Default number of history entries to retain
  static const int historyDefault = 50;
}

/// Entity-specific default values and configurations
abstract class EntityDefaults {
  /// Default schema version for new entities
  static const String version = '1.0.0';

  /// Default status for new entities
  static const EntityStatus status = EntityStatus.active;

  /// Default priority level for new entities
  static const EntityPriority priority = EntityPriority.medium;

  /// Default workflow stage for new entities
  static const EntityStage stage = EntityStage.draft;

  /// Default public visibility setting
  static const bool isPublic = true;

  /// Default access count for new entities
  static const int accessCount = 0;

  // Path related defaults
  /// Standard path separator character
  static const String pathSeparator = '/';

  /// URL-encoded path separator
  static const String encodedPathSeparator = '%2F';

  /// Regular expression pattern for invalid path characters
  static const String invalidPathChars = r'[<>:"|?*\x00-\x1F]';
}

/// Configuration settings for entity locking mechanisms
abstract class LockConfig {
  /// Default timeout duration for locks
  static const Duration defaultTimeout = Duration(minutes: 15);

  /// Standard extension period when renewing locks
  static const Duration extensionPeriod = Duration(minutes: 5);

  /// Minimum allowed lock duration
  static const Duration minimumDuration = Duration(seconds: 30);

  /// Maximum allowed lock duration
  static const Duration maximumDuration = Duration(hours: 24);
}

/// Represents hierarchy information for an entity including tree structure and relationships
@freezed
class EntityHierarchy with _$EntityHierarchy {
  /// Creates a new EntityHierarchy instance
  const factory EntityHierarchy({
    /// Full path in the entity tree
    String? treePath,

    /// Depth level in the hierarchy (0 = root)
    @Default(0) int treeDepth,

    /// List of ancestor entity IDs in order from root to parent
    @Default([]) List<EntityId> ancestors,

    /// Direct parent entity ID
    EntityId? parentId,

    /// List of direct child entity IDs
    @Default([]) List<EntityId> childIds,

    /// Indicates if this entity is a root node in a hierarchy
    @Default(true) bool isHierarchyRoot,

    /// Indicates if this entity is a leaf node (has no children)
    @Default(true) bool isHierarchyLeaf,

    /// Additional hierarchy-related metadata
    @Default({}) Map<String, Object> hierarchyMeta,
  }) = _EntityHierarchy;
}

/// Manages security and access control aspects of an entity
@freezed
class EntitySecurity with _$EntitySecurity {
  /// Creates a new EntitySecurity instance
  const factory EntitySecurity({
    /// User who last accessed the entity
    UserAction? lastAccessor,

    /// User who currently has a lock on the entity
    UserAction? lockOwner,

    /// When the current lock expires
    DateTime? lockExpiry,

    /// User who marked the entity as removed
    UserAction? remover,

    /// History of entity modifications
    @Default([]) List<UserAction> modHistory,

    /// Log of entity access events
    @Default([]) List<UserAction> accessLog,

    /// Whether the entity is publicly accessible
    @Default(EntityDefaults.isPublic) bool isPublic,

    /// Number of times the entity has been accessed
    @Default(EntityDefaults.accessCount) int accessCount,
  }) = _EntitySecurity;
}

/// Handles classification, tagging and workflow status of an entity
@freezed
class EntityClassification with _$EntityClassification {
  /// Creates a new EntityClassification instance
  const factory EntityClassification({
    /// List of searchable tags associated with the entity
    @Default([]) List<String> tags,

    /// Key-value pairs of labels for categorization
    @Default({}) Map<String, String> labels,

    /// Priority level of the entity
    @Default(EntityDefaults.priority) EntityPriority priority,

    /// Current workflow stage of the entity
    @Default(EntityDefaults.stage) EntityStage stage,

    /// Date when the entity expires/becomes inactive
    DateTime? expiryDate,
  }) = _EntityClassification;
}

/// Manages versioning and history tracking for an entity
@freezed
class EntityVersioning with _$EntityVersioning {
  /// Creates a new EntityVersioning instance
  const factory EntityVersioning({
    /// Metadata for synchronization purposes
    @Default({}) Map<String, Object> syncMeta,

    /// Synchronization version identifier
    String? syncVer,

    /// Search index for efficient queries
    @Default({}) Map<String, Object> searchIndex,

    /// Event version counter
    @Default(0) int eventVer,

    /// List of event IDs that haven't been processed
    @Default([]) List<String> pendingEvents,

    /// Additional event-related metadata
    @Default({}) Map<String, Object> eventMeta,

    /// Maximum number of history entries to maintain
    @Default(SystemLimits.historyDefault) int historyLimit,

    /// Data format version
    @Default(1) int dataVer,

    /// Structure version
    @Default(1) int structVer,

    /// Last version identifier
    String? lastVer,

    /// Schema version of the entity
    @Default(EntityDefaults.version) String schemaVer,

    /// Version vectors for distributed version control
    @Default({}) Map<String, int> verVectors,
  }) = _EntityVersioning;
}

/// Stores AI-related data and metadata for an entity
@freezed
class EntityAI with _$EntityAI {
  /// Creates a new EntityAI instance
  const factory EntityAI({
    /// Vector embeddings for AI operations
    @Default({}) Map<String, List<double>> aiVectors,

    /// Scores from AI evaluations
    @Default({}) Map<String, double> aiScores,

    /// General AI-related metadata
    @Default({}) Map<String, String> aiMeta,

    /// AI-generated or AI-specific tags
    @Default([]) List<String> aiTags,

    /// Additional AI-related notes or data
    @Default({}) Map<String, Object> aiNotes,

    /// When AI processing was last performed
    DateTime? aiLastRun,

    /// Version of AI model/system used
    String? aiVer,
  }) = _EntityAI;
}

/// Manages distributed locking for concurrent access control
@freezed
class EntityLocking with _$EntityLocking {
  /// Creates a new EntityLocking instance
  const factory EntityLocking({
    /// Distributed lock identifier
    String? distLockId,

    /// When the distributed lock expires
    DateTime? distLockExpiry,

    /// Node/server holding the distributed lock
    String? distLockNode,

    /// Additional lock-related metadata
    @Default({}) Map<String, dynamic> lockMeta,

    /// Version vectors for distributed coordination
    @Default({}) Map<String, int> verVectors,

    /// Duration before lock automatically expires
    @Default(LockConfig.defaultTimeout) Duration lockTimeout,

    /// User who owns the lock
    UserAction? lockOwner,

    /// When the current lock expires
    DateTime? lockExpiry,
  }) = _EntityLocking;
}

/// Main entity model that composes all entity components with a generic data payload
@Freezed(genericArgumentFactories: true)
class BaseEntityModel<T extends Object> with _$BaseEntityModel<T> {
  const BaseEntityModel._();

  /// Creates a new BaseEntityModel instance with all its component parts
  ///
  /// [core] - Core entity properties and data
  /// [hierarchy] - Tree structure and relationships
  /// [security] - Access control and permissions
  /// [classification] - Tags, categories and workflow information
  /// [versioning] - Version control and history tracking
  /// [ai] - AI-related data and metadata
  /// [locking] - Concurrency control
  /// [extraData] - Optional additional typed data
  const factory BaseEntityModel({
    /// Core entity data containing essential properties
    required CoreEntity<T> core,

    /// Component for hierarchy and tree structure
    required EntityHierarchy hierarchy,

    /// Component for access control and security
    required EntitySecurity security,

    /// Component for organization and workflow
    required EntityClassification classification,

    /// Component for change tracking and history
    required EntityVersioning versioning,

    /// Component for AI-related features
    required EntityAI ai,

    /// Component for concurrent access control
    required EntityLocking locking,

    /// Optional extra data of type T
    T? extraData,
  }) = _BaseEntityModel<T>;

  // Delegate core properties
  /// Unique identifier of the entity
  EntityId get id => core.id;

  /// Human-readable name of the entity
  String get name => core.name;

  /// Optional description of the entity
  String? get description => core.description;

  /// When the entity was created
  DateTime get createdAt => core.createdAt;

  /// When the entity was last updated
  DateTime get updatedAt => core.updatedAt;

  /// Schema version of the entity
  String get schemaVer => core.schemaVer;

  /// Current status of the entity
  EntityStatus get status => core.status;

  /// Custom metadata for the entity
  Map<String, Object> get meta => core.meta;

  /// User who owns the entity
  UserAction get owner => core.owner;

  /// User who created the entity
  UserAction get creator => core.creator;

  /// User who last modified the entity
  UserAction get modifier => core.modifier;

  // Component-based property getters
  /// Access to versioning component
  EntityVersioning get version => versioning;

  /// Access to locking component
  EntityLocking get lock => locking;

  // Core helpers
  /// String representation of the entity ID
  String get uid => id.value;

  /// Type name of the entity data
  String get type => T.toString();

  /// Retrieve metadata by key
  dynamic getMeta(String key) => meta[key];

  // Short accessors to reduce verbosity
  /// Whether this entity is at the root of a hierarchy
  bool get isRoot => hierarchy.isHierarchyRoot;

  /// Whether this entity is a leaf node (has no children)
  bool get isLeaf => hierarchy.isHierarchyLeaf;

  /// Path to the parent entity, if any
  String? get parentPath => hierarchy.parentId?.value;

  /// Creates a new entity with standard configuration
  ///
  /// [id] - Unique identifier for the entity
  /// [name] - Display name for the entity
  /// [owner] - User who owns the entity
  /// [data] - Typed payload data
  /// [config] - Optional configuration parameters
  factory BaseEntityModel.create({
    required EntityId id,
    required String name,
    required UserAction owner,
    required T data,
    EntityConfig? config,
  }) {
    final now = DateTime.now();
    return BaseEntityModel(
      core: CoreEntity(
        id: id,
        name: name,
        createdAt: now,
        updatedAt: now,
        owner: owner,
        creator: owner,
        modifier: owner,
        data: data,
      ),
      hierarchy: EntityHierarchy(
        treePath: id.value,
        isHierarchyRoot: true,
        isHierarchyLeaf: true,
        hierarchyMeta: {
          'created': now.toIso8601String(),
          'pathType': 'root',
        },
      ),
      security: const EntitySecurity(),
      classification: const EntityClassification(),
      versioning: const EntityVersioning(),
      ai: const EntityAI(),
      locking: const EntityLocking(),
    );
  }

  /// Access entity properties and metadata by key
  ///
  /// Provides a unified interface to access entity properties using
  /// a string-based key, falling back to metadata for custom fields
  dynamic operator [](String key) {
    return switch (key) {
      'entityId' => id,
      'entityName' => name,
      'entityDescription' => description,
      'status' => status,
      _ => meta[key],
    };
  }
}

/// Data transfer object for entity metadata
@freezed
class EntityMetadataDto with _$EntityMetadataDto {
  const EntityMetadataDto._();

  /// Creates a new EntityMetadataDto instance
  ///
  /// [displayName] - Human-readable display name
  /// [entityType] - Type classification of the entity
  /// [description] - Optional description text
  /// [lastNameUpdate] - When the name was last changed
  /// [searchTerms] - Key-value pairs for enhanced searching
  const factory EntityMetadataDto({
    required String displayName,
    required String entityType,
    String? description,
    DateTime? lastNameUpdate,
    @Default({}) Map<String, String> searchTerms,
  }) = _EntityMetadataDto;

  /// Creates EntityMetadataDto from a JSON map
  factory EntityMetadataDto.fromJson(Map<String, Object> json) =>
      _$EntityMetadataDtoFromJson(json);
}
