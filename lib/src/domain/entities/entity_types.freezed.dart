// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OwnerData {

// Core info
 ContactInfo get contact; List<EntityId> get siteIds;// Metadata
 Map<String, Object> get meta; Map<String, Object>? get customData;
/// Create a copy of OwnerData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnerDataCopyWith<OwnerData> get copyWith => _$OwnerDataCopyWithImpl<OwnerData>(this as OwnerData, _$identity);

  /// Serializes this OwnerData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OwnerData&&(identical(other.contact, contact) || other.contact == contact)&&const DeepCollectionEquality().equals(other.siteIds, siteIds)&&const DeepCollectionEquality().equals(other.meta, meta)&&const DeepCollectionEquality().equals(other.customData, customData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contact,const DeepCollectionEquality().hash(siteIds),const DeepCollectionEquality().hash(meta),const DeepCollectionEquality().hash(customData));

@override
String toString() {
  return 'OwnerData(contact: $contact, siteIds: $siteIds, meta: $meta, customData: $customData)';
}


}

/// @nodoc
abstract mixin class $OwnerDataCopyWith<$Res>  {
  factory $OwnerDataCopyWith(OwnerData value, $Res Function(OwnerData) _then) = _$OwnerDataCopyWithImpl;
@useResult
$Res call({
 ContactInfo contact, List<EntityId> siteIds, Map<String, Object> meta, Map<String, Object>? customData
});


$ContactInfoCopyWith<$Res> get contact;

}
/// @nodoc
class _$OwnerDataCopyWithImpl<$Res>
    implements $OwnerDataCopyWith<$Res> {
  _$OwnerDataCopyWithImpl(this._self, this._then);

  final OwnerData _self;
  final $Res Function(OwnerData) _then;

/// Create a copy of OwnerData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contact = null,Object? siteIds = null,Object? meta = null,Object? customData = freezed,}) {
  return _then(_self.copyWith(
contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as ContactInfo,siteIds: null == siteIds ? _self.siteIds : siteIds // ignore: cast_nullable_to_non_nullable
as List<EntityId>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,customData: freezed == customData ? _self.customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,
  ));
}
/// Create a copy of OwnerData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactInfoCopyWith<$Res> get contact {
  
  return $ContactInfoCopyWith<$Res>(_self.contact, (value) {
    return _then(_self.copyWith(contact: value));
  });
}
}


/// Adds pattern-matching-related methods to [OwnerData].
extension OwnerDataPatterns on OwnerData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OwnerData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OwnerData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OwnerData value)  $default,){
final _that = this;
switch (_that) {
case _OwnerData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OwnerData value)?  $default,){
final _that = this;
switch (_that) {
case _OwnerData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ContactInfo contact,  List<EntityId> siteIds,  Map<String, Object> meta,  Map<String, Object>? customData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OwnerData() when $default != null:
return $default(_that.contact,_that.siteIds,_that.meta,_that.customData);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ContactInfo contact,  List<EntityId> siteIds,  Map<String, Object> meta,  Map<String, Object>? customData)  $default,) {final _that = this;
switch (_that) {
case _OwnerData():
return $default(_that.contact,_that.siteIds,_that.meta,_that.customData);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ContactInfo contact,  List<EntityId> siteIds,  Map<String, Object> meta,  Map<String, Object>? customData)?  $default,) {final _that = this;
switch (_that) {
case _OwnerData() when $default != null:
return $default(_that.contact,_that.siteIds,_that.meta,_that.customData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OwnerData extends OwnerData {
  const _OwnerData({required this.contact, final  List<EntityId> siteIds = const [], final  Map<String, Object> meta = const {}, final  Map<String, Object>? customData}): _siteIds = siteIds,_meta = meta,_customData = customData,super._();
  factory _OwnerData.fromJson(Map<String, dynamic> json) => _$OwnerDataFromJson(json);

// Core info
@override final  ContactInfo contact;
 final  List<EntityId> _siteIds;
@override@JsonKey() List<EntityId> get siteIds {
  if (_siteIds is EqualUnmodifiableListView) return _siteIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_siteIds);
}

// Metadata
 final  Map<String, Object> _meta;
// Metadata
@override@JsonKey() Map<String, Object> get meta {
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_meta);
}

 final  Map<String, Object>? _customData;
@override Map<String, Object>? get customData {
  final value = _customData;
  if (value == null) return null;
  if (_customData is EqualUnmodifiableMapView) return _customData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of OwnerData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OwnerDataCopyWith<_OwnerData> get copyWith => __$OwnerDataCopyWithImpl<_OwnerData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OwnerDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OwnerData&&(identical(other.contact, contact) || other.contact == contact)&&const DeepCollectionEquality().equals(other._siteIds, _siteIds)&&const DeepCollectionEquality().equals(other._meta, _meta)&&const DeepCollectionEquality().equals(other._customData, _customData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contact,const DeepCollectionEquality().hash(_siteIds),const DeepCollectionEquality().hash(_meta),const DeepCollectionEquality().hash(_customData));

@override
String toString() {
  return 'OwnerData(contact: $contact, siteIds: $siteIds, meta: $meta, customData: $customData)';
}


}

/// @nodoc
abstract mixin class _$OwnerDataCopyWith<$Res> implements $OwnerDataCopyWith<$Res> {
  factory _$OwnerDataCopyWith(_OwnerData value, $Res Function(_OwnerData) _then) = __$OwnerDataCopyWithImpl;
@override @useResult
$Res call({
 ContactInfo contact, List<EntityId> siteIds, Map<String, Object> meta, Map<String, Object>? customData
});


@override $ContactInfoCopyWith<$Res> get contact;

}
/// @nodoc
class __$OwnerDataCopyWithImpl<$Res>
    implements _$OwnerDataCopyWith<$Res> {
  __$OwnerDataCopyWithImpl(this._self, this._then);

  final _OwnerData _self;
  final $Res Function(_OwnerData) _then;

/// Create a copy of OwnerData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contact = null,Object? siteIds = null,Object? meta = null,Object? customData = freezed,}) {
  return _then(_OwnerData(
contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as ContactInfo,siteIds: null == siteIds ? _self._siteIds : siteIds // ignore: cast_nullable_to_non_nullable
as List<EntityId>,meta: null == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,customData: freezed == customData ? _self._customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,
  ));
}

/// Create a copy of OwnerData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactInfoCopyWith<$Res> get contact {
  
  return $ContactInfoCopyWith<$Res>(_self.contact, (value) {
    return _then(_self.copyWith(contact: value));
  });
}
}


