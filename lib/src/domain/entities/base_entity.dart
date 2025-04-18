import 'dart:collection';
import 'package:data_manager/data_manager.dart';
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
    ///
    /// Format: '/parent_id/grandparent_id/entity_id'
    /// - Paths use forward slashes as separators
    /// - Paths start with a leading slash
    /// - Path segments are entity IDs in reverse ancestry order
    /// - Root entities have path equal to their ID or '/' + ID
    /// - Maximum path length is limited to [SystemLimits.pathMaxLength]
    /// - Maximum segment length is limited to [SystemLimits.pathMaxSegment]
    String? treePath,

    /// Depth level in the hierarchy (0 = root)
    @Default(0) int treeDepth,

    /// List of ancestor entity IDs in order from root to parent
    @Default(<EntityId>[]) List<EntityId> ancestors,

    /// Direct parent entity ID
    EntityId? parentId,

    /// List of direct child entity IDs
    @Default(<EntityId>[]) List<EntityId> childIds,

    /// Indicates if this entity is a root node in a hierarchy
    @Default(true) bool isHierarchyRoot,

    /// Indicates if this entity is a leaf node (has no children)
    @Default(true) bool isHierarchyLeaf,

    /// Additional hierarchy-related metadata
    ///
    /// Expected keys:
    ///   - 'created': String (ISO8601 timestamp)
    ///   - 'pathType': String (e.g., 'root', 'branch', etc.)
    ///   - Add more as needed for your application
    @Default({}) Map<String, Object> hierarchyMeta,
  }) = _EntityHierarchy;
}

/// Extension methods for EntityHierarchy operations
extension EntityHierarchyOperations on EntityHierarchy {
  /// Adds a child entity ID, automatically updating leaf status and meta
  EntityHierarchy addChild(EntityId childId) {
    if (childIds.contains(childId)) return this;
    final updatedChildIds = List<EntityId>.from(childIds)..add(childId);
    return copyWith(
      childIds: updatedChildIds,
      isHierarchyLeaf: false,
      hierarchyMeta: {
        ...hierarchyMeta,
        'children_count': updatedChildIds.length,
        'last_child_added': DateTime.now().toIso8601String(),
      },
    );
  }

  /// Removes a child entity ID, automatically updating leaf status and meta
  EntityHierarchy removeChild(EntityId childId) {
    if (!childIds.contains(childId)) return this;
    final updatedChildIds = List<EntityId>.from(childIds)
      ..removeWhere((id) => id == childId);
    return copyWith(
      childIds: updatedChildIds,
      isHierarchyLeaf: updatedChildIds.isEmpty,
      hierarchyMeta: {
        ...hierarchyMeta,
        'children_count': updatedChildIds.length,
        'last_child_removed': DateTime.now().toIso8601String(),
      },
    );
  }

  /// Recalculates and corrects the leaf status based on child IDs
  EntityHierarchy validateLeafStatus() {
    final shouldBeLeaf = childIds.isEmpty;
    if (isHierarchyLeaf == shouldBeLeaf) return this;
    return copyWith(isHierarchyLeaf: shouldBeLeaf);
  }
}

