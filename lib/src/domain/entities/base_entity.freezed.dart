// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseEntity<T extends Object> {
// Core entity data
  CoreEntity<T> get core =>
      throw _privateConstructorUsedError; // Hierarchical Structure
  String? get treePath => throw _privateConstructorUsedError;
  int get treeDepth => throw _privateConstructorUsedError;
  Map<String, List<EntityId>> get refs => throw _privateConstructorUsedError;
  int get treeMaxDepth => throw _privateConstructorUsedError;
  List<EntityId> get ancestors => throw _privateConstructorUsedError;
  EntityId? get parentId => throw _privateConstructorUsedError;
  List<EntityId> get childIds => throw _privateConstructorUsedError;
  Map<String, String> get subPaths => throw _privateConstructorUsedError;
  Map<String, EntityMetadata> get ancestorMeta =>
      throw _privateConstructorUsedError;
  String? get parentName => throw _privateConstructorUsedError;
  List<String> get searchPaths => throw _privateConstructorUsedError;
  String? get treeLevel => throw _privateConstructorUsedError;
  int get treeVersion => throw _privateConstructorUsedError;
  DateTime? get treeLastUpdate =>
      throw _privateConstructorUsedError; // Access Control & Security
  UserAction? get lastAccessor => throw _privateConstructorUsedError;
  UserAction? get lockOwner => throw _privateConstructorUsedError;
  DateTime? get lockExpiry => throw _privateConstructorUsedError;
  UserAction? get remover => throw _privateConstructorUsedError;
  List<UserAction> get modHistory => throw _privateConstructorUsedError;
  List<UserAction> get accessLog => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  int get accessCount =>
      throw _privateConstructorUsedError; // Classification & Metadata
  List<String> get tags => throw _privateConstructorUsedError;
  Map<String, String> get labels => throw _privateConstructorUsedError;
  Priority get priority => throw _privateConstructorUsedError;
  WorkflowStage get stage => throw _privateConstructorUsedError;
  DateTime? get expiryDate =>
      throw _privateConstructorUsedError; // Synchronization & Versioning
  Map<String, Object> get syncMeta => throw _privateConstructorUsedError;
  String? get syncVer => throw _privateConstructorUsedError;
  Map<String, Object> get searchIndex => throw _privateConstructorUsedError;
  T? get extraData => throw _privateConstructorUsedError;
  int get eventVer => throw _privateConstructorUsedError;
  List<String> get pendingEvents => throw _privateConstructorUsedError;
  Map<String, Object> get eventMeta => throw _privateConstructorUsedError;
  int get historyLimit => throw _privateConstructorUsedError;
  int get dataVer => throw _privateConstructorUsedError;
  int get structVer => throw _privateConstructorUsedError;
  String? get lastVer =>
      throw _privateConstructorUsedError; // Distributed Systems
  String? get distLockId => throw _privateConstructorUsedError;
  DateTime? get distLockExpiry => throw _privateConstructorUsedError;
  String? get distLockNode => throw _privateConstructorUsedError;
  Map<String, dynamic> get lockMeta => throw _privateConstructorUsedError;
  Map<String, int> get verVectors => throw _privateConstructorUsedError;
  Duration get lockTimeout =>
      throw _privateConstructorUsedError; // AI & Machine Learning
  Map<String, List<double>> get aiVectors => throw _privateConstructorUsedError;
  Map<String, double> get aiScores => throw _privateConstructorUsedError;
  Map<String, String> get aiMeta => throw _privateConstructorUsedError;
  List<String> get aiTags => throw _privateConstructorUsedError;
  Map<String, Object> get aiNotes => throw _privateConstructorUsedError;
  DateTime? get aiLastRun => throw _privateConstructorUsedError;
  String? get aiVer => throw _privateConstructorUsedError;

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseEntityCopyWith<T, BaseEntity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseEntityCopyWith<T extends Object, $Res> {
  factory $BaseEntityCopyWith(
          BaseEntity<T> value, $Res Function(BaseEntity<T>) then) =
      _$BaseEntityCopyWithImpl<T, $Res, BaseEntity<T>>;
  @useResult
  $Res call(
      {CoreEntity<T> core,
      String? treePath,
      int treeDepth,
      Map<String, List<EntityId>> refs,
      int treeMaxDepth,
      List<EntityId> ancestors,
      EntityId? parentId,
      List<EntityId> childIds,
      Map<String, String> subPaths,
      Map<String, EntityMetadata> ancestorMeta,
      String? parentName,
      List<String> searchPaths,
      String? treeLevel,
      int treeVersion,
      DateTime? treeLastUpdate,
      UserAction? lastAccessor,
      UserAction? lockOwner,
      DateTime? lockExpiry,
      UserAction? remover,
      List<UserAction> modHistory,
      List<UserAction> accessLog,
      bool isPublic,
      int accessCount,
      List<String> tags,
      Map<String, String> labels,
      Priority priority,
      WorkflowStage stage,
      DateTime? expiryDate,
      Map<String, Object> syncMeta,
      String? syncVer,
      Map<String, Object> searchIndex,
      T? extraData,
      int eventVer,
      List<String> pendingEvents,
      Map<String, Object> eventMeta,
      int historyLimit,
      int dataVer,
      int structVer,
      String? lastVer,
      String? distLockId,
      DateTime? distLockExpiry,
      String? distLockNode,
      Map<String, dynamic> lockMeta,
      Map<String, int> verVectors,
      Duration lockTimeout,
      Map<String, List<double>> aiVectors,
      Map<String, double> aiScores,
      Map<String, String> aiMeta,
      List<String> aiTags,
      Map<String, Object> aiNotes,
      DateTime? aiLastRun,
      String? aiVer});

  $CoreEntityCopyWith<T, $Res> get core;
  $EntityIdCopyWith<$Res>? get parentId;
  $UserActionCopyWith<$Res>? get lastAccessor;
  $UserActionCopyWith<$Res>? get lockOwner;
  $UserActionCopyWith<$Res>? get remover;
}