/// @nodoc
mixin _$SiteData {

// Core info
 String get name; EntityId get ownerId;// Location
 String? get address; double? get latitude; double? get longitude;// Equipment
 List<EntityId> get equipmentIds;// Details
 Map<String, Object> get siteInfo;// Metadata
 Map<String, Object>? get customData; Map<String, Object> get meta; Map<String, String> get contactInfo;
/// Create a copy of SiteData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SiteDataCopyWith<SiteData> get copyWith => _$SiteDataCopyWithImpl<SiteData>(this as SiteData, _$identity);

  /// Serializes this SiteData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiteData&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&const DeepCollectionEquality().equals(other.equipmentIds, equipmentIds)&&const DeepCollectionEquality().equals(other.siteInfo, siteInfo)&&const DeepCollectionEquality().equals(other.customData, customData)&&const DeepCollectionEquality().equals(other.meta, meta)&&const DeepCollectionEquality().equals(other.contactInfo, contactInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,ownerId,address,latitude,longitude,const DeepCollectionEquality().hash(equipmentIds),const DeepCollectionEquality().hash(siteInfo),const DeepCollectionEquality().hash(customData),const DeepCollectionEquality().hash(meta),const DeepCollectionEquality().hash(contactInfo));

@override
String toString() {
  return 'SiteData(name: $name, ownerId: $ownerId, address: $address, latitude: $latitude, longitude: $longitude, equipmentIds: $equipmentIds, siteInfo: $siteInfo, customData: $customData, meta: $meta, contactInfo: $contactInfo)';
}


}

/// @nodoc
abstract mixin class $SiteDataCopyWith<$Res>  {
  factory $SiteDataCopyWith(SiteData value, $Res Function(SiteData) _then) = _$SiteDataCopyWithImpl;
@useResult
$Res call({
 String name, EntityId ownerId, String? address, double? latitude, double? longitude, List<EntityId> equipmentIds, Map<String, Object> siteInfo, Map<String, Object>? customData, Map<String, Object> meta, Map<String, String> contactInfo
});


$EntityIdCopyWith<$Res> get ownerId;

}
/// @nodoc
class _$SiteDataCopyWithImpl<$Res>
    implements $SiteDataCopyWith<$Res> {
  _$SiteDataCopyWithImpl(this._self, this._then);

  final SiteData _self;
  final $Res Function(SiteData) _then;

/// Create a copy of SiteData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? ownerId = null,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? equipmentIds = null,Object? siteInfo = null,Object? customData = freezed,Object? meta = null,Object? contactInfo = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as EntityId,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,equipmentIds: null == equipmentIds ? _self.equipmentIds : equipmentIds // ignore: cast_nullable_to_non_nullable
as List<EntityId>,siteInfo: null == siteInfo ? _self.siteInfo : siteInfo // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,customData: freezed == customData ? _self.customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,contactInfo: null == contactInfo ? _self.contactInfo : contactInfo // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}
/// Create a copy of SiteData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get ownerId {
  
  return $EntityIdCopyWith<$Res>(_self.ownerId, (value) {
    return _then(_self.copyWith(ownerId: value));
  });
}
}


