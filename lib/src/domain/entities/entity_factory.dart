import 'package:data_manager/src/domain/core/core_entity.dart';
import 'package:data_manager/src/domain/core/exceptions.dart';
import 'package:data_manager/src/domain/entities/base_entity.dart';
import 'package:data_manager/src/domain/entities/entity_types.dart';
import 'package:data_manager/src/domain/value_objects/enum_objects.dart';
import 'package:data_manager/src/domain/value_objects/identity_value_objects.dart';
import 'package:data_manager/src/domain/value_objects/user_action.dart';
import 'package:uuid/uuid.dart';
import 'package:authentication/authentication.dart';

/// Configuration data for new entity creation
///
/// Contains core entity information, hierarchy data, and classification parameters
class EntityInitConfig<T extends Object> {
  // Core info
  /// User-provided name for the entity
  final String name;

  /// User creating the entity
  final AuthUser user;

  /// Type-specific payload data
  final T data;

  /// Optional description of the entity
  final String? description;

  // Tree structure
  /// Path in the entity hierarchy
  final String? parentPath;

  /// Direct parent entity ID
  final EntityId? parentId;

  /// List of ancestor entity IDs
  final List<EntityId>? ancestors;

  // Metadata & Classification
  /// Custom metadata key-value pairs
  final Map<String, Object>? meta;

  /// Searchable tags
  final List<String>? tags;

  /// Categorization labels
  final Map<String, String>? labels;

  /// Entity importance level
  final EntityPriority? priority;

  /// Current workflow stage
  final EntityStage? stage;

  /// Optional date when entity expires
  final DateTime? expiryDate;

  /// Whether entity is publicly accessible
  final bool? isPublic;

  EntityInitConfig({
    required this.name,
    required this.user,
    required this.data,
    this.description,
    this.parentPath,
    this.parentId,
    this.ancestors,
    this.meta,
    this.tags,
    this.labels,
    this.priority,
    this.stage,
    this.expiryDate,
    this.isPublic,
  });
}

/// Configuration object for cloning existing entities.
/// Contains the source entity and optional overrides for the clone.
class EntityCloningConfig<T extends Object> {
  /// Source entity to clone
  final BaseEntityModel<T> source;

  /// User performing the cloning operation
  final AuthUser user;

  /// New name for the cloned entity (defaults to source name + " (Copy)")
  final String? newName;

  /// New path for the cloned entity
  final String? newPath;

  /// Custom metadata overrides for the clone
  final Map<String, Object>? newMeta;

  /// Label overrides for the clone
  final Map<String, String>? newLabels;

  /// Tag overrides for the clone
  final List<String>? newTags;

  EntityCloningConfig({
    required this.source,
    required this.user,
    this.newName,
    this.newPath,
    this.newMeta,
    this.newLabels,
    this.newTags,
  });
}

/// A fluent builder for creating entities
///
/// Provides method chaining for a cleaner API when creating complex entities
/// with many optional parameters
///
/// Example:
/// ```dart
/// final site = EntityBuilder<SiteModel>()
///   .withName('Main Office')
///   .withUser(currentUser)
///   .withData(siteModel)
///   .withParentId(organizationId)
///   .withTags(['headquarters', 'office'])
///   .build();
/// ```
class EntityBuilder<T extends Object> {
  // Required fields
  String? _name;
  AuthUser? _user;
  T? _data;

  // Optional fields
  String? _description;
  String? _parentPath;
  EntityId? _parentId;
  List<EntityId>? _ancestors;
  Map<String, Object>? _meta;
  List<String>? _tags;
  Map<String, String>? _labels;
  EntityPriority? _priority;
  EntityStage? _stage;
  DateTime? _expiryDate;
  bool? _isPublic;

  // Required field methods
  /// Sets the name for the entity
  EntityBuilder<T> withName(String name) {
    _name = name;
    return this;
  }

  /// Sets the user creating the entity
  EntityBuilder<T> withUser(AuthUser user) {
    _user = user;
    return this;
  }

  /// Sets the type-specific payload data
  EntityBuilder<T> withData(T data) {
    _data = data;
    return this;
  }

  // Optional field methods
  /// Sets the description for the entity
  EntityBuilder<T> withDescription(String description) {
    _description = description;
    return this;
  }

  /// Sets the parent path in the entity hierarchy
  EntityBuilder<T> withParentPath(String parentPath) {
    _parentPath = parentPath;
    return this;
  }

  /// Sets the direct parent entity ID
  EntityBuilder<T> withParentId(EntityId parentId) {
    _parentId = parentId;
    return this;
  }

  /// Sets the list of ancestor entity IDs
  EntityBuilder<T> withAncestors(List<EntityId> ancestors) {
    _ancestors = ancestors;
    return this;
  }

  /// Sets custom metadata key-value pairs
  EntityBuilder<T> withMeta(Map<String, Object> meta) {
    _meta = meta;
    return this;
  }

  /// Sets searchable tags
  EntityBuilder<T> withTags(List<String> tags) {
    _tags = tags;
    return this;
  }

