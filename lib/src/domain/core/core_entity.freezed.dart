// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoreEntity<T extends Object> {

 EntityId get id; String get name; String? get description; DateTime get createdAt; DateTime get updatedAt; String get schemaVer; EntityStatus get status; Map<String, Object> get meta; UserAction get owner; UserAction get creator; UserAction get modifier; T? get data;
/// Create a copy of CoreEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoreEntityCopyWith<T, CoreEntity<T>> get copyWith => _$CoreEntityCopyWithImpl<T, CoreEntity<T>>(this as CoreEntity<T>, _$identity);

  /// Serializes this CoreEntity to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoreEntity<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.schemaVer, schemaVer) || other.schemaVer == schemaVer)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.meta, meta)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.creator, creator) || other.creator == creator)&&(identical(other.modifier, modifier) || other.modifier == modifier)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,createdAt,updatedAt,schemaVer,status,const DeepCollectionEquality().hash(meta),owner,creator,modifier,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CoreEntity<$T>(id: $id, name: $name, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, schemaVer: $schemaVer, status: $status, meta: $meta, owner: $owner, creator: $creator, modifier: $modifier, data: $data)';
}


}

/// @nodoc
abstract mixin class $CoreEntityCopyWith<T extends Object,$Res>  {
  factory $CoreEntityCopyWith(CoreEntity<T> value, $Res Function(CoreEntity<T>) _then) = _$CoreEntityCopyWithImpl;
@useResult
$Res call({
 EntityId id, String name, String? description, DateTime createdAt, DateTime updatedAt, String schemaVer, EntityStatus status, Map<String, Object> meta, UserAction owner, UserAction creator, UserAction modifier, T? data
});


$EntityIdCopyWith<$Res> get id;$UserActionCopyWith<$Res> get owner;$UserActionCopyWith<$Res> get creator;$UserActionCopyWith<$Res> get modifier;

}
/// @nodoc
class _$CoreEntityCopyWithImpl<T extends Object,$Res>
    implements $CoreEntityCopyWith<T, $Res> {
  _$CoreEntityCopyWithImpl(this._self, this._then);

  final CoreEntity<T> _self;
  final $Res Function(CoreEntity<T>) _then;

/// Create a copy of CoreEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? createdAt = null,Object? updatedAt = null,Object? schemaVer = null,Object? status = null,Object? meta = null,Object? owner = null,Object? creator = null,Object? modifier = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as EntityId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,schemaVer: null == schemaVer ? _self.schemaVer : schemaVer // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EntityStatus,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserAction,creator: null == creator ? _self.creator : creator // ignore: cast_nullable_to_non_nullable
as UserAction,modifier: null == modifier ? _self.modifier : modifier // ignore: cast_nullable_to_non_nullable
as UserAction,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}
/// Create a copy of CoreEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get id {
  
  return $EntityIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of CoreEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserActionCopyWith<$Res> get owner {
  
  return $UserActionCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of CoreEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserActionCopyWith<$Res> get creator {
  
  return $UserActionCopyWith<$Res>(_self.creator, (value) {
    return _then(_self.copyWith(creator: value));
  });
}/// Create a copy of CoreEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserActionCopyWith<$Res> get modifier {
  
  return $UserActionCopyWith<$Res>(_self.modifier, (value) {
    return _then(_self.copyWith(modifier: value));
  });
}
}


/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _CoreEntity<T extends Object> extends CoreEntity<T> {
  const _CoreEntity({required this.id, required this.name, this.description, required this.createdAt, required this.updatedAt, this.schemaVer = EntityDefaults.version, this.status = EntityDefaults.status, final  Map<String, Object> meta = const {}, required this.owner, required this.creator, required this.modifier, this.data}): _meta = meta,super._();
  factory _CoreEntity.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$CoreEntityFromJson(json,fromJsonT);

@override final  EntityId id;
@override final  String name;
@override final  String? description;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey() final  String schemaVer;
@override@JsonKey() final  EntityStatus status;
 final  Map<String, Object> _meta;
@override@JsonKey() Map<String, Object> get meta {
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_meta);
}

@override final  UserAction owner;
@override final  UserAction creator;
@override final  UserAction modifier;
@override final  T? data;

/// Create a copy of CoreEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoreEntityCopyWith<T, _CoreEntity<T>> get copyWith => __$CoreEntityCopyWithImpl<T, _CoreEntity<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$CoreEntityToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoreEntity<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.schemaVer, schemaVer) || other.schemaVer == schemaVer)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._meta, _meta)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.creator, creator) || other.creator == creator)&&(identical(other.modifier, modifier) || other.modifier == modifier)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,createdAt,updatedAt,schemaVer,status,const DeepCollectionEquality().hash(_meta),owner,creator,modifier,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CoreEntity<$T>(id: $id, name: $name, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, schemaVer: $schemaVer, status: $status, meta: $meta, owner: $owner, creator: $creator, modifier: $modifier, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CoreEntityCopyWith<T extends Object,$Res> implements $CoreEntityCopyWith<T, $Res> {
  factory _$CoreEntityCopyWith(_CoreEntity<T> value, $Res Function(_CoreEntity<T>) _then) = __$CoreEntityCopyWithImpl;
@override @useResult
$Res call({
 EntityId id, String name, String? description, DateTime createdAt, DateTime updatedAt, String schemaVer, EntityStatus status, Map<String, Object> meta, UserAction owner, UserAction creator, UserAction modifier, T? data
});


@override $EntityIdCopyWith<$Res> get id;@override $UserActionCopyWith<$Res> get owner;@override $UserActionCopyWith<$Res> get creator;@override $UserActionCopyWith<$Res> get modifier;

}
/// @nodoc
class __$CoreEntityCopyWithImpl<T extends Object,$Res>
    implements _$CoreEntityCopyWith<T, $Res> {
  __$CoreEntityCopyWithImpl(this._self, this._then);

  final _CoreEntity<T> _self;
  final $Res Function(_CoreEntity<T>) _then;

/// Create a copy of CoreEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? createdAt = null,Object? updatedAt = null,Object? schemaVer = null,Object? status = null,Object? meta = null,Object? owner = null,Object? creator = null,Object? modifier = null,Object? data = freezed,}) {
  return _then(_CoreEntity<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as EntityId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,schemaVer: null == schemaVer ? _self.schemaVer : schemaVer // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EntityStatus,meta: null == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as UserAction,creator: null == creator ? _self.creator : creator // ignore: cast_nullable_to_non_nullable
as UserAction,modifier: null == modifier ? _self.modifier : modifier // ignore: cast_nullable_to_non_nullable
as UserAction,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}

/// Create a copy of CoreEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get id {
  
  return $EntityIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of CoreEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserActionCopyWith<$Res> get owner {
  
  return $UserActionCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of CoreEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserActionCopyWith<$Res> get creator {
  
  return $UserActionCopyWith<$Res>(_self.creator, (value) {
    return _then(_self.copyWith(creator: value));
  });
}/// Create a copy of CoreEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserActionCopyWith<$Res> get modifier {
  
  return $UserActionCopyWith<$Res>(_self.modifier, (value) {
    return _then(_self.copyWith(modifier: value));
  });
}
}

// dart format on