/// Adds pattern-matching-related methods to [SiteData].
extension SiteDataPatterns on SiteData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SiteData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SiteData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SiteData value)  $default,){
final _that = this;
switch (_that) {
case _SiteData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SiteData value)?  $default,){
final _that = this;
switch (_that) {
case _SiteData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  EntityId ownerId,  String? address,  double? latitude,  double? longitude,  List<EntityId> equipmentIds,  Map<String, Object> siteInfo,  Map<String, Object>? customData,  Map<String, Object> meta,  Map<String, String> contactInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SiteData() when $default != null:
return $default(_that.name,_that.ownerId,_that.address,_that.latitude,_that.longitude,_that.equipmentIds,_that.siteInfo,_that.customData,_that.meta,_that.contactInfo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  EntityId ownerId,  String? address,  double? latitude,  double? longitude,  List<EntityId> equipmentIds,  Map<String, Object> siteInfo,  Map<String, Object>? customData,  Map<String, Object> meta,  Map<String, String> contactInfo)  $default,) {final _that = this;
switch (_that) {
case _SiteData():
return $default(_that.name,_that.ownerId,_that.address,_that.latitude,_that.longitude,_that.equipmentIds,_that.siteInfo,_that.customData,_that.meta,_that.contactInfo);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  EntityId ownerId,  String? address,  double? latitude,  double? longitude,  List<EntityId> equipmentIds,  Map<String, Object> siteInfo,  Map<String, Object>? customData,  Map<String, Object> meta,  Map<String, String> contactInfo)?  $default,) {final _that = this;
switch (_that) {
case _SiteData() when $default != null:
return $default(_that.name,_that.ownerId,_that.address,_that.latitude,_that.longitude,_that.equipmentIds,_that.siteInfo,_that.customData,_that.meta,_that.contactInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SiteData extends SiteData {
  const _SiteData({required this.name, required this.ownerId, this.address, this.latitude, this.longitude, final  List<EntityId> equipmentIds = const [], final  Map<String, Object> siteInfo = const {}, final  Map<String, Object>? customData, final  Map<String, Object> meta = const {}, final  Map<String, String> contactInfo = const {}}): _equipmentIds = equipmentIds,_siteInfo = siteInfo,_customData = customData,_meta = meta,_contactInfo = contactInfo,super._();
  factory _SiteData.fromJson(Map<String, dynamic> json) => _$SiteDataFromJson(json);

// Core info
@override final  String name;
@override final  EntityId ownerId;
// Location
@override final  String? address;
@override final  double? latitude;
@override final  double? longitude;
// Equipment
 final  List<EntityId> _equipmentIds;
// Equipment
@override@JsonKey() List<EntityId> get equipmentIds {
  if (_equipmentIds is EqualUnmodifiableListView) return _equipmentIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_equipmentIds);
}

// Details
 final  Map<String, Object> _siteInfo;
// Details
@override@JsonKey() Map<String, Object> get siteInfo {
  if (_siteInfo is EqualUnmodifiableMapView) return _siteInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_siteInfo);
}

// Metadata
 final  Map<String, Object>? _customData;
// Metadata
@override Map<String, Object>? get customData {
  final value = _customData;
  if (value == null) return null;
  if (_customData is EqualUnmodifiableMapView) return _customData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, Object> _meta;
@override@JsonKey() Map<String, Object> get meta {
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_meta);
}

 final  Map<String, String> _contactInfo;
@override@JsonKey() Map<String, String> get contactInfo {
  if (_contactInfo is EqualUnmodifiableMapView) return _contactInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_contactInfo);
}


/// Create a copy of SiteData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SiteDataCopyWith<_SiteData> get copyWith => __$SiteDataCopyWithImpl<_SiteData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SiteDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SiteData&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&const DeepCollectionEquality().equals(other._equipmentIds, _equipmentIds)&&const DeepCollectionEquality().equals(other._siteInfo, _siteInfo)&&const DeepCollectionEquality().equals(other._customData, _customData)&&const DeepCollectionEquality().equals(other._meta, _meta)&&const DeepCollectionEquality().equals(other._contactInfo, _contactInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,ownerId,address,latitude,longitude,const DeepCollectionEquality().hash(_equipmentIds),const DeepCollectionEquality().hash(_siteInfo),const DeepCollectionEquality().hash(_customData),const DeepCollectionEquality().hash(_meta),const DeepCollectionEquality().hash(_contactInfo));

@override
String toString() {
  return 'SiteData(name: $name, ownerId: $ownerId, address: $address, latitude: $latitude, longitude: $longitude, equipmentIds: $equipmentIds, siteInfo: $siteInfo, customData: $customData, meta: $meta, contactInfo: $contactInfo)';
}


}

/// @nodoc
abstract mixin class _$SiteDataCopyWith<$Res> implements $SiteDataCopyWith<$Res> {
  factory _$SiteDataCopyWith(_SiteData value, $Res Function(_SiteData) _then) = __$SiteDataCopyWithImpl;
@override @useResult
$Res call({
 String name, EntityId ownerId, String? address, double? latitude, double? longitude, List<EntityId> equipmentIds, Map<String, Object> siteInfo, Map<String, Object>? customData, Map<String, Object> meta, Map<String, String> contactInfo
});


@override $EntityIdCopyWith<$Res> get ownerId;

}
/// @nodoc
class __$SiteDataCopyWithImpl<$Res>
    implements _$SiteDataCopyWith<$Res> {
  __$SiteDataCopyWithImpl(this._self, this._then);

  final _SiteData _self;
  final $Res Function(_SiteData) _then;

/// Create a copy of SiteData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? ownerId = null,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? equipmentIds = null,Object? siteInfo = null,Object? customData = freezed,Object? meta = null,Object? contactInfo = null,}) {
  return _then(_SiteData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as EntityId,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,equipmentIds: null == equipmentIds ? _self._equipmentIds : equipmentIds // ignore: cast_nullable_to_non_nullable
as List<EntityId>,siteInfo: null == siteInfo ? _self._siteInfo : siteInfo // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,customData: freezed == customData ? _self._customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,meta: null == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,contactInfo: null == contactInfo ? _self._contactInfo : contactInfo // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

/// Create a copy of SiteData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get ownerId {
  
  return $EntityIdCopyWith<$Res>(_self.ownerId, (value) {
    return _then(_self.copyWith(ownerId: value));
  });
}
}


/// @nodoc
mixin _$EquipmentData {

// Core info
 String get name; EntityId get siteId; EquipmentType get type;// Technical info
 String? get serialNum; String? get modelId; String? get manufacturer;// Specs
 Map<String, Object> get specs;// Dates
 DateTime? get installDate; DateTime? get lastMaintDate;// Hierarchy
 EntityId? get parentId; List<EntityId> get childIds;// Metadata
 Map<String, Object>? get customData; Map<String, Object> get meta; Map<String, String> get maintContacts;
/// Create a copy of EquipmentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EquipmentDataCopyWith<EquipmentData> get copyWith => _$EquipmentDataCopyWithImpl<EquipmentData>(this as EquipmentData, _$identity);

  /// Serializes this EquipmentData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EquipmentData&&(identical(other.name, name) || other.name == name)&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.type, type) || other.type == type)&&(identical(other.serialNum, serialNum) || other.serialNum == serialNum)&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.manufacturer, manufacturer) || other.manufacturer == manufacturer)&&const DeepCollectionEquality().equals(other.specs, specs)&&(identical(other.installDate, installDate) || other.installDate == installDate)&&(identical(other.lastMaintDate, lastMaintDate) || other.lastMaintDate == lastMaintDate)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other.childIds, childIds)&&const DeepCollectionEquality().equals(other.customData, customData)&&const DeepCollectionEquality().equals(other.meta, meta)&&const DeepCollectionEquality().equals(other.maintContacts, maintContacts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,siteId,type,serialNum,modelId,manufacturer,const DeepCollectionEquality().hash(specs),installDate,lastMaintDate,parentId,const DeepCollectionEquality().hash(childIds),const DeepCollectionEquality().hash(customData),const DeepCollectionEquality().hash(meta),const DeepCollectionEquality().hash(maintContacts));

@override
String toString() {
  return 'EquipmentData(name: $name, siteId: $siteId, type: $type, serialNum: $serialNum, modelId: $modelId, manufacturer: $manufacturer, specs: $specs, installDate: $installDate, lastMaintDate: $lastMaintDate, parentId: $parentId, childIds: $childIds, customData: $customData, meta: $meta, maintContacts: $maintContacts)';
}


}

/// @nodoc
abstract mixin class $EquipmentDataCopyWith<$Res>  {
  factory $EquipmentDataCopyWith(EquipmentData value, $Res Function(EquipmentData) _then) = _$EquipmentDataCopyWithImpl;
@useResult
$Res call({
 String name, EntityId siteId, EquipmentType type, String? serialNum, String? modelId, String? manufacturer, Map<String, Object> specs, DateTime? installDate, DateTime? lastMaintDate, EntityId? parentId, List<EntityId> childIds, Map<String, Object>? customData, Map<String, Object> meta, Map<String, String> maintContacts
});


$EntityIdCopyWith<$Res> get siteId;$EntityIdCopyWith<$Res>? get parentId;

}
/// @nodoc
class _$EquipmentDataCopyWithImpl<$Res>
    implements $EquipmentDataCopyWith<$Res> {
  _$EquipmentDataCopyWithImpl(this._self, this._then);

  final EquipmentData _self;
  final $Res Function(EquipmentData) _then;

/// Create a copy of EquipmentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? siteId = null,Object? type = null,Object? serialNum = freezed,Object? modelId = freezed,Object? manufacturer = freezed,Object? specs = null,Object? installDate = freezed,Object? lastMaintDate = freezed,Object? parentId = freezed,Object? childIds = null,Object? customData = freezed,Object? meta = null,Object? maintContacts = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,siteId: null == siteId ? _self.siteId : siteId // ignore: cast_nullable_to_non_nullable
as EntityId,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as EquipmentType,serialNum: freezed == serialNum ? _self.serialNum : serialNum // ignore: cast_nullable_to_non_nullable
as String?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String?,manufacturer: freezed == manufacturer ? _self.manufacturer : manufacturer // ignore: cast_nullable_to_non_nullable
as String?,specs: null == specs ? _self.specs : specs // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,installDate: freezed == installDate ? _self.installDate : installDate // ignore: cast_nullable_to_non_nullable
as DateTime?,lastMaintDate: freezed == lastMaintDate ? _self.lastMaintDate : lastMaintDate // ignore: cast_nullable_to_non_nullable
as DateTime?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as EntityId?,childIds: null == childIds ? _self.childIds : childIds // ignore: cast_nullable_to_non_nullable
as List<EntityId>,customData: freezed == customData ? _self.customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,maintContacts: null == maintContacts ? _self.maintContacts : maintContacts // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}
/// Create a copy of EquipmentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get siteId {
  
  return $EntityIdCopyWith<$Res>(_self.siteId, (value) {
    return _then(_self.copyWith(siteId: value));
  });
}/// Create a copy of EquipmentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res>? get parentId {
    if (_self.parentId == null) {
    return null;
  }

  return $EntityIdCopyWith<$Res>(_self.parentId!, (value) {
    return _then(_self.copyWith(parentId: value));
  });
}
}