  /// Sets categorization labels
  EntityBuilder<T> withLabels(Map<String, String> labels) {
    _labels = labels;
    return this;
  }

  /// Sets the entity importance level
  EntityBuilder<T> withPriority(EntityPriority priority) {
    _priority = priority;
    return this;
  }

  /// Sets the workflow stage
  EntityBuilder<T> withStage(EntityStage stage) {
    _stage = stage;
    return this;
  }

  /// Sets the expiry date for the entity
  EntityBuilder<T> withExpiryDate(DateTime expiryDate) {
    _expiryDate = expiryDate;
    return this;
  }

  /// Sets whether the entity is publicly accessible
  EntityBuilder<T> isPublic(bool isPublic) {
    _isPublic = isPublic;
    return this;
  }

  // Build method
  BaseEntityModel<T> build() {
    // Validate required fields
    if (_name == null) {
      throw ArgumentError('Entity name is required');
    }
    if (_user == null) {
      throw ArgumentError('User is required');
    }
    if (_data == null) {
      throw ArgumentError('Entity data is required');
    }

    // Create config
    final config = EntityInitConfig<T>(
      name: _name!,
      user: _user!,
      data: _data!,
      description: _description,
      parentPath: _parentPath,
      parentId: _parentId,
      ancestors: _ancestors,
      meta: _meta,
      tags: _tags,
      labels: _labels,
      priority: _priority,
      stage: _stage,
      expiryDate: _expiryDate,
      isPublic: _isPublic,
    );

    // Create entity
    return EntityFactory.create(config);
  }
}

/// A fluent builder for cloning entities.
///
/// Simplifies the process of creating copies of existing entities with optional modifications.
///
/// Example:
/// ```dart
/// final clonedSite = EntityCloningBuilder<SiteModel>()
///   .fromSource(existingSite)
///   .withUser(currentUser)
///   .withName('Branch Office')
///   .withTags(['branch', 'office'])
///   .build();
/// ```
class EntityCloningBuilder<T extends Object> {
  // Required fields
  BaseEntityModel<T>? _source;
  AuthUser? _user;

  // Optional fields
  String? _newName;
  String? _newPath;
  Map<String, Object>? _newMeta;
  Map<String, String>? _newLabels;
  List<String>? _newTags;

  // Required field methods
  /// Sets the source entity to clone
  EntityCloningBuilder<T> fromSource(BaseEntityModel<T> source) {
    _source = source;
    return this;
  }

  /// Sets the user performing the clone operation
  EntityCloningBuilder<T> withUser(AuthUser user) {
    _user = user;
    return this;
  }

  // Optional field methods
  /// Sets the name for the cloned entity
  EntityCloningBuilder<T> withName(String newName) {
    _newName = newName;
    return this;
  }

  /// Sets the path for the cloned entity
  EntityCloningBuilder<T> withPath(String newPath) {
    _newPath = newPath;
    return this;
  }

  /// Sets custom metadata for the cloned entity
  EntityCloningBuilder<T> withMeta(Map<String, Object> newMeta) {
    _newMeta = newMeta;
    return this;
  }

  /// Sets labels for the cloned entity
  EntityCloningBuilder<T> withLabels(Map<String, String> newLabels) {
    _newLabels = newLabels;
    return this;
  }

  /// Sets tags for the cloned entity
  EntityCloningBuilder<T> withTags(List<String> newTags) {
    _newTags = newTags;
    return this;
  }

  // Build method
  BaseEntityModel<T> build() {
    // Validate required fields
    if (_source == null) {
      throw ArgumentError('Source entity is required');
    }
    if (_user == null) {
      throw ArgumentError('User is required');
    }

    // Create config
    final config = EntityCloningConfig<T>(
      source: _source!,
      user: _user!,
      newName: _newName,
      newPath: _newPath,
      newMeta: _newMeta,
      newLabels: _newLabels,
      newTags: _newTags,
    );

    // Create cloned entity
    return EntityFactory.clone(config);
  }
}

/// Factory for creating and cloning entities.
///
/// This factory handles the construction of entity objects, applying validation
/// and ensuring structural integrity. It's recommended to use the builder pattern
/// through [EntityBuilder] and [EntityCloningBuilder] for a more fluent API.
class EntityFactory {
  /// Valid entity types that can be created with this factory
  static final _validTypes = <Type>{
    OwnerData,
    SiteData,
    EquipmentData,
    VendorData,
    PersonnelData,
  };

