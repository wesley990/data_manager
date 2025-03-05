import 'package:data_manager/data_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_entity.freezed.dart';
part 'base_entity.g.dart';

// Global type aliases
typedef EntityVersionVector = Map<String, int>;
typedef EntityLockMetadata = Map<String, dynamic>;
typedef EntityEventMeta = Map<String, Object>;
typedef EntitySearchIndex = Map<String, Object>;

// System-wide constants
abstract class SystemLimits {
  static const pathMaxLength = 1024;
  static const pathMaxSegment = 255;
  static const hierarchyDepthMax = 10;
  static const historyMax = 50;
  static const historyDefault = 50;
}

// Entity-specific defaults
abstract class EntityDefaults {
  static const version = '1.0.0';
  static const status = EntityStatus.active;
  static const priority = Priority.medium;
  static const stage = WorkflowStage.draft;
  static const isPublic = true;
  static const accessCount = 0;

  // Path related
  static const pathSeparator = '/';
  static const encodedPathSeparator = '%2F';
  static const invalidPathChars = r'[<>:"|?*\x00-\x1F]';
}

// Lock-related configurations
abstract class LockConfig {
  static const defaultTimeout = Duration(minutes: 15);
  static const extensionPeriod = Duration(minutes: 5);
  static const minimumDuration = Duration(seconds: 30);
  static const maximumDuration = Duration(hours: 24);
}

// Each component handles a specific aspect of entity data
@freezed
class EntityHierarchy with _$EntityHierarchy {
  const factory EntityHierarchy({
    String? treePath,
    @Default(0) int treeDepth,
    @Default([]) List<EntityId> ancestors,
    EntityId? parentId,
    @Default([]) List<EntityId> childIds,
    @Default(true) bool isHierarchyRoot,
    @Default(true) bool isHierarchyLeaf,
    @Default({}) Map<String, Object> hierarchyMeta,
  }) = _EntityHierarchy;
}

@freezed
class EntitySecurity with _$EntitySecurity {
  const factory EntitySecurity({
    UserAction? lastAccessor,
    UserAction? lockOwner,
    DateTime? lockExpiry,
    UserAction? remover,
    @Default([]) List<UserAction> modHistory,
    @Default([]) List<UserAction> accessLog,
    @Default(EntityDefaults.isPublic) bool isPublic,
    @Default(EntityDefaults.accessCount) int accessCount,
  }) = _EntitySecurity;
}

@freezed
class EntityClassification with _$EntityClassification {
  const factory EntityClassification({
    @Default([]) List<String> tags,
    @Default({}) Map<String, String> labels,
    @Default(EntityDefaults.priority) Priority priority,
    @Default(EntityDefaults.stage) WorkflowStage stage,
    DateTime? expiryDate,
  }) = _EntityClassification;
}

@freezed
class EntityVersioning with _$EntityVersioning {
  const factory EntityVersioning({
    @Default({}) Map<String, Object> syncMeta,
    String? syncVer,
    @Default({}) Map<String, Object> searchIndex,
    @Default(0) int eventVer,
    @Default([]) List<String> pendingEvents,
    @Default({}) Map<String, Object> eventMeta,
    @Default(SystemLimits.historyDefault) int historyLimit,
    @Default(1) int dataVer,
    @Default(1) int structVer,
    String? lastVer,
    @Default(EntityDefaults.version) String schemaVer,
    @Default({}) Map<String, int> verVectors,
  }) = _EntityVersioning;
}

@freezed
class EntityAI with _$EntityAI {
  const factory EntityAI({
    @Default({}) Map<String, List<double>> aiVectors,
    @Default({}) Map<String, double> aiScores,
    @Default({}) Map<String, String> aiMeta,
    @Default([]) List<String> aiTags,
    @Default({}) Map<String, Object> aiNotes,
    DateTime? aiLastRun,
    String? aiVer,
  }) = _EntityAI;
}

@freezed
class EntityLocking with _$EntityLocking {
  const factory EntityLocking({
    String? distLockId,
    DateTime? distLockExpiry,
    String? distLockNode,
    @Default({}) Map<String, dynamic> lockMeta,
    @Default({}) Map<String, int> verVectors,
    @Default(LockConfig.defaultTimeout) Duration lockTimeout,
    UserAction? lockOwner,
    DateTime? lockExpiry,
  }) = _EntityLocking;
}

// Main entity class now composes these components
@Freezed(genericArgumentFactories: true)
class BaseEntityModel<T extends Object> with _$BaseEntityModel<T> {
  const BaseEntityModel._();

  const factory BaseEntityModel({
    // Core entity data
    required CoreEntity<T> core,

    // Component-based structure
    required EntityHierarchy hierarchy,
    required EntitySecurity security,
    required EntityClassification classification,
    required EntityVersioning versioning,
    required EntityAI ai,
    required EntityLocking locking,

    // Optional extra data
    T? extraData,
  }) = _BaseEntityModel<T>;

  // Delegate core properties
  EntityId get id => core.id;
  String get name => core.name;
  String? get description => core.description;
  DateTime get createdAt => core.createdAt;
  DateTime get updatedAt => core.updatedAt;
  String get schemaVer => core.schemaVer;
  EntityStatus get status => core.status;
  Map<String, Object> get meta => core.meta;
  UserAction get owner => core.owner;
  UserAction get creator => core.creator;
  UserAction get modifier => core.modifier;

  // Component-based property getters
  EntityVersioning get version => versioning;
  EntityLocking get lock => locking;

  // Core helpers
  String get uid => id.value;
  String get type => T.toString();
  dynamic getMeta(String key) => meta[key];

  // Short accessors to reduce verbosity
  bool get isRoot => hierarchy.isHierarchyRoot;
  bool get isLeaf => hierarchy.isHierarchyLeaf;
  String? get parentPath => hierarchy.parentId?.value;

  // Factory method with configuration
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

  // Utility methods
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

@freezed
class EntityMetadataDto with _$EntityMetadataDto {
  const EntityMetadataDto._();

  const factory EntityMetadataDto({
    required String displayName,
    required String entityType,
    String? description,
    DateTime? lastNameUpdate,
    @Default({}) Map<String, String> searchTerms,
  }) = _EntityMetadataDto;

  factory EntityMetadataDto.fromJson(Map<String, Object> json) =>
      _$EntityMetadataDtoFromJson(json);
}
