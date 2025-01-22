// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoreEntityDto<T> _$CoreEntityDtoFromJson<T extends Object>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _CoreEntityDto<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$CoreEntityDto<T extends Object> {
  EntityId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get schemaVer => throw _privateConstructorUsedError;
  EntityStatus get status => throw _privateConstructorUsedError;
  Map<String, Object> get meta => throw _privateConstructorUsedError;
  UserAction get owner => throw _privateConstructorUsedError;
  UserAction get creator => throw _privateConstructorUsedError;
  UserAction get modifier => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;

  /// Serializes this CoreEntityDto to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CoreEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoreEntityDtoCopyWith<T, CoreEntityDto<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreEntityDtoCopyWith<T extends Object, $Res> {
  factory $CoreEntityDtoCopyWith(
          CoreEntityDto<T> value, $Res Function(CoreEntityDto<T>) then) =
      _$CoreEntityDtoCopyWithImpl<T, $Res, CoreEntityDto<T>>;
  @useResult
  $Res call(
      {EntityId id,
      String name,
      String? description,
      DateTime createdAt,
      DateTime updatedAt,
      String schemaVer,
      EntityStatus status,
      Map<String, Object> meta,
      UserAction owner,
      UserAction creator,
      UserAction modifier,
      T? data});

  $EntityIdCopyWith<$Res> get id;
  $UserActionCopyWith<$Res> get owner;
  $UserActionCopyWith<$Res> get creator;
  $UserActionCopyWith<$Res> get modifier;
}

/// @nodoc
class _$CoreEntityDtoCopyWithImpl<T extends Object, $Res,
    $Val extends CoreEntityDto<T>> implements $CoreEntityDtoCopyWith<T, $Res> {
  _$CoreEntityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoreEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? schemaVer = null,
    Object? status = null,
    Object? meta = null,
    Object? owner = null,
    Object? creator = null,
    Object? modifier = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as EntityId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schemaVer: null == schemaVer
          ? _value.schemaVer
          : schemaVer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EntityStatus,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserAction,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserAction,
      modifier: null == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as UserAction,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }

  /// Create a copy of CoreEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityIdCopyWith<$Res> get id {
    return $EntityIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of CoreEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res> get owner {
    return $UserActionCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of CoreEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res> get creator {
    return $UserActionCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  /// Create a copy of CoreEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res> get modifier {
    return $UserActionCopyWith<$Res>(_value.modifier, (value) {
      return _then(_value.copyWith(modifier: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoreEntityDtoImplCopyWith<T extends Object, $Res>
    implements $CoreEntityDtoCopyWith<T, $Res> {
  factory _$$CoreEntityDtoImplCopyWith(_$CoreEntityDtoImpl<T> value,
          $Res Function(_$CoreEntityDtoImpl<T>) then) =
      __$$CoreEntityDtoImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {EntityId id,
      String name,
      String? description,
      DateTime createdAt,
      DateTime updatedAt,
      String schemaVer,
      EntityStatus status,
      Map<String, Object> meta,
      UserAction owner,
      UserAction creator,
      UserAction modifier,
      T? data});

  @override
  $EntityIdCopyWith<$Res> get id;
  @override
  $UserActionCopyWith<$Res> get owner;
  @override
  $UserActionCopyWith<$Res> get creator;
  @override
  $UserActionCopyWith<$Res> get modifier;
}

/// @nodoc
class __$$CoreEntityDtoImplCopyWithImpl<T extends Object, $Res>
    extends _$CoreEntityDtoCopyWithImpl<T, $Res, _$CoreEntityDtoImpl<T>>
    implements _$$CoreEntityDtoImplCopyWith<T, $Res> {
  __$$CoreEntityDtoImplCopyWithImpl(_$CoreEntityDtoImpl<T> _value,
      $Res Function(_$CoreEntityDtoImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CoreEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? schemaVer = null,
    Object? status = null,
    Object? meta = null,
    Object? owner = null,
    Object? creator = null,
    Object? modifier = null,
    Object? data = freezed,
  }) {
    return _then(_$CoreEntityDtoImpl<T>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as EntityId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schemaVer: null == schemaVer
          ? _value.schemaVer
          : schemaVer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EntityStatus,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserAction,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserAction,
      modifier: null == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as UserAction,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$CoreEntityDtoImpl<T extends Object> extends _CoreEntityDto<T> {
  const _$CoreEntityDtoImpl(
      {required this.id,
      required this.name,
      this.description,
      required this.createdAt,
      required this.updatedAt,
      this.schemaVer = EntityDefaults.version,
      this.status = EntityDefaults.status,
      final Map<String, Object> meta = const {},
      required this.owner,
      required this.creator,
      required this.modifier,
      this.data})
      : _meta = meta,
        super._();

  factory _$CoreEntityDtoImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$CoreEntityDtoImplFromJson(json, fromJsonT);

  @override
  final EntityId id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey()
  final String schemaVer;
  @override
  @JsonKey()
  final EntityStatus status;
  final Map<String, Object> _meta;
  @override
  @JsonKey()
  Map<String, Object> get meta {
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_meta);
  }

  @override
  final UserAction owner;
  @override
  final UserAction creator;
  @override
  final UserAction modifier;
  @override
  final T? data;

  @override
  String toString() {
    return 'CoreEntityDto<$T>(id: $id, name: $name, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, schemaVer: $schemaVer, status: $status, meta: $meta, owner: $owner, creator: $creator, modifier: $modifier, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoreEntityDtoImpl<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.schemaVer, schemaVer) ||
                other.schemaVer == schemaVer) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.modifier, modifier) ||
                other.modifier == modifier) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      createdAt,
      updatedAt,
      schemaVer,
      status,
      const DeepCollectionEquality().hash(_meta),
      owner,
      creator,
      modifier,
      const DeepCollectionEquality().hash(data));

  /// Create a copy of CoreEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoreEntityDtoImplCopyWith<T, _$CoreEntityDtoImpl<T>> get copyWith =>
      __$$CoreEntityDtoImplCopyWithImpl<T, _$CoreEntityDtoImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$CoreEntityDtoImplToJson<T>(this, toJsonT);
  }
}

abstract class _CoreEntityDto<T extends Object> extends CoreEntityDto<T> {
  const factory _CoreEntityDto(
      {required final EntityId id,
      required final String name,
      final String? description,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String schemaVer,
      final EntityStatus status,
      final Map<String, Object> meta,
      required final UserAction owner,
      required final UserAction creator,
      required final UserAction modifier,
      final T? data}) = _$CoreEntityDtoImpl<T>;
  const _CoreEntityDto._() : super._();

  factory _CoreEntityDto.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$CoreEntityDtoImpl<T>.fromJson;

  @override
  EntityId get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get schemaVer;
  @override
  EntityStatus get status;
  @override
  Map<String, Object> get meta;
  @override
  UserAction get owner;
  @override
  UserAction get creator;
  @override
  UserAction get modifier;
  @override
  T? get data;

  /// Create a copy of CoreEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoreEntityDtoImplCopyWith<T, _$CoreEntityDtoImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
