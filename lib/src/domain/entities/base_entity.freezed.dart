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
mixin _$EntityHierarchy {
  String? get treePath => throw _privateConstructorUsedError;
  int get treeDepth => throw _privateConstructorUsedError;
  List<EntityId> get ancestors => throw _privateConstructorUsedError;
  EntityId? get parentId => throw _privateConstructorUsedError;
  List<EntityId> get childIds => throw _privateConstructorUsedError;
  bool get isHierarchyRoot => throw _privateConstructorUsedError;
  bool get isHierarchyLeaf => throw _privateConstructorUsedError;
  Map<String, Object> get hierarchyMeta => throw _privateConstructorUsedError;

  /// Create a copy of EntityHierarchy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityHierarchyCopyWith<EntityHierarchy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityHierarchyCopyWith<$Res> {
  factory $EntityHierarchyCopyWith(
          EntityHierarchy value, $Res Function(EntityHierarchy) then) =
      _$EntityHierarchyCopyWithImpl<$Res, EntityHierarchy>;
  @useResult
  $Res call(
      {String? treePath,
      int treeDepth,
      List<EntityId> ancestors,
      EntityId? parentId,
      List<EntityId> childIds,
      bool isHierarchyRoot,
      bool isHierarchyLeaf,
      Map<String, Object> hierarchyMeta});

  $EntityIdCopyWith<$Res>? get parentId;
}

/// @nodoc
class _$EntityHierarchyCopyWithImpl<$Res, $Val extends EntityHierarchy>
    implements $EntityHierarchyCopyWith<$Res> {
  _$EntityHierarchyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityHierarchy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treePath = freezed,
    Object? treeDepth = null,
    Object? ancestors = null,
    Object? parentId = freezed,
    Object? childIds = null,
    Object? isHierarchyRoot = null,
    Object? isHierarchyLeaf = null,
    Object? hierarchyMeta = null,
  }) {
    return _then(_value.copyWith(
      treePath: freezed == treePath
          ? _value.treePath
          : treePath // ignore: cast_nullable_to_non_nullable
              as String?,
      treeDepth: null == treeDepth
          ? _value.treeDepth
          : treeDepth // ignore: cast_nullable_to_non_nullable
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
      isHierarchyRoot: null == isHierarchyRoot
          ? _value.isHierarchyRoot
          : isHierarchyRoot // ignore: cast_nullable_to_non_nullable
              as bool,
      isHierarchyLeaf: null == isHierarchyLeaf
          ? _value.isHierarchyLeaf
          : isHierarchyLeaf // ignore: cast_nullable_to_non_nullable
              as bool,
      hierarchyMeta: null == hierarchyMeta
          ? _value.hierarchyMeta
          : hierarchyMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
    ) as $Val);
  }

  /// Create a copy of EntityHierarchy
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
}

/// @nodoc
abstract class _$$EntityHierarchyImplCopyWith<$Res>
    implements $EntityHierarchyCopyWith<$Res> {
  factory _$$EntityHierarchyImplCopyWith(_$EntityHierarchyImpl value,
          $Res Function(_$EntityHierarchyImpl) then) =
      __$$EntityHierarchyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? treePath,
      int treeDepth,
      List<EntityId> ancestors,
      EntityId? parentId,
      List<EntityId> childIds,
      bool isHierarchyRoot,
      bool isHierarchyLeaf,
      Map<String, Object> hierarchyMeta});

  @override
  $EntityIdCopyWith<$Res>? get parentId;
}

/// @nodoc
class __$$EntityHierarchyImplCopyWithImpl<$Res>
    extends _$EntityHierarchyCopyWithImpl<$Res, _$EntityHierarchyImpl>
    implements _$$EntityHierarchyImplCopyWith<$Res> {
  __$$EntityHierarchyImplCopyWithImpl(
      _$EntityHierarchyImpl _value, $Res Function(_$EntityHierarchyImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityHierarchy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treePath = freezed,
    Object? treeDepth = null,
    Object? ancestors = null,
    Object? parentId = freezed,
    Object? childIds = null,
    Object? isHierarchyRoot = null,
    Object? isHierarchyLeaf = null,
    Object? hierarchyMeta = null,
  }) {
    return _then(_$EntityHierarchyImpl(
      treePath: freezed == treePath
          ? _value.treePath
          : treePath // ignore: cast_nullable_to_non_nullable
              as String?,
      treeDepth: null == treeDepth
          ? _value.treeDepth
          : treeDepth // ignore: cast_nullable_to_non_nullable
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
      isHierarchyRoot: null == isHierarchyRoot
          ? _value.isHierarchyRoot
          : isHierarchyRoot // ignore: cast_nullable_to_non_nullable
              as bool,
      isHierarchyLeaf: null == isHierarchyLeaf
          ? _value.isHierarchyLeaf
          : isHierarchyLeaf // ignore: cast_nullable_to_non_nullable
              as bool,
      hierarchyMeta: null == hierarchyMeta
          ? _value._hierarchyMeta
          : hierarchyMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
    ));
  }
}

/// @nodoc

class _$EntityHierarchyImpl implements _EntityHierarchy {
  const _$EntityHierarchyImpl(
      {this.treePath,
      this.treeDepth = 0,
      final List<EntityId> ancestors = const [],
      this.parentId,
      final List<EntityId> childIds = const [],
      this.isHierarchyRoot = true,
      this.isHierarchyLeaf = true,
      final Map<String, Object> hierarchyMeta = const {}})
      : _ancestors = ancestors,
        _childIds = childIds,
        _hierarchyMeta = hierarchyMeta;

  @override
  final String? treePath;
  @override
  @JsonKey()
  final int treeDepth;
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

