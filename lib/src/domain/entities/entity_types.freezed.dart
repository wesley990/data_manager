// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OwnerModel {

// Core info
 ContactInfo get contact; List<EntityId> get siteIds;// Metadata
 Map<String, Object> get meta; Map<String, Object>? get customData;
/// Create a copy of OwnerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnerModelCopyWith<OwnerModel> get copyWith => _$OwnerModelCopyWithImpl<OwnerModel>(this as OwnerModel, _$identity);

  /// Serializes this OwnerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OwnerModel&&(identical(other.contact, contact) || other.contact == contact)&&const DeepCollectionEquality().equals(other.siteIds, siteIds)&&const DeepCollectionEquality().equals(other.meta, meta)&&const DeepCollectionEquality().equals(other.customData, customData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contact,const DeepCollectionEquality().hash(siteIds),const DeepCollectionEquality().hash(meta),const DeepCollectionEquality().hash(customData));

@override
String toString() {
  return 'OwnerModel(contact: $contact, siteIds: $siteIds, meta: $meta, customData: $customData)';
}


}

/// @nodoc
abstract mixin class $OwnerModelCopyWith<$Res>  {
  factory $OwnerModelCopyWith(OwnerModel value, $Res Function(OwnerModel) _then) = _$OwnerModelCopyWithImpl;
@useResult
$Res call({
 ContactInfo contact, List<EntityId> siteIds, Map<String, Object> meta, Map<String, Object>? customData
});


$ContactInfoCopyWith<$Res> get contact;

}
/// @nodoc
class _$OwnerModelCopyWithImpl<$Res>
    implements $OwnerModelCopyWith<$Res> {
  _$OwnerModelCopyWithImpl(this._self, this._then);

  final OwnerModel _self;
  final $Res Function(OwnerModel) _then;

/// Create a copy of OwnerModel
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
/// Create a copy of OwnerModel
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
@JsonSerializable()

class _OwnerModel extends OwnerModel {
  const _OwnerModel({required this.contact, final  List<EntityId> siteIds = const [], final  Map<String, Object> meta = const {}, final  Map<String, Object>? customData}): _siteIds = siteIds,_meta = meta,_customData = customData,super._();
  factory _OwnerModel.fromJson(Map<String, dynamic> json) => _$OwnerModelFromJson(json);

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


/// Create a copy of OwnerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OwnerModelCopyWith<_OwnerModel> get copyWith => __$OwnerModelCopyWithImpl<_OwnerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OwnerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OwnerModel&&(identical(other.contact, contact) || other.contact == contact)&&const DeepCollectionEquality().equals(other._siteIds, _siteIds)&&const DeepCollectionEquality().equals(other._meta, _meta)&&const DeepCollectionEquality().equals(other._customData, _customData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contact,const DeepCollectionEquality().hash(_siteIds),const DeepCollectionEquality().hash(_meta),const DeepCollectionEquality().hash(_customData));

@override
String toString() {
  return 'OwnerModel(contact: $contact, siteIds: $siteIds, meta: $meta, customData: $customData)';
}


}

/// @nodoc
abstract mixin class _$OwnerModelCopyWith<$Res> implements $OwnerModelCopyWith<$Res> {
  factory _$OwnerModelCopyWith(_OwnerModel value, $Res Function(_OwnerModel) _then) = __$OwnerModelCopyWithImpl;
@override @useResult
$Res call({
 ContactInfo contact, List<EntityId> siteIds, Map<String, Object> meta, Map<String, Object>? customData
});


@override $ContactInfoCopyWith<$Res> get contact;

}
/// @nodoc
class __$OwnerModelCopyWithImpl<$Res>
    implements _$OwnerModelCopyWith<$Res> {
  __$OwnerModelCopyWithImpl(this._self, this._then);

  final _OwnerModel _self;
  final $Res Function(_OwnerModel) _then;

/// Create a copy of OwnerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contact = null,Object? siteIds = null,Object? meta = null,Object? customData = freezed,}) {
  return _then(_OwnerModel(
contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as ContactInfo,siteIds: null == siteIds ? _self._siteIds : siteIds // ignore: cast_nullable_to_non_nullable
as List<EntityId>,meta: null == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,customData: freezed == customData ? _self._customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,
  ));
}

/// Create a copy of OwnerModel
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
mixin _$SiteModel {

// Core info
 String get name; EntityId get ownerId;// Location
 String? get address; double? get latitude; double? get longitude;// Equipment
 List<EntityId> get equipmentIds;// Details
 Map<String, Object> get siteInfo;// Metadata
 Map<String, Object>? get customData; Map<String, Object> get meta; Map<String, String> get contactInfo;
/// Create a copy of SiteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SiteModelCopyWith<SiteModel> get copyWith => _$SiteModelCopyWithImpl<SiteModel>(this as SiteModel, _$identity);

  /// Serializes this SiteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiteModel&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&const DeepCollectionEquality().equals(other.equipmentIds, equipmentIds)&&const DeepCollectionEquality().equals(other.siteInfo, siteInfo)&&const DeepCollectionEquality().equals(other.customData, customData)&&const DeepCollectionEquality().equals(other.meta, meta)&&const DeepCollectionEquality().equals(other.contactInfo, contactInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,ownerId,address,latitude,longitude,const DeepCollectionEquality().hash(equipmentIds),const DeepCollectionEquality().hash(siteInfo),const DeepCollectionEquality().hash(customData),const DeepCollectionEquality().hash(meta),const DeepCollectionEquality().hash(contactInfo));

@override
String toString() {
  return 'SiteModel(name: $name, ownerId: $ownerId, address: $address, latitude: $latitude, longitude: $longitude, equipmentIds: $equipmentIds, siteInfo: $siteInfo, customData: $customData, meta: $meta, contactInfo: $contactInfo)';
}


}

/// @nodoc
abstract mixin class $SiteModelCopyWith<$Res>  {
  factory $SiteModelCopyWith(SiteModel value, $Res Function(SiteModel) _then) = _$SiteModelCopyWithImpl;
@useResult
$Res call({
 String name, EntityId ownerId, String? address, double? latitude, double? longitude, List<EntityId> equipmentIds, Map<String, Object> siteInfo, Map<String, Object>? customData, Map<String, Object> meta, Map<String, String> contactInfo
});


$EntityIdCopyWith<$Res> get ownerId;

}
/// @nodoc
class _$SiteModelCopyWithImpl<$Res>
    implements $SiteModelCopyWith<$Res> {
  _$SiteModelCopyWithImpl(this._self, this._then);

  final SiteModel _self;
  final $Res Function(SiteModel) _then;

/// Create a copy of SiteModel
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
/// Create a copy of SiteModel
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
@JsonSerializable()

class _SiteModel extends SiteModel {
  const _SiteModel({required this.name, required this.ownerId, this.address, this.latitude, this.longitude, final  List<EntityId> equipmentIds = const [], final  Map<String, Object> siteInfo = const {}, final  Map<String, Object>? customData, final  Map<String, Object> meta = const {}, final  Map<String, String> contactInfo = const {}}): _equipmentIds = equipmentIds,_siteInfo = siteInfo,_customData = customData,_meta = meta,_contactInfo = contactInfo,super._();
  factory _SiteModel.fromJson(Map<String, dynamic> json) => _$SiteModelFromJson(json);

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


/// Create a copy of SiteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SiteModelCopyWith<_SiteModel> get copyWith => __$SiteModelCopyWithImpl<_SiteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SiteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SiteModel&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&const DeepCollectionEquality().equals(other._equipmentIds, _equipmentIds)&&const DeepCollectionEquality().equals(other._siteInfo, _siteInfo)&&const DeepCollectionEquality().equals(other._customData, _customData)&&const DeepCollectionEquality().equals(other._meta, _meta)&&const DeepCollectionEquality().equals(other._contactInfo, _contactInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,ownerId,address,latitude,longitude,const DeepCollectionEquality().hash(_equipmentIds),const DeepCollectionEquality().hash(_siteInfo),const DeepCollectionEquality().hash(_customData),const DeepCollectionEquality().hash(_meta),const DeepCollectionEquality().hash(_contactInfo));

@override
String toString() {
  return 'SiteModel(name: $name, ownerId: $ownerId, address: $address, latitude: $latitude, longitude: $longitude, equipmentIds: $equipmentIds, siteInfo: $siteInfo, customData: $customData, meta: $meta, contactInfo: $contactInfo)';
}


}

/// @nodoc
abstract mixin class _$SiteModelCopyWith<$Res> implements $SiteModelCopyWith<$Res> {
  factory _$SiteModelCopyWith(_SiteModel value, $Res Function(_SiteModel) _then) = __$SiteModelCopyWithImpl;
@override @useResult
$Res call({
 String name, EntityId ownerId, String? address, double? latitude, double? longitude, List<EntityId> equipmentIds, Map<String, Object> siteInfo, Map<String, Object>? customData, Map<String, Object> meta, Map<String, String> contactInfo
});


@override $EntityIdCopyWith<$Res> get ownerId;

}
/// @nodoc
class __$SiteModelCopyWithImpl<$Res>
    implements _$SiteModelCopyWith<$Res> {
  __$SiteModelCopyWithImpl(this._self, this._then);

  final _SiteModel _self;
  final $Res Function(_SiteModel) _then;

/// Create a copy of SiteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? ownerId = null,Object? address = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? equipmentIds = null,Object? siteInfo = null,Object? customData = freezed,Object? meta = null,Object? contactInfo = null,}) {
  return _then(_SiteModel(
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

/// Create a copy of SiteModel
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
mixin _$EquipmentModel {

// Core info
 String get name; EntityId get siteId; EquipmentType get type;// Technical info
 String? get serialNum; String? get modelId; String? get manufacturer;// Specs
 Map<String, Object> get specs;// Dates
 DateTime? get installDate; DateTime? get lastMaintDate;// Hierarchy
 EntityId? get parentId; List<EntityId> get childIds;// Metadata
 Map<String, Object>? get customData; Map<String, Object> get meta; Map<String, String> get maintContacts;
/// Create a copy of EquipmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EquipmentModelCopyWith<EquipmentModel> get copyWith => _$EquipmentModelCopyWithImpl<EquipmentModel>(this as EquipmentModel, _$identity);

  /// Serializes this EquipmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EquipmentModel&&(identical(other.name, name) || other.name == name)&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.type, type) || other.type == type)&&(identical(other.serialNum, serialNum) || other.serialNum == serialNum)&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.manufacturer, manufacturer) || other.manufacturer == manufacturer)&&const DeepCollectionEquality().equals(other.specs, specs)&&(identical(other.installDate, installDate) || other.installDate == installDate)&&(identical(other.lastMaintDate, lastMaintDate) || other.lastMaintDate == lastMaintDate)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other.childIds, childIds)&&const DeepCollectionEquality().equals(other.customData, customData)&&const DeepCollectionEquality().equals(other.meta, meta)&&const DeepCollectionEquality().equals(other.maintContacts, maintContacts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,siteId,type,serialNum,modelId,manufacturer,const DeepCollectionEquality().hash(specs),installDate,lastMaintDate,parentId,const DeepCollectionEquality().hash(childIds),const DeepCollectionEquality().hash(customData),const DeepCollectionEquality().hash(meta),const DeepCollectionEquality().hash(maintContacts));

@override
String toString() {
  return 'EquipmentModel(name: $name, siteId: $siteId, type: $type, serialNum: $serialNum, modelId: $modelId, manufacturer: $manufacturer, specs: $specs, installDate: $installDate, lastMaintDate: $lastMaintDate, parentId: $parentId, childIds: $childIds, customData: $customData, meta: $meta, maintContacts: $maintContacts)';
}


}

/// @nodoc
abstract mixin class $EquipmentModelCopyWith<$Res>  {
  factory $EquipmentModelCopyWith(EquipmentModel value, $Res Function(EquipmentModel) _then) = _$EquipmentModelCopyWithImpl;
@useResult
$Res call({
 String name, EntityId siteId, EquipmentType type, String? serialNum, String? modelId, String? manufacturer, Map<String, Object> specs, DateTime? installDate, DateTime? lastMaintDate, EntityId? parentId, List<EntityId> childIds, Map<String, Object>? customData, Map<String, Object> meta, Map<String, String> maintContacts
});


$EntityIdCopyWith<$Res> get siteId;$EntityIdCopyWith<$Res>? get parentId;

}
/// @nodoc
class _$EquipmentModelCopyWithImpl<$Res>
    implements $EquipmentModelCopyWith<$Res> {
  _$EquipmentModelCopyWithImpl(this._self, this._then);

  final EquipmentModel _self;
  final $Res Function(EquipmentModel) _then;

/// Create a copy of EquipmentModel
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
/// Create a copy of EquipmentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get siteId {
  
  return $EntityIdCopyWith<$Res>(_self.siteId, (value) {
    return _then(_self.copyWith(siteId: value));
  });
}/// Create a copy of EquipmentModel
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
@JsonSerializable()

class _EquipmentModel extends EquipmentModel {
  const _EquipmentModel({required this.name, required this.siteId, required this.type, this.serialNum, this.modelId, this.manufacturer, final  Map<String, Object> specs = const {}, this.installDate, this.lastMaintDate, this.parentId, final  List<EntityId> childIds = const [], final  Map<String, Object>? customData, final  Map<String, Object> meta = const {}, final  Map<String, String> maintContacts = const {}}): _specs = specs,_childIds = childIds,_customData = customData,_meta = meta,_maintContacts = maintContacts,super._();
  factory _EquipmentModel.fromJson(Map<String, dynamic> json) => _$EquipmentModelFromJson(json);

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


/// Create a copy of EquipmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EquipmentModelCopyWith<_EquipmentModel> get copyWith => __$EquipmentModelCopyWithImpl<_EquipmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EquipmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EquipmentModel&&(identical(other.name, name) || other.name == name)&&(identical(other.siteId, siteId) || other.siteId == siteId)&&(identical(other.type, type) || other.type == type)&&(identical(other.serialNum, serialNum) || other.serialNum == serialNum)&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.manufacturer, manufacturer) || other.manufacturer == manufacturer)&&const DeepCollectionEquality().equals(other._specs, _specs)&&(identical(other.installDate, installDate) || other.installDate == installDate)&&(identical(other.lastMaintDate, lastMaintDate) || other.lastMaintDate == lastMaintDate)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other._childIds, _childIds)&&const DeepCollectionEquality().equals(other._customData, _customData)&&const DeepCollectionEquality().equals(other._meta, _meta)&&const DeepCollectionEquality().equals(other._maintContacts, _maintContacts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,siteId,type,serialNum,modelId,manufacturer,const DeepCollectionEquality().hash(_specs),installDate,lastMaintDate,parentId,const DeepCollectionEquality().hash(_childIds),const DeepCollectionEquality().hash(_customData),const DeepCollectionEquality().hash(_meta),const DeepCollectionEquality().hash(_maintContacts));

@override
String toString() {
  return 'EquipmentModel(name: $name, siteId: $siteId, type: $type, serialNum: $serialNum, modelId: $modelId, manufacturer: $manufacturer, specs: $specs, installDate: $installDate, lastMaintDate: $lastMaintDate, parentId: $parentId, childIds: $childIds, customData: $customData, meta: $meta, maintContacts: $maintContacts)';
}


}

/// @nodoc
abstract mixin class _$EquipmentModelCopyWith<$Res> implements $EquipmentModelCopyWith<$Res> {
  factory _$EquipmentModelCopyWith(_EquipmentModel value, $Res Function(_EquipmentModel) _then) = __$EquipmentModelCopyWithImpl;
@override @useResult
$Res call({
 String name, EntityId siteId, EquipmentType type, String? serialNum, String? modelId, String? manufacturer, Map<String, Object> specs, DateTime? installDate, DateTime? lastMaintDate, EntityId? parentId, List<EntityId> childIds, Map<String, Object>? customData, Map<String, Object> meta, Map<String, String> maintContacts
});


@override $EntityIdCopyWith<$Res> get siteId;@override $EntityIdCopyWith<$Res>? get parentId;

}
/// @nodoc
class __$EquipmentModelCopyWithImpl<$Res>
    implements _$EquipmentModelCopyWith<$Res> {
  __$EquipmentModelCopyWithImpl(this._self, this._then);

  final _EquipmentModel _self;
  final $Res Function(_EquipmentModel) _then;

/// Create a copy of EquipmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? siteId = null,Object? type = null,Object? serialNum = freezed,Object? modelId = freezed,Object? manufacturer = freezed,Object? specs = null,Object? installDate = freezed,Object? lastMaintDate = freezed,Object? parentId = freezed,Object? childIds = null,Object? customData = freezed,Object? meta = null,Object? maintContacts = null,}) {
  return _then(_EquipmentModel(
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

/// Create a copy of EquipmentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get siteId {
  
  return $EntityIdCopyWith<$Res>(_self.siteId, (value) {
    return _then(_self.copyWith(siteId: value));
  });
}/// Create a copy of EquipmentModel
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
mixin _$VendorModel {

// Core info
 ContactInfo get contact; List<EntityId> get staffIds; List<String> get services;// Metadata
 Map<String, Object> get meta; Map<String, Object>? get customData; Map<String, Object> get certifications;
/// Create a copy of VendorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorModelCopyWith<VendorModel> get copyWith => _$VendorModelCopyWithImpl<VendorModel>(this as VendorModel, _$identity);

  /// Serializes this VendorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorModel&&(identical(other.contact, contact) || other.contact == contact)&&const DeepCollectionEquality().equals(other.staffIds, staffIds)&&const DeepCollectionEquality().equals(other.services, services)&&const DeepCollectionEquality().equals(other.meta, meta)&&const DeepCollectionEquality().equals(other.customData, customData)&&const DeepCollectionEquality().equals(other.certifications, certifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contact,const DeepCollectionEquality().hash(staffIds),const DeepCollectionEquality().hash(services),const DeepCollectionEquality().hash(meta),const DeepCollectionEquality().hash(customData),const DeepCollectionEquality().hash(certifications));

@override
String toString() {
  return 'VendorModel(contact: $contact, staffIds: $staffIds, services: $services, meta: $meta, customData: $customData, certifications: $certifications)';
}


}

/// @nodoc
abstract mixin class $VendorModelCopyWith<$Res>  {
  factory $VendorModelCopyWith(VendorModel value, $Res Function(VendorModel) _then) = _$VendorModelCopyWithImpl;
@useResult
$Res call({
 ContactInfo contact, List<EntityId> staffIds, List<String> services, Map<String, Object> meta, Map<String, Object>? customData, Map<String, Object> certifications
});


$ContactInfoCopyWith<$Res> get contact;

}
/// @nodoc
class _$VendorModelCopyWithImpl<$Res>
    implements $VendorModelCopyWith<$Res> {
  _$VendorModelCopyWithImpl(this._self, this._then);

  final VendorModel _self;
  final $Res Function(VendorModel) _then;

/// Create a copy of VendorModel
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
/// Create a copy of VendorModel
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
@JsonSerializable()

class _VendorModel extends VendorModel {
  const _VendorModel({required this.contact, final  List<EntityId> staffIds = const [], final  List<String> services = const [], final  Map<String, Object> meta = const {}, final  Map<String, Object>? customData, final  Map<String, Object> certifications = const {}}): _staffIds = staffIds,_services = services,_meta = meta,_customData = customData,_certifications = certifications,super._();
  factory _VendorModel.fromJson(Map<String, dynamic> json) => _$VendorModelFromJson(json);

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


/// Create a copy of VendorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorModelCopyWith<_VendorModel> get copyWith => __$VendorModelCopyWithImpl<_VendorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorModel&&(identical(other.contact, contact) || other.contact == contact)&&const DeepCollectionEquality().equals(other._staffIds, _staffIds)&&const DeepCollectionEquality().equals(other._services, _services)&&const DeepCollectionEquality().equals(other._meta, _meta)&&const DeepCollectionEquality().equals(other._customData, _customData)&&const DeepCollectionEquality().equals(other._certifications, _certifications));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contact,const DeepCollectionEquality().hash(_staffIds),const DeepCollectionEquality().hash(_services),const DeepCollectionEquality().hash(_meta),const DeepCollectionEquality().hash(_customData),const DeepCollectionEquality().hash(_certifications));

@override
String toString() {
  return 'VendorModel(contact: $contact, staffIds: $staffIds, services: $services, meta: $meta, customData: $customData, certifications: $certifications)';
}


}

/// @nodoc
abstract mixin class _$VendorModelCopyWith<$Res> implements $VendorModelCopyWith<$Res> {
  factory _$VendorModelCopyWith(_VendorModel value, $Res Function(_VendorModel) _then) = __$VendorModelCopyWithImpl;
@override @useResult
$Res call({
 ContactInfo contact, List<EntityId> staffIds, List<String> services, Map<String, Object> meta, Map<String, Object>? customData, Map<String, Object> certifications
});


@override $ContactInfoCopyWith<$Res> get contact;

}
/// @nodoc
class __$VendorModelCopyWithImpl<$Res>
    implements _$VendorModelCopyWith<$Res> {
  __$VendorModelCopyWithImpl(this._self, this._then);

  final _VendorModel _self;
  final $Res Function(_VendorModel) _then;

/// Create a copy of VendorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contact = null,Object? staffIds = null,Object? services = null,Object? meta = null,Object? customData = freezed,Object? certifications = null,}) {
  return _then(_VendorModel(
contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as ContactInfo,staffIds: null == staffIds ? _self._staffIds : staffIds // ignore: cast_nullable_to_non_nullable
as List<EntityId>,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<String>,meta: null == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,customData: freezed == customData ? _self._customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,certifications: null == certifications ? _self._certifications : certifications // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,
  ));
}

/// Create a copy of VendorModel
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
mixin _$PersonnelModel {

// Core info
 String get name; EntityId get vendorId; int get skillLevel;// Professional info
 String? get role; List<String> get certs; List<String> get specs;// Contact info
 String? get phone; String? get email;// Metadata
 Map<String, Object>? get customData; Map<String, Object> get meta; Map<String, Object> get schedule; Map<String, DateTime> get certDates;
/// Create a copy of PersonnelModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonnelModelCopyWith<PersonnelModel> get copyWith => _$PersonnelModelCopyWithImpl<PersonnelModel>(this as PersonnelModel, _$identity);

  /// Serializes this PersonnelModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonnelModel&&(identical(other.name, name) || other.name == name)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.skillLevel, skillLevel) || other.skillLevel == skillLevel)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.certs, certs)&&const DeepCollectionEquality().equals(other.specs, specs)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.customData, customData)&&const DeepCollectionEquality().equals(other.meta, meta)&&const DeepCollectionEquality().equals(other.schedule, schedule)&&const DeepCollectionEquality().equals(other.certDates, certDates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,vendorId,skillLevel,role,const DeepCollectionEquality().hash(certs),const DeepCollectionEquality().hash(specs),phone,email,const DeepCollectionEquality().hash(customData),const DeepCollectionEquality().hash(meta),const DeepCollectionEquality().hash(schedule),const DeepCollectionEquality().hash(certDates));

@override
String toString() {
  return 'PersonnelModel(name: $name, vendorId: $vendorId, skillLevel: $skillLevel, role: $role, certs: $certs, specs: $specs, phone: $phone, email: $email, customData: $customData, meta: $meta, schedule: $schedule, certDates: $certDates)';
}


}

/// @nodoc
abstract mixin class $PersonnelModelCopyWith<$Res>  {
  factory $PersonnelModelCopyWith(PersonnelModel value, $Res Function(PersonnelModel) _then) = _$PersonnelModelCopyWithImpl;
@useResult
$Res call({
 String name, EntityId vendorId, int skillLevel, String? role, List<String> certs, List<String> specs, String? phone, String? email, Map<String, Object>? customData, Map<String, Object> meta, Map<String, Object> schedule, Map<String, DateTime> certDates
});


$EntityIdCopyWith<$Res> get vendorId;

}
/// @nodoc
class _$PersonnelModelCopyWithImpl<$Res>
    implements $PersonnelModelCopyWith<$Res> {
  _$PersonnelModelCopyWithImpl(this._self, this._then);

  final PersonnelModel _self;
  final $Res Function(PersonnelModel) _then;

/// Create a copy of PersonnelModel
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
/// Create a copy of PersonnelModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get vendorId {
  
  return $EntityIdCopyWith<$Res>(_self.vendorId, (value) {
    return _then(_self.copyWith(vendorId: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _PersonnelModel extends PersonnelModel {
  const _PersonnelModel({required this.name, required this.vendorId, required this.skillLevel, this.role, final  List<String> certs = const [], final  List<String> specs = const [], this.phone, this.email, final  Map<String, Object>? customData, final  Map<String, Object> meta = const {}, final  Map<String, Object> schedule = const {}, final  Map<String, DateTime> certDates = const {}}): _certs = certs,_specs = specs,_customData = customData,_meta = meta,_schedule = schedule,_certDates = certDates,super._();
  factory _PersonnelModel.fromJson(Map<String, dynamic> json) => _$PersonnelModelFromJson(json);

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


/// Create a copy of PersonnelModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonnelModelCopyWith<_PersonnelModel> get copyWith => __$PersonnelModelCopyWithImpl<_PersonnelModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonnelModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonnelModel&&(identical(other.name, name) || other.name == name)&&(identical(other.vendorId, vendorId) || other.vendorId == vendorId)&&(identical(other.skillLevel, skillLevel) || other.skillLevel == skillLevel)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other._certs, _certs)&&const DeepCollectionEquality().equals(other._specs, _specs)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other._customData, _customData)&&const DeepCollectionEquality().equals(other._meta, _meta)&&const DeepCollectionEquality().equals(other._schedule, _schedule)&&const DeepCollectionEquality().equals(other._certDates, _certDates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,vendorId,skillLevel,role,const DeepCollectionEquality().hash(_certs),const DeepCollectionEquality().hash(_specs),phone,email,const DeepCollectionEquality().hash(_customData),const DeepCollectionEquality().hash(_meta),const DeepCollectionEquality().hash(_schedule),const DeepCollectionEquality().hash(_certDates));

@override
String toString() {
  return 'PersonnelModel(name: $name, vendorId: $vendorId, skillLevel: $skillLevel, role: $role, certs: $certs, specs: $specs, phone: $phone, email: $email, customData: $customData, meta: $meta, schedule: $schedule, certDates: $certDates)';
}


}

/// @nodoc
abstract mixin class _$PersonnelModelCopyWith<$Res> implements $PersonnelModelCopyWith<$Res> {
  factory _$PersonnelModelCopyWith(_PersonnelModel value, $Res Function(_PersonnelModel) _then) = __$PersonnelModelCopyWithImpl;
@override @useResult
$Res call({
 String name, EntityId vendorId, int skillLevel, String? role, List<String> certs, List<String> specs, String? phone, String? email, Map<String, Object>? customData, Map<String, Object> meta, Map<String, Object> schedule, Map<String, DateTime> certDates
});


@override $EntityIdCopyWith<$Res> get vendorId;

}
/// @nodoc
class __$PersonnelModelCopyWithImpl<$Res>
    implements _$PersonnelModelCopyWith<$Res> {
  __$PersonnelModelCopyWithImpl(this._self, this._then);

  final _PersonnelModel _self;
  final $Res Function(_PersonnelModel) _then;

/// Create a copy of PersonnelModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? vendorId = null,Object? skillLevel = null,Object? role = freezed,Object? certs = null,Object? specs = null,Object? phone = freezed,Object? email = freezed,Object? customData = freezed,Object? meta = null,Object? schedule = null,Object? certDates = null,}) {
  return _then(_PersonnelModel(
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

/// Create a copy of PersonnelModel
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
