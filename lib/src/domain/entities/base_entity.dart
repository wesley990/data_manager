import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/domain/value_objects/user_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_entity.freezed.dart';
part 'base_entity.g.dart';

// Type aliases with consistent prefixes
typedef EntityVersionVector = Map<String, int>;
typedef EntityLockMetadata = Map<String, dynamic>;
typedef EntityEventMeta = Map<String, Object>;
typedef EntitySearchIndex = Map<String, Object>;

// Constants with clear grouping
class EntityLimits {
  static const historyMax = 50;
  static const historyDefault = 50;
  static const hierarchyDepthMax = 10;
  static const pathLengthMax = 1024;
  static const pathSegmentMax = 255;
}

class EntityDefaults {
  static const version = '1.0.0';
  static const status = EntityStatus.active;
  static const priority = Priority.medium;
  static const stage = WorkflowStage.draft;
  static const isPublic = true;
  static const accessCount = 0;
}

class LockDurations {
  static const timeout = Duration(minutes: 15);
  static const extension = Duration(minutes: 5);
  static const min = Duration(seconds: 30);
  static const max = Duration(hours: 24);
}

class PathRules {
  static const separator = '/';
  static const encodedSeparator = '%2F';
  static const invalidChars = r'[<>:"|?*\x00-\x1F]';
  static const maxLength = 1024;
  static const maxSegment = 255;
}

@Freezed(genericArgumentFactories: true)
class BaseEntity<T extends Object> with _$BaseEntity<T> {
  const BaseEntity._();

  static Clock clock = SystemClock();

  const factory BaseEntity({
    // Core properties
    required EntityId id,
    required String name,
    String? description,

    // Metadata
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(EntityDefaults.version) String schemaVer,
    @Default(EntityDefaults.status) EntityStatus status,
    @Default({}) Map<String, Object> meta,

    // Hierarchy
    String? treePath,
    @Default(0) int treeDepth,
    @Default({}) Map<String, List<EntityId>> refs,
    @Default(EntityLimits.hierarchyDepthMax) int treeMaxDepth,

    // Tree optimization
    @Default([]) List<EntityId> ancestors,
    EntityId? parentId,
    @Default([]) List<EntityId> childIds,

    // Collections
    @Default({}) Map<String, String> subPaths,

    // Quick access data
    @Default({}) Map<String, EntityMetadata> ancestorMeta,
    String? parentName,

    // Search optimization
    @Default([]) List<String> searchPaths,
    String? treeLevel,

    // Sync state
    @Default(0) int treeVersion,
    DateTime? treeLastUpdate,

    // Access control
    required UserAction owner,
    required UserAction creator,
    required UserAction modifier,
    UserAction? lastAccessor,

    // Locking
    UserAction? lockOwner,
    DateTime? lockExpiry,

    // Soft delete
    UserAction? remover,

    // History tracking
    @Default([]) List<UserAction> modHistory,
    @Default([]) List<UserAction> accessLog,
    @Default(EntityDefaults.isPublic) bool isPublic,
    @Default(EntityDefaults.accessCount) int accessCount,

    // Classification
    @Default([]) List<String> tags,
    @Default({}) Map<String, String> labels,

    // Workflow
    @Default(EntityDefaults.priority) Priority priority,
    @Default(EntityDefaults.stage) WorkflowStage stage,
    DateTime? expiryDate,

    // Sync
    @Default({}) Map<String, Object> syncMeta,
    String? syncVer,
    @Default({}) Map<String, Object> searchIndex,

    // Extension
    T? extraData,

    // Event sourcing
    @Default(0) int eventVer,
    @Default([]) List<String> pendingEvents,
    @Default({}) Map<String, Object> eventMeta,
    @Default(EntityLimits.historyDefault) int historyLimit,

    // Versioning
    @Default(1) int dataVer,
    @Default(1) int structVer,
    String? lastVer,

    // Distributed locking
    String? distLockId,
    DateTime? distLockExpiry,
    String? distLockNode,
    @Default({}) Map<String, dynamic> lockMeta,
    @Default({}) Map<String, int> verVectors,
    @Default(LockDurations.timeout) Duration lockTimeout,

    // AI features
    @Default({}) Map<String, List<double>> aiVectors,
    @Default({}) Map<String, double> aiScores,
    @Default({}) Map<String, String> aiMeta,
    @Default([]) List<String> aiTags,
    @Default({}) Map<String, Object> aiNotes,
    DateTime? aiLastRun,
    String? aiVer,
  }) = _BaseEntity<T>;

  factory BaseEntity.fromJson(
          Map<String, Object> json, T Function(Object? json) fromJsonT) =>
      _$BaseEntityFromJson(json, fromJsonT);

  // Core utility methods

  // Essential getters and operators
  bool get isTreeRoot => treePath == null || treePath == id.value;
  bool get isTreeLeaf => !refs.containsKey('children');
  dynamic getMeta(String key) => meta[key];
  dynamic operator [](String key) {
    return switch (key) {
      'entityId' => id,
      'entityName' => name,
      'entityDescription' => description,
      'status' => status,
      _ => meta[key],
    };
  }

  String get uid => id.value;
  String get type => T.toString();

  Map<EntityId, String> get ancestorNames => Map.fromEntries(
        ancestorMeta.entries.map(
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
