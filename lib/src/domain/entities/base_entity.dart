import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/domain/value_objects/user_action.dart';
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

@Freezed(genericArgumentFactories: true)
class BaseEntity<T extends Object> with _$BaseEntity<T> {
  const BaseEntity._();
  static Clock clock = SystemClock();

  const factory BaseEntity({
    // Identity & Core Data
    required EntityId id,
    required String name,
    String? description,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(EntityDefaults.version) String schemaVer,
    @Default(EntityDefaults.status) EntityStatus status,
    @Default({}) Map<String, Object> meta,

    // Hierarchical Structure
    String? treePath,
    @Default(0) int treeDepth,
    @Default({}) Map<String, List<EntityId>> refs,
    @Default(SystemLimits.hierarchyDepthMax) int treeMaxDepth,
    @Default([]) List<EntityId> ancestors,
    EntityId? parentId,
    @Default([]) List<EntityId> childIds,
    @Default({}) Map<String, String> subPaths,
    @Default({}) Map<String, EntityMetadata> ancestorMeta,
    String? parentName,
    @Default([]) List<String> searchPaths,
    String? treeLevel,
    @Default(0) int treeVersion,
    DateTime? treeLastUpdate,

    // Access Control & Security
    required UserAction owner,
    required UserAction creator,
    required UserAction modifier,
    UserAction? lastAccessor,
    UserAction? lockOwner,
    DateTime? lockExpiry,
    UserAction? remover,
    @Default([]) List<UserAction> modHistory,
    @Default([]) List<UserAction> accessLog,
    @Default(EntityDefaults.isPublic) bool isPublic,
    @Default(EntityDefaults.accessCount) int accessCount,

    // Classification & Metadata
    @Default([]) List<String> tags,
    @Default({}) Map<String, String> labels,
    @Default(EntityDefaults.priority) Priority priority,
    @Default(EntityDefaults.stage) WorkflowStage stage,
    DateTime? expiryDate,

    // Synchronization & Versioning
    @Default({}) Map<String, Object> syncMeta,
    String? syncVer,
    @Default({}) Map<String, Object> searchIndex,
    T? extraData,
    @Default(0) int eventVer,
    @Default([]) List<String> pendingEvents,
    @Default({}) Map<String, Object> eventMeta,
    @Default(SystemLimits.historyDefault) int historyLimit,
    @Default(1) int dataVer,
    @Default(1) int structVer,
    String? lastVer,

    // Distributed Systems
    String? distLockId,
    DateTime? distLockExpiry,
    String? distLockNode,
    @Default({}) Map<String, dynamic> lockMeta,
    @Default({}) Map<String, int> verVectors,
    @Default(LockConfig.defaultTimeout) Duration lockTimeout,

    // AI & Machine Learning
    @Default({}) Map<String, List<double>> aiVectors,
    @Default({}) Map<String, double> aiScores,
    @Default({}) Map<String, String> aiMeta,
    @Default([]) List<String> aiTags,
    @Default({}) Map<String, Object> aiNotes,
    DateTime? aiLastRun,
    String? aiVer,
  }) = _BaseEntity<T>;

  // Factory methods
  factory BaseEntity.fromJson(
      Map<String, Object> json, T Function(Object? json) fromJsonT) =>
      _$BaseEntityFromJson(json, fromJsonT);

  // Core getters
  String get uid => id.value;
  String get type => T.toString();
  bool get isTreeRoot => treePath == null || treePath == id.value;
  bool get isTreeLeaf => !refs.containsKey('children');
  
  // Utility methods
  dynamic getMeta(String key) => meta[key];
  Map<EntityId, String> get ancestorNames => Map.fromEntries(
        ancestorMeta.entries.map(
          (e) => MapEntry(EntityId(e.key), e.value.displayName),
        ),
      );

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

class PathValidationException implements Exception {
  final String message;
  PathValidationException(this.message);
  @override
  String toString() => 'PathValidationException: $message';
}