  /// Creates a new entity from the provided configuration.
  ///
  /// For a more fluent API, consider using [EntityBuilder] instead.
  ///
  /// Example with builder pattern:
  /// ```dart
  /// final entity = EntityBuilder<SiteModel>()
  ///   .withName('Site Name')
  ///   .withUser(currentUser)
  ///   .withData(siteData)
  ///   // ... more properties ...
  ///   .build();
  /// ```
  ///
  /// @param config The configuration containing all entity parameters
  /// @return A new entity with the specified configuration
  /// @throws ArgumentError if an invalid type is provided
  /// @throws PathValidationException if the provided path is invalid
  /// @throws HierarchyValidationException if a circular reference is detected
  static BaseEntityModel<T> create<T extends Object>(
    EntityInitConfig<T> config,
  ) {
    if (!_validTypes.contains(T)) {
      throw ArgumentError('Invalid type: ${T.toString()}');
    }

    final now = DateTime.now();
    final userAction = UserAction.fromAuthUser(config.user);
    final id = EntityId(const Uuid().v4());

    // Create core entity
    final core = CoreEntity<T>(
      id: id,
      name: config.name,
      description: config.description,
      createdAt: now,
      updatedAt: now,
      owner: userAction,
      creator: userAction,
      modifier: userAction,
      data: config.data,
      meta: config.meta ?? {},
    );

    // Create entity with component structure
    var entity = BaseEntityModel<T>(
      core: core,
      hierarchy: EntityHierarchy(
        treePath: config.parentPath,
        parentId: config.parentId,
        ancestors: config.ancestors ?? [],
        isHierarchyRoot: config.parentId == null,
        isHierarchyLeaf: true,
      ),
      security: EntitySecurity(
        modHistory: [userAction],
        accessLog: [userAction],
        isPublic: config.isPublic ?? EntityDefaults.isPublic,
      ),
      classification: EntityClassification(
        tags: config.tags ?? [],
        labels: config.labels ?? {},
        priority: config.priority ?? EntityDefaults.priority,
        stage: config.stage ?? EntityDefaults.stage,
        expiryDate: config.expiryDate,
      ),
      versioning: const EntityVersioning(),
    );

    // Use extension methods for validation and path processing
    if (!entity.isValidPath(entity.hierarchy.treePath)) {
      throw PathValidationException(
        message: 'Invalid path format',
        path: entity.hierarchy.treePath,
      );
    }

    if (entity.hasCircularReference()) {
      throw HierarchyValidationException(
        message: 'Circular reference detected',
        field: 'hierarchy',
        depth: entity.hierarchy.ancestors.length,
        path: entity.hierarchy.ancestors.map((a) => a.value).toList(),
      );
    }

    final searchIndex = entity.buildHierarchyIndex();
    return entity.copyWith(
      hierarchy: entity.hierarchy.copyWith(
        treePath: entity.sanitizePath(entity.hierarchy.treePath),
        treeDepth: entity.hierarchy.ancestors.length,
      ),
      versioning: entity.version.copyWith(searchIndex: searchIndex),
    );
  }

  /// Creates a clone of an existing entity with optional modifications.
  ///
  /// For a more fluent API, consider using [EntityCloningBuilder] instead.
  ///
  /// Example with builder pattern:
  /// ```dart
  /// final clonedEntity = EntityCloningBuilder<SiteModel>()
  ///   .fromSource(existingEntity)
  ///   .withUser(currentUser)
  ///   .withName('New Name')
  ///   .build();
  /// ```
  ///
  /// @param config The configuration for cloning, including source entity and overrides
  /// @return A new entity based on the source with applied modifications
  static BaseEntityModel<T> clone<T extends Object>(
    EntityCloningConfig<T> config,
  ) {
    final now = DateTime.now();
    final userAction = UserAction.fromAuthUser(config.user);
    final id = EntityId(const Uuid().v4());
    final source = config.source;

    // Create new core entity
    final core = CoreEntity<T>(
      id: id,
      name: config.newName ?? '${source.name} (Copy)',
      description: source.description,
      createdAt: now,
      updatedAt: now,
      owner: userAction,
      creator: userAction,
      modifier: userAction,
      data: source.core.data,
      meta: config.newMeta ?? Map<String, Object>.from(source.meta),
    );

    // Create clone with component structure
    var entity = BaseEntityModel<T>(
      core: core,
      hierarchy: EntityHierarchy(
        treePath: config.newPath ?? source.hierarchy.treePath,
        ancestors: source.hierarchy.ancestors,
        isHierarchyRoot: source.hierarchy.isHierarchyRoot,
        isHierarchyLeaf: source.hierarchy.isHierarchyLeaf,
      ),
      security: EntitySecurity(
        modHistory: [userAction],
        accessLog: [userAction],
        isPublic: source.security.isPublic,
      ),
      classification: EntityClassification(
        tags: config.newTags ?? List<String>.from(source.classification.tags),
        labels:
            config.newLabels ??
            Map<String, String>.from(source.classification.labels),
        priority: source.classification.priority,
        stage: source.classification.stage,
        expiryDate: source.classification.expiryDate,
      ),
      versioning: source.version,
    );

    final searchIndex = entity.buildHierarchyIndex();
    return entity.copyWith(
      hierarchy: entity.hierarchy.copyWith(
        treePath: entity.sanitizePath(entity.hierarchy.treePath),
        treeDepth: entity.hierarchy.ancestors.length,
      ),
      versioning: entity.version.copyWith(searchIndex: searchIndex),
    );
  }
}
