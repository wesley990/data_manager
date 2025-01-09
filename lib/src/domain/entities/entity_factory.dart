import 'package:uuid/uuid.dart';
import 'package:authentication/authentication.dart';
import 'package:data_manager/data_manager.dart';

import '../value_objects/user_action.dart';

class EntityCreateConfig<T> {
  // Core info
  final String name;
  final AuthUser user;
  final T data;
  final UserAction owner;
  final String? description;

  // Metadata
  final Map<String, Object>? meta;

  // Hierarchy
  final String? parentPath;
  final EntityId? parentId;
  final List<EntityId>? ancestors;
  final Map<String, String>? ancestorNames;
  final String? treeLevel;
  final List<EntityId>? childIds;
  final String? parentName;

  // Relations
  final Map<String, List<String>>? refs;
  final Map<String, String>? subPaths;

  // Classification
  final List<String>? tags;
  final Map<String, String>? labels;
  final DateTime? expiryDate;
  final Priority? priority;
  final WorkflowStage? stage;
  final bool? isPublic;

  // AI features
  final Map<String, List<double>>? aiVectors;
  final Map<String, double>? aiScores;
  final Map<String, String>? aiMeta;
  final List<String>? aiTags;
  final Map<String, Object>? aiNotes;
  final String? aiVersion;

