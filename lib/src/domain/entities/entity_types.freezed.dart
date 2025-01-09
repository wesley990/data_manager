// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
// Core info
  ContactInfo get contact => throw _privateConstructorUsedError;
  List<EntityId> get siteIds => throw _privateConstructorUsedError; // Metadata
  Map<String, Object> get meta => throw _privateConstructorUsedError;
  Map<String, Object>? get customData => throw _privateConstructorUsedError;

  /// Serializes this Owner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call(
      {ContactInfo contact,
      List<EntityId> siteIds,
      Map<String, Object> meta,
      Map<String, Object>? customData});

  $ContactInfoCopyWith<$Res> get contact;
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? siteIds = null,
    Object? meta = null,
    Object? customData = freezed,
  }) {
    return _then(_value.copyWith(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactInfo,
      siteIds: null == siteIds
          ? _value.siteIds
          : siteIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      customData: freezed == customData
          ? _value.customData
          : customData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
    ) as $Val);
  }

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactInfoCopyWith<$Res> get contact {
    return $ContactInfoCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OwnerImplCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$OwnerImplCopyWith(
          _$OwnerImpl value, $Res Function(_$OwnerImpl) then) =
      __$$OwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ContactInfo contact,
      List<EntityId> siteIds,
      Map<String, Object> meta,
      Map<String, Object>? customData});

  @override
  $ContactInfoCopyWith<$Res> get contact;
}

