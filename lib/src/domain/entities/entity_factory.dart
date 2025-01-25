import 'package:uuid/uuid.dart';
import 'package:authentication/authentication.dart';
import 'package:data_manager/data_manager.dart';
import 'base_entity_extensions.dart';

class EntityCreateConfig<T extends Object> {
  // Core info
  final String name;
  final AuthUser user;
  final T data;
  final String? description;

  // Tree structure
  final String? parentPath;
  final EntityId? parentId;
  final List<EntityId>? ancestors;

  // Metadata & Classification
  final Map<String, Object>? meta;
  final List<String>? tags;
  final Map<String, String>? labels;
  final Priority? priority;
  final WorkflowStage? stage;
  final DateTime? expiryDate;
  final bool? isPublic;

  // AI features
  final Map<String, List<double>>? aiVectors;
  final Map<String, double>? aiScores;
  final Map<String, String>? aiMeta;
  final List<String>? aiTags;
  final Map<String, Object>? aiNotes;
  final String? aiVer;

  EntityCreateConfig({
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
    this.aiVectors,
    this.aiScores,
    this.aiMeta,
    this.aiTags,
    this.aiNotes,
    this.aiVer,
  });
}

class EntityCloneConfig<T extends Object> {
  final BaseEntityModel<T> source;
  final AuthUser user;
  final String? newName;
  final String? newPath;
  final Map<String, Object>? newMeta;
  final Map<String, String>? newLabels;
  final List<String>? newTags;

  EntityCloneConfig({
    required this.source,
    required this.user,
    this.newName,
    this.newPath,
    this.newMeta,
    this.newLabels,
    this.newTags,
  });
}

class EntityFactory {
  static final _validTypes = <Type>{
    OwnerModel,
    SiteModel,
    EquipmentModel,
    VendorModel,
    PersonnelModel,
  };

  static BaseEntityModel<T> create<T extends Object>(
      EntityCreateConfig<T> config) {
    if (!_validTypes.contains(T)) {
      throw ArgumentError('Invalid type: ${T.toString()}');
    }

    final now = DateTime.now();
    final userAction = UserAction.fromAuthUser(config.user);
    final id = EntityId(const Uuid().v4());

    // Create core entity
    final core = CoreEntityDto<T>(
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
      ai: EntityAI(
        aiVectors: config.aiVectors ?? {},
        aiScores: config.aiScores ?? {},
        aiMeta: config.aiMeta ?? {},
        aiTags: config.aiTags ?? [],
        aiNotes: config.aiNotes ?? {},
        aiLastRun: now,
        aiVer: config.aiVer,
      ),
      locking: const EntityLocking(),
    );

    // Use extension methods for validation and path processing
    if (!entity.isPathValid(entity.hierarchy.treePath)) {
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
      versioning: entity.version.copyWith(
        searchIndex: searchIndex,
      ),
    );
  }

  static BaseEntityModel<T> clone<T extends Object>(
      EntityCloneConfig<T> config) {
    final now = DateTime.now();
    final userAction = UserAction.fromAuthUser(config.user);
    final id = EntityId(const Uuid().v4());
    final source = config.source;

    // Create new core entity
    final core = CoreEntityDto<T>(
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
        labels: config.newLabels ?? Map<String, String>.from(source.classification.labels),
        priority: source.classification.priority,
        stage: source.classification.stage,
        expiryDate: source.classification.expiryDate,
      ),
      versioning: source.version,
      ai: source.ai,
      locking: const EntityLocking(),
    );

    final searchIndex = entity.buildHierarchyIndex();
    return entity.copyWith(
      hierarchy: entity.hierarchy.copyWith(
        treePath: entity.sanitizePath(entity.hierarchy.treePath),
        treeDepth: entity.hierarchy.ancestors.length,
      ),
      versioning: entity.version.copyWith(
        searchIndex: searchIndex,
      ),
    );
  }
}