/// @nodoc
class _$BaseEntityCopyWithImpl<T extends Object, $Res,
    $Val extends BaseEntity<T>> implements $BaseEntityCopyWith<T, $Res> {
  _$BaseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? core = null,
    Object? treePath = freezed,
    Object? treeDepth = null,
    Object? refs = null,
    Object? treeMaxDepth = null,
    Object? ancestors = null,
    Object? parentId = freezed,
    Object? childIds = null,
    Object? subPaths = null,
    Object? ancestorMeta = null,
    Object? parentName = freezed,
    Object? searchPaths = null,
    Object? treeLevel = freezed,
    Object? treeVersion = null,
    Object? treeLastUpdate = freezed,
    Object? lastAccessor = freezed,
    Object? lockOwner = freezed,
    Object? lockExpiry = freezed,
    Object? remover = freezed,
    Object? modHistory = null,
    Object? accessLog = null,
    Object? isPublic = null,
    Object? accessCount = null,
    Object? tags = null,
    Object? labels = null,
    Object? priority = null,
    Object? stage = null,
    Object? expiryDate = freezed,
    Object? syncMeta = null,
    Object? syncVer = freezed,
    Object? searchIndex = null,
    Object? extraData = freezed,
    Object? eventVer = null,
    Object? pendingEvents = null,
    Object? eventMeta = null,
    Object? historyLimit = null,
    Object? dataVer = null,
    Object? structVer = null,
    Object? lastVer = freezed,
    Object? distLockId = freezed,
    Object? distLockExpiry = freezed,
    Object? distLockNode = freezed,
    Object? lockMeta = null,
    Object? verVectors = null,
    Object? lockTimeout = null,
    Object? aiVectors = null,
    Object? aiScores = null,
    Object? aiMeta = null,
    Object? aiTags = null,
    Object? aiNotes = null,
    Object? aiLastRun = freezed,
    Object? aiVer = freezed,
  }) {
    return _then(_value.copyWith(
      core: null == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as CoreEntity<T>,
      treePath: freezed == treePath
          ? _value.treePath
          : treePath // ignore: cast_nullable_to_non_nullable
              as String?,
      treeDepth: null == treeDepth
          ? _value.treeDepth
          : treeDepth // ignore: cast_nullable_to_non_nullable
              as int,
      refs: null == refs
          ? _value.refs
          : refs // ignore: cast_nullable_to_non_nullable
              as Map<String, List<EntityId>>,
      treeMaxDepth: null == treeMaxDepth
          ? _value.treeMaxDepth
          : treeMaxDepth // ignore: cast_nullable_to_non_nullable
              as int,
      ancestors: null == ancestors
          ? _value.ancestors
          : ancestors // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as EntityId?,
      childIds: null == childIds
          ? _value.childIds
          : childIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      subPaths: null == subPaths
          ? _value.subPaths
          : subPaths // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ancestorMeta: null == ancestorMeta
          ? _value.ancestorMeta
          : ancestorMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, EntityMetadata>,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      searchPaths: null == searchPaths
          ? _value.searchPaths
          : searchPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      treeLevel: freezed == treeLevel
          ? _value.treeLevel
          : treeLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      treeVersion: null == treeVersion
          ? _value.treeVersion
          : treeVersion // ignore: cast_nullable_to_non_nullable
              as int,
      treeLastUpdate: freezed == treeLastUpdate
          ? _value.treeLastUpdate
          : treeLastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastAccessor: freezed == lastAccessor
          ? _value.lastAccessor
          : lastAccessor // ignore: cast_nullable_to_non_nullable
              as UserAction?,
      lockOwner: freezed == lockOwner
          ? _value.lockOwner
          : lockOwner // ignore: cast_nullable_to_non_nullable
              as UserAction?,
      lockExpiry: freezed == lockExpiry
          ? _value.lockExpiry
          : lockExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remover: freezed == remover
          ? _value.remover
          : remover // ignore: cast_nullable_to_non_nullable
              as UserAction?,
      modHistory: null == modHistory
          ? _value.modHistory
          : modHistory // ignore: cast_nullable_to_non_nullable
              as List<UserAction>,
      accessLog: null == accessLog
          ? _value.accessLog
          : accessLog // ignore: cast_nullable_to_non_nullable
              as List<UserAction>,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      accessCount: null == accessCount
          ? _value.accessCount
          : accessCount // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      labels: null == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as WorkflowStage,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      syncMeta: null == syncMeta
          ? _value.syncMeta
          : syncMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      syncVer: freezed == syncVer
          ? _value.syncVer
          : syncVer // ignore: cast_nullable_to_non_nullable
              as String?,
      searchIndex: null == searchIndex
          ? _value.searchIndex
          : searchIndex // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as T?,
      eventVer: null == eventVer
          ? _value.eventVer
          : eventVer // ignore: cast_nullable_to_non_nullable
              as int,
      pendingEvents: null == pendingEvents
          ? _value.pendingEvents
          : pendingEvents // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eventMeta: null == eventMeta
          ? _value.eventMeta
          : eventMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      historyLimit: null == historyLimit
          ? _value.historyLimit
          : historyLimit // ignore: cast_nullable_to_non_nullable
              as int,
      dataVer: null == dataVer
          ? _value.dataVer
          : dataVer // ignore: cast_nullable_to_non_nullable
              as int,
      structVer: null == structVer
          ? _value.structVer
          : structVer // ignore: cast_nullable_to_non_nullable
              as int,
      lastVer: freezed == lastVer
          ? _value.lastVer
          : lastVer // ignore: cast_nullable_to_non_nullable
              as String?,
      distLockId: freezed == distLockId
          ? _value.distLockId
          : distLockId // ignore: cast_nullable_to_non_nullable
              as String?,
      distLockExpiry: freezed == distLockExpiry
          ? _value.distLockExpiry
          : distLockExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distLockNode: freezed == distLockNode
          ? _value.distLockNode
          : distLockNode // ignore: cast_nullable_to_non_nullable
              as String?,
      lockMeta: null == lockMeta
          ? _value.lockMeta
          : lockMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      verVectors: null == verVectors
          ? _value.verVectors
          : verVectors // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      lockTimeout: null == lockTimeout
          ? _value.lockTimeout
          : lockTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      aiVectors: null == aiVectors
          ? _value.aiVectors
          : aiVectors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<double>>,
      aiScores: null == aiScores
          ? _value.aiScores
          : aiScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      aiMeta: null == aiMeta
          ? _value.aiMeta
          : aiMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      aiTags: null == aiTags
          ? _value.aiTags
          : aiTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aiNotes: null == aiNotes
          ? _value.aiNotes
          : aiNotes // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      aiLastRun: freezed == aiLastRun
          ? _value.aiLastRun
          : aiLastRun // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      aiVer: freezed == aiVer
          ? _value.aiVer
          : aiVer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoreEntityCopyWith<T, $Res> get core {
    return $CoreEntityCopyWith<T, $Res>(_value.core, (value) {
      return _then(_value.copyWith(core: value) as $Val);
    });
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityIdCopyWith<$Res>? get parentId {
    if (_value.parentId == null) {
      return null;
    }

    return $EntityIdCopyWith<$Res>(_value.parentId!, (value) {
      return _then(_value.copyWith(parentId: value) as $Val);
    });
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res>? get lastAccessor {
    if (_value.lastAccessor == null) {
      return null;
    }

    return $UserActionCopyWith<$Res>(_value.lastAccessor!, (value) {
      return _then(_value.copyWith(lastAccessor: value) as $Val);
    });
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res>? get lockOwner {
    if (_value.lockOwner == null) {
      return null;
    }

    return $UserActionCopyWith<$Res>(_value.lockOwner!, (value) {
      return _then(_value.copyWith(lockOwner: value) as $Val);
    });
  }

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res>? get remover {
    if (_value.remover == null) {
      return null;
    }

    return $UserActionCopyWith<$Res>(_value.remover!, (value) {
      return _then(_value.copyWith(remover: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseEntityImplCopyWith<T extends Object, $Res>
    implements $BaseEntityCopyWith<T, $Res> {
  factory _$$BaseEntityImplCopyWith(
          _$BaseEntityImpl<T> value, $Res Function(_$BaseEntityImpl<T>) then) =
      __$$BaseEntityImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {CoreEntity<T> core,
      String? treePath,
      int treeDepth,
      Map<String, List<EntityId>> refs,
      int treeMaxDepth,
      List<EntityId> ancestors,
      EntityId? parentId,
      List<EntityId> childIds,
      Map<String, String> subPaths,
      Map<String, EntityMetadata> ancestorMeta,
      String? parentName,
      List<String> searchPaths,
      String? treeLevel,
      int treeVersion,
      DateTime? treeLastUpdate,
      UserAction? lastAccessor,
      UserAction? lockOwner,
      DateTime? lockExpiry,
      UserAction? remover,
      List<UserAction> modHistory,
      List<UserAction> accessLog,
      bool isPublic,
      int accessCount,
      List<String> tags,
      Map<String, String> labels,
      Priority priority,
      WorkflowStage stage,
      DateTime? expiryDate,
      Map<String, Object> syncMeta,
      String? syncVer,
      Map<String, Object> searchIndex,
      T? extraData,
      int eventVer,
      List<String> pendingEvents,
      Map<String, Object> eventMeta,
      int historyLimit,
      int dataVer,
      int structVer,
      String? lastVer,
      String? distLockId,
      DateTime? distLockExpiry,
      String? distLockNode,
      Map<String, dynamic> lockMeta,
      Map<String, int> verVectors,
      Duration lockTimeout,
      Map<String, List<double>> aiVectors,
      Map<String, double> aiScores,
      Map<String, String> aiMeta,
      List<String> aiTags,
      Map<String, Object> aiNotes,
      DateTime? aiLastRun,
      String? aiVer});

  @override
  $CoreEntityCopyWith<T, $Res> get core;
  @override
  $EntityIdCopyWith<$Res>? get parentId;
  @override
  $UserActionCopyWith<$Res>? get lastAccessor;
  @override
  $UserActionCopyWith<$Res>? get lockOwner;
  @override
  $UserActionCopyWith<$Res>? get remover;
}

/// @nodoc
class __$$BaseEntityImplCopyWithImpl<T extends Object, $Res>
    extends _$BaseEntityCopyWithImpl<T, $Res, _$BaseEntityImpl<T>>
    implements _$$BaseEntityImplCopyWith<T, $Res> {
  __$$BaseEntityImplCopyWithImpl(
      _$BaseEntityImpl<T> _value, $Res Function(_$BaseEntityImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? core = null,
    Object? treePath = freezed,
    Object? treeDepth = null,
    Object? refs = null,
    Object? treeMaxDepth = null,
    Object? ancestors = null,
    Object? parentId = freezed,
    Object? childIds = null,
    Object? subPaths = null,
    Object? ancestorMeta = null,
    Object? parentName = freezed,
    Object? searchPaths = null,
    Object? treeLevel = freezed,
    Object? treeVersion = null,
    Object? treeLastUpdate = freezed,
    Object? lastAccessor = freezed,
    Object? lockOwner = freezed,
    Object? lockExpiry = freezed,
    Object? remover = freezed,
    Object? modHistory = null,
    Object? accessLog = null,
    Object? isPublic = null,
    Object? accessCount = null,
    Object? tags = null,
    Object? labels = null,
    Object? priority = null,
    Object? stage = null,
    Object? expiryDate = freezed,
    Object? syncMeta = null,
    Object? syncVer = freezed,
    Object? searchIndex = null,
    Object? extraData = freezed,
    Object? eventVer = null,
    Object? pendingEvents = null,
    Object? eventMeta = null,
    Object? historyLimit = null,
    Object? dataVer = null,
    Object? structVer = null,
    Object? lastVer = freezed,
    Object? distLockId = freezed,
    Object? distLockExpiry = freezed,
    Object? distLockNode = freezed,
    Object? lockMeta = null,
    Object? verVectors = null,
    Object? lockTimeout = null,
    Object? aiVectors = null,
    Object? aiScores = null,
    Object? aiMeta = null,
    Object? aiTags = null,
    Object? aiNotes = null,
    Object? aiLastRun = freezed,
    Object? aiVer = freezed,
  }) {
    return _then(_$BaseEntityImpl<T>(
      core: null == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as CoreEntity<T>,
      treePath: freezed == treePath
          ? _value.treePath
          : treePath // ignore: cast_nullable_to_non_nullable
              as String?,
      treeDepth: null == treeDepth
          ? _value.treeDepth
          : treeDepth // ignore: cast_nullable_to_non_nullable
              as int,
      refs: null == refs
          ? _value._refs
          : refs // ignore: cast_nullable_to_non_nullable
              as Map<String, List<EntityId>>,
      treeMaxDepth: null == treeMaxDepth
          ? _value.treeMaxDepth
          : treeMaxDepth // ignore: cast_nullable_to_non_nullable
              as int,
      ancestors: null == ancestors
          ? _value._ancestors
          : ancestors // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as EntityId?,
      childIds: null == childIds
          ? _value._childIds
          : childIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      subPaths: null == subPaths
          ? _value._subPaths
          : subPaths // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ancestorMeta: null == ancestorMeta
          ? _value._ancestorMeta
          : ancestorMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, EntityMetadata>,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      searchPaths: null == searchPaths
          ? _value._searchPaths
          : searchPaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      treeLevel: freezed == treeLevel
          ? _value.treeLevel
          : treeLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      treeVersion: null == treeVersion
          ? _value.treeVersion
          : treeVersion // ignore: cast_nullable_to_non_nullable
              as int,
      treeLastUpdate: freezed == treeLastUpdate
          ? _value.treeLastUpdate
          : treeLastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastAccessor: freezed == lastAccessor
          ? _value.lastAccessor
          : lastAccessor // ignore: cast_nullable_to_non_nullable
              as UserAction?,
      lockOwner: freezed == lockOwner
          ? _value.lockOwner
          : lockOwner // ignore: cast_nullable_to_non_nullable
              as UserAction?,
      lockExpiry: freezed == lockExpiry
          ? _value.lockExpiry
          : lockExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remover: freezed == remover
          ? _value.remover
          : remover // ignore: cast_nullable_to_non_nullable
              as UserAction?,
      modHistory: null == modHistory
          ? _value._modHistory
          : modHistory // ignore: cast_nullable_to_non_nullable
              as List<UserAction>,
      accessLog: null == accessLog
          ? _value._accessLog
          : accessLog // ignore: cast_nullable_to_non_nullable
              as List<UserAction>,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      accessCount: null == accessCount
          ? _value.accessCount
          : accessCount // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as Priority,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as WorkflowStage,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      syncMeta: null == syncMeta
          ? _value._syncMeta
          : syncMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      syncVer: freezed == syncVer
          ? _value.syncVer
          : syncVer // ignore: cast_nullable_to_non_nullable
              as String?,
      searchIndex: null == searchIndex
          ? _value._searchIndex
          : searchIndex // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as T?,
      eventVer: null == eventVer
          ? _value.eventVer
          : eventVer // ignore: cast_nullable_to_non_nullable
              as int,
      pendingEvents: null == pendingEvents
          ? _value._pendingEvents
          : pendingEvents // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eventMeta: null == eventMeta
          ? _value._eventMeta
          : eventMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      historyLimit: null == historyLimit
          ? _value.historyLimit
          : historyLimit // ignore: cast_nullable_to_non_nullable
              as int,
      dataVer: null == dataVer
          ? _value.dataVer
          : dataVer // ignore: cast_nullable_to_non_nullable
              as int,
      structVer: null == structVer
          ? _value.structVer
          : structVer // ignore: cast_nullable_to_non_nullable
              as int,
      lastVer: freezed == lastVer
          ? _value.lastVer
          : lastVer // ignore: cast_nullable_to_non_nullable
              as String?,
      distLockId: freezed == distLockId
          ? _value.distLockId
          : distLockId // ignore: cast_nullable_to_non_nullable
              as String?,
      distLockExpiry: freezed == distLockExpiry
          ? _value.distLockExpiry
          : distLockExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distLockNode: freezed == distLockNode
          ? _value.distLockNode
          : distLockNode // ignore: cast_nullable_to_non_nullable
              as String?,
      lockMeta: null == lockMeta
          ? _value._lockMeta
          : lockMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      verVectors: null == verVectors
          ? _value._verVectors
          : verVectors // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      lockTimeout: null == lockTimeout
          ? _value.lockTimeout
          : lockTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      aiVectors: null == aiVectors
          ? _value._aiVectors
          : aiVectors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<double>>,
      aiScores: null == aiScores
          ? _value._aiScores
          : aiScores // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      aiMeta: null == aiMeta
          ? _value._aiMeta
          : aiMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      aiTags: null == aiTags
          ? _value._aiTags
          : aiTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aiNotes: null == aiNotes
          ? _value._aiNotes
          : aiNotes // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      aiLastRun: freezed == aiLastRun
          ? _value.aiLastRun
          : aiLastRun // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      aiVer: freezed == aiVer
          ? _value.aiVer
          : aiVer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BaseEntityImpl<T extends Object> extends _BaseEntity<T> {
  const _$BaseEntityImpl(
      {required this.core,
      this.treePath,
      this.treeDepth = 0,
      final Map<String, List<EntityId>> refs = const {},
      this.treeMaxDepth = SystemLimits.hierarchyDepthMax,
      final List<EntityId> ancestors = const [],
      this.parentId,
      final List<EntityId> childIds = const [],
      final Map<String, String> subPaths = const {},
      final Map<String, EntityMetadata> ancestorMeta = const {},
      this.parentName,
      final List<String> searchPaths = const [],
      this.treeLevel,
      this.treeVersion = 0,
      this.treeLastUpdate,
      this.lastAccessor,
      this.lockOwner,
      this.lockExpiry,
      this.remover,
      final List<UserAction> modHistory = const [],
      final List<UserAction> accessLog = const [],
      this.isPublic = EntityDefaults.isPublic,
      this.accessCount = EntityDefaults.accessCount,
      final List<String> tags = const [],
      final Map<String, String> labels = const {},
      this.priority = EntityDefaults.priority,
      this.stage = EntityDefaults.stage,
      this.expiryDate,
      final Map<String, Object> syncMeta = const {},
      this.syncVer,
      final Map<String, Object> searchIndex = const {},
      this.extraData,
      this.eventVer = 0,
      final List<String> pendingEvents = const [],
      final Map<String, Object> eventMeta = const {},
      this.historyLimit = SystemLimits.historyDefault,
      this.dataVer = 1,
      this.structVer = 1,
      this.lastVer,
      this.distLockId,
      this.distLockExpiry,
      this.distLockNode,
      final Map<String, dynamic> lockMeta = const {},
      final Map<String, int> verVectors = const {},
      this.lockTimeout = LockConfig.defaultTimeout,
      final Map<String, List<double>> aiVectors = const {},
      final Map<String, double> aiScores = const {},
      final Map<String, String> aiMeta = const {},
      final List<String> aiTags = const [],
      final Map<String, Object> aiNotes = const {},
      this.aiLastRun,
      this.aiVer})
      : _refs = refs,
        _ancestors = ancestors,
        _childIds = childIds,
        _subPaths = subPaths,
        _ancestorMeta = ancestorMeta,
        _searchPaths = searchPaths,
        _modHistory = modHistory,
        _accessLog = accessLog,
        _tags = tags,
        _labels = labels,
        _syncMeta = syncMeta,
        _searchIndex = searchIndex,
        _pendingEvents = pendingEvents,
        _eventMeta = eventMeta,
        _lockMeta = lockMeta,
        _verVectors = verVectors,
        _aiVectors = aiVectors,
        _aiScores = aiScores,
        _aiMeta = aiMeta,
        _aiTags = aiTags,
        _aiNotes = aiNotes,
        super._();

// Core entity data
  @override
  final CoreEntity<T> core;
// Hierarchical Structure
  @override
  final String? treePath;
  @override
  @JsonKey()
  final int treeDepth;
  final Map<String, List<EntityId>> _refs;
  @override
  @JsonKey()
  Map<String, List<EntityId>> get refs {
    if (_refs is EqualUnmodifiableMapView) return _refs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_refs);
  }

  @override
  @JsonKey()
  final int treeMaxDepth;
  final List<EntityId> _ancestors;
  @override
  @JsonKey()
  List<EntityId> get ancestors {
    if (_ancestors is EqualUnmodifiableListView) return _ancestors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ancestors);
  }

  @override
  final EntityId? parentId;
  final List<EntityId> _childIds;
  @override
  @JsonKey()
  List<EntityId> get childIds {
    if (_childIds is EqualUnmodifiableListView) return _childIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childIds);
  }

  final Map<String, String> _subPaths;
  @override
  @JsonKey()
  Map<String, String> get subPaths {
    if (_subPaths is EqualUnmodifiableMapView) return _subPaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_subPaths);
  }

  final Map<String, EntityMetadata> _ancestorMeta;
  @override
  @JsonKey()
  Map<String, EntityMetadata> get ancestorMeta {
    if (_ancestorMeta is EqualUnmodifiableMapView) return _ancestorMeta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ancestorMeta);
  }

  @override
  final String? parentName;
  final List<String> _searchPaths;
  @override
  @JsonKey()
  List<String> get searchPaths {
    if (_searchPaths is EqualUnmodifiableListView) return _searchPaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchPaths);
  }

  @override
  final String? treeLevel;
  @override
  @JsonKey()
  final int treeVersion;
  @override
  final DateTime? treeLastUpdate;
// Access Control & Security
  @override
  final UserAction? lastAccessor;
  @override
  final UserAction? lockOwner;
  @override
  final DateTime? lockExpiry;
  @override
  final UserAction? remover;
  final List<UserAction> _modHistory;
  @override
  @JsonKey()
  List<UserAction> get modHistory {
    if (_modHistory is EqualUnmodifiableListView) return _modHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modHistory);
  }

  final List<UserAction> _accessLog;
  @override
  @JsonKey()
  List<UserAction> get accessLog {
    if (_accessLog is EqualUnmodifiableListView) return _accessLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accessLog);
  }

  @override
  @JsonKey()
  final bool isPublic;
  @override
  @JsonKey()
  final int accessCount;
// Classification & Metadata
  final List<String> _tags;
// Classification & Metadata
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final Map<String, String> _labels;
  @override
  @JsonKey()
  Map<String, String> get labels {
    if (_labels is EqualUnmodifiableMapView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_labels);
  }

  @override
  @JsonKey()
  final Priority priority;
  @override
  @JsonKey()
  final WorkflowStage stage;
  @override
  final DateTime? expiryDate;
// Synchronization & Versioning
  final Map<String, Object> _syncMeta;
// Synchronization & Versioning
  @override
  @JsonKey()
  Map<String, Object> get syncMeta {
    if (_syncMeta is EqualUnmodifiableMapView) return _syncMeta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_syncMeta);
  }

  @override
  final String? syncVer;
  final Map<String, Object> _searchIndex;
  @override
  @JsonKey()
  Map<String, Object> get searchIndex {
    if (_searchIndex is EqualUnmodifiableMapView) return _searchIndex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_searchIndex);
  }

  @override
  final T? extraData;
  @override
  @JsonKey()
  final int eventVer;
  final List<String> _pendingEvents;
  @override
  @JsonKey()
  List<String> get pendingEvents {
    if (_pendingEvents is EqualUnmodifiableListView) return _pendingEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingEvents);
  }

  final Map<String, Object> _eventMeta;
  @override
  @JsonKey()
  Map<String, Object> get eventMeta {
    if (_eventMeta is EqualUnmodifiableMapView) return _eventMeta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_eventMeta);
  }

  @override
  @JsonKey()
  final int historyLimit;
  @override
  @JsonKey()
  final int dataVer;
  @override
  @JsonKey()
  final int structVer;
  @override
  final String? lastVer;
// Distributed Systems
  @override
  final String? distLockId;
  @override
  final DateTime? distLockExpiry;
  @override
  final String? distLockNode;
  final Map<String, dynamic> _lockMeta;
  @override
  @JsonKey()
  Map<String, dynamic> get lockMeta {
    if (_lockMeta is EqualUnmodifiableMapView) return _lockMeta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_lockMeta);
  }

  final Map<String, int> _verVectors;
  @override
  @JsonKey()
  Map<String, int> get verVectors {
    if (_verVectors is EqualUnmodifiableMapView) return _verVectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_verVectors);
  }

  @override
  @JsonKey()
  final Duration lockTimeout;
// AI & Machine Learning
  final Map<String, List<double>> _aiVectors;
// AI & Machine Learning
  @override
  @JsonKey()
  Map<String, List<double>> get aiVectors {
    if (_aiVectors is EqualUnmodifiableMapView) return _aiVectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_aiVectors);
  }

  final Map<String, double> _aiScores;
  @override
  @JsonKey()
  Map<String, double> get aiScores {
    if (_aiScores is EqualUnmodifiableMapView) return _aiScores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_aiScores);
  }

  final Map<String, String> _aiMeta;
  @override
  @JsonKey()
  Map<String, String> get aiMeta {
    if (_aiMeta is EqualUnmodifiableMapView) return _aiMeta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_aiMeta);
  }

  final List<String> _aiTags;
  @override
  @JsonKey()
  List<String> get aiTags {
    if (_aiTags is EqualUnmodifiableListView) return _aiTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aiTags);
  }

  final Map<String, Object> _aiNotes;
  @override
  @JsonKey()
  Map<String, Object> get aiNotes {
    if (_aiNotes is EqualUnmodifiableMapView) return _aiNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_aiNotes);
  }

  @override
  final DateTime? aiLastRun;
  @override
  final String? aiVer;

  @override
  String toString() {
    return 'BaseEntity<$T>(core: $core, treePath: $treePath, treeDepth: $treeDepth, refs: $refs, treeMaxDepth: $treeMaxDepth, ancestors: $ancestors, parentId: $parentId, childIds: $childIds, subPaths: $subPaths, ancestorMeta: $ancestorMeta, parentName: $parentName, searchPaths: $searchPaths, treeLevel: $treeLevel, treeVersion: $treeVersion, treeLastUpdate: $treeLastUpdate, lastAccessor: $lastAccessor, lockOwner: $lockOwner, lockExpiry: $lockExpiry, remover: $remover, modHistory: $modHistory, accessLog: $accessLog, isPublic: $isPublic, accessCount: $accessCount, tags: $tags, labels: $labels, priority: $priority, stage: $stage, expiryDate: $expiryDate, syncMeta: $syncMeta, syncVer: $syncVer, searchIndex: $searchIndex, extraData: $extraData, eventVer: $eventVer, pendingEvents: $pendingEvents, eventMeta: $eventMeta, historyLimit: $historyLimit, dataVer: $dataVer, structVer: $structVer, lastVer: $lastVer, distLockId: $distLockId, distLockExpiry: $distLockExpiry, distLockNode: $distLockNode, lockMeta: $lockMeta, verVectors: $verVectors, lockTimeout: $lockTimeout, aiVectors: $aiVectors, aiScores: $aiScores, aiMeta: $aiMeta, aiTags: $aiTags, aiNotes: $aiNotes, aiLastRun: $aiLastRun, aiVer: $aiVer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEntityImpl<T> &&
            (identical(other.core, core) || other.core == core) &&
            (identical(other.treePath, treePath) ||
                other.treePath == treePath) &&
            (identical(other.treeDepth, treeDepth) ||
                other.treeDepth == treeDepth) &&
            const DeepCollectionEquality().equals(other._refs, _refs) &&
            (identical(other.treeMaxDepth, treeMaxDepth) ||
                other.treeMaxDepth == treeMaxDepth) &&
            const DeepCollectionEquality()
                .equals(other._ancestors, _ancestors) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            const DeepCollectionEquality().equals(other._childIds, _childIds) &&
            const DeepCollectionEquality().equals(other._subPaths, _subPaths) &&
            const DeepCollectionEquality()
                .equals(other._ancestorMeta, _ancestorMeta) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName) &&
            const DeepCollectionEquality()
                .equals(other._searchPaths, _searchPaths) &&
            (identical(other.treeLevel, treeLevel) ||
                other.treeLevel == treeLevel) &&
            (identical(other.treeVersion, treeVersion) ||
                other.treeVersion == treeVersion) &&
            (identical(other.treeLastUpdate, treeLastUpdate) ||
                other.treeLastUpdate == treeLastUpdate) &&
            (identical(other.lastAccessor, lastAccessor) ||
                other.lastAccessor == lastAccessor) &&
            (identical(other.lockOwner, lockOwner) ||
                other.lockOwner == lockOwner) &&
            (identical(other.lockExpiry, lockExpiry) ||
                other.lockExpiry == lockExpiry) &&
            (identical(other.remover, remover) || other.remover == remover) &&
            const DeepCollectionEquality()
                .equals(other._modHistory, _modHistory) &&
            const DeepCollectionEquality()
                .equals(other._accessLog, _accessLog) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.accessCount, accessCount) ||
                other.accessCount == accessCount) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality().equals(other._syncMeta, _syncMeta) &&
            (identical(other.syncVer, syncVer) || other.syncVer == syncVer) &&
            const DeepCollectionEquality()
                .equals(other._searchIndex, _searchIndex) &&
            const DeepCollectionEquality().equals(other.extraData, extraData) &&
            (identical(other.eventVer, eventVer) ||
                other.eventVer == eventVer) &&
            const DeepCollectionEquality()
                .equals(other._pendingEvents, _pendingEvents) &&
            const DeepCollectionEquality()
                .equals(other._eventMeta, _eventMeta) &&
            (identical(other.historyLimit, historyLimit) ||
                other.historyLimit == historyLimit) &&
            (identical(other.dataVer, dataVer) || other.dataVer == dataVer) &&
            (identical(other.structVer, structVer) ||
                other.structVer == structVer) &&
            (identical(other.lastVer, lastVer) || other.lastVer == lastVer) &&
            (identical(other.distLockId, distLockId) ||
                other.distLockId == distLockId) &&
            (identical(other.distLockExpiry, distLockExpiry) ||
                other.distLockExpiry == distLockExpiry) &&
            (identical(other.distLockNode, distLockNode) ||
                other.distLockNode == distLockNode) &&
            const DeepCollectionEquality().equals(other._lockMeta, _lockMeta) &&
            const DeepCollectionEquality()
                .equals(other._verVectors, _verVectors) &&
            (identical(other.lockTimeout, lockTimeout) ||
                other.lockTimeout == lockTimeout) &&
            const DeepCollectionEquality()
                .equals(other._aiVectors, _aiVectors) &&
            const DeepCollectionEquality().equals(other._aiScores, _aiScores) &&
            const DeepCollectionEquality().equals(other._aiMeta, _aiMeta) &&
            const DeepCollectionEquality().equals(other._aiTags, _aiTags) &&
            const DeepCollectionEquality().equals(other._aiNotes, _aiNotes) &&
            (identical(other.aiLastRun, aiLastRun) ||
                other.aiLastRun == aiLastRun) &&
            (identical(other.aiVer, aiVer) || other.aiVer == aiVer));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        core,
        treePath,
        treeDepth,
        const DeepCollectionEquality().hash(_refs),
        treeMaxDepth,
        const DeepCollectionEquality().hash(_ancestors),
        parentId,
        const DeepCollectionEquality().hash(_childIds),
        const DeepCollectionEquality().hash(_subPaths),
        const DeepCollectionEquality().hash(_ancestorMeta),
        parentName,
        const DeepCollectionEquality().hash(_searchPaths),
        treeLevel,
        treeVersion,
        treeLastUpdate,
        lastAccessor,
        lockOwner,
        lockExpiry,
        remover,
        const DeepCollectionEquality().hash(_modHistory),
        const DeepCollectionEquality().hash(_accessLog),
        isPublic,
        accessCount,
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_labels),
        priority,
        stage,
        expiryDate,
        const DeepCollectionEquality().hash(_syncMeta),
        syncVer,
        const DeepCollectionEquality().hash(_searchIndex),
        const DeepCollectionEquality().hash(extraData),
        eventVer,
        const DeepCollectionEquality().hash(_pendingEvents),
        const DeepCollectionEquality().hash(_eventMeta),
        historyLimit,
        dataVer,
        structVer,
        lastVer,
        distLockId,
        distLockExpiry,
        distLockNode,
        const DeepCollectionEquality().hash(_lockMeta),
        const DeepCollectionEquality().hash(_verVectors),
        lockTimeout,
        const DeepCollectionEquality().hash(_aiVectors),
        const DeepCollectionEquality().hash(_aiScores),
        const DeepCollectionEquality().hash(_aiMeta),
        const DeepCollectionEquality().hash(_aiTags),
        const DeepCollectionEquality().hash(_aiNotes),
        aiLastRun,
        aiVer
      ]);

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseEntityImplCopyWith<T, _$BaseEntityImpl<T>> get copyWith =>
      __$$BaseEntityImplCopyWithImpl<T, _$BaseEntityImpl<T>>(this, _$identity);
}