  @override
  @JsonKey()
  final bool isHierarchyRoot;
  @override
  @JsonKey()
  final bool isHierarchyLeaf;
  final Map<String, Object> _hierarchyMeta;
  @override
  @JsonKey()
  Map<String, Object> get hierarchyMeta {
    if (_hierarchyMeta is EqualUnmodifiableMapView) return _hierarchyMeta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_hierarchyMeta);
  }

  @override
  String toString() {
    return 'EntityHierarchy(treePath: $treePath, treeDepth: $treeDepth, ancestors: $ancestors, parentId: $parentId, childIds: $childIds, isHierarchyRoot: $isHierarchyRoot, isHierarchyLeaf: $isHierarchyLeaf, hierarchyMeta: $hierarchyMeta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityHierarchyImpl &&
            (identical(other.treePath, treePath) ||
                other.treePath == treePath) &&
            (identical(other.treeDepth, treeDepth) ||
                other.treeDepth == treeDepth) &&
            const DeepCollectionEquality()
                .equals(other._ancestors, _ancestors) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            const DeepCollectionEquality().equals(other._childIds, _childIds) &&
            (identical(other.isHierarchyRoot, isHierarchyRoot) ||
                other.isHierarchyRoot == isHierarchyRoot) &&
            (identical(other.isHierarchyLeaf, isHierarchyLeaf) ||
                other.isHierarchyLeaf == isHierarchyLeaf) &&
            const DeepCollectionEquality()
                .equals(other._hierarchyMeta, _hierarchyMeta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      treePath,
      treeDepth,
      const DeepCollectionEquality().hash(_ancestors),
      parentId,
      const DeepCollectionEquality().hash(_childIds),
      isHierarchyRoot,
      isHierarchyLeaf,
      const DeepCollectionEquality().hash(_hierarchyMeta));

  /// Create a copy of EntityHierarchy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityHierarchyImplCopyWith<_$EntityHierarchyImpl> get copyWith =>
      __$$EntityHierarchyImplCopyWithImpl<_$EntityHierarchyImpl>(
          this, _$identity);
}

abstract class _EntityHierarchy implements EntityHierarchy {
  const factory _EntityHierarchy(
      {final String? treePath,
      final int treeDepth,
      final List<EntityId> ancestors,
      final EntityId? parentId,
      final List<EntityId> childIds,
      final bool isHierarchyRoot,
      final bool isHierarchyLeaf,
      final Map<String, Object> hierarchyMeta}) = _$EntityHierarchyImpl;

  @override
  String? get treePath;
  @override
  int get treeDepth;
  @override
  List<EntityId> get ancestors;
  @override
  EntityId? get parentId;
  @override
  List<EntityId> get childIds;
  @override
  bool get isHierarchyRoot;
  @override
  bool get isHierarchyLeaf;
  @override
  Map<String, Object> get hierarchyMeta;

  /// Create a copy of EntityHierarchy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityHierarchyImplCopyWith<_$EntityHierarchyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntitySecurity {
  UserAction? get lastAccessor => throw _privateConstructorUsedError;
  UserAction? get lockOwner => throw _privateConstructorUsedError;
  DateTime? get lockExpiry => throw _privateConstructorUsedError;
  UserAction? get remover => throw _privateConstructorUsedError;
  List<UserAction> get modHistory => throw _privateConstructorUsedError;
  List<UserAction> get accessLog => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  int get accessCount => throw _privateConstructorUsedError;

  /// Create a copy of EntitySecurity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntitySecurityCopyWith<EntitySecurity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntitySecurityCopyWith<$Res> {
  factory $EntitySecurityCopyWith(
          EntitySecurity value, $Res Function(EntitySecurity) then) =
      _$EntitySecurityCopyWithImpl<$Res, EntitySecurity>;
  @useResult
  $Res call(
      {UserAction? lastAccessor,
      UserAction? lockOwner,
      DateTime? lockExpiry,
      UserAction? remover,
      List<UserAction> modHistory,
      List<UserAction> accessLog,
      bool isPublic,
      int accessCount});

  $UserActionCopyWith<$Res>? get lastAccessor;
  $UserActionCopyWith<$Res>? get lockOwner;
  $UserActionCopyWith<$Res>? get remover;
}

/// @nodoc
class _$EntitySecurityCopyWithImpl<$Res, $Val extends EntitySecurity>
    implements $EntitySecurityCopyWith<$Res> {
  _$EntitySecurityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntitySecurity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastAccessor = freezed,
    Object? lockOwner = freezed,
    Object? lockExpiry = freezed,
    Object? remover = freezed,
    Object? modHistory = null,
    Object? accessLog = null,
    Object? isPublic = null,
    Object? accessCount = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }

  /// Create a copy of EntitySecurity
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

  /// Create a copy of EntitySecurity
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

  /// Create a copy of EntitySecurity
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
abstract class _$$EntitySecurityImplCopyWith<$Res>
    implements $EntitySecurityCopyWith<$Res> {
  factory _$$EntitySecurityImplCopyWith(_$EntitySecurityImpl value,
          $Res Function(_$EntitySecurityImpl) then) =
      __$$EntitySecurityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserAction? lastAccessor,
      UserAction? lockOwner,
      DateTime? lockExpiry,
      UserAction? remover,
      List<UserAction> modHistory,
      List<UserAction> accessLog,
      bool isPublic,
      int accessCount});

  @override
  $UserActionCopyWith<$Res>? get lastAccessor;
  @override
  $UserActionCopyWith<$Res>? get lockOwner;
  @override
  $UserActionCopyWith<$Res>? get remover;
}