extension BaseEntityModelPathAndHierarchy<T extends Object>
    on BaseEntityModel<T> {
  // Path sanitization and validation
  String sanitizePath(
    String? rawPath, {
    EntityConfig? config,
    bool leadingSlash = true,
    bool trailingSlash = false,
  }) {
    if (rawPath == null || rawPath.isEmpty) return '';
    final c = config ?? EntityConfig();
    final decodedPath = Uri.decodeFull(rawPath);
    if (decodedPath.length > c.maxPathLength) return '';
    final segments =
        decodedPath
            .split(c.pathSeparator)
            .where((s) => s.isNotEmpty)
            .map((s) => s.replaceAll(RegExp(c.invalidPathChars), '').trim())
            .where((s) => s.isNotEmpty)
            .toList();
    if (segments.any((s) => s.length > c.maxPathSegment)) return '';
    var path = segments.join(c.pathSeparator);
    if (leadingSlash) path = c.pathSeparator + path;
    if (trailingSlash && !path.endsWith(c.pathSeparator)) {
      path += c.pathSeparator;
    }
    return path;
  }

  /// Unified path validation: checks both format and length constraints
  bool isValidPath(
    String? path, {
    EntityConfig? config,
    bool requireLeadingSlash = true,
  }) {
    if (path == null || path.isEmpty) return false;
    final c = config ?? EntityConfig();
    if (path.length > c.maxPathLength) return false;
    if (requireLeadingSlash && !path.startsWith(c.pathSeparator)) return false;
    final segments =
        path.split(c.pathSeparator).where((s) => s.isNotEmpty).toList();
    if (segments.length > SystemLimits.hierarchyDepthMax) return false;
    if (segments.any((s) => s.length > c.maxPathSegment)) return false;
    return true;
  }

  // Path navigation
  List<String> splitPath(String? path, {EntityConfig? config}) {
    final c = config ?? EntityConfig();
    return sanitizePath(
      path,
      config: c,
      leadingSlash: false,
      trailingSlash: false,
    ).split(c.pathSeparator).where((s) => s.isNotEmpty).toList();
  }

  String get canonicalPath =>
      sanitizePath(
        hierarchy.treePath,
        leadingSlash: true,
        trailingSlash: false,
      ).toLowerCase();
  List<String> get pathSegments => splitPath(hierarchy.treePath);

  /// Returns a list of ancestor paths, each as a string up to that ancestor
  List<String> get ancestorPaths {
    final segments = pathSegments;
    final paths = <String>[];
    for (var i = 0; i < segments.length; i++) {
      paths.add('/${segments.sublist(0, i + 1).join('/')}');
    }
    return paths;
  }

  /// Returns the absolute path for this entity (including its own ID)
  String get absolutePath => sanitizePath(
    '${hierarchy.treePath ?? ''}/${id.value}',
    trailingSlash: false,
  );

  // Hierarchy navigation
  List<String> get ancestorIds =>
      hierarchy.ancestors.map((a) => a.value).toList();
  String get fullPath => hierarchy.treePath ?? id.value;
  bool isAncestorOf(BaseEntityModel<T> other) =>
      other.hierarchy.ancestors.contains(id);
  bool isDescendantOf(BaseEntityModel<T> other) =>
      hierarchy.ancestors.contains(other.id);
  int getDepthTo(BaseEntityModel<T> ancestor) {
    final index = hierarchy.ancestors.indexOf(ancestor.id);
    if (index == -1) return -1;
    return hierarchy.ancestors.length - index;
  }

  bool hasCircularReference() => hierarchy.ancestors.contains(id);

  BaseEntityModel<T> updateHierarchy({
    required EntityId? newParentId,
    String? newPath,
    List<EntityId>? newAncestors,
    bool validateDepth = true,
  }) {
    final ancestors = newAncestors ?? hierarchy.ancestors;
    if (validateDepth && ancestors.length > SystemLimits.hierarchyDepthMax) {
      throw Exception('Hierarchy depth exceeded');
    }
    final updatedPath = newPath ?? hierarchy.treePath ?? '';
    final updatedMeta = {
      ...hierarchy.hierarchyMeta,
      'last_hierarchy_update': DateTime.now().toIso8601String(),
      'parent_history': [
        ...(hierarchy.hierarchyMeta['parent_history'] as List<String>? ?? []),
        newParentId?.value ?? 'root',
      ],
    };
    return copyWith(
      hierarchy: hierarchy.copyWith(
        parentId: newParentId,
        treePath: updatedPath,
        ancestors: ancestors,
        treeDepth: ancestors.length,
        isHierarchyRoot: newParentId == null,
        isHierarchyLeaf: hierarchy.childIds.isEmpty,
        hierarchyMeta: updatedMeta,
      ),
    );
  }

  Map<String, Object> buildHierarchyIndex() {
    return {
      'depth_level': hierarchy.treeDepth,
      'parent_type': hierarchy.parentId?.value ?? 'root',
      'ancestry_path': hierarchy.ancestors.map((a) => a.value).join('|'),
      'child_count': hierarchy.childIds.length,
      'is_leaf': hierarchy.isHierarchyLeaf,
      'is_root': hierarchy.isHierarchyRoot,
      ...hierarchy.hierarchyMeta,
    };
  }
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
    ///
    /// Expected keys:
    ///   - 'lastSync': DateTime or String (ISO8601)
    ///   - 'syncSource': String
    ///   - Add more as needed for your application
    @Default({}) Map<String, Object> syncMeta,

    /// Synchronization version identifier
    String? syncVer,

    /// Search index for efficient queries
    ///
    /// Expected keys:
    ///   - 'keywords': `List<String>`
    ///   - 'category': String
    ///   - Add more as needed for your application
    @Default({}) Map<String, Object> searchIndex,

    /// Event version counter
    @Default(0) int eventVer,

    /// List of event IDs that haven't been processed
    @Default([]) List<String> pendingEvents,

    /// Additional event-related metadata
    ///
    /// Expected keys:
    ///   - 'eventType': String
    ///   - 'eventSource': String
    ///   - Add more as needed for your application
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

  /// Path to the parent entity, if any (just the parent ID)
  String? get parentPath => hierarchy.parentId?.value;

  /// Full path to the parent entity in the hierarchy (excluding this entity's ID)
  /// Returns null if this entity is root or treePath is not set.
  String? get parentFullPath {
    final path = hierarchy.treePath;
    if (path == null || !path.contains('/')) return null;
    final segments = path.split('/').where((s) => s.isNotEmpty).toList();
    if (segments.length <= 1) return null;
    // Remove the last segment (this entity's ID)
    return '/${segments.sublist(0, segments.length - 1).join('/')}';
  }

  /// Adds a child entity relationship, ensuring hierarchy consistency.
  ///
  /// This method safely adds a child entity ID to this entity while automatically
  /// maintaining the [isHierarchyLeaf] property.
  ///
  /// [childId] - The ID of the child entity to add.
  /// Returns an updated entity with the child added and leaf status updated.
  BaseEntityModel<T> _addChildEntity(EntityId childId) {
    if (hierarchy.childIds.contains(childId)) return this;
    return copyWith(hierarchy: hierarchy.addChild(childId));
  }

  /// Removes a child entity relationship, ensuring hierarchy consistency.
  ///
  /// This method safely removes a child entity ID from this entity while automatically
  /// updating the [isHierarchyLeaf] property based on remaining children.
  ///
  /// [childId] - The ID of the child entity to remove.
  /// Returns an updated entity with the child removed and leaf status updated.
  BaseEntityModel<T> _removeChildEntity(EntityId childId) {
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

  /// Creates a new entity with standard configuration or custom components
  ///
  /// [id] - Unique identifier for the entity
  /// [name] - Display name for the entity
  /// [owner] - User who owns the entity
  /// [data] - Typed payload data
  /// [config] - Optional configuration parameters
  /// [hierarchy] - Optional custom hierarchy component
  /// [security] - Optional custom security component
  /// [classification] - Optional custom classification component
  /// [versioning] - Optional custom versioning component
  factory BaseEntityModel.create({
    required EntityId id,
    required String name,
    required UserAction owner,
    required T data,
    EntityConfig? config,
    EntityHierarchy? hierarchy,
    EntitySecurity? security,
    EntityClassification? classification,
    EntityVersioning? versioning,
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
      hierarchy:
          hierarchy ??
          EntityHierarchy(
            treePath: id.value,
            isHierarchyRoot: true,
            isHierarchyLeaf: true,
            hierarchyMeta: {
              'created': now.toIso8601String(),
              'pathType': 'root',
            },
          ),
      security: security ?? const EntitySecurity(),
      classification: classification ?? const EntityClassification(),
      versioning: versioning ?? const EntityVersioning(),
    );
  }

  /// Adds a child to a parent and updates both entities' hierarchy fields for consistency.
  ///
  /// Returns a Dart 3 record (updatedParent, updatedChild).
  static (BaseEntityModel<T>, BaseEntityModel<T>) addChildAndUpdateChild<
    T extends Object
  >(BaseEntityModel<T> parent, BaseEntityModel<T> child) {
    final updatedParent = parent._addChildEntity(child.id);
    final updatedChild = child.copyWith(
      hierarchy: child.hierarchy.copyWith(
        parentId: parent.id,
        ancestors: [...parent.hierarchy.ancestors, parent.id],
        treePath:
            parent.hierarchy.treePath == null
                ? '/${parent.id.value}/${child.id.value}'
                : '${parent.hierarchy.treePath}/${child.id.value}',
        treeDepth: parent.hierarchy.treeDepth + 1,
        isHierarchyRoot: false,
      ),
    );
    return (updatedParent, updatedChild);
  }

  /// Removes a child from a parent and updates both entities' hierarchy fields for consistency.
  ///
  /// Returns a Dart 3 record (updatedParent, updatedChild).
  static (BaseEntityModel<T>, BaseEntityModel<T>) removeChildAndUpdateChild<
    T extends Object
  >(BaseEntityModel<T> parent, BaseEntityModel<T> child) {
    final updatedParent = parent._removeChildEntity(child.id);
    final updatedChild = child.copyWith(
      hierarchy: child.hierarchy.copyWith(
        parentId: null,
        ancestors: [],
        treePath: '/${child.id.value}',
        treeDepth: 0,
        isHierarchyRoot: true,
      ),
    );
    return (updatedParent, updatedChild);
  }

  /// Records a user action in the entity's history efficiently.
  ///
  /// [action] - The user action to record.
  /// [isAccessAction] - Whether this is an access action (vs. modification).
  /// Returns an updated entity with the action recorded in history.
  BaseEntityModel<T> recordAction(
    UserAction action, {
    bool isAccessAction = false,
  }) {
    final maxSize = versioning.historyLimit;
    final history = isAccessAction ? security.accessLog : security.modHistory;
    // Use Queue for efficient prepending and trimming
    final queue = ListQueue<UserAction>.from(history);
    queue.addFirst(action);
    while (queue.length > maxSize) {
      queue.removeLast();
    }
    final updatedHistory = queue.toList(growable: false);
    return copyWith(
      security:
          isAccessAction
              ? security.copyWith(accessLog: updatedHistory)
              : security.copyWith(modHistory: updatedHistory),
    );
  }

  /// Increments the entity's version.
  ///
  /// [isStructural] - Whether this is a structural change (vs. data-only).
  /// Returns an updated entity with incremented version numbers.
  BaseEntityModel<T> incrementVersion({bool isStructural = false}) {
    return copyWith(
      versioning: versioning.copyWith(
        dataVer: versioning.dataVer + 1,
        structVer:
            isStructural ? versioning.structVer + 1 : versioning.structVer,
      ),
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