  EntityCreateConfig({
    required this.name,
    required this.user,
    required this.owner,
    required this.data,
    this.description,
    this.meta,
    this.parentPath,
    this.parentId,
    this.ancestors,
    this.ancestorNames,
    this.treeLevel,
    this.refs,
    this.subPaths,
    this.tags,
    this.labels,
    this.expiryDate,
    this.priority,
    this.stage,
    this.childIds,
    this.parentName,
    this.isPublic,
    this.aiVectors,
    this.aiScores,
    this.aiMeta,
    this.aiTags,
    this.aiNotes,
    this.aiVersion,
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
  // Default values
  static const Priority defaultPriority = Priority.medium;
  static const WorkflowStage defaultStage = WorkflowStage.draft;
  static const String defaultSchemaVer = '1.0.0';
  static const EntityStatus defaultStatus = EntityStatus.active;
  static const int defaultTreeDepth = 10;
  static const bool defaultIsPublic = false;

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

    final treePath = _buildTreePath(config.parentPath, id.value);
    if (!_isValidPath(treePath)) {
      throw PathValidationException('Invalid path: $treePath');
    }

    final ancestors = _buildAncestorList(config.parentPath);
    final treeDepth = ancestors.length + 1;

    final ancestorMeta = _buildAncestorMeta(config.ancestorNames ?? {}, now);

    final entity = BaseEntity<T>(
      // Core
      id: id,
      name: config.name,
      description: config.description,
      createdAt: now,
      updatedAt: now,
      meta: config.meta ?? {},

      // Tree
      treePath: treePath,
      treeDepth: treeDepth,
      treeMaxDepth: defaultTreeDepth,
      parentId: config.parentId,
      ancestors: config.ancestors ?? ancestors,
      treeLevel: config.treeLevel,

      // Users
      owner: config.owner,
      creator: userAction,
      modifier: userAction,
      lastAccessor: userAction,

      // Relations
      refs: _convertToEntityIdRefs(config.refs ?? {}),
      subPaths: config.subPaths ?? {},
      childIds: config.childIds ?? [],

      // Metadata
      ancestorMeta: ancestorMeta,
      parentName: config.parentName,
      tags: config.tags ?? [],
      labels: config.labels ?? {},
      priority: config.priority ?? defaultPriority,
      stage: config.stage ?? defaultStage,
      isPublic: config.isPublic ?? defaultIsPublic,
      expiryDate: config.expiryDate,

      // History
      modHistory: [userAction],
      accessLog: [userAction],

      // System
      status: defaultStatus,
      schemaVer: defaultSchemaVer,

      // Data
      extraData: config.data,

      // AI
      aiVectors: config.aiVectors ?? {},
      aiScores: config.aiScores ?? {},
      aiMeta: config.aiMeta ?? {},
      aiTags: config.aiTags ?? [],
      aiNotes: config.aiNotes ?? {},
      aiVer: config.aiVersion,
      aiLastRun: now,
    );

    // Use the extension methods through TreePathExtension
    return entity.copyWith(
      searchPaths: TreePathExtension(entity).buildTreePaths(),
      searchIndex: TreePathExtension(entity).buildTreeIndex(),
    );
  }

  static BaseEntity<T> clone<T extends Object>(EntityCloneConfig<T> config) {
    final now = DateTime.now();
    final userAction = UserAction.fromAuthUser(config.user);
    final id = EntityId(const Uuid().v4());

    final path = _buildTreePath(config.newPath, id.value);
    final ancestors = _buildAncestorList(config.newPath);
    final depth = ancestors.length + 1;

    final ancestorMeta = _buildAncestorMeta(
        config.source.ancestorMeta
            .map((key, value) => MapEntry(key, value.displayName)),
        now);

    final entity = BaseEntity<T>(
      id: id,
      name: config.newName ?? '${config.source.name} (Copy)',
      description: config.source.description,
      createdAt: now,
      updatedAt: now,
      meta: config.newMeta ?? Map<String, Object>.from(config.source.meta),
      treePath: path,
      treeDepth: depth,
      treeMaxDepth: defaultTreeDepth,
      parentId: _deriveParentId(config.newPath),
      ancestors: ancestors,
      treeLevel: config.source.treeLevel,
      owner: userAction,
      creator: userAction,
      modifier: userAction,
      lastAccessor: userAction,
      refs: Map<String, List<EntityId>>.from(config.source.refs),
      subPaths: Map<String, String>.from(config.source.subPaths),
      childIds: [],
      ancestorMeta: ancestorMeta,
      parentName: config.source.parentName,
      tags: config.newTags ?? List<String>.from(config.source.tags),
      labels:
          config.newLabels ?? Map<String, String>.from(config.source.labels),
      priority: config.source.priority,
      stage: config.source.stage,
      isPublic: config.source.isPublic,
      expiryDate: config.source.expiryDate,
      extraData: config.source.extraData,
      modHistory: [userAction],
      accessLog: [userAction],
      status: defaultStatus,
      schemaVer: defaultSchemaVer,
      aiVectors: Map<String, List<double>>.from(config.source.aiVectors),
      aiScores: Map<String, double>.from(config.source.aiScores),
      aiMeta: Map<String, String>.from(config.source.aiMeta),
      aiTags: List<String>.from(config.source.aiTags),
      aiNotes: Map<String, Object>.from(config.source.aiNotes),
      aiVer: config.source.aiVer,
      aiLastRun: now,
    );

    // Use the extension methods through TreePathExtension
    return entity.copyWith(
      searchPaths: TreePathExtension(entity).buildTreePaths(),
      searchIndex: TreePathExtension(entity).buildTreeIndex(),
    );
  }

  // Helper methods
  static bool _isValidPath(String path) {
    return path.length <= PathRules.maxLength &&
        path
            .split(PathRules.separator)
            .every((s) => s.length <= PathRules.maxSegment);
  }

  static String _buildTreePath(String? parentPath, String id) {
    if (parentPath == null || parentPath.isEmpty) return id;
    return parentPath.endsWith(PathRules.separator)
        ? '$parentPath$id'
        : '$parentPath${PathRules.separator}$id';
  }

  static List<EntityId> _buildAncestorList(String? parentPath) {
    if (parentPath == null || parentPath.isEmpty) return [];
    return parentPath
        .split(PathRules.separator)
        .where((p) => p.isNotEmpty)
        .map((p) => EntityId(p))
        .toList();
  }

  static Map<String, EntityMetadata> _buildAncestorMeta(
    Map<String, String> names,
    DateTime timestamp,
  ) {
    return names.map((key, name) => MapEntry(
          key,
          EntityMetadata(
            displayName: name,
            entityType: 'ancestor',
            lastNameUpdate: timestamp,
          ),
        ));
  }

  static Map<String, List<EntityId>> _convertToEntityIdRefs(
    Map<String, List<String>> refs,
  ) {
    return refs.map(
      (key, value) => MapEntry(
        key,
        value.map((id) => EntityId(id)).toList(),
      ),
    );
  }

  static EntityId? _deriveParentId(String? parentPath) {
    if (parentPath == null || parentPath.isEmpty) return null;
    final segments = parentPath.split(PathRules.separator);
    final lastSegment =
        segments.lastWhere((s) => s.isNotEmpty, orElse: () => '');
    return lastSegment.isEmpty ? null : EntityId(lastSegment);
  }
}