/// Adds pattern-matching-related methods to [EquipmentData].
extension EquipmentDataPatterns on EquipmentData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EquipmentData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EquipmentData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EquipmentData value)  $default,){
final _that = this;
switch (_that) {
case _EquipmentData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EquipmentData value)?  $default,){
final _that = this;
switch (_that) {
case _EquipmentData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  EntityId siteId,  EquipmentType type,  String? serialNum,  String? modelId,  String? manufacturer,  Map<String, Object> specs,  DateTime? installDate,  DateTime? lastMaintDate,  EntityId? parentId,  List<EntityId> childIds,  Map<String, Object>? customData,  Map<String, Object> meta,  Map<String, String> maintContacts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EquipmentData() when $default != null:
return $default(_that.name,_that.siteId,_that.type,_that.serialNum,_that.modelId,_that.manufacturer,_that.specs,_that.installDate,_that.lastMaintDate,_that.parentId,_that.childIds,_that.customData,_that.meta,_that.maintContacts);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  EntityId siteId,  EquipmentType type,  String? serialNum,  String? modelId,  String? manufacturer,  Map<String, Object> specs,  DateTime? installDate,  DateTime? lastMaintDate,  EntityId? parentId,  List<EntityId> childIds,  Map<String, Object>? customData,  Map<String, Object> meta,  Map<String, String> maintContacts)  $default,) {final _that = this;
switch (_that) {
case _EquipmentData():
return $default(_that.name,_that.siteId,_that.type,_that.serialNum,_that.modelId,_that.manufacturer,_that.specs,_that.installDate,_that.lastMaintDate,_that.parentId,_that.childIds,_that.customData,_that.meta,_that.maintContacts);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  EntityId siteId,  EquipmentType type,  String? serialNum,  String? modelId,  String? manufacturer,  Map<String, Object> specs,  DateTime? installDate,  DateTime? lastMaintDate,  EntityId? parentId,  List<EntityId> childIds,  Map<String, Object>? customData,  Map<String, Object> meta,  Map<String, String> maintContacts)?  $default,) {final _that = this;
switch (_that) {
case _EquipmentData() when $default != null:
return $default(_that.name,_that.siteId,_that.type,_that.serialNum,_that.modelId,_that.manufacturer,_that.specs,_that.installDate,_that.lastMaintDate,_that.parentId,_that.childIds,_that.customData,_that.meta,_that.maintContacts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EquipmentData extends EquipmentData {
  const _EquipmentData({required this.name, required this.siteId, required this.type, this.serialNum, this.modelId, this.manufacturer, final  Map<String, Object> specs = const {}, this.installDate, this.lastMaintDate, this.parentId, final  List<EntityId> childIds = const [], final  Map<String, Object>? customData, final  Map<String, Object> meta = const {}, final  Map<String, String> maintContacts = const {}}): _specs = specs,_childIds = childIds,_customData = customData,_meta = meta,_maintContacts = maintContacts,super._();
  factory _EquipmentData.fromJson(Map<String, dynamic> json) => _$EquipmentDataFromJson(json);

// Core info
@override final  String name;
@override final  EntityId siteId;
@override final  EquipmentType type;
// Technical info
@override final  String? serialNum;
@override final  String? modelId;
@override final  String? manufacturer;
// Specs
 final  Map<String, Object> _specs;
// Specs
@override@JsonKey() Map<String, Object> get specs {
  if (_specs is EqualUnmodifiableMapView) return _specs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_specs);
}

// Dates
@override final  DateTime? installDate;
@override final  DateTime? lastMaintDate;
// Hierarchy
@override final  EntityId? parentId;
 final  List<EntityId> _childIds;
@override@JsonKey() List<EntityId> get childIds {
  if (_childIds is EqualUnmodifiableListView) return _childIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_childIds);
}

// Metadata
 final  Map<String, Object>? _customData;
// Metadata
@override Map<String, Object>? get customData {
  final value = _customData;
  if (value == null) return null;
  if (_customData is EqualUnmodifiableMapView) return _customData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, Object> _meta;
@override@JsonKey() Map<String, Object> get meta {
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_meta);
}

 final  Map<String, String> _maintContacts;
@override@JsonKey() Map<String, String> get maintContacts {
  if (_maintContacts is EqualUnmodifiableMapView) return _maintContacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_maintContacts);
}


/// Create a copy of EquipmentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EquipmentDataCopyWith<_EquipmentData> get copyWith => __$EquipmentDataCopyWithImpl<_EquipmentData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EquipmentDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EquipmentData&&(identical(other.name, name) || other.name == name)&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.type, type) || other.type == type)&&(identical(other.serialNum, serialNum) || other.serialNum == serialNum)&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.manufacturer, manufacturer) || other.manufacturer == manufacturer)&&const DeepCollectionEquality().equals(other._specs, _specs)&&(identical(other.installDate, installDate) || other.installDate == installDate)&&(identical(other.lastMaintDate, lastMaintDate) || other.lastMaintDate == lastMaintDate)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other._childIds, _childIds)&&const DeepCollectionEquality().equals(other._customData, _customData)&&const DeepCollectionEquality().equals(other._meta, _meta)&&const DeepCollectionEquality().equals(other._maintContacts, _maintContacts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,siteId,type,serialNum,modelId,manufacturer,const DeepCollectionEquality().hash(_specs),installDate,lastMaintDate,parentId,const DeepCollectionEquality().hash(_childIds),const DeepCollectionEquality().hash(_customData),const DeepCollectionEquality().hash(_meta),const DeepCollectionEquality().hash(_maintContacts));

@override
String toString() {
  return 'EquipmentData(name: $name, siteId: $siteId, type: $type, serialNum: $serialNum, modelId: $modelId, manufacturer: $manufacturer, specs: $specs, installDate: $installDate, lastMaintDate: $lastMaintDate, parentId: $parentId, childIds: $childIds, customData: $customData, meta: $meta, maintContacts: $maintContacts)';
}


}