abstract class _BaseEntity<T extends Object> extends BaseEntity<T> {
  const factory _BaseEntity(
      {required final CoreEntity<T> core,
      final String? treePath,
      final int treeDepth,
      final Map<String, List<EntityId>> refs,
      final int treeMaxDepth,
      final List<EntityId> ancestors,
      final EntityId? parentId,
      final List<EntityId> childIds,
      final Map<String, String> subPaths,
      final Map<String, EntityMetadata> ancestorMeta,
      final String? parentName,
      final List<String> searchPaths,
      final String? treeLevel,
      final int treeVersion,
      final DateTime? treeLastUpdate,
      final UserAction? lastAccessor,
      final UserAction? lockOwner,
      final DateTime? lockExpiry,
      final UserAction? remover,
      final List<UserAction> modHistory,
      final List<UserAction> accessLog,
      final bool isPublic,
      final int accessCount,
      final List<String> tags,
      final Map<String, String> labels,
      final Priority priority,
      final WorkflowStage stage,
      final DateTime? expiryDate,
      final Map<String, Object> syncMeta,
      final String? syncVer,
      final Map<String, Object> searchIndex,
      final T? extraData,
      final int eventVer,
      final List<String> pendingEvents,
      final Map<String, Object> eventMeta,
      final int historyLimit,
      final int dataVer,
      final int structVer,
      final String? lastVer,
      final String? distLockId,
      final DateTime? distLockExpiry,
      final String? distLockNode,
      final Map<String, dynamic> lockMeta,
      final Map<String, int> verVectors,
      final Duration lockTimeout,
      final Map<String, List<double>> aiVectors,
      final Map<String, double> aiScores,
      final Map<String, String> aiMeta,
      final List<String> aiTags,
      final Map<String, Object> aiNotes,
      final DateTime? aiLastRun,
      final String? aiVer}) = _$BaseEntityImpl<T>;
  const _BaseEntity._() : super._();

// Core entity data
  @override
  CoreEntity<T> get core; // Hierarchical Structure
  @override
  String? get treePath;
  @override
  int get treeDepth;
  @override
  Map<String, List<EntityId>> get refs;
  @override
  int get treeMaxDepth;
  @override
  List<EntityId> get ancestors;
  @override
  EntityId? get parentId;
  @override
  List<EntityId> get childIds;
  @override
  Map<String, String> get subPaths;
  @override
  Map<String, EntityMetadata> get ancestorMeta;
  @override
  String? get parentName;
  @override
  List<String> get searchPaths;
  @override
  String? get treeLevel;
  @override
  int get treeVersion;
  @override
  DateTime? get treeLastUpdate; // Access Control & Security
  @override
  UserAction? get lastAccessor;
  @override
  UserAction? get lockOwner;
  @override
  DateTime? get lockExpiry;
  @override
  UserAction? get remover;
  @override
  List<UserAction> get modHistory;
  @override
  List<UserAction> get accessLog;
  @override
  bool get isPublic;
  @override
  int get accessCount; // Classification & Metadata
  @override
  List<String> get tags;
  @override
  Map<String, String> get labels;
  @override
  Priority get priority;
  @override
  WorkflowStage get stage;
  @override
  DateTime? get expiryDate; // Synchronization & Versioning
  @override
  Map<String, Object> get syncMeta;
  @override
  String? get syncVer;
  @override
  Map<String, Object> get searchIndex;
  @override
  T? get extraData;
  @override
  int get eventVer;
  @override
  List<String> get pendingEvents;
  @override
  Map<String, Object> get eventMeta;
  @override
  int get historyLimit;
  @override
  int get dataVer;
  @override
  int get structVer;
  @override
  String? get lastVer; // Distributed Systems
  @override
  String? get distLockId;
  @override
  DateTime? get distLockExpiry;
  @override
  String? get distLockNode;
  @override
  Map<String, dynamic> get lockMeta;
  @override
  Map<String, int> get verVectors;
  @override
  Duration get lockTimeout; // AI & Machine Learning
  @override
  Map<String, List<double>> get aiVectors;
  @override
  Map<String, double> get aiScores;
  @override
  Map<String, String> get aiMeta;
  @override
  List<String> get aiTags;
  @override
  Map<String, Object> get aiNotes;
  @override
  DateTime? get aiLastRun;
  @override
  String? get aiVer;