/// @nodoc
class __$$EntitySecurityImplCopyWithImpl<$Res>
    extends _$EntitySecurityCopyWithImpl<$Res, _$EntitySecurityImpl>
    implements _$$EntitySecurityImplCopyWith<$Res> {
  __$$EntitySecurityImplCopyWithImpl(
      _$EntitySecurityImpl _value, $Res Function(_$EntitySecurityImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntitySecurity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastAccessor = freezed,
    Object? lockOwner = freezed,
    Object? lockExpiry = freezed,
    Object? remover = freezed,
    Object? modHistory = null,
    Object? accessLog = null,
    Object? isPublic = null,
    Object? accessCount = null,
  }) {
    return _then(_$EntitySecurityImpl(
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
    ));
  }
}

/// @nodoc

class _$EntitySecurityImpl implements _EntitySecurity {
  const _$EntitySecurityImpl(
      {this.lastAccessor,
      this.lockOwner,
      this.lockExpiry,
      this.remover,
      final List<UserAction> modHistory = const [],
      final List<UserAction> accessLog = const [],
      this.isPublic = EntityDefaults.isPublic,
      this.accessCount = EntityDefaults.accessCount})
      : _modHistory = modHistory,
        _accessLog = accessLog;

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

  @override
  String toString() {
    return 'EntitySecurity(lastAccessor: $lastAccessor, lockOwner: $lockOwner, lockExpiry: $lockExpiry, remover: $remover, modHistory: $modHistory, accessLog: $accessLog, isPublic: $isPublic, accessCount: $accessCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntitySecurityImpl &&
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
                other.accessCount == accessCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      lastAccessor,
      lockOwner,
      lockExpiry,
      remover,
      const DeepCollectionEquality().hash(_modHistory),
      const DeepCollectionEquality().hash(_accessLog),
      isPublic,
      accessCount);

  /// Create a copy of EntitySecurity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntitySecurityImplCopyWith<_$EntitySecurityImpl> get copyWith =>
      __$$EntitySecurityImplCopyWithImpl<_$EntitySecurityImpl>(
          this, _$identity);
}

abstract class _EntitySecurity implements EntitySecurity {
  const factory _EntitySecurity(
      {final UserAction? lastAccessor,
      final UserAction? lockOwner,
      final DateTime? lockExpiry,
      final UserAction? remover,
      final List<UserAction> modHistory,
      final List<UserAction> accessLog,
      final bool isPublic,
      final int accessCount}) = _$EntitySecurityImpl;

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
  int get accessCount;

  /// Create a copy of EntitySecurity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntitySecurityImplCopyWith<_$EntitySecurityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntityClassification {
  List<String> get tags => throw _privateConstructorUsedError;
  Map<String, String> get labels => throw _privateConstructorUsedError;
  Priority get priority => throw _privateConstructorUsedError;
  WorkflowStage get stage => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;

  /// Create a copy of EntityClassification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityClassificationCopyWith<EntityClassification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityClassificationCopyWith<$Res> {
  factory $EntityClassificationCopyWith(EntityClassification value,
          $Res Function(EntityClassification) then) =
      _$EntityClassificationCopyWithImpl<$Res, EntityClassification>;
  @useResult
  $Res call(
      {List<String> tags,
      Map<String, String> labels,
      Priority priority,
      WorkflowStage stage,
      DateTime? expiryDate});
}

/// @nodoc
class _$EntityClassificationCopyWithImpl<$Res,
        $Val extends EntityClassification>
    implements $EntityClassificationCopyWith<$Res> {
  _$EntityClassificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityClassification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? labels = null,
    Object? priority = null,
    Object? stage = null,
    Object? expiryDate = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityClassificationImplCopyWith<$Res>
    implements $EntityClassificationCopyWith<$Res> {
  factory _$$EntityClassificationImplCopyWith(_$EntityClassificationImpl value,
          $Res Function(_$EntityClassificationImpl) then) =
      __$$EntityClassificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> tags,
      Map<String, String> labels,
      Priority priority,
      WorkflowStage stage,
      DateTime? expiryDate});
}

/// @nodoc
class __$$EntityClassificationImplCopyWithImpl<$Res>
    extends _$EntityClassificationCopyWithImpl<$Res, _$EntityClassificationImpl>
    implements _$$EntityClassificationImplCopyWith<$Res> {
  __$$EntityClassificationImplCopyWithImpl(_$EntityClassificationImpl _value,
      $Res Function(_$EntityClassificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityClassification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
    Object? labels = null,
    Object? priority = null,
    Object? stage = null,
    Object? expiryDate = freezed,
  }) {
    return _then(_$EntityClassificationImpl(
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
    ));
  }
}

/// @nodoc

class _$EntityClassificationImpl implements _EntityClassification {
  const _$EntityClassificationImpl(
      {final List<String> tags = const [],
      final Map<String, String> labels = const {},
      this.priority = EntityDefaults.priority,
      this.stage = EntityDefaults.stage,
      this.expiryDate})
      : _tags = tags,
        _labels = labels;

  final List<String> _tags;
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

  @override
  String toString() {
    return 'EntityClassification(tags: $tags, labels: $labels, priority: $priority, stage: $stage, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityClassificationImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_labels),
      priority,
      stage,
      expiryDate);

  /// Create a copy of EntityClassification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityClassificationImplCopyWith<_$EntityClassificationImpl>
      get copyWith =>
          __$$EntityClassificationImplCopyWithImpl<_$EntityClassificationImpl>(
              this, _$identity);
}

abstract class _EntityClassification implements EntityClassification {
  const factory _EntityClassification(
      {final List<String> tags,
      final Map<String, String> labels,
      final Priority priority,
      final WorkflowStage stage,
      final DateTime? expiryDate}) = _$EntityClassificationImpl;