/// @nodoc
abstract mixin class _$EquipmentDataCopyWith<$Res> implements $EquipmentDataCopyWith<$Res> {
  factory _$EquipmentDataCopyWith(_EquipmentData value, $Res Function(_EquipmentData) _then) = __$EquipmentDataCopyWithImpl;
@override @useResult
$Res call({
 String name, EntityId siteId, EquipmentType type, String? serialNum, String? modelId, String? manufacturer, Map<String, Object> specs, DateTime? installDate, DateTime? lastMaintDate, EntityId? parentId, List<EntityId> childIds, Map<String, Object>? customData, Map<String, Object> meta, Map<String, String> maintContacts
});


@override $EntityIdCopyWith<$Res> get siteId;@override $EntityIdCopyWith<$Res>? get parentId;

}
/// @nodoc
class __$EquipmentDataCopyWithImpl<$Res>
    implements _$EquipmentDataCopyWith<$Res> {
  __$EquipmentDataCopyWithImpl(this._self, this._then);

  final _EquipmentData _self;
  final $Res Function(_EquipmentData) _then;

/// Create a copy of EquipmentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? siteId = null,Object? type = null,Object? serialNum = freezed,Object? modelId = freezed,Object? manufacturer = freezed,Object? specs = null,Object? installDate = freezed,Object? lastMaintDate = freezed,Object? parentId = freezed,Object? childIds = null,Object? customData = freezed,Object? meta = null,Object? maintContacts = null,}) {
  return _then(_EquipmentData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,siteId: null == siteId ? _self.siteId : siteId // ignore: cast_nullable_to_non_nullable
as EntityId,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as EquipmentType,serialNum: freezed == serialNum ? _self.serialNum : serialNum // ignore: cast_nullable_to_non_nullable
as String?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as String?,manufacturer: freezed == manufacturer ? _self.manufacturer : manufacturer // ignore: cast_nullable_to_non_nullable
as String?,specs: null == specs ? _self._specs : specs // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,installDate: freezed == installDate ? _self.installDate : installDate // ignore: cast_nullable_to_non_nullable
as DateTime?,lastMaintDate: freezed == lastMaintDate ? _self.lastMaintDate : lastMaintDate // ignore: cast_nullable_to_non_nullable
as DateTime?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as EntityId?,childIds: null == childIds ? _self._childIds : childIds // ignore: cast_nullable_to_non_nullable
as List<EntityId>,customData: freezed == customData ? _self._customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,meta: null == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,maintContacts: null == maintContacts ? _self._maintContacts : maintContacts // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

/// Create a copy of EquipmentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get siteId {
  
  return $EntityIdCopyWith<$Res>(_self.siteId, (value) {
    return _then(_self.copyWith(siteId: value));
  });
}/// Create a copy of EquipmentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res>? get parentId {
    if (_self.parentId == null) {
    return null;
  }

  return $EntityIdCopyWith<$Res>(_self.parentId!, (value) {
    return _then(_self.copyWith(parentId: value));
  });
}
}