  /// Create a copy of BaseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseEntityImplCopyWith<T, _$BaseEntityImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

EntityMetadata _$EntityMetadataFromJson(Map<String, dynamic> json) {
  return _EntityMetadata.fromJson(json);
}

/// @nodoc
mixin _$EntityMetadata {
  String get displayName => throw _privateConstructorUsedError;
  String get entityType => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get lastNameUpdate => throw _privateConstructorUsedError;
  Map<String, String> get searchTerms => throw _privateConstructorUsedError;

  /// Serializes this EntityMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntityMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityMetadataCopyWith<EntityMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityMetadataCopyWith<$Res> {
  factory $EntityMetadataCopyWith(
          EntityMetadata value, $Res Function(EntityMetadata) then) =
      _$EntityMetadataCopyWithImpl<$Res, EntityMetadata>;
  @useResult
  $Res call(
      {String displayName,
      String entityType,
      String? description,
      DateTime? lastNameUpdate,
      Map<String, String> searchTerms});
}

/// @nodoc
class _$EntityMetadataCopyWithImpl<$Res, $Val extends EntityMetadata>
    implements $EntityMetadataCopyWith<$Res> {
  _$EntityMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? entityType = null,
    Object? description = freezed,
    Object? lastNameUpdate = freezed,
    Object? searchTerms = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameUpdate: freezed == lastNameUpdate
          ? _value.lastNameUpdate
          : lastNameUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      searchTerms: null == searchTerms
          ? _value.searchTerms
          : searchTerms // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityMetadataImplCopyWith<$Res>
    implements $EntityMetadataCopyWith<$Res> {
  factory _$$EntityMetadataImplCopyWith(_$EntityMetadataImpl value,
          $Res Function(_$EntityMetadataImpl) then) =
      __$$EntityMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String displayName,
      String entityType,
      String? description,
      DateTime? lastNameUpdate,
      Map<String, String> searchTerms});
}