  @override
  List<String> get tags;
  @override
  Map<String, String> get labels;
  @override
  Priority get priority;
  @override
  WorkflowStage get stage;
  @override
  DateTime? get expiryDate;

  /// Create a copy of EntityClassification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityClassificationImplCopyWith<_$EntityClassificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntityVersioning {
  Map<String, Object> get syncMeta => throw _privateConstructorUsedError;
  String? get syncVer => throw _privateConstructorUsedError;
  Map<String, Object> get searchIndex => throw _privateConstructorUsedError;
  int get eventVer => throw _privateConstructorUsedError;
  List<String> get pendingEvents => throw _privateConstructorUsedError;
  Map<String, Object> get eventMeta => throw _privateConstructorUsedError;
  int get historyLimit => throw _privateConstructorUsedError;
  int get dataVer => throw _privateConstructorUsedError;
  int get structVer => throw _privateConstructorUsedError;
  String? get lastVer => throw _privateConstructorUsedError;

  /// Create a copy of EntityVersioning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityVersioningCopyWith<EntityVersioning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityVersioningCopyWith<$Res> {
  factory $EntityVersioningCopyWith(
          EntityVersioning value, $Res Function(EntityVersioning) then) =
      _$EntityVersioningCopyWithImpl<$Res, EntityVersioning>;
  @useResult
  $Res call(
      {Map<String, Object> syncMeta,
      String? syncVer,
      Map<String, Object> searchIndex,
      int eventVer,
      List<String> pendingEvents,
      Map<String, Object> eventMeta,
      int historyLimit,
      int dataVer,
      int structVer,
      String? lastVer});
}

/// @nodoc
class _$EntityVersioningCopyWithImpl<$Res, $Val extends EntityVersioning>
    implements $EntityVersioningCopyWith<$Res> {
  _$EntityVersioningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityVersioning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? syncMeta = null,
    Object? syncVer = freezed,
    Object? searchIndex = null,
    Object? eventVer = null,
    Object? pendingEvents = null,
    Object? eventMeta = null,
    Object? historyLimit = null,
    Object? dataVer = null,
    Object? structVer = null,
    Object? lastVer = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityVersioningImplCopyWith<$Res>
    implements $EntityVersioningCopyWith<$Res> {
  factory _$$EntityVersioningImplCopyWith(_$EntityVersioningImpl value,
          $Res Function(_$EntityVersioningImpl) then) =
      __$$EntityVersioningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, Object> syncMeta,
      String? syncVer,
      Map<String, Object> searchIndex,
      int eventVer,
      List<String> pendingEvents,
      Map<String, Object> eventMeta,
      int historyLimit,
      int dataVer,
      int structVer,
      String? lastVer});
}

/// @nodoc
class __$$EntityVersioningImplCopyWithImpl<$Res>
    extends _$EntityVersioningCopyWithImpl<$Res, _$EntityVersioningImpl>
    implements _$$EntityVersioningImplCopyWith<$Res> {
  __$$EntityVersioningImplCopyWithImpl(_$EntityVersioningImpl _value,
      $Res Function(_$EntityVersioningImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityVersioning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? syncMeta = null,
    Object? syncVer = freezed,
    Object? searchIndex = null,
    Object? eventVer = null,
    Object? pendingEvents = null,
    Object? eventMeta = null,
    Object? historyLimit = null,
    Object? dataVer = null,
    Object? structVer = null,
    Object? lastVer = freezed,
  }) {
    return _then(_$EntityVersioningImpl(
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
    ));
  }
}

/// @nodoc

class _$EntityVersioningImpl implements _EntityVersioning {
  const _$EntityVersioningImpl(
      {final Map<String, Object> syncMeta = const {},
      this.syncVer,
      final Map<String, Object> searchIndex = const {},
      this.eventVer = 0,
      final List<String> pendingEvents = const [],
      final Map<String, Object> eventMeta = const {},
      this.historyLimit = SystemLimits.historyDefault,
      this.dataVer = 1,
      this.structVer = 1,
      this.lastVer})
      : _syncMeta = syncMeta,
        _searchIndex = searchIndex,
        _pendingEvents = pendingEvents,
        _eventMeta = eventMeta;

  final Map<String, Object> _syncMeta;
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

  @override
  String toString() {
    return 'EntityVersioning(syncMeta: $syncMeta, syncVer: $syncVer, searchIndex: $searchIndex, eventVer: $eventVer, pendingEvents: $pendingEvents, eventMeta: $eventMeta, historyLimit: $historyLimit, dataVer: $dataVer, structVer: $structVer, lastVer: $lastVer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityVersioningImpl &&
            const DeepCollectionEquality().equals(other._syncMeta, _syncMeta) &&
            (identical(other.syncVer, syncVer) || other.syncVer == syncVer) &&
            const DeepCollectionEquality()
                .equals(other._searchIndex, _searchIndex) &&
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
            (identical(other.lastVer, lastVer) || other.lastVer == lastVer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_syncMeta),
      syncVer,
      const DeepCollectionEquality().hash(_searchIndex),
      eventVer,
      const DeepCollectionEquality().hash(_pendingEvents),
      const DeepCollectionEquality().hash(_eventMeta),
      historyLimit,
      dataVer,
      structVer,
      lastVer);

  /// Create a copy of EntityVersioning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityVersioningImplCopyWith<_$EntityVersioningImpl> get copyWith =>
      __$$EntityVersioningImplCopyWithImpl<_$EntityVersioningImpl>(
          this, _$identity);
}

abstract class _EntityVersioning implements EntityVersioning {
  const factory _EntityVersioning(
      {final Map<String, Object> syncMeta,
      final String? syncVer,
      final Map<String, Object> searchIndex,
      final int eventVer,
      final List<String> pendingEvents,
      final Map<String, Object> eventMeta,
      final int historyLimit,
      final int dataVer,
      final int structVer,
      final String? lastVer}) = _$EntityVersioningImpl;