/// @nodoc
mixin _$VendorData {

// Core info
 ContactInfo get contact; List<EntityId> get staffIds; List<String> get services;// Metadata
 Map<String, Object> get meta; Map<String, Object>? get customData; Map<String, Object> get certifications;
/// Create a copy of VendorData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorDataCopyWith<VendorData> get copyWith => _$VendorDataCopyWithImpl<VendorData>(this as VendorData, _$identity);

  /// Serializes this VendorData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorData&&(identical(other.contact, contact) || other.contact == contact)&&const DeepCollectionEquality().equals(other.staffIds, staffIds)&&const DeepCollectionEquality().equals(other.services, services)&&const DeepCollectionEquality().equals(other.meta, meta)&&const DeepCollectionEquality().equals(other.customData, customData)&&const DeepCollectionEquality().equals(other.certifications, certifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contact,const DeepCollectionEquality().hash(staffIds),const DeepCollectionEquality().hash(services),const DeepCollectionEquality().hash(meta),const DeepCollectionEquality().hash(customData),const DeepCollectionEquality().hash(certifications));

@override
String toString() {
  return 'VendorData(contact: $contact, staffIds: $staffIds, services: $services, meta: $meta, customData: $customData, certifications: $certifications)';
}


}

/// @nodoc
abstract mixin class $VendorDataCopyWith<$Res>  {
  factory $VendorDataCopyWith(VendorData value, $Res Function(VendorData) _then) = _$VendorDataCopyWithImpl;
@useResult
$Res call({
 ContactInfo contact, List<EntityId> staffIds, List<String> services, Map<String, Object> meta, Map<String, Object>? customData, Map<String, Object> certifications
});


$ContactInfoCopyWith<$Res> get contact;

}
/// @nodoc
class _$VendorDataCopyWithImpl<$Res>
    implements $VendorDataCopyWith<$Res> {
  _$VendorDataCopyWithImpl(this._self, this._then);

  final VendorData _self;
  final $Res Function(VendorData) _then;

/// Create a copy of VendorData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contact = null,Object? staffIds = null,Object? services = null,Object? meta = null,Object? customData = freezed,Object? certifications = null,}) {
  return _then(_self.copyWith(
contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as ContactInfo,staffIds: null == staffIds ? _self.staffIds : staffIds // ignore: cast_nullable_to_non_nullable
as List<EntityId>,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<String>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,customData: freezed == customData ? _self.customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,certifications: null == certifications ? _self.certifications : certifications // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,
  ));
}
/// Create a copy of VendorData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactInfoCopyWith<$Res> get contact {
  
  return $ContactInfoCopyWith<$Res>(_self.contact, (value) {
    return _then(_self.copyWith(contact: value));
  });
}
}


/// Adds pattern-matching-related methods to [VendorData].
extension VendorDataPatterns on VendorData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorData value)  $default,){
final _that = this;
switch (_that) {
case _VendorData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorData value)?  $default,){
final _that = this;
switch (_that) {
case _VendorData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ContactInfo contact,  List<EntityId> staffIds,  List<String> services,  Map<String, Object> meta,  Map<String, Object>? customData,  Map<String, Object> certifications)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorData() when $default != null:
return $default(_that.contact,_that.staffIds,_that.services,_that.meta,_that.customData,_that.certifications);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ContactInfo contact,  List<EntityId> staffIds,  List<String> services,  Map<String, Object> meta,  Map<String, Object>? customData,  Map<String, Object> certifications)  $default,) {final _that = this;
switch (_that) {
case _VendorData():
return $default(_that.contact,_that.staffIds,_that.services,_that.meta,_that.customData,_that.certifications);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ContactInfo contact,  List<EntityId> staffIds,  List<String> services,  Map<String, Object> meta,  Map<String, Object>? customData,  Map<String, Object> certifications)?  $default,) {final _that = this;
switch (_that) {
case _VendorData() when $default != null:
return $default(_that.contact,_that.staffIds,_that.services,_that.meta,_that.customData,_that.certifications);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorData extends VendorData {
  const _VendorData({required this.contact, final  List<EntityId> staffIds = const [], final  List<String> services = const [], final  Map<String, Object> meta = const {}, final  Map<String, Object>? customData, final  Map<String, Object> certifications = const {}}): _staffIds = staffIds,_services = services,_meta = meta,_customData = customData,_certifications = certifications,super._();
  factory _VendorData.fromJson(Map<String, dynamic> json) => _$VendorDataFromJson(json);

// Core info
@override final  ContactInfo contact;
 final  List<EntityId> _staffIds;
@override@JsonKey() List<EntityId> get staffIds {
  if (_staffIds is EqualUnmodifiableListView) return _staffIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_staffIds);
}

 final  List<String> _services;
@override@JsonKey() List<String> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}

// Metadata
 final  Map<String, Object> _meta;
// Metadata
@override@JsonKey() Map<String, Object> get meta {
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_meta);
}

 final  Map<String, Object>? _customData;
@override Map<String, Object>? get customData {
  final value = _customData;
  if (value == null) return null;
  if (_customData is EqualUnmodifiableMapView) return _customData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, Object> _certifications;
@override@JsonKey() Map<String, Object> get certifications {
  if (_certifications is EqualUnmodifiableMapView) return _certifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_certifications);
}


/// Create a copy of VendorData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorDataCopyWith<_VendorData> get copyWith => __$VendorDataCopyWithImpl<_VendorData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorData&&(identical(other.contact, contact) || other.contact == contact)&&const DeepCollectionEquality().equals(other._staffIds, _staffIds)&&const DeepCollectionEquality().equals(other._services, _services)&&const DeepCollectionEquality().equals(other._meta, _meta)&&const DeepCollectionEquality().equals(other._customData, _customData)&&const DeepCollectionEquality().equals(other._certifications, _certifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contact,const DeepCollectionEquality().hash(_staffIds),const DeepCollectionEquality().hash(_services),const DeepCollectionEquality().hash(_meta),const DeepCollectionEquality().hash(_customData),const DeepCollectionEquality().hash(_certifications));

@override
String toString() {
  return 'VendorData(contact: $contact, staffIds: $staffIds, services: $services, meta: $meta, customData: $customData, certifications: $certifications)';
}


}