/// @nodoc
class __$$EntityMetadataImplCopyWithImpl<$Res>
    extends _$EntityMetadataCopyWithImpl<$Res, _$EntityMetadataImpl>
    implements _$$EntityMetadataImplCopyWith<$Res> {
  __$$EntityMetadataImplCopyWithImpl(
      _$EntityMetadataImpl _value, $Res Function(_$EntityMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? entityType = null,
    Object? description = freezed,
    Object? lastNameUpdate = freezed,
    Object? searchTerms = null,
  }) {
    return _then(_$EntityMetadataImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lastNameUpdate: freezed == lastNameUpdate
          ? _value.lastNameUpdate
          : lastNameUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      searchTerms: null == searchTerms
          ? _value._searchTerms
          : searchTerms // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntityMetadataImpl extends _EntityMetadata {
  const _$EntityMetadataImpl(
      {required this.displayName,
      required this.entityType,
      this.description,
      this.lastNameUpdate,
      final Map<String, String> searchTerms = const {}})
      : _searchTerms = searchTerms,
        super._();

  factory _$EntityMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityMetadataImplFromJson(json);

  @override
  final String displayName;
  @override
  final String entityType;
  @override
  final String? description;
  @override
  final DateTime? lastNameUpdate;
  final Map<String, String> _searchTerms;
  @override
  @JsonKey()
  Map<String, String> get searchTerms {
    if (_searchTerms is EqualUnmodifiableMapView) return _searchTerms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_searchTerms);
  }

  @override
  String toString() {
    return 'EntityMetadata(displayName: $displayName, entityType: $entityType, description: $description, lastNameUpdate: $lastNameUpdate, searchTerms: $searchTerms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityMetadataImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lastNameUpdate, lastNameUpdate) ||
                other.lastNameUpdate == lastNameUpdate) &&
            const DeepCollectionEquality()
                .equals(other._searchTerms, _searchTerms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      displayName,
      entityType,
      description,
      lastNameUpdate,
      const DeepCollectionEquality().hash(_searchTerms));

  /// Create a copy of EntityMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityMetadataImplCopyWith<_$EntityMetadataImpl> get copyWith =>
      __$$EntityMetadataImplCopyWithImpl<_$EntityMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityMetadataImplToJson(
      this,
    );
  }
}

abstract class _EntityMetadata extends EntityMetadata {
  const factory _EntityMetadata(
      {required final String displayName,
      required final String entityType,
      final String? description,
      final DateTime? lastNameUpdate,
      final Map<String, String> searchTerms}) = _$EntityMetadataImpl;
  const _EntityMetadata._() : super._();

  factory _EntityMetadata.fromJson(Map<String, dynamic> json) =
      _$EntityMetadataImpl.fromJson;

  @override
  String get displayName;
  @override
  String get entityType;
  @override
  String? get description;
  @override
  DateTime? get lastNameUpdate;
  @override
  Map<String, String> get searchTerms;

  /// Create a copy of EntityMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityMetadataImplCopyWith<_$EntityMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