  @override
  Map<String, Object> get syncMeta;
  @override
  String? get syncVer;
  @override
  Map<String, Object> get searchIndex;
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
  String? get lastVer;

  /// Create a copy of EntityVersioning
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityVersioningImplCopyWith<_$EntityVersioningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntityAI {
  Map<String, List<double>> get aiVectors => throw _privateConstructorUsedError;
  Map<String, double> get aiScores => throw _privateConstructorUsedError;
  Map<String, String> get aiMeta => throw _privateConstructorUsedError;
  List<String> get aiTags => throw _privateConstructorUsedError;
  Map<String, Object> get aiNotes => throw _privateConstructorUsedError;
  DateTime? get aiLastRun => throw _privateConstructorUsedError;
  String? get aiVer => throw _privateConstructorUsedError;

  /// Create a copy of EntityAI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityAICopyWith<EntityAI> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityAICopyWith<$Res> {
  factory $EntityAICopyWith(EntityAI value, $Res Function(EntityAI) then) =
      _$EntityAICopyWithImpl<$Res, EntityAI>;
  @useResult
  $Res call(
      {Map<String, List<double>> aiVectors,
      Map<String, double> aiScores,
      Map<String, String> aiMeta,
      List<String> aiTags,
      Map<String, Object> aiNotes,
      DateTime? aiLastRun,
      String? aiVer});
}

/// @nodoc
class _$EntityAICopyWithImpl<$Res, $Val extends EntityAI>
    implements $EntityAICopyWith<$Res> {
  _$EntityAICopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityAI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aiVectors = null,
    Object? aiScores = null,
    Object? aiMeta = null,
    Object? aiTags = null,
    Object? aiNotes = null,
    Object? aiLastRun = freezed,
    Object? aiVer = freezed,
  }) {
    return _then(_value.copyWith(
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
}

/// @nodoc
abstract class _$$EntityAIImplCopyWith<$Res>
    implements $EntityAICopyWith<$Res> {
  factory _$$EntityAIImplCopyWith(
          _$EntityAIImpl value, $Res Function(_$EntityAIImpl) then) =
      __$$EntityAIImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, List<double>> aiVectors,
      Map<String, double> aiScores,
      Map<String, String> aiMeta,
      List<String> aiTags,
      Map<String, Object> aiNotes,
      DateTime? aiLastRun,
      String? aiVer});
}

