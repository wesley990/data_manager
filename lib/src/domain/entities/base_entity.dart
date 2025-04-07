import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/domain/entities/base_entity_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_entity.freezed.dart';
part 'base_entity.g.dart';

/// Global type aliases for improved readability and maintenance
typedef EntityVersionVector = Map<String, int>;
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

/// Represents hierarchy information for an entity including tree structure and relationships
@freezed
sealed class EntityHierarchy with _$EntityHierarchy {
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
sealed class EntitySecurity with _$EntitySecurity {
  /// Creates a new EntitySecurity instance
  const factory EntitySecurity({
    /// User who last accessed the entity
    UserAction? lastAccessor,

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
sealed class EntityClassification with _$EntityClassification {
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
sealed class EntityVersioning with _$EntityVersioning {
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

/// Main entity model that composes all entity components with a generic data payload
@Freezed(genericArgumentFactories: true)
sealed class BaseEntityModel<T extends Object> with _$BaseEntityModel<T> {
  const BaseEntityModel._();

  /// Creates a new BaseEntityModel instance with its component parts
  ///
  /// [core] - Core entity properties and data
  /// [hierarchy] - Tree structure and relationships
  /// [security] - Access control and permissions
  /// [classification] - Tags, categories and workflow information
  /// [versioning] - Version control and history tracking
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

  // Core helpers
  /// String representation of the entity ID
  String get uid => core.uid;

  /// Type name of the entity data
  String get type => core.type;

  // Short accessors to reduce verbosity
  /// Whether this entity is at the root of a hierarchy
  bool get isRoot => hierarchy.isHierarchyRoot;

  /// Whether this entity is a leaf node (has no children)
  bool get isLeaf => hierarchy.isHierarchyLeaf;

  /// Path to the parent entity, if any
  String? get parentPath => hierarchy.parentId?.value;

  /// Updates a child entity relationship, ensuring hierarchy consistency
  ///
  /// This method safely adds a child entity ID to this entity while automatically
  /// maintaining the [isHierarchyLeaf] property.
  ///
  /// [childId] - The ID of the child entity to add
  /// Returns an updated entity with the child added and leaf status updated
  BaseEntityModel<T> addChildEntity(EntityId childId) {
    if (hierarchy.childIds.contains(childId)) return this;

    return copyWith(hierarchy: hierarchy.addChild(childId));
  }

  /// Removes a child entity relationship, ensuring hierarchy consistency
  ///
  /// This method safely removes a child entity ID from this entity while automatically
  /// updating the [isHierarchyLeaf] property based on remaining children.
  ///
  /// [childId] - The ID of the child entity to remove
  /// Returns an updated entity with the child removed and leaf status updated
  BaseEntityModel<T> removeChildEntity(EntityId childId) {
    if (!hierarchy.childIds.contains(childId)) return this;

    return copyWith(hierarchy: hierarchy.removeChild(childId));
  }

  /// Validates and corrects the hierarchy leaf status if needed
  ///
  /// This method ensures that the [isHierarchyLeaf] property correctly reflects
  /// whether the entity has children or not.
  ///
  /// Returns an updated entity with corrected leaf status
  BaseEntityModel<T> validateHierarchyLeafStatus() {
    return copyWith(hierarchy: hierarchy.validateLeafStatus());
  }

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
        hierarchyMeta: {'created': now.toIso8601String(), 'pathType': 'root'},
      ),
      security: const EntitySecurity(),
      classification: const EntityClassification(),
      versioning: const EntityVersioning(),
    );
  }
}

/// Data transfer object for entity metadata
@freezed
sealed class EntityMetadata with _$EntityMetadata {
  const EntityMetadata._();

  /// Creates a new EntityMetadata instance
  ///
  /// [displayName] - Human-readable display name
  /// [entityType] - Type classification of the entity
  /// [description] - Optional description text
  /// [lastNameUpdate] - When the name was last changed
  /// [searchTerms] - Key-value pairs for enhanced searching
  const factory EntityMetadata({
    required String displayName,
    required String entityType,
    String? description,
    DateTime? lastNameUpdate,
    @Default({}) Map<String, String> searchTerms,
  }) = _EntityMetadata;

  /// Creates EntityMetadata from a JSON map
  factory EntityMetadata.fromJson(Map<String, Object> json) =>
      _$EntityMetadataFromJson(json);
}