/// @nodoc
class __$$OwnerImplCopyWithImpl<$Res>
    extends _$OwnerCopyWithImpl<$Res, _$OwnerImpl>
    implements _$$OwnerImplCopyWith<$Res> {
  __$$OwnerImplCopyWithImpl(
      _$OwnerImpl _value, $Res Function(_$OwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? siteIds = null,
    Object? meta = null,
    Object? customData = freezed,
  }) {
    return _then(_$OwnerImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactInfo,
      siteIds: null == siteIds
          ? _value._siteIds
          : siteIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      customData: freezed == customData
          ? _value._customData
          : customData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerImpl extends _Owner {
  const _$OwnerImpl(
      {required this.contact,
      final List<EntityId> siteIds = const [],
      final Map<String, Object> meta = const {},
      final Map<String, Object>? customData})
      : _siteIds = siteIds,
        _meta = meta,
        _customData = customData,
        super._();

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

// Core info
  @override
  final ContactInfo contact;
  final List<EntityId> _siteIds;
  @override
  @JsonKey()
  List<EntityId> get siteIds {
    if (_siteIds is EqualUnmodifiableListView) return _siteIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_siteIds);
  }

// Metadata
  final Map<String, Object> _meta;
// Metadata
  @override
  @JsonKey()
  Map<String, Object> get meta {
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_meta);
  }

  final Map<String, Object>? _customData;
  @override
  Map<String, Object>? get customData {
    final value = _customData;
    if (value == null) return null;
    if (_customData is EqualUnmodifiableMapView) return _customData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Owner(contact: $contact, siteIds: $siteIds, meta: $meta, customData: $customData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerImpl &&
            (identical(other.contact, contact) || other.contact == contact) &&
            const DeepCollectionEquality().equals(other._siteIds, _siteIds) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            const DeepCollectionEquality()
                .equals(other._customData, _customData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contact,
      const DeepCollectionEquality().hash(_siteIds),
      const DeepCollectionEquality().hash(_meta),
      const DeepCollectionEquality().hash(_customData));

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      __$$OwnerImplCopyWithImpl<_$OwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerImplToJson(
      this,
    );
  }
}

abstract class _Owner extends Owner {
  const factory _Owner(
      {required final ContactInfo contact,
      final List<EntityId> siteIds,
      final Map<String, Object> meta,
      final Map<String, Object>? customData}) = _$OwnerImpl;
  const _Owner._() : super._();

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

// Core info
  @override
  ContactInfo get contact;
  @override
  List<EntityId> get siteIds; // Metadata
  @override
  Map<String, Object> get meta;
  @override
  Map<String, Object>? get customData;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Site _$SiteFromJson(Map<String, dynamic> json) {
  return _Site.fromJson(json);
}

/// @nodoc
mixin _$Site {
// Core info
  String get name => throw _privateConstructorUsedError;
  EntityId get ownerId => throw _privateConstructorUsedError; // Location
  String? get address => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError; // Equipment
  List<EntityId> get equipmentIds =>
      throw _privateConstructorUsedError; // Details
  Map<String, Object> get siteInfo =>
      throw _privateConstructorUsedError; // Metadata
  Map<String, Object>? get customData => throw _privateConstructorUsedError;
  Map<String, Object> get meta => throw _privateConstructorUsedError;
  Map<String, String> get contactInfo => throw _privateConstructorUsedError;

  /// Serializes this Site to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Site
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiteCopyWith<Site> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteCopyWith<$Res> {
  factory $SiteCopyWith(Site value, $Res Function(Site) then) =
      _$SiteCopyWithImpl<$Res, Site>;
  @useResult
  $Res call(
      {String name,
      EntityId ownerId,
      String? address,
      double? latitude,
      double? longitude,
      List<EntityId> equipmentIds,
      Map<String, Object> siteInfo,
      Map<String, Object>? customData,
      Map<String, Object> meta,
      Map<String, String> contactInfo});

  $EntityIdCopyWith<$Res> get ownerId;
}

/// @nodoc
class _$SiteCopyWithImpl<$Res, $Val extends Site>
    implements $SiteCopyWith<$Res> {
  _$SiteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Site
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ownerId = null,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? equipmentIds = null,
    Object? siteInfo = null,
    Object? customData = freezed,
    Object? meta = null,
    Object? contactInfo = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as EntityId,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      equipmentIds: null == equipmentIds
          ? _value.equipmentIds
          : equipmentIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      siteInfo: null == siteInfo
          ? _value.siteInfo
          : siteInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      customData: freezed == customData
          ? _value.customData
          : customData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      contactInfo: null == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  /// Create a copy of Site
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityIdCopyWith<$Res> get ownerId {
    return $EntityIdCopyWith<$Res>(_value.ownerId, (value) {
      return _then(_value.copyWith(ownerId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SiteImplCopyWith<$Res> implements $SiteCopyWith<$Res> {
  factory _$$SiteImplCopyWith(
          _$SiteImpl value, $Res Function(_$SiteImpl) then) =
      __$$SiteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      EntityId ownerId,
      String? address,
      double? latitude,
      double? longitude,
      List<EntityId> equipmentIds,
      Map<String, Object> siteInfo,
      Map<String, Object>? customData,
      Map<String, Object> meta,
      Map<String, String> contactInfo});

  @override
  $EntityIdCopyWith<$Res> get ownerId;
}

/// @nodoc
class __$$SiteImplCopyWithImpl<$Res>
    extends _$SiteCopyWithImpl<$Res, _$SiteImpl>
    implements _$$SiteImplCopyWith<$Res> {
  __$$SiteImplCopyWithImpl(_$SiteImpl _value, $Res Function(_$SiteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Site
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ownerId = null,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? equipmentIds = null,
    Object? siteInfo = null,
    Object? customData = freezed,
    Object? meta = null,
    Object? contactInfo = null,
  }) {
    return _then(_$SiteImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as EntityId,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      equipmentIds: null == equipmentIds
          ? _value._equipmentIds
          : equipmentIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      siteInfo: null == siteInfo
          ? _value._siteInfo
          : siteInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      customData: freezed == customData
          ? _value._customData
          : customData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      contactInfo: null == contactInfo
          ? _value._contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SiteImpl extends _Site {
  const _$SiteImpl(
      {required this.name,
      required this.ownerId,
      this.address,
      this.latitude,
      this.longitude,
      final List<EntityId> equipmentIds = const [],
      final Map<String, Object> siteInfo = const {},
      final Map<String, Object>? customData,
      final Map<String, Object> meta = const {},
      final Map<String, String> contactInfo = const {}})
      : _equipmentIds = equipmentIds,
        _siteInfo = siteInfo,
        _customData = customData,
        _meta = meta,
        _contactInfo = contactInfo,
        super._();

  factory _$SiteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteImplFromJson(json);

// Core info
  @override
  final String name;
  @override
  final EntityId ownerId;
// Location
  @override
  final String? address;
  @override
  final double? latitude;
  @override
  final double? longitude;
// Equipment
  final List<EntityId> _equipmentIds;
// Equipment
  @override
  @JsonKey()
  List<EntityId> get equipmentIds {
    if (_equipmentIds is EqualUnmodifiableListView) return _equipmentIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipmentIds);
  }

// Details
  final Map<String, Object> _siteInfo;
// Details
  @override
  @JsonKey()
  Map<String, Object> get siteInfo {
    if (_siteInfo is EqualUnmodifiableMapView) return _siteInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_siteInfo);
  }

// Metadata
  final Map<String, Object>? _customData;
// Metadata
  @override
  Map<String, Object>? get customData {
    final value = _customData;
    if (value == null) return null;
    if (_customData is EqualUnmodifiableMapView) return _customData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Object> _meta;
  @override
  @JsonKey()
  Map<String, Object> get meta {
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_meta);
  }

  final Map<String, String> _contactInfo;
  @override
  @JsonKey()
  Map<String, String> get contactInfo {
    if (_contactInfo is EqualUnmodifiableMapView) return _contactInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_contactInfo);
  }

  @override
  String toString() {
    return 'Site(name: $name, ownerId: $ownerId, address: $address, latitude: $latitude, longitude: $longitude, equipmentIds: $equipmentIds, siteInfo: $siteInfo, customData: $customData, meta: $meta, contactInfo: $contactInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality()
                .equals(other._equipmentIds, _equipmentIds) &&
            const DeepCollectionEquality().equals(other._siteInfo, _siteInfo) &&
            const DeepCollectionEquality()
                .equals(other._customData, _customData) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            const DeepCollectionEquality()
                .equals(other._contactInfo, _contactInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      ownerId,
      address,
      latitude,
      longitude,
      const DeepCollectionEquality().hash(_equipmentIds),
      const DeepCollectionEquality().hash(_siteInfo),
      const DeepCollectionEquality().hash(_customData),
      const DeepCollectionEquality().hash(_meta),
      const DeepCollectionEquality().hash(_contactInfo));

  /// Create a copy of Site
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteImplCopyWith<_$SiteImpl> get copyWith =>
      __$$SiteImplCopyWithImpl<_$SiteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteImplToJson(
      this,
    );
  }
}

abstract class _Site extends Site {
  const factory _Site(
      {required final String name,
      required final EntityId ownerId,
      final String? address,
      final double? latitude,
      final double? longitude,
      final List<EntityId> equipmentIds,
      final Map<String, Object> siteInfo,
      final Map<String, Object>? customData,
      final Map<String, Object> meta,
      final Map<String, String> contactInfo}) = _$SiteImpl;
  const _Site._() : super._();

  factory _Site.fromJson(Map<String, dynamic> json) = _$SiteImpl.fromJson;

// Core info
  @override
  String get name;
  @override
  EntityId get ownerId; // Location
  @override
  String? get address;
  @override
  double? get latitude;
  @override
  double? get longitude; // Equipment
  @override
  List<EntityId> get equipmentIds; // Details
  @override
  Map<String, Object> get siteInfo; // Metadata
  @override
  Map<String, Object>? get customData;
  @override
  Map<String, Object> get meta;
  @override
  Map<String, String> get contactInfo;

  /// Create a copy of Site
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteImplCopyWith<_$SiteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Equipment _$EquipmentFromJson(Map<String, dynamic> json) {
  return _Equipment.fromJson(json);
}

/// @nodoc
mixin _$Equipment {
// Core info
  String get name => throw _privateConstructorUsedError;
  EntityId get siteId => throw _privateConstructorUsedError;
  EquipmentType get type =>
      throw _privateConstructorUsedError; // Technical info
  String? get serialNum => throw _privateConstructorUsedError;
  String? get modelId => throw _privateConstructorUsedError;
  String? get manufacturer => throw _privateConstructorUsedError; // Specs
  Map<String, Object> get specs => throw _privateConstructorUsedError; // Dates
  DateTime? get installDate => throw _privateConstructorUsedError;
  DateTime? get lastMaintDate =>
      throw _privateConstructorUsedError; // Hierarchy
  EntityId? get parentId => throw _privateConstructorUsedError;
  List<EntityId> get childIds => throw _privateConstructorUsedError; // Metadata
  Map<String, Object>? get customData => throw _privateConstructorUsedError;
  Map<String, Object> get meta => throw _privateConstructorUsedError;
  Map<String, String> get maintContacts => throw _privateConstructorUsedError;

  /// Serializes this Equipment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EquipmentCopyWith<Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentCopyWith<$Res> {
  factory $EquipmentCopyWith(Equipment value, $Res Function(Equipment) then) =
      _$EquipmentCopyWithImpl<$Res, Equipment>;
  @useResult
  $Res call(
      {String name,
      EntityId siteId,
      EquipmentType type,
      String? serialNum,
      String? modelId,
      String? manufacturer,
      Map<String, Object> specs,
      DateTime? installDate,
      DateTime? lastMaintDate,
      EntityId? parentId,
      List<EntityId> childIds,
      Map<String, Object>? customData,
      Map<String, Object> meta,
      Map<String, String> maintContacts});

  $EntityIdCopyWith<$Res> get siteId;
  $EntityIdCopyWith<$Res>? get parentId;
}

/// @nodoc
class _$EquipmentCopyWithImpl<$Res, $Val extends Equipment>
    implements $EquipmentCopyWith<$Res> {
  _$EquipmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? siteId = null,
    Object? type = null,
    Object? serialNum = freezed,
    Object? modelId = freezed,
    Object? manufacturer = freezed,
    Object? specs = null,
    Object? installDate = freezed,
    Object? lastMaintDate = freezed,
    Object? parentId = freezed,
    Object? childIds = null,
    Object? customData = freezed,
    Object? meta = null,
    Object? maintContacts = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as EntityId,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EquipmentType,
      serialNum: freezed == serialNum
          ? _value.serialNum
          : serialNum // ignore: cast_nullable_to_non_nullable
              as String?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      specs: null == specs
          ? _value.specs
          : specs // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      installDate: freezed == installDate
          ? _value.installDate
          : installDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMaintDate: freezed == lastMaintDate
          ? _value.lastMaintDate
          : lastMaintDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as EntityId?,
      childIds: null == childIds
          ? _value.childIds
          : childIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      customData: freezed == customData
          ? _value.customData
          : customData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      maintContacts: null == maintContacts
          ? _value.maintContacts
          : maintContacts // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityIdCopyWith<$Res> get siteId {
    return $EntityIdCopyWith<$Res>(_value.siteId, (value) {
      return _then(_value.copyWith(siteId: value) as $Val);
    });
  }

  /// Create a copy of Equipment
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
abstract class _$$EquipmentImplCopyWith<$Res>
    implements $EquipmentCopyWith<$Res> {
  factory _$$EquipmentImplCopyWith(
          _$EquipmentImpl value, $Res Function(_$EquipmentImpl) then) =
      __$$EquipmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      EntityId siteId,
      EquipmentType type,
      String? serialNum,
      String? modelId,
      String? manufacturer,
      Map<String, Object> specs,
      DateTime? installDate,
      DateTime? lastMaintDate,
      EntityId? parentId,
      List<EntityId> childIds,
      Map<String, Object>? customData,
      Map<String, Object> meta,
      Map<String, String> maintContacts});

  @override
  $EntityIdCopyWith<$Res> get siteId;
  @override
  $EntityIdCopyWith<$Res>? get parentId;
}

/// @nodoc
class __$$EquipmentImplCopyWithImpl<$Res>
    extends _$EquipmentCopyWithImpl<$Res, _$EquipmentImpl>
    implements _$$EquipmentImplCopyWith<$Res> {
  __$$EquipmentImplCopyWithImpl(
      _$EquipmentImpl _value, $Res Function(_$EquipmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? siteId = null,
    Object? type = null,
    Object? serialNum = freezed,
    Object? modelId = freezed,
    Object? manufacturer = freezed,
    Object? specs = null,
    Object? installDate = freezed,
    Object? lastMaintDate = freezed,
    Object? parentId = freezed,
    Object? childIds = null,
    Object? customData = freezed,
    Object? meta = null,
    Object? maintContacts = null,
  }) {
    return _then(_$EquipmentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as EntityId,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EquipmentType,
      serialNum: freezed == serialNum
          ? _value.serialNum
          : serialNum // ignore: cast_nullable_to_non_nullable
              as String?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      specs: null == specs
          ? _value._specs
          : specs // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      installDate: freezed == installDate
          ? _value.installDate
          : installDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMaintDate: freezed == lastMaintDate
          ? _value.lastMaintDate
          : lastMaintDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as EntityId?,
      childIds: null == childIds
          ? _value._childIds
          : childIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      customData: freezed == customData
          ? _value._customData
          : customData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      maintContacts: null == maintContacts
          ? _value._maintContacts
          : maintContacts // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EquipmentImpl extends _Equipment {
  const _$EquipmentImpl(
      {required this.name,
      required this.siteId,
      required this.type,
      this.serialNum,
      this.modelId,
      this.manufacturer,
      final Map<String, Object> specs = const {},
      this.installDate,
      this.lastMaintDate,
      this.parentId,
      final List<EntityId> childIds = const [],
      final Map<String, Object>? customData,
      final Map<String, Object> meta = const {},
      final Map<String, String> maintContacts = const {}})
      : _specs = specs,
        _childIds = childIds,
        _customData = customData,
        _meta = meta,
        _maintContacts = maintContacts,
        super._();

  factory _$EquipmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentImplFromJson(json);

// Core info
  @override
  final String name;
  @override
  final EntityId siteId;
  @override
  final EquipmentType type;
// Technical info
  @override
  final String? serialNum;
  @override
  final String? modelId;
  @override
  final String? manufacturer;
// Specs
  final Map<String, Object> _specs;
// Specs
  @override
  @JsonKey()
  Map<String, Object> get specs {
    if (_specs is EqualUnmodifiableMapView) return _specs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_specs);
  }

// Dates
  @override
  final DateTime? installDate;
  @override
  final DateTime? lastMaintDate;
// Hierarchy
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

// Metadata
  final Map<String, Object>? _customData;
// Metadata
  @override
  Map<String, Object>? get customData {
    final value = _customData;
    if (value == null) return null;
    if (_customData is EqualUnmodifiableMapView) return _customData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Object> _meta;
  @override
  @JsonKey()
  Map<String, Object> get meta {
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_meta);
  }

  final Map<String, String> _maintContacts;
  @override
  @JsonKey()
  Map<String, String> get maintContacts {
    if (_maintContacts is EqualUnmodifiableMapView) return _maintContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_maintContacts);
  }

  @override
  String toString() {
    return 'Equipment(name: $name, siteId: $siteId, type: $type, serialNum: $serialNum, modelId: $modelId, manufacturer: $manufacturer, specs: $specs, installDate: $installDate, lastMaintDate: $lastMaintDate, parentId: $parentId, childIds: $childIds, customData: $customData, meta: $meta, maintContacts: $maintContacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.serialNum, serialNum) ||
                other.serialNum == serialNum) &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            const DeepCollectionEquality().equals(other._specs, _specs) &&
            (identical(other.installDate, installDate) ||
                other.installDate == installDate) &&
            (identical(other.lastMaintDate, lastMaintDate) ||
                other.lastMaintDate == lastMaintDate) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            const DeepCollectionEquality().equals(other._childIds, _childIds) &&
            const DeepCollectionEquality()
                .equals(other._customData, _customData) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            const DeepCollectionEquality()
                .equals(other._maintContacts, _maintContacts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      siteId,
      type,
      serialNum,
      modelId,
      manufacturer,
      const DeepCollectionEquality().hash(_specs),
      installDate,
      lastMaintDate,
      parentId,
      const DeepCollectionEquality().hash(_childIds),
      const DeepCollectionEquality().hash(_customData),
      const DeepCollectionEquality().hash(_meta),
      const DeepCollectionEquality().hash(_maintContacts));

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentImplCopyWith<_$EquipmentImpl> get copyWith =>
      __$$EquipmentImplCopyWithImpl<_$EquipmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipmentImplToJson(
      this,
    );
  }
}

abstract class _Equipment extends Equipment {
  const factory _Equipment(
      {required final String name,
      required final EntityId siteId,
      required final EquipmentType type,
      final String? serialNum,
      final String? modelId,
      final String? manufacturer,
      final Map<String, Object> specs,
      final DateTime? installDate,
      final DateTime? lastMaintDate,
      final EntityId? parentId,
      final List<EntityId> childIds,
      final Map<String, Object>? customData,
      final Map<String, Object> meta,
      final Map<String, String> maintContacts}) = _$EquipmentImpl;
  const _Equipment._() : super._();

  factory _Equipment.fromJson(Map<String, dynamic> json) =
      _$EquipmentImpl.fromJson;

// Core info
  @override
  String get name;
  @override
  EntityId get siteId;
  @override
  EquipmentType get type; // Technical info
  @override
  String? get serialNum;
  @override
  String? get modelId;
  @override
  String? get manufacturer; // Specs
  @override
  Map<String, Object> get specs; // Dates
  @override
  DateTime? get installDate;
  @override
  DateTime? get lastMaintDate; // Hierarchy
  @override
  EntityId? get parentId;
  @override
  List<EntityId> get childIds; // Metadata
  @override
  Map<String, Object>? get customData;
  @override
  Map<String, Object> get meta;
  @override
  Map<String, String> get maintContacts;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EquipmentImplCopyWith<_$EquipmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return _Vendor.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
// Core info
  ContactInfo get contact => throw _privateConstructorUsedError;
  List<EntityId> get staffIds => throw _privateConstructorUsedError;
  List<String> get services => throw _privateConstructorUsedError; // Metadata
  Map<String, Object> get meta => throw _privateConstructorUsedError;
  Map<String, Object>? get customData => throw _privateConstructorUsedError;
  Map<String, Object> get certifications => throw _privateConstructorUsedError;

  /// Serializes this Vendor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorCopyWith<Vendor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCopyWith<$Res> {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) then) =
      _$VendorCopyWithImpl<$Res, Vendor>;
  @useResult
  $Res call(
      {ContactInfo contact,
      List<EntityId> staffIds,
      List<String> services,
      Map<String, Object> meta,
      Map<String, Object>? customData,
      Map<String, Object> certifications});

  $ContactInfoCopyWith<$Res> get contact;
}

/// @nodoc
class _$VendorCopyWithImpl<$Res, $Val extends Vendor>
    implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? staffIds = null,
    Object? services = null,
    Object? meta = null,
    Object? customData = freezed,
    Object? certifications = null,
  }) {
    return _then(_value.copyWith(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactInfo,
      staffIds: null == staffIds
          ? _value.staffIds
          : staffIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      customData: freezed == customData
          ? _value.customData
          : customData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      certifications: null == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
    ) as $Val);
  }

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactInfoCopyWith<$Res> get contact {
    return $ContactInfoCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorImplCopyWith<$Res> implements $VendorCopyWith<$Res> {
  factory _$$VendorImplCopyWith(
          _$VendorImpl value, $Res Function(_$VendorImpl) then) =
      __$$VendorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ContactInfo contact,
      List<EntityId> staffIds,
      List<String> services,
      Map<String, Object> meta,
      Map<String, Object>? customData,
      Map<String, Object> certifications});

  @override
  $ContactInfoCopyWith<$Res> get contact;
}

/// @nodoc
class __$$VendorImplCopyWithImpl<$Res>
    extends _$VendorCopyWithImpl<$Res, _$VendorImpl>
    implements _$$VendorImplCopyWith<$Res> {
  __$$VendorImplCopyWithImpl(
      _$VendorImpl _value, $Res Function(_$VendorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? staffIds = null,
    Object? services = null,
    Object? meta = null,
    Object? customData = freezed,
    Object? certifications = null,
  }) {
    return _then(_$VendorImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactInfo,
      staffIds: null == staffIds
          ? _value._staffIds
          : staffIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      customData: freezed == customData
          ? _value._customData
          : customData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      certifications: null == certifications
          ? _value._certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorImpl extends _Vendor {
  const _$VendorImpl(
      {required this.contact,
      final List<EntityId> staffIds = const [],
      final List<String> services = const [],
      final Map<String, Object> meta = const {},
      final Map<String, Object>? customData,
      final Map<String, Object> certifications = const {}})
      : _staffIds = staffIds,
        _services = services,
        _meta = meta,
        _customData = customData,
        _certifications = certifications,
        super._();

  factory _$VendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorImplFromJson(json);

// Core info
  @override
  final ContactInfo contact;
  final List<EntityId> _staffIds;
  @override
  @JsonKey()
  List<EntityId> get staffIds {
    if (_staffIds is EqualUnmodifiableListView) return _staffIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staffIds);
  }

  final List<String> _services;
  @override
  @JsonKey()
  List<String> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

// Metadata
  final Map<String, Object> _meta;
// Metadata
  @override
  @JsonKey()
  Map<String, Object> get meta {
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_meta);
  }

  final Map<String, Object>? _customData;
  @override
  Map<String, Object>? get customData {
    final value = _customData;
    if (value == null) return null;
    if (_customData is EqualUnmodifiableMapView) return _customData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Object> _certifications;
  @override
  @JsonKey()
  Map<String, Object> get certifications {
    if (_certifications is EqualUnmodifiableMapView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_certifications);
  }

  @override
  String toString() {
    return 'Vendor(contact: $contact, staffIds: $staffIds, services: $services, meta: $meta, customData: $customData, certifications: $certifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorImpl &&
            (identical(other.contact, contact) || other.contact == contact) &&
            const DeepCollectionEquality().equals(other._staffIds, _staffIds) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            const DeepCollectionEquality()
                .equals(other._customData, _customData) &&
            const DeepCollectionEquality()
                .equals(other._certifications, _certifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contact,
      const DeepCollectionEquality().hash(_staffIds),
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_meta),
      const DeepCollectionEquality().hash(_customData),
      const DeepCollectionEquality().hash(_certifications));

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      __$$VendorImplCopyWithImpl<_$VendorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorImplToJson(
      this,
    );
  }
}

abstract class _Vendor extends Vendor {
  const factory _Vendor(
      {required final ContactInfo contact,
      final List<EntityId> staffIds,
      final List<String> services,
      final Map<String, Object> meta,
      final Map<String, Object>? customData,
      final Map<String, Object> certifications}) = _$VendorImpl;
  const _Vendor._() : super._();

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$VendorImpl.fromJson;

// Core info
  @override
  ContactInfo get contact;
  @override
  List<EntityId> get staffIds;
  @override
  List<String> get services; // Metadata
  @override
  Map<String, Object> get meta;
  @override
  Map<String, Object>? get customData;
  @override
  Map<String, Object> get certifications;

  /// Create a copy of Vendor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Personnel _$PersonnelFromJson(Map<String, dynamic> json) {
  return _Personnel.fromJson(json);
}

/// @nodoc
mixin _$Personnel {
// Core info
  String get name => throw _privateConstructorUsedError;
  EntityId get vendorId => throw _privateConstructorUsedError;
  int get skillLevel => throw _privateConstructorUsedError; // Professional info
  String? get role => throw _privateConstructorUsedError;
  List<String> get certs => throw _privateConstructorUsedError;
  List<String> get specs => throw _privateConstructorUsedError; // Contact info
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError; // Metadata
  Map<String, Object>? get customData => throw _privateConstructorUsedError;
  Map<String, Object> get meta => throw _privateConstructorUsedError;
  Map<String, Object> get schedule => throw _privateConstructorUsedError;
  Map<String, DateTime> get certDates => throw _privateConstructorUsedError;

  /// Serializes this Personnel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Personnel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonnelCopyWith<Personnel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonnelCopyWith<$Res> {
  factory $PersonnelCopyWith(Personnel value, $Res Function(Personnel) then) =
      _$PersonnelCopyWithImpl<$Res, Personnel>;
  @useResult
  $Res call(
      {String name,
      EntityId vendorId,
      int skillLevel,
      String? role,
      List<String> certs,
      List<String> specs,
      String? phone,
      String? email,
      Map<String, Object>? customData,
      Map<String, Object> meta,
      Map<String, Object> schedule,
      Map<String, DateTime> certDates});

  $EntityIdCopyWith<$Res> get vendorId;
}

/// @nodoc
class _$PersonnelCopyWithImpl<$Res, $Val extends Personnel>
    implements $PersonnelCopyWith<$Res> {
  _$PersonnelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Personnel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? vendorId = null,
    Object? skillLevel = null,
    Object? role = freezed,
    Object? certs = null,
    Object? specs = null,
    Object? phone = freezed,
    Object? email = freezed,
    Object? customData = freezed,
    Object? meta = null,
    Object? schedule = null,
    Object? certDates = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as EntityId,
      skillLevel: null == skillLevel
          ? _value.skillLevel
          : skillLevel // ignore: cast_nullable_to_non_nullable
              as int,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      certs: null == certs
          ? _value.certs
          : certs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      specs: null == specs
          ? _value.specs
          : specs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      customData: freezed == customData
          ? _value.customData
          : customData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      certDates: null == certDates
          ? _value.certDates
          : certDates // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
    ) as $Val);
  }

  /// Create a copy of Personnel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityIdCopyWith<$Res> get vendorId {
    return $EntityIdCopyWith<$Res>(_value.vendorId, (value) {
      return _then(_value.copyWith(vendorId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonnelImplCopyWith<$Res>
    implements $PersonnelCopyWith<$Res> {
  factory _$$PersonnelImplCopyWith(
          _$PersonnelImpl value, $Res Function(_$PersonnelImpl) then) =
      __$$PersonnelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      EntityId vendorId,
      int skillLevel,
      String? role,
      List<String> certs,
      List<String> specs,
      String? phone,
      String? email,
      Map<String, Object>? customData,
      Map<String, Object> meta,
      Map<String, Object> schedule,
      Map<String, DateTime> certDates});

  @override
  $EntityIdCopyWith<$Res> get vendorId;
}

/// @nodoc
class __$$PersonnelImplCopyWithImpl<$Res>
    extends _$PersonnelCopyWithImpl<$Res, _$PersonnelImpl>
    implements _$$PersonnelImplCopyWith<$Res> {
  __$$PersonnelImplCopyWithImpl(
      _$PersonnelImpl _value, $Res Function(_$PersonnelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Personnel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? vendorId = null,
    Object? skillLevel = null,
    Object? role = freezed,
    Object? certs = null,
    Object? specs = null,
    Object? phone = freezed,
    Object? email = freezed,
    Object? customData = freezed,
    Object? meta = null,
    Object? schedule = null,
    Object? certDates = null,
  }) {
    return _then(_$PersonnelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as EntityId,
      skillLevel: null == skillLevel
          ? _value.skillLevel
          : skillLevel // ignore: cast_nullable_to_non_nullable
              as int,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      certs: null == certs
          ? _value._certs
          : certs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      specs: null == specs
          ? _value._specs
          : specs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      customData: freezed == customData
          ? _value._customData
          : customData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      certDates: null == certDates
          ? _value._certDates
          : certDates // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonnelImpl extends _Personnel {
  const _$PersonnelImpl(
      {required this.name,
      required this.vendorId,
      required this.skillLevel,
      this.role,
      final List<String> certs = const [],
      final List<String> specs = const [],
      this.phone,
      this.email,
      final Map<String, Object>? customData,
      final Map<String, Object> meta = const {},
      final Map<String, Object> schedule = const {},
      final Map<String, DateTime> certDates = const {}})
      : _certs = certs,
        _specs = specs,
        _customData = customData,
        _meta = meta,
        _schedule = schedule,
        _certDates = certDates,
        super._();

  factory _$PersonnelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonnelImplFromJson(json);

// Core info
  @override
  final String name;
  @override
  final EntityId vendorId;
  @override
  final int skillLevel;
// Professional info
  @override
  final String? role;
  final List<String> _certs;
  @override
  @JsonKey()
  List<String> get certs {
    if (_certs is EqualUnmodifiableListView) return _certs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certs);
  }

  final List<String> _specs;
  @override
  @JsonKey()
  List<String> get specs {
    if (_specs is EqualUnmodifiableListView) return _specs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specs);
  }

// Contact info
  @override
  final String? phone;
  @override
  final String? email;
// Metadata
  final Map<String, Object>? _customData;
// Metadata
  @override
  Map<String, Object>? get customData {
    final value = _customData;
    if (value == null) return null;
    if (_customData is EqualUnmodifiableMapView) return _customData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Object> _meta;
  @override
  @JsonKey()
  Map<String, Object> get meta {
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_meta);
  }

  final Map<String, Object> _schedule;
  @override
  @JsonKey()
  Map<String, Object> get schedule {
    if (_schedule is EqualUnmodifiableMapView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_schedule);
  }

  final Map<String, DateTime> _certDates;
  @override
  @JsonKey()
  Map<String, DateTime> get certDates {
    if (_certDates is EqualUnmodifiableMapView) return _certDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_certDates);
  }

  @override
  String toString() {
    return 'Personnel(name: $name, vendorId: $vendorId, skillLevel: $skillLevel, role: $role, certs: $certs, specs: $specs, phone: $phone, email: $email, customData: $customData, meta: $meta, schedule: $schedule, certDates: $certDates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonnelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.skillLevel, skillLevel) ||
                other.skillLevel == skillLevel) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._certs, _certs) &&
            const DeepCollectionEquality().equals(other._specs, _specs) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other._customData, _customData) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule) &&
            const DeepCollectionEquality()
                .equals(other._certDates, _certDates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      vendorId,
      skillLevel,
      role,
      const DeepCollectionEquality().hash(_certs),
      const DeepCollectionEquality().hash(_specs),
      phone,
      email,
      const DeepCollectionEquality().hash(_customData),
      const DeepCollectionEquality().hash(_meta),
      const DeepCollectionEquality().hash(_schedule),
      const DeepCollectionEquality().hash(_certDates));

  /// Create a copy of Personnel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonnelImplCopyWith<_$PersonnelImpl> get copyWith =>
      __$$PersonnelImplCopyWithImpl<_$PersonnelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonnelImplToJson(
      this,
    );
  }
}

abstract class _Personnel extends Personnel {
  const factory _Personnel(
      {required final String name,
      required final EntityId vendorId,
      required final int skillLevel,
      final String? role,
      final List<String> certs,
      final List<String> specs,
      final String? phone,
      final String? email,
      final Map<String, Object>? customData,
      final Map<String, Object> meta,
      final Map<String, Object> schedule,
      final Map<String, DateTime> certDates}) = _$PersonnelImpl;
  const _Personnel._() : super._();

  factory _Personnel.fromJson(Map<String, dynamic> json) =
      _$PersonnelImpl.fromJson;

// Core info
  @override
  String get name;
  @override
  EntityId get vendorId;
  @override
  int get skillLevel; // Professional info
  @override
  String? get role;
  @override
  List<String> get certs;
  @override
  List<String> get specs; // Contact info
  @override
  String? get phone;
  @override
  String? get email; // Metadata
  @override
  Map<String, Object>? get customData;
  @override
  Map<String, Object> get meta;
  @override
  Map<String, Object> get schedule;
  @override
  Map<String, DateTime> get certDates;

  /// Create a copy of Personnel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonnelImplCopyWith<_$PersonnelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