/// @nodoc
class __$$EntityAIImplCopyWithImpl<$Res>
    extends _$EntityAICopyWithImpl<$Res, _$EntityAIImpl>
    implements _$$EntityAIImplCopyWith<$Res> {
  __$$EntityAIImplCopyWithImpl(
      _$EntityAIImpl _value, $Res Function(_$EntityAIImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityAI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aiVectors = null,
    Object? aiScores = null,
    Object? aiMeta = null,
    Object? aiTags = null,
    Object? aiNotes = null,
    Object? aiLastRun = freezed,
    Object? aiVer = freezed,
  }) {
    return _then(_$EntityAIImpl(
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

class _$EntityAIImpl implements _EntityAI {
  const _$EntityAIImpl(
      {final Map<String, List<double>> aiVectors = const {},
      final Map<String, double> aiScores = const {},
      final Map<String, String> aiMeta = const {},
      final List<String> aiTags = const [],
      final Map<String, Object> aiNotes = const {},
      this.aiLastRun,
      this.aiVer})
      : _aiVectors = aiVectors,
        _aiScores = aiScores,
        _aiMeta = aiMeta,
        _aiTags = aiTags,
        _aiNotes = aiNotes;

  final Map<String, List<double>> _aiVectors;
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
    return 'EntityAI(aiVectors: $aiVectors, aiScores: $aiScores, aiMeta: $aiMeta, aiTags: $aiTags, aiNotes: $aiNotes, aiLastRun: $aiLastRun, aiVer: $aiVer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityAIImpl &&
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
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_aiVectors),
      const DeepCollectionEquality().hash(_aiScores),
      const DeepCollectionEquality().hash(_aiMeta),
      const DeepCollectionEquality().hash(_aiTags),
      const DeepCollectionEquality().hash(_aiNotes),
      aiLastRun,
      aiVer);

  /// Create a copy of EntityAI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityAIImplCopyWith<_$EntityAIImpl> get copyWith =>
      __$$EntityAIImplCopyWithImpl<_$EntityAIImpl>(this, _$identity);
}

abstract class _EntityAI implements EntityAI {
  const factory _EntityAI(
      {final Map<String, List<double>> aiVectors,
      final Map<String, double> aiScores,
      final Map<String, String> aiMeta,
      final List<String> aiTags,
      final Map<String, Object> aiNotes,
      final DateTime? aiLastRun,
      final String? aiVer}) = _$EntityAIImpl;

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

  /// Create a copy of EntityAI
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityAIImplCopyWith<_$EntityAIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EntityLocking {
  String? get distLockId => throw _privateConstructorUsedError;
  DateTime? get distLockExpiry => throw _privateConstructorUsedError;
  String? get distLockNode => throw _privateConstructorUsedError;
  Map<String, dynamic> get lockMeta => throw _privateConstructorUsedError;
  Map<String, int> get verVectors => throw _privateConstructorUsedError;
  Duration get lockTimeout => throw _privateConstructorUsedError;

  /// Create a copy of EntityLocking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityLockingCopyWith<EntityLocking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityLockingCopyWith<$Res> {
  factory $EntityLockingCopyWith(
          EntityLocking value, $Res Function(EntityLocking) then) =
      _$EntityLockingCopyWithImpl<$Res, EntityLocking>;
  @useResult
  $Res call(
      {String? distLockId,
      DateTime? distLockExpiry,
      String? distLockNode,
      Map<String, dynamic> lockMeta,
      Map<String, int> verVectors,
      Duration lockTimeout});
}

/// @nodoc
class _$EntityLockingCopyWithImpl<$Res, $Val extends EntityLocking>
    implements $EntityLockingCopyWith<$Res> {
  _$EntityLockingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityLocking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distLockId = freezed,
    Object? distLockExpiry = freezed,
    Object? distLockNode = freezed,
    Object? lockMeta = null,
    Object? verVectors = null,
    Object? lockTimeout = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityLockingImplCopyWith<$Res>
    implements $EntityLockingCopyWith<$Res> {
  factory _$$EntityLockingImplCopyWith(
          _$EntityLockingImpl value, $Res Function(_$EntityLockingImpl) then) =
      __$$EntityLockingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? distLockId,
      DateTime? distLockExpiry,
      String? distLockNode,
      Map<String, dynamic> lockMeta,
      Map<String, int> verVectors,
      Duration lockTimeout});
}

/// @nodoc
class __$$EntityLockingImplCopyWithImpl<$Res>
    extends _$EntityLockingCopyWithImpl<$Res, _$EntityLockingImpl>
    implements _$$EntityLockingImplCopyWith<$Res> {
  __$$EntityLockingImplCopyWithImpl(
      _$EntityLockingImpl _value, $Res Function(_$EntityLockingImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityLocking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distLockId = freezed,
    Object? distLockExpiry = freezed,
    Object? distLockNode = freezed,
    Object? lockMeta = null,
    Object? verVectors = null,
    Object? lockTimeout = null,
  }) {
    return _then(_$EntityLockingImpl(
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
    ));
  }
}

/// @nodoc

class _$EntityLockingImpl implements _EntityLocking {
  const _$EntityLockingImpl(
      {this.distLockId,
      this.distLockExpiry,
      this.distLockNode,
      final Map<String, dynamic> lockMeta = const {},
      final Map<String, int> verVectors = const {},
      this.lockTimeout = LockConfig.defaultTimeout})
      : _lockMeta = lockMeta,
        _verVectors = verVectors;

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

  @override
  String toString() {
    return 'EntityLocking(distLockId: $distLockId, distLockExpiry: $distLockExpiry, distLockNode: $distLockNode, lockMeta: $lockMeta, verVectors: $verVectors, lockTimeout: $lockTimeout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityLockingImpl &&
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
                other.lockTimeout == lockTimeout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      distLockId,
      distLockExpiry,
      distLockNode,
      const DeepCollectionEquality().hash(_lockMeta),
      const DeepCollectionEquality().hash(_verVectors),
      lockTimeout);

  /// Create a copy of EntityLocking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityLockingImplCopyWith<_$EntityLockingImpl> get copyWith =>
      __$$EntityLockingImplCopyWithImpl<_$EntityLockingImpl>(this, _$identity);
}

abstract class _EntityLocking implements EntityLocking {
  const factory _EntityLocking(
      {final String? distLockId,
      final DateTime? distLockExpiry,
      final String? distLockNode,
      final Map<String, dynamic> lockMeta,
      final Map<String, int> verVectors,
      final Duration lockTimeout}) = _$EntityLockingImpl;

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
  Duration get lockTimeout;

  /// Create a copy of EntityLocking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityLockingImplCopyWith<_$EntityLockingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BaseEntityModel<T extends Object> {
// Core entity data
  CoreEntityDto<T> get core =>
      throw _privateConstructorUsedError; // Component-based structure
  EntityHierarchy get hierarchy => throw _privateConstructorUsedError;
  EntitySecurity get security => throw _privateConstructorUsedError;
  EntityClassification get classification => throw _privateConstructorUsedError;
  EntityVersioning get versioning => throw _privateConstructorUsedError;
  EntityAI get ai => throw _privateConstructorUsedError;
  EntityLocking get locking =>
      throw _privateConstructorUsedError; // Optional extra data
  T? get extraData => throw _privateConstructorUsedError;

  /// Create a copy of BaseEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseEntityModelCopyWith<T, BaseEntityModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseEntityModelCopyWith<T extends Object, $Res> {
  factory $BaseEntityModelCopyWith(
          BaseEntityModel<T> value, $Res Function(BaseEntityModel<T>) then) =
      _$BaseEntityModelCopyWithImpl<T, $Res, BaseEntityModel<T>>;
  @useResult
  $Res call(
      {CoreEntityDto<T> core,
      EntityHierarchy hierarchy,
      EntitySecurity security,
      EntityClassification classification,
      EntityVersioning versioning,
      EntityAI ai,
      EntityLocking locking,
      T? extraData});

  $CoreEntityDtoCopyWith<T, $Res> get core;
  $EntityHierarchyCopyWith<$Res> get hierarchy;
  $EntitySecurityCopyWith<$Res> get security;
  $EntityClassificationCopyWith<$Res> get classification;
  $EntityVersioningCopyWith<$Res> get versioning;
  $EntityAICopyWith<$Res> get ai;
  $EntityLockingCopyWith<$Res> get locking;
}

/// @nodoc
class _$BaseEntityModelCopyWithImpl<T extends Object, $Res,
        $Val extends BaseEntityModel<T>>
    implements $BaseEntityModelCopyWith<T, $Res> {
  _$BaseEntityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? core = null,
    Object? hierarchy = null,
    Object? security = null,
    Object? classification = null,
    Object? versioning = null,
    Object? ai = null,
    Object? locking = null,
    Object? extraData = freezed,
  }) {
    return _then(_value.copyWith(
      core: null == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as CoreEntityDto<T>,
      hierarchy: null == hierarchy
          ? _value.hierarchy
          : hierarchy // ignore: cast_nullable_to_non_nullable
              as EntityHierarchy,
      security: null == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as EntitySecurity,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as EntityClassification,
      versioning: null == versioning
          ? _value.versioning
          : versioning // ignore: cast_nullable_to_non_nullable
              as EntityVersioning,
      ai: null == ai
          ? _value.ai
          : ai // ignore: cast_nullable_to_non_nullable
              as EntityAI,
      locking: null == locking
          ? _value.locking
          : locking // ignore: cast_nullable_to_non_nullable
              as EntityLocking,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }

  /// Create a copy of BaseEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoreEntityDtoCopyWith<T, $Res> get core {
    return $CoreEntityDtoCopyWith<T, $Res>(_value.core, (value) {
      return _then(_value.copyWith(core: value) as $Val);
    });
  }

  /// Create a copy of BaseEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityHierarchyCopyWith<$Res> get hierarchy {
    return $EntityHierarchyCopyWith<$Res>(_value.hierarchy, (value) {
      return _then(_value.copyWith(hierarchy: value) as $Val);
    });
  }

  /// Create a copy of BaseEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntitySecurityCopyWith<$Res> get security {
    return $EntitySecurityCopyWith<$Res>(_value.security, (value) {
      return _then(_value.copyWith(security: value) as $Val);
    });
  }

  /// Create a copy of BaseEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityClassificationCopyWith<$Res> get classification {
    return $EntityClassificationCopyWith<$Res>(_value.classification, (value) {
      return _then(_value.copyWith(classification: value) as $Val);
    });
  }

  /// Create a copy of BaseEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityVersioningCopyWith<$Res> get versioning {
    return $EntityVersioningCopyWith<$Res>(_value.versioning, (value) {
      return _then(_value.copyWith(versioning: value) as $Val);
    });
  }

  /// Create a copy of BaseEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityAICopyWith<$Res> get ai {
    return $EntityAICopyWith<$Res>(_value.ai, (value) {
      return _then(_value.copyWith(ai: value) as $Val);
    });
  }

  /// Create a copy of BaseEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityLockingCopyWith<$Res> get locking {
    return $EntityLockingCopyWith<$Res>(_value.locking, (value) {
      return _then(_value.copyWith(locking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseEntityModelImplCopyWith<T extends Object, $Res>
    implements $BaseEntityModelCopyWith<T, $Res> {
  factory _$$BaseEntityModelImplCopyWith(_$BaseEntityModelImpl<T> value,
          $Res Function(_$BaseEntityModelImpl<T>) then) =
      __$$BaseEntityModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {CoreEntityDto<T> core,
      EntityHierarchy hierarchy,
      EntitySecurity security,
      EntityClassification classification,
      EntityVersioning versioning,
      EntityAI ai,
      EntityLocking locking,
      T? extraData});

  @override
  $CoreEntityDtoCopyWith<T, $Res> get core;
  @override
  $EntityHierarchyCopyWith<$Res> get hierarchy;
  @override
  $EntitySecurityCopyWith<$Res> get security;
  @override
  $EntityClassificationCopyWith<$Res> get classification;
  @override
  $EntityVersioningCopyWith<$Res> get versioning;
  @override
  $EntityAICopyWith<$Res> get ai;
  @override
  $EntityLockingCopyWith<$Res> get locking;
}

/// @nodoc
class __$$BaseEntityModelImplCopyWithImpl<T extends Object, $Res>
    extends _$BaseEntityModelCopyWithImpl<T, $Res, _$BaseEntityModelImpl<T>>
    implements _$$BaseEntityModelImplCopyWith<T, $Res> {
  __$$BaseEntityModelImplCopyWithImpl(_$BaseEntityModelImpl<T> _value,
      $Res Function(_$BaseEntityModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? core = null,
    Object? hierarchy = null,
    Object? security = null,
    Object? classification = null,
    Object? versioning = null,
    Object? ai = null,
    Object? locking = null,
    Object? extraData = freezed,
  }) {
    return _then(_$BaseEntityModelImpl<T>(
      core: null == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as CoreEntityDto<T>,
      hierarchy: null == hierarchy
          ? _value.hierarchy
          : hierarchy // ignore: cast_nullable_to_non_nullable
              as EntityHierarchy,
      security: null == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as EntitySecurity,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as EntityClassification,
      versioning: null == versioning
          ? _value.versioning
          : versioning // ignore: cast_nullable_to_non_nullable
              as EntityVersioning,
      ai: null == ai
          ? _value.ai
          : ai // ignore: cast_nullable_to_non_nullable
              as EntityAI,
      locking: null == locking
          ? _value.locking
          : locking // ignore: cast_nullable_to_non_nullable
              as EntityLocking,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$BaseEntityModelImpl<T extends Object> extends _BaseEntityModel<T> {
  const _$BaseEntityModelImpl(
      {required this.core,
      required this.hierarchy,
      required this.security,
      required this.classification,
      required this.versioning,
      required this.ai,
      required this.locking,
      this.extraData})
      : super._();

// Core entity data
  @override
  final CoreEntityDto<T> core;
// Component-based structure
  @override
  final EntityHierarchy hierarchy;
  @override
  final EntitySecurity security;
  @override
  final EntityClassification classification;
  @override
  final EntityVersioning versioning;
  @override
  final EntityAI ai;
  @override
  final EntityLocking locking;
// Optional extra data
  @override
  final T? extraData;

  @override
  String toString() {
    return 'BaseEntityModel<$T>(core: $core, hierarchy: $hierarchy, security: $security, classification: $classification, versioning: $versioning, ai: $ai, locking: $locking, extraData: $extraData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseEntityModelImpl<T> &&
            (identical(other.core, core) || other.core == core) &&
            (identical(other.hierarchy, hierarchy) ||
                other.hierarchy == hierarchy) &&
            (identical(other.security, security) ||
                other.security == security) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.versioning, versioning) ||
                other.versioning == versioning) &&
            (identical(other.ai, ai) || other.ai == ai) &&
            (identical(other.locking, locking) || other.locking == locking) &&
            const DeepCollectionEquality().equals(other.extraData, extraData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      core,
      hierarchy,
      security,
      classification,
      versioning,
      ai,
      locking,
      const DeepCollectionEquality().hash(extraData));

  /// Create a copy of BaseEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseEntityModelImplCopyWith<T, _$BaseEntityModelImpl<T>> get copyWith =>
      __$$BaseEntityModelImplCopyWithImpl<T, _$BaseEntityModelImpl<T>>(
          this, _$identity);
}

abstract class _BaseEntityModel<T extends Object> extends BaseEntityModel<T> {
  const factory _BaseEntityModel(
      {required final CoreEntityDto<T> core,
      required final EntityHierarchy hierarchy,
      required final EntitySecurity security,
      required final EntityClassification classification,
      required final EntityVersioning versioning,
      required final EntityAI ai,
      required final EntityLocking locking,
      final T? extraData}) = _$BaseEntityModelImpl<T>;
  const _BaseEntityModel._() : super._();

// Core entity data
  @override
  CoreEntityDto<T> get core; // Component-based structure
  @override
  EntityHierarchy get hierarchy;
  @override
  EntitySecurity get security;
  @override
  EntityClassification get classification;
  @override
  EntityVersioning get versioning;
  @override
  EntityAI get ai;
  @override
  EntityLocking get locking; // Optional extra data
  @override
  T? get extraData;

  /// Create a copy of BaseEntityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseEntityModelImplCopyWith<T, _$BaseEntityModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

EntityMetadataDto _$EntityMetadataDtoFromJson(Map<String, dynamic> json) {
  return _EntityMetadataDto.fromJson(json);
}

/// @nodoc
mixin _$EntityMetadataDto {
  String get displayName => throw _privateConstructorUsedError;
  String get entityType => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get lastNameUpdate => throw _privateConstructorUsedError;
  Map<String, String> get searchTerms => throw _privateConstructorUsedError;

  /// Serializes this EntityMetadataDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntityMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityMetadataDtoCopyWith<EntityMetadataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityMetadataDtoCopyWith<$Res> {
  factory $EntityMetadataDtoCopyWith(
          EntityMetadataDto value, $Res Function(EntityMetadataDto) then) =
      _$EntityMetadataDtoCopyWithImpl<$Res, EntityMetadataDto>;
  @useResult
  $Res call(
      {String displayName,
      String entityType,
      String? description,
      DateTime? lastNameUpdate,
      Map<String, String> searchTerms});
}

/// @nodoc
class _$EntityMetadataDtoCopyWithImpl<$Res, $Val extends EntityMetadataDto>
    implements $EntityMetadataDtoCopyWith<$Res> {
  _$EntityMetadataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityMetadataDto
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
abstract class _$$EntityMetadataDtoImplCopyWith<$Res>
    implements $EntityMetadataDtoCopyWith<$Res> {
  factory _$$EntityMetadataDtoImplCopyWith(_$EntityMetadataDtoImpl value,
          $Res Function(_$EntityMetadataDtoImpl) then) =
      __$$EntityMetadataDtoImplCopyWithImpl<$Res>;
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
class __$$EntityMetadataDtoImplCopyWithImpl<$Res>
    extends _$EntityMetadataDtoCopyWithImpl<$Res, _$EntityMetadataDtoImpl>
    implements _$$EntityMetadataDtoImplCopyWith<$Res> {
  __$$EntityMetadataDtoImplCopyWithImpl(_$EntityMetadataDtoImpl _value,
      $Res Function(_$EntityMetadataDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityMetadataDto
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
    return _then(_$EntityMetadataDtoImpl(
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
class _$EntityMetadataDtoImpl extends _EntityMetadataDto {
  const _$EntityMetadataDtoImpl(
      {required this.displayName,
      required this.entityType,
      this.description,
      this.lastNameUpdate,
      final Map<String, String> searchTerms = const {}})
      : _searchTerms = searchTerms,
        super._();

  factory _$EntityMetadataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityMetadataDtoImplFromJson(json);

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
    return 'EntityMetadataDto(displayName: $displayName, entityType: $entityType, description: $description, lastNameUpdate: $lastNameUpdate, searchTerms: $searchTerms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityMetadataDtoImpl &&
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

  /// Create a copy of EntityMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityMetadataDtoImplCopyWith<_$EntityMetadataDtoImpl> get copyWith =>
      __$$EntityMetadataDtoImplCopyWithImpl<_$EntityMetadataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityMetadataDtoImplToJson(
      this,
    );
  }
}

abstract class _EntityMetadataDto extends EntityMetadataDto {
  const factory _EntityMetadataDto(
      {required final String displayName,
      required final String entityType,
      final String? description,
      final DateTime? lastNameUpdate,
      final Map<String, String> searchTerms}) = _$EntityMetadataDtoImpl;
  const _EntityMetadataDto._() : super._();

  factory _EntityMetadataDto.fromJson(Map<String, dynamic> json) =
      _$EntityMetadataDtoImpl.fromJson;

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

  /// Create a copy of EntityMetadataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityMetadataDtoImplCopyWith<_$EntityMetadataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