/// @nodoc
abstract mixin class _$VendorDataCopyWith<$Res> implements $VendorDataCopyWith<$Res> {
  factory _$VendorDataCopyWith(_VendorData value, $Res Function(_VendorData) _then) = __$VendorDataCopyWithImpl;
@override @useResult
$Res call({
 ContactInfo contact, List<EntityId> staffIds, List<String> services, Map<String, Object> meta, Map<String, Object>? customData, Map<String, Object> certifications
});


@override $ContactInfoCopyWith<$Res> get contact;

}
/// @nodoc
class __$VendorDataCopyWithImpl<$Res>
    implements _$VendorDataCopyWith<$Res> {
  __$VendorDataCopyWithImpl(this._self, this._then);

  final _VendorData _self;
  final $Res Function(_VendorData) _then;

/// Create a copy of VendorData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contact = null,Object? staffIds = null,Object? services = null,Object? meta = null,Object? customData = freezed,Object? certifications = null,}) {
  return _then(_VendorData(
contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as ContactInfo,staffIds: null == staffIds ? _self._staffIds : staffIds // ignore: cast_nullable_to_non_nullable
as List<EntityId>,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<String>,meta: null == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,customData: freezed == customData ? _self._customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,certifications: null == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,
  ));
}

/// Create a copy of VendorData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactInfoCopyWith<$Res> get contact {
  
  return $ContactInfoCopyWith<$Res>(_self.contact, (value) {
    return _then(_self.copyWith(contact: value));
  });
}
}


/// @nodoc
mixin _$PersonnelData {

// Core info
 String get name; EntityId get vendorId; int get skillLevel;// Professional info
 String? get role; List<String> get certs; List<String> get specs;// Contact info
 String? get phone; String? get email;// Metadata
 Map<String, Object>? get customData; Map<String, Object> get meta; Map<String, Object> get schedule; Map<String, DateTime> get certDates;
/// Create a copy of PersonnelData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonnelDataCopyWith<PersonnelData> get copyWith => _$PersonnelDataCopyWithImpl<PersonnelData>(this as PersonnelData, _$identity);

  /// Serializes this PersonnelData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonnelData&&(identical(other.name, name) || other.name == name)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.skillLevel, skillLevel) || other.skillLevel == skillLevel)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.certs, certs)&&const DeepCollectionEquality().equals(other.specs, specs)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.customData, customData)&&const DeepCollectionEquality().equals(other.meta, meta)&&const DeepCollectionEquality().equals(other.schedule, schedule)&&const DeepCollectionEquality().equals(other.certDates, certDates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,vendorId,skillLevel,role,const DeepCollectionEquality().hash(certs),const DeepCollectionEquality().hash(specs),phone,email,const DeepCollectionEquality().hash(customData),const DeepCollectionEquality().hash(meta),const DeepCollectionEquality().hash(schedule),const DeepCollectionEquality().hash(certDates));

@override
String toString() {
  return 'PersonnelData(name: $name, vendorId: $vendorId, skillLevel: $skillLevel, role: $role, certs: $certs, specs: $specs, phone: $phone, email: $email, customData: $customData, meta: $meta, schedule: $schedule, certDates: $certDates)';
}


}

/// @nodoc
abstract mixin class $PersonnelDataCopyWith<$Res>  {
  factory $PersonnelDataCopyWith(PersonnelData value, $Res Function(PersonnelData) _then) = _$PersonnelDataCopyWithImpl;
@useResult
$Res call({
 String name, EntityId vendorId, int skillLevel, String? role, List<String> certs, List<String> specs, String? phone, String? email, Map<String, Object>? customData, Map<String, Object> meta, Map<String, Object> schedule, Map<String, DateTime> certDates
});


$EntityIdCopyWith<$Res> get vendorId;

}
/// @nodoc
class _$PersonnelDataCopyWithImpl<$Res>
    implements $PersonnelDataCopyWith<$Res> {
  _$PersonnelDataCopyWithImpl(this._self, this._then);

  final PersonnelData _self;
  final $Res Function(PersonnelData) _then;

/// Create a copy of PersonnelData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? vendorId = null,Object? skillLevel = null,Object? role = freezed,Object? certs = null,Object? specs = null,Object? phone = freezed,Object? email = freezed,Object? customData = freezed,Object? meta = null,Object? schedule = null,Object? certDates = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as EntityId,skillLevel: null == skillLevel ? _self.skillLevel : skillLevel // ignore: cast_nullable_to_non_nullable
as int,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,certs: null == certs ? _self.certs : certs // ignore: cast_nullable_to_non_nullable
as List<String>,specs: null == specs ? _self.specs : specs // ignore: cast_nullable_to_non_nullable
as List<String>,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,customData: freezed == customData ? _self.customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,schedule: null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,certDates: null == certDates ? _self.certDates : certDates // ignore: cast_nullable_to_non_nullable
as Map<String, DateTime>,
  ));
}
/// Create a copy of PersonnelData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get vendorId {
  
  return $EntityIdCopyWith<$Res>(_self.vendorId, (value) {
    return _then(_self.copyWith(vendorId: value));
  });
}
}


