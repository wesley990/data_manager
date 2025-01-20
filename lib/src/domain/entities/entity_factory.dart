import 'package:uuid/uuid.dart';
import 'package:authentication/authentication.dart';
import 'package:data_manager/data_manager.dart';

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
  final BaseEntity<T> source;
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
    Owner,
    Site,
    Equipment,
    Vendor,
    Personnel,
  };

  static BaseEntity<T> create<T extends Object>(EntityCreateConfig<T> config) {
    if (!_validTypes.contains(T)) {
      throw ArgumentError('Invalid type: ${T.toString()}');
    }

    final now = DateTime.now();
    final userAction = UserAction.fromAuthUser(config.user);
    final id = EntityId(const Uuid().v4());

    // Create core entity first
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

    // Create base entity
    final entity = BaseEntity<T>(
      core: core,
      treePath: config.parentPath,
      parentId: config.parentId,
      ancestors: config.ancestors ?? [],
      isHierarchyRoot: config.parentId == null,
      tags: config.tags ?? [],
      labels: config.labels ?? {},
      priority: config.priority ?? EntityDefaults.priority,
      stage: config.stage ?? EntityDefaults.stage,
      expiryDate: config.expiryDate,
      isPublic: config.isPublic ?? EntityDefaults.isPublic,
      aiVectors: config.aiVectors ?? {},
      aiScores: config.aiScores ?? {},
      aiMeta: config.aiMeta ?? {},
      aiTags: config.aiTags ?? [],
      aiNotes: config.aiNotes ?? {},
      aiVer: config.aiVer,
      aiLastRun: now,
      modHistory: [userAction],
      accessLog: [userAction],
    );

    // Process with path extension
    final treeExt = TreePathExtension(entity);
    if (!treeExt.isPathValid(entity.treePath)) {
      throw PathValidationException(
        message: 'Invalid path format',
        path: entity.treePath,
      );
    }

    // Process with hierarchy extension
    final hierExt = HierarchyExtension(entity);
    if (hierExt.hasCircularReference()) {
      throw HierarchyValidationException(
        message: 'Circular reference detected',
        field: 'hierarchy',
        depth: entity.ancestors.length,
        path: entity.ancestors.map((a) => a.value).toList(),
      );
    }

    final searchIndex = hierExt.buildHierarchyIndex();
    return entity.copyWith(
      treePath: treeExt.sanitizePath(entity.treePath),
      treeDepth: entity.ancestors.length,
      searchIndex: searchIndex,
    );
  }

  static BaseEntity<T> clone<T extends Object>(EntityCloneConfig<T> config) {
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

    // Create base entity
    final entity = BaseEntity<T>(
      core: core,
      treePath: config.newPath ?? source.treePath,
      tags: config.newTags ?? List<String>.from(source.tags),
      labels: config.newLabels ?? Map<String, String>.from(source.labels),
      priority: source.priority,
      stage: source.stage,
      expiryDate: source.expiryDate,
      isPublic: source.isPublic,
      aiVectors: Map<String, List<double>>.from(source.aiVectors),
      aiScores: Map<String, double>.from(source.aiScores),
      aiMeta: Map<String, String>.from(source.aiMeta),
      aiTags: List<String>.from(source.aiTags),
      aiNotes: Map<String, Object>.from(source.aiNotes),
      aiVer: source.aiVer,
      aiLastRun: now,
      modHistory: [userAction],
      accessLog: [userAction],
    );

    // Process with extensions
    final treeExt = TreePathExtension(entity);
    final hierExt = HierarchyExtension(entity);

    final searchIndex = hierExt.buildHierarchyIndex();
    return entity.copyWith(
      treePath: treeExt.sanitizePath(entity.treePath),
      treeDepth: entity.ancestors.length,
      searchIndex: searchIndex,
    );
  }
}