/// Adds pattern-matching-related methods to [PersonnelData].
extension PersonnelDataPatterns on PersonnelData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonnelData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonnelData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonnelData value)  $default,){
final _that = this;
switch (_that) {
case _PersonnelData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonnelData value)?  $default,){
final _that = this;
switch (_that) {
case _PersonnelData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  EntityId vendorId,  int skillLevel,  String? role,  List<String> certs,  List<String> specs,  String? phone,  String? email,  Map<String, Object>? customData,  Map<String, Object> meta,  Map<String, Object> schedule,  Map<String, DateTime> certDates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonnelData() when $default != null:
return $default(_that.name,_that.vendorId,_that.skillLevel,_that.role,_that.certs,_that.specs,_that.phone,_that.email,_that.customData,_that.meta,_that.schedule,_that.certDates);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  EntityId vendorId,  int skillLevel,  String? role,  List<String> certs,  List<String> specs,  String? phone,  String? email,  Map<String, Object>? customData,  Map<String, Object> meta,  Map<String, Object> schedule,  Map<String, DateTime> certDates)  $default,) {final _that = this;
switch (_that) {
case _PersonnelData():
return $default(_that.name,_that.vendorId,_that.skillLevel,_that.role,_that.certs,_that.specs,_that.phone,_that.email,_that.customData,_that.meta,_that.schedule,_that.certDates);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  EntityId vendorId,  int skillLevel,  String? role,  List<String> certs,  List<String> specs,  String? phone,  String? email,  Map<String, Object>? customData,  Map<String, Object> meta,  Map<String, Object> schedule,  Map<String, DateTime> certDates)?  $default,) {final _that = this;
switch (_that) {
case _PersonnelData() when $default != null:
return $default(_that.name,_that.vendorId,_that.skillLevel,_that.role,_that.certs,_that.specs,_that.phone,_that.email,_that.customData,_that.meta,_that.schedule,_that.certDates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonnelData extends PersonnelData {
  const _PersonnelData({required this.name, required this.vendorId, required this.skillLevel, this.role, final  List<String> certs = const [], final  List<String> specs = const [], this.phone, this.email, final  Map<String, Object>? customData, final  Map<String, Object> meta = const {}, final  Map<String, Object> schedule = const {}, final  Map<String, DateTime> certDates = const {}}): _certs = certs,_specs = specs,_customData = customData,_meta = meta,_schedule = schedule,_certDates = certDates,super._();
  factory _PersonnelData.fromJson(Map<String, dynamic> json) => _$PersonnelDataFromJson(json);

// Core info
@override final  String name;
@override final  EntityId vendorId;
@override final  int skillLevel;
// Professional info
@override final  String? role;
 final  List<String> _certs;
@override@JsonKey() List<String> get certs {
  if (_certs is EqualUnmodifiableListView) return _certs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_certs);
}

 final  List<String> _specs;
@override@JsonKey() List<String> get specs {
  if (_specs is EqualUnmodifiableListView) return _specs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specs);
}

// Contact info
@override final  String? phone;
@override final  String? email;
// Metadata
 final  Map<String, Object>? _customData;
// Metadata
@override Map<String, Object>? get customData {
  final value = _customData;
  if (value == null) return null;
  if (_customData is EqualUnmodifiableMapView) return _customData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, Object> _meta;
@override@JsonKey() Map<String, Object> get meta {
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_meta);
}

 final  Map<String, Object> _schedule;
@override@JsonKey() Map<String, Object> get schedule {
  if (_schedule is EqualUnmodifiableMapView) return _schedule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_schedule);
}

 final  Map<String, DateTime> _certDates;
@override@JsonKey() Map<String, DateTime> get certDates {
  if (_certDates is EqualUnmodifiableMapView) return _certDates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_certDates);
}


/// Create a copy of PersonnelData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonnelDataCopyWith<_PersonnelData> get copyWith => __$PersonnelDataCopyWithImpl<_PersonnelData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonnelDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonnelData&&(identical(other.name, name) || other.name == name)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.skillLevel, skillLevel) || other.skillLevel == skillLevel)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other._certs, _certs)&&const DeepCollectionEquality().equals(other._specs, _specs)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other._customData, _customData)&&const DeepCollectionEquality().equals(other._meta, _meta)&&const DeepCollectionEquality().equals(other._schedule, _schedule)&&const DeepCollectionEquality().equals(other._certDates, _certDates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,vendorId,skillLevel,role,const DeepCollectionEquality().hash(_certs),const DeepCollectionEquality().hash(_specs),phone,email,const DeepCollectionEquality().hash(_customData),const DeepCollectionEquality().hash(_meta),const DeepCollectionEquality().hash(_schedule),const DeepCollectionEquality().hash(_certDates));

@override
String toString() {
  return 'PersonnelData(name: $name, vendorId: $vendorId, skillLevel: $skillLevel, role: $role, certs: $certs, specs: $specs, phone: $phone, email: $email, customData: $customData, meta: $meta, schedule: $schedule, certDates: $certDates)';
}


}

/// @nodoc
abstract mixin class _$PersonnelDataCopyWith<$Res> implements $PersonnelDataCopyWith<$Res> {
  factory _$PersonnelDataCopyWith(_PersonnelData value, $Res Function(_PersonnelData) _then) = __$PersonnelDataCopyWithImpl;
@override @useResult
$Res call({
 String name, EntityId vendorId, int skillLevel, String? role, List<String> certs, List<String> specs, String? phone, String? email, Map<String, Object>? customData, Map<String, Object> meta, Map<String, Object> schedule, Map<String, DateTime> certDates
});


@override $EntityIdCopyWith<$Res> get vendorId;

}
/// @nodoc
class __$PersonnelDataCopyWithImpl<$Res>
    implements _$PersonnelDataCopyWith<$Res> {
  __$PersonnelDataCopyWithImpl(this._self, this._then);

  final _PersonnelData _self;
  final $Res Function(_PersonnelData) _then;

/// Create a copy of PersonnelData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? vendorId = null,Object? skillLevel = null,Object? role = freezed,Object? certs = null,Object? specs = null,Object? phone = freezed,Object? email = freezed,Object? customData = freezed,Object? meta = null,Object? schedule = null,Object? certDates = null,}) {
  return _then(_PersonnelData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,vendorId: null == vendorId ? _self.vendorId : vendorId // ignore: cast_nullable_to_non_nullable
as EntityId,skillLevel: null == skillLevel ? _self.skillLevel : skillLevel // ignore: cast_nullable_to_non_nullable
as int,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,certs: null == certs ? _self._certs : certs // ignore: cast_nullable_to_non_nullable
as List<String>,specs: null == specs ? _self._specs : specs // ignore: cast_nullable_to_non_nullable
as List<String>,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,customData: freezed == customData ? _self._customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,meta: null == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,schedule: null == schedule ? _self._schedule : schedule // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,certDates: null == certDates ? _self._certDates : certDates // ignore: cast_nullable_to_non_nullable
as Map<String, DateTime>,
  ));
}

/// Create a copy of PersonnelData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get vendorId {
  
  return $EntityIdCopyWith<$Res>(_self.vendorId, (value) {
    return _then(_self.copyWith(vendorId: value));
  });
}
}

// dart format on
