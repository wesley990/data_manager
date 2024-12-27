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
  ContactInfo get contact => throw _privateConstructorUsedError;
  List<EntityId> get siteIds =>
      throw _privateConstructorUsedError; // Updated to EntityId
  Map<String, Object>? get additionalInfo => throw _privateConstructorUsedError;
  Map<String, Object> get metadata => throw _privateConstructorUsedError;

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
      Map<String, Object>? additionalInfo,
      Map<String, Object> metadata});

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
    Object? additionalInfo = freezed,
    Object? metadata = null,
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
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
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
      Map<String, Object>? additionalInfo,
      Map<String, Object> metadata});

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
    Object? additionalInfo = freezed,
    Object? metadata = null,
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
      additionalInfo: freezed == additionalInfo
          ? _value._additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerImpl extends _Owner {
  const _$OwnerImpl(
      {required this.contact,
      final List<EntityId> siteIds = const [],
      final Map<String, Object>? additionalInfo,
      final Map<String, Object> metadata = const {}})
      : _siteIds = siteIds,
        _additionalInfo = additionalInfo,
        _metadata = metadata,
        super._();

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

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

// Updated to EntityId
  final Map<String, Object>? _additionalInfo;
// Updated to EntityId
  @override
  Map<String, Object>? get additionalInfo {
    final value = _additionalInfo;
    if (value == null) return null;
    if (_additionalInfo is EqualUnmodifiableMapView) return _additionalInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Object> _metadata;
  @override
  @JsonKey()
  Map<String, Object> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'Owner(contact: $contact, siteIds: $siteIds, additionalInfo: $additionalInfo, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerImpl &&
            (identical(other.contact, contact) || other.contact == contact) &&
            const DeepCollectionEquality().equals(other._siteIds, _siteIds) &&
            const DeepCollectionEquality()
                .equals(other._additionalInfo, _additionalInfo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contact,
      const DeepCollectionEquality().hash(_siteIds),
      const DeepCollectionEquality().hash(_additionalInfo),
      const DeepCollectionEquality().hash(_metadata));

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
      final Map<String, Object>? additionalInfo,
      final Map<String, Object> metadata}) = _$OwnerImpl;
  const _Owner._() : super._();

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override
  ContactInfo get contact;
  @override
  List<EntityId> get siteIds; // Updated to EntityId
  @override
  Map<String, Object>? get additionalInfo;
  @override
  Map<String, Object> get metadata;

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
  String get name => throw _privateConstructorUsedError;
  EntityId get ownerId =>
      throw _privateConstructorUsedError; // Updated to EntityId
// Location Information
  String? get address => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError; // Relationships
  List<EntityId> get equipmentIds =>
      throw _privateConstructorUsedError; // Updated to EntityId
// Site Details
  Map<String, Object> get siteDetails =>
      throw _privateConstructorUsedError; // Additional Data
  Map<String, Object>? get additionalInfo => throw _privateConstructorUsedError;
  Map<String, Object> get metadata =>
      throw _privateConstructorUsedError; // Added standardized metadata
  Map<String, String> get contacts => throw _privateConstructorUsedError;

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
      Map<String, Object> siteDetails,
      Map<String, Object>? additionalInfo,
      Map<String, Object> metadata,
      Map<String, String> contacts});

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
    Object? siteDetails = null,
    Object? additionalInfo = freezed,
    Object? metadata = null,
    Object? contacts = null,
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
      siteDetails: null == siteDetails
          ? _value.siteDetails
          : siteDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
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
      Map<String, Object> siteDetails,
      Map<String, Object>? additionalInfo,
      Map<String, Object> metadata,
      Map<String, String> contacts});

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
    Object? siteDetails = null,
    Object? additionalInfo = freezed,
    Object? metadata = null,
    Object? contacts = null,
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
      siteDetails: null == siteDetails
          ? _value._siteDetails
          : siteDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      additionalInfo: freezed == additionalInfo
          ? _value._additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
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
      final Map<String, Object> siteDetails = const {},
      final Map<String, Object>? additionalInfo,
      final Map<String, Object> metadata = const {},
      final Map<String, String> contacts = const {}})
      : _equipmentIds = equipmentIds,
        _siteDetails = siteDetails,
        _additionalInfo = additionalInfo,
        _metadata = metadata,
        _contacts = contacts,
        super._();

  factory _$SiteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteImplFromJson(json);

  @override
  final String name;
  @override
  final EntityId ownerId;
// Updated to EntityId
// Location Information
  @override
  final String? address;
  @override
  final double? latitude;
  @override
  final double? longitude;
// Relationships
  final List<EntityId> _equipmentIds;
// Relationships
  @override
  @JsonKey()
  List<EntityId> get equipmentIds {
    if (_equipmentIds is EqualUnmodifiableListView) return _equipmentIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipmentIds);
  }

// Updated to EntityId
// Site Details
  final Map<String, Object> _siteDetails;
// Updated to EntityId
// Site Details
  @override
  @JsonKey()
  Map<String, Object> get siteDetails {
    if (_siteDetails is EqualUnmodifiableMapView) return _siteDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_siteDetails);
  }

// Additional Data
  final Map<String, Object>? _additionalInfo;
// Additional Data
  @override
  Map<String, Object>? get additionalInfo {
    final value = _additionalInfo;
    if (value == null) return null;
    if (_additionalInfo is EqualUnmodifiableMapView) return _additionalInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Object> _metadata;
  @override
  @JsonKey()
  Map<String, Object> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

// Added standardized metadata
  final Map<String, String> _contacts;
// Added standardized metadata
  @override
  @JsonKey()
  Map<String, String> get contacts {
    if (_contacts is EqualUnmodifiableMapView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_contacts);
  }

  @override
  String toString() {
    return 'Site(name: $name, ownerId: $ownerId, address: $address, latitude: $latitude, longitude: $longitude, equipmentIds: $equipmentIds, siteDetails: $siteDetails, additionalInfo: $additionalInfo, metadata: $metadata, contacts: $contacts)';
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
            const DeepCollectionEquality()
                .equals(other._siteDetails, _siteDetails) &&
            const DeepCollectionEquality()
                .equals(other._additionalInfo, _additionalInfo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
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
      const DeepCollectionEquality().hash(_siteDetails),
      const DeepCollectionEquality().hash(_additionalInfo),
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_contacts));

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
      final Map<String, Object> siteDetails,
      final Map<String, Object>? additionalInfo,
      final Map<String, Object> metadata,
      final Map<String, String> contacts}) = _$SiteImpl;
  const _Site._() : super._();

  factory _Site.fromJson(Map<String, dynamic> json) = _$SiteImpl.fromJson;

  @override
  String get name;
  @override
  EntityId get ownerId; // Updated to EntityId
// Location Information
  @override
  String? get address;
  @override
  double? get latitude;
  @override
  double? get longitude; // Relationships
  @override
  List<EntityId> get equipmentIds; // Updated to EntityId
// Site Details
  @override
  Map<String, Object> get siteDetails; // Additional Data
  @override
  Map<String, Object>? get additionalInfo;
  @override
  Map<String, Object> get metadata; // Added standardized metadata
  @override
  Map<String, String> get contacts;

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
// Core Information
  String get name => throw _privateConstructorUsedError;
  EntityId get siteId =>
      throw _privateConstructorUsedError; // Updated to EntityId
  EquipmentType get type =>
      throw _privateConstructorUsedError; // Technical Details
  String? get serialNumber => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get manufacturer =>
      throw _privateConstructorUsedError; // Specifications
  Map<String, Object> get specifications =>
      throw _privateConstructorUsedError; // Dates
  DateTime? get installationDate => throw _privateConstructorUsedError;
  DateTime? get lastMaintenanceDate =>
      throw _privateConstructorUsedError; // Hierarchy
  EntityId? get parentEquipmentId =>
      throw _privateConstructorUsedError; // Updated to EntityId
  List<EntityId> get childEquipmentIds =>
      throw _privateConstructorUsedError; // Updated to EntityId
// Additional Data
  Map<String, Object>? get additionalInfo => throw _privateConstructorUsedError;
  Map<String, Object> get metadata =>
      throw _privateConstructorUsedError; // Added standardized metadata
  Map<String, String> get maintenanceContacts =>
      throw _privateConstructorUsedError;

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
      String? serialNumber,
      String? model,
      String? manufacturer,
      Map<String, Object> specifications,
      DateTime? installationDate,
      DateTime? lastMaintenanceDate,
      EntityId? parentEquipmentId,
      List<EntityId> childEquipmentIds,
      Map<String, Object>? additionalInfo,
      Map<String, Object> metadata,
      Map<String, String> maintenanceContacts});

  $EntityIdCopyWith<$Res> get siteId;
  $EntityIdCopyWith<$Res>? get parentEquipmentId;
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
    Object? serialNumber = freezed,
    Object? model = freezed,
    Object? manufacturer = freezed,
    Object? specifications = null,
    Object? installationDate = freezed,
    Object? lastMaintenanceDate = freezed,
    Object? parentEquipmentId = freezed,
    Object? childEquipmentIds = null,
    Object? additionalInfo = freezed,
    Object? metadata = null,
    Object? maintenanceContacts = null,
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
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      specifications: null == specifications
          ? _value.specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      installationDate: freezed == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMaintenanceDate: freezed == lastMaintenanceDate
          ? _value.lastMaintenanceDate
          : lastMaintenanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentEquipmentId: freezed == parentEquipmentId
          ? _value.parentEquipmentId
          : parentEquipmentId // ignore: cast_nullable_to_non_nullable
              as EntityId?,
      childEquipmentIds: null == childEquipmentIds
          ? _value.childEquipmentIds
          : childEquipmentIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      maintenanceContacts: null == maintenanceContacts
          ? _value.maintenanceContacts
          : maintenanceContacts // ignore: cast_nullable_to_non_nullable
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
  $EntityIdCopyWith<$Res>? get parentEquipmentId {
    if (_value.parentEquipmentId == null) {
      return null;
    }

    return $EntityIdCopyWith<$Res>(_value.parentEquipmentId!, (value) {
      return _then(_value.copyWith(parentEquipmentId: value) as $Val);
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
      String? serialNumber,
      String? model,
      String? manufacturer,
      Map<String, Object> specifications,
      DateTime? installationDate,
      DateTime? lastMaintenanceDate,
      EntityId? parentEquipmentId,
      List<EntityId> childEquipmentIds,
      Map<String, Object>? additionalInfo,
      Map<String, Object> metadata,
      Map<String, String> maintenanceContacts});

  @override
  $EntityIdCopyWith<$Res> get siteId;
  @override
  $EntityIdCopyWith<$Res>? get parentEquipmentId;
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
    Object? serialNumber = freezed,
    Object? model = freezed,
    Object? manufacturer = freezed,
    Object? specifications = null,
    Object? installationDate = freezed,
    Object? lastMaintenanceDate = freezed,
    Object? parentEquipmentId = freezed,
    Object? childEquipmentIds = null,
    Object? additionalInfo = freezed,
    Object? metadata = null,
    Object? maintenanceContacts = null,
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
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      specifications: null == specifications
          ? _value._specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      installationDate: freezed == installationDate
          ? _value.installationDate
          : installationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMaintenanceDate: freezed == lastMaintenanceDate
          ? _value.lastMaintenanceDate
          : lastMaintenanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentEquipmentId: freezed == parentEquipmentId
          ? _value.parentEquipmentId
          : parentEquipmentId // ignore: cast_nullable_to_non_nullable
              as EntityId?,
      childEquipmentIds: null == childEquipmentIds
          ? _value._childEquipmentIds
          : childEquipmentIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      additionalInfo: freezed == additionalInfo
          ? _value._additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      maintenanceContacts: null == maintenanceContacts
          ? _value._maintenanceContacts
          : maintenanceContacts // ignore: cast_nullable_to_non_nullable
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
      this.serialNumber,
      this.model,
      this.manufacturer,
      final Map<String, Object> specifications = const {},
      this.installationDate,
      this.lastMaintenanceDate,
      this.parentEquipmentId,
      final List<EntityId> childEquipmentIds = const [],
      final Map<String, Object>? additionalInfo,
      final Map<String, Object> metadata = const {},
      final Map<String, String> maintenanceContacts = const {}})
      : _specifications = specifications,
        _childEquipmentIds = childEquipmentIds,
        _additionalInfo = additionalInfo,
        _metadata = metadata,
        _maintenanceContacts = maintenanceContacts,
        super._();

  factory _$EquipmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentImplFromJson(json);

// Core Information
  @override
  final String name;
  @override
  final EntityId siteId;
// Updated to EntityId
  @override
  final EquipmentType type;
// Technical Details
  @override
  final String? serialNumber;
  @override
  final String? model;
  @override
  final String? manufacturer;
// Specifications
  final Map<String, Object> _specifications;
// Specifications
  @override
  @JsonKey()
  Map<String, Object> get specifications {
    if (_specifications is EqualUnmodifiableMapView) return _specifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_specifications);
  }

// Dates
  @override
  final DateTime? installationDate;
  @override
  final DateTime? lastMaintenanceDate;
// Hierarchy
  @override
  final EntityId? parentEquipmentId;
// Updated to EntityId
  final List<EntityId> _childEquipmentIds;
// Updated to EntityId
  @override
  @JsonKey()
  List<EntityId> get childEquipmentIds {
    if (_childEquipmentIds is EqualUnmodifiableListView)
      return _childEquipmentIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childEquipmentIds);
  }

// Updated to EntityId
// Additional Data
  final Map<String, Object>? _additionalInfo;
// Updated to EntityId
// Additional Data
  @override
  Map<String, Object>? get additionalInfo {
    final value = _additionalInfo;
    if (value == null) return null;
    if (_additionalInfo is EqualUnmodifiableMapView) return _additionalInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Object> _metadata;
  @override
  @JsonKey()
  Map<String, Object> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

// Added standardized metadata
  final Map<String, String> _maintenanceContacts;
// Added standardized metadata
  @override
  @JsonKey()
  Map<String, String> get maintenanceContacts {
    if (_maintenanceContacts is EqualUnmodifiableMapView)
      return _maintenanceContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_maintenanceContacts);
  }

  @override
  String toString() {
    return 'Equipment(name: $name, siteId: $siteId, type: $type, serialNumber: $serialNumber, model: $model, manufacturer: $manufacturer, specifications: $specifications, installationDate: $installationDate, lastMaintenanceDate: $lastMaintenanceDate, parentEquipmentId: $parentEquipmentId, childEquipmentIds: $childEquipmentIds, additionalInfo: $additionalInfo, metadata: $metadata, maintenanceContacts: $maintenanceContacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            const DeepCollectionEquality()
                .equals(other._specifications, _specifications) &&
            (identical(other.installationDate, installationDate) ||
                other.installationDate == installationDate) &&
            (identical(other.lastMaintenanceDate, lastMaintenanceDate) ||
                other.lastMaintenanceDate == lastMaintenanceDate) &&
            (identical(other.parentEquipmentId, parentEquipmentId) ||
                other.parentEquipmentId == parentEquipmentId) &&
            const DeepCollectionEquality()
                .equals(other._childEquipmentIds, _childEquipmentIds) &&
            const DeepCollectionEquality()
                .equals(other._additionalInfo, _additionalInfo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._maintenanceContacts, _maintenanceContacts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      siteId,
      type,
      serialNumber,
      model,
      manufacturer,
      const DeepCollectionEquality().hash(_specifications),
      installationDate,
      lastMaintenanceDate,
      parentEquipmentId,
      const DeepCollectionEquality().hash(_childEquipmentIds),
      const DeepCollectionEquality().hash(_additionalInfo),
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_maintenanceContacts));

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
      final String? serialNumber,
      final String? model,
      final String? manufacturer,
      final Map<String, Object> specifications,
      final DateTime? installationDate,
      final DateTime? lastMaintenanceDate,
      final EntityId? parentEquipmentId,
      final List<EntityId> childEquipmentIds,
      final Map<String, Object>? additionalInfo,
      final Map<String, Object> metadata,
      final Map<String, String> maintenanceContacts}) = _$EquipmentImpl;
  const _Equipment._() : super._();

  factory _Equipment.fromJson(Map<String, dynamic> json) =
      _$EquipmentImpl.fromJson;

// Core Information
  @override
  String get name;
  @override
  EntityId get siteId; // Updated to EntityId
  @override
  EquipmentType get type; // Technical Details
  @override
  String? get serialNumber;
  @override
  String? get model;
  @override
  String? get manufacturer; // Specifications
  @override
  Map<String, Object> get specifications; // Dates
  @override
  DateTime? get installationDate;
  @override
  DateTime? get lastMaintenanceDate; // Hierarchy
  @override
  EntityId? get parentEquipmentId; // Updated to EntityId
  @override
  List<EntityId> get childEquipmentIds; // Updated to EntityId
// Additional Data
  @override
  Map<String, Object>? get additionalInfo;
  @override
  Map<String, Object> get metadata; // Added standardized metadata
  @override
  Map<String, String> get maintenanceContacts;

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
  ContactInfo get contact => throw _privateConstructorUsedError;
  List<EntityId> get personnelIds =>
      throw _privateConstructorUsedError; // Updated to EntityId
  List<String> get serviceCategories => throw _privateConstructorUsedError;
  Map<String, Object> get metadata =>
      throw _privateConstructorUsedError; // Added standardized metadata
  Map<String, Object>? get additionalInfo => throw _privateConstructorUsedError;
  Map<String, Object> get qualifications => throw _privateConstructorUsedError;

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
      List<EntityId> personnelIds,
      List<String> serviceCategories,
      Map<String, Object> metadata,
      Map<String, Object>? additionalInfo,
      Map<String, Object> qualifications});

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
    Object? personnelIds = null,
    Object? serviceCategories = null,
    Object? metadata = null,
    Object? additionalInfo = freezed,
    Object? qualifications = null,
  }) {
    return _then(_value.copyWith(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactInfo,
      personnelIds: null == personnelIds
          ? _value.personnelIds
          : personnelIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      serviceCategories: null == serviceCategories
          ? _value.serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      qualifications: null == qualifications
          ? _value.qualifications
          : qualifications // ignore: cast_nullable_to_non_nullable
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
      List<EntityId> personnelIds,
      List<String> serviceCategories,
      Map<String, Object> metadata,
      Map<String, Object>? additionalInfo,
      Map<String, Object> qualifications});

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
    Object? personnelIds = null,
    Object? serviceCategories = null,
    Object? metadata = null,
    Object? additionalInfo = freezed,
    Object? qualifications = null,
  }) {
    return _then(_$VendorImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactInfo,
      personnelIds: null == personnelIds
          ? _value._personnelIds
          : personnelIds // ignore: cast_nullable_to_non_nullable
              as List<EntityId>,
      serviceCategories: null == serviceCategories
          ? _value._serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      additionalInfo: freezed == additionalInfo
          ? _value._additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      qualifications: null == qualifications
          ? _value._qualifications
          : qualifications // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorImpl extends _Vendor {
  const _$VendorImpl(
      {required this.contact,
      final List<EntityId> personnelIds = const [],
      final List<String> serviceCategories = const [],
      final Map<String, Object> metadata = const {},
      final Map<String, Object>? additionalInfo,
      final Map<String, Object> qualifications = const {}})
      : _personnelIds = personnelIds,
        _serviceCategories = serviceCategories,
        _metadata = metadata,
        _additionalInfo = additionalInfo,
        _qualifications = qualifications,
        super._();

  factory _$VendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorImplFromJson(json);

  @override
  final ContactInfo contact;
  final List<EntityId> _personnelIds;
  @override
  @JsonKey()
  List<EntityId> get personnelIds {
    if (_personnelIds is EqualUnmodifiableListView) return _personnelIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_personnelIds);
  }

// Updated to EntityId
  final List<String> _serviceCategories;
// Updated to EntityId
  @override
  @JsonKey()
  List<String> get serviceCategories {
    if (_serviceCategories is EqualUnmodifiableListView)
      return _serviceCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceCategories);
  }

  final Map<String, Object> _metadata;
  @override
  @JsonKey()
  Map<String, Object> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

// Added standardized metadata
  final Map<String, Object>? _additionalInfo;
// Added standardized metadata
  @override
  Map<String, Object>? get additionalInfo {
    final value = _additionalInfo;
    if (value == null) return null;
    if (_additionalInfo is EqualUnmodifiableMapView) return _additionalInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Object> _qualifications;
  @override
  @JsonKey()
  Map<String, Object> get qualifications {
    if (_qualifications is EqualUnmodifiableMapView) return _qualifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_qualifications);
  }

  @override
  String toString() {
    return 'Vendor(contact: $contact, personnelIds: $personnelIds, serviceCategories: $serviceCategories, metadata: $metadata, additionalInfo: $additionalInfo, qualifications: $qualifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorImpl &&
            (identical(other.contact, contact) || other.contact == contact) &&
            const DeepCollectionEquality()
                .equals(other._personnelIds, _personnelIds) &&
            const DeepCollectionEquality()
                .equals(other._serviceCategories, _serviceCategories) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._additionalInfo, _additionalInfo) &&
            const DeepCollectionEquality()
                .equals(other._qualifications, _qualifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contact,
      const DeepCollectionEquality().hash(_personnelIds),
      const DeepCollectionEquality().hash(_serviceCategories),
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_additionalInfo),
      const DeepCollectionEquality().hash(_qualifications));

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
      final List<EntityId> personnelIds,
      final List<String> serviceCategories,
      final Map<String, Object> metadata,
      final Map<String, Object>? additionalInfo,
      final Map<String, Object> qualifications}) = _$VendorImpl;
  const _Vendor._() : super._();

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$VendorImpl.fromJson;

  @override
  ContactInfo get contact;
  @override
  List<EntityId> get personnelIds; // Updated to EntityId
  @override
  List<String> get serviceCategories;
  @override
  Map<String, Object> get metadata; // Added standardized metadata
  @override
  Map<String, Object>? get additionalInfo;
  @override
  Map<String, Object> get qualifications;

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
// Core Information
  String get name => throw _privateConstructorUsedError;
  EntityId get vendorId =>
      throw _privateConstructorUsedError; // Updated to EntityId
  int get skillLevel => throw _privateConstructorUsedError; // Made required
// Professional Details
  String? get position => throw _privateConstructorUsedError;
  List<String> get certifications => throw _privateConstructorUsedError;
  List<String> get specializations =>
      throw _privateConstructorUsedError; // Contact Information
  String? get contactNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError; // Additional Data
  Map<String, Object>? get additionalInfo => throw _privateConstructorUsedError;
  Map<String, Object> get metadata =>
      throw _privateConstructorUsedError; // Added standardized metadata
  Map<String, Object> get schedule =>
      throw _privateConstructorUsedError; // Added schedule tracking
  Map<String, DateTime> get certificationDates =>
      throw _privateConstructorUsedError;

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
      String? position,
      List<String> certifications,
      List<String> specializations,
      String? contactNumber,
      String? email,
      Map<String, Object>? additionalInfo,
      Map<String, Object> metadata,
      Map<String, Object> schedule,
      Map<String, DateTime> certificationDates});

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
    Object? position = freezed,
    Object? certifications = null,
    Object? specializations = null,
    Object? contactNumber = freezed,
    Object? email = freezed,
    Object? additionalInfo = freezed,
    Object? metadata = null,
    Object? schedule = null,
    Object? certificationDates = null,
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
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      certifications: null == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      specializations: null == specializations
          ? _value.specializations
          : specializations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      contactNumber: freezed == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: freezed == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      certificationDates: null == certificationDates
          ? _value.certificationDates
          : certificationDates // ignore: cast_nullable_to_non_nullable
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
      String? position,
      List<String> certifications,
      List<String> specializations,
      String? contactNumber,
      String? email,
      Map<String, Object>? additionalInfo,
      Map<String, Object> metadata,
      Map<String, Object> schedule,
      Map<String, DateTime> certificationDates});

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
    Object? position = freezed,
    Object? certifications = null,
    Object? specializations = null,
    Object? contactNumber = freezed,
    Object? email = freezed,
    Object? additionalInfo = freezed,
    Object? metadata = null,
    Object? schedule = null,
    Object? certificationDates = null,
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
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      certifications: null == certifications
          ? _value._certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      specializations: null == specializations
          ? _value._specializations
          : specializations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      contactNumber: freezed == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalInfo: freezed == additionalInfo
          ? _value._additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      certificationDates: null == certificationDates
          ? _value._certificationDates
          : certificationDates // ignore: cast_nullable_to_non_nullable
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
      this.position,
      final List<String> certifications = const [],
      final List<String> specializations = const [],
      this.contactNumber,
      this.email,
      final Map<String, Object>? additionalInfo,
      final Map<String, Object> metadata = const {},
      final Map<String, Object> schedule = const {},
      final Map<String, DateTime> certificationDates = const {}})
      : _certifications = certifications,
        _specializations = specializations,
        _additionalInfo = additionalInfo,
        _metadata = metadata,
        _schedule = schedule,
        _certificationDates = certificationDates,
        super._();

  factory _$PersonnelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonnelImplFromJson(json);

// Core Information
  @override
  final String name;
  @override
  final EntityId vendorId;
// Updated to EntityId
  @override
  final int skillLevel;
// Made required
// Professional Details
  @override
  final String? position;
  final List<String> _certifications;
  @override
  @JsonKey()
  List<String> get certifications {
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certifications);
  }

  final List<String> _specializations;
  @override
  @JsonKey()
  List<String> get specializations {
    if (_specializations is EqualUnmodifiableListView) return _specializations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specializations);
  }

// Contact Information
  @override
  final String? contactNumber;
  @override
  final String? email;
// Additional Data
  final Map<String, Object>? _additionalInfo;
// Additional Data
  @override
  Map<String, Object>? get additionalInfo {
    final value = _additionalInfo;
    if (value == null) return null;
    if (_additionalInfo is EqualUnmodifiableMapView) return _additionalInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Object> _metadata;
  @override
  @JsonKey()
  Map<String, Object> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

// Added standardized metadata
  final Map<String, Object> _schedule;
// Added standardized metadata
  @override
  @JsonKey()
  Map<String, Object> get schedule {
    if (_schedule is EqualUnmodifiableMapView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_schedule);
  }

// Added schedule tracking
  final Map<String, DateTime> _certificationDates;
// Added schedule tracking
  @override
  @JsonKey()
  Map<String, DateTime> get certificationDates {
    if (_certificationDates is EqualUnmodifiableMapView)
      return _certificationDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_certificationDates);
  }

  @override
  String toString() {
    return 'Personnel(name: $name, vendorId: $vendorId, skillLevel: $skillLevel, position: $position, certifications: $certifications, specializations: $specializations, contactNumber: $contactNumber, email: $email, additionalInfo: $additionalInfo, metadata: $metadata, schedule: $schedule, certificationDates: $certificationDates)';
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
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality()
                .equals(other._certifications, _certifications) &&
            const DeepCollectionEquality()
                .equals(other._specializations, _specializations) &&
            (identical(other.contactNumber, contactNumber) ||
                other.contactNumber == contactNumber) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other._additionalInfo, _additionalInfo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule) &&
            const DeepCollectionEquality()
                .equals(other._certificationDates, _certificationDates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      vendorId,
      skillLevel,
      position,
      const DeepCollectionEquality().hash(_certifications),
      const DeepCollectionEquality().hash(_specializations),
      contactNumber,
      email,
      const DeepCollectionEquality().hash(_additionalInfo),
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_schedule),
      const DeepCollectionEquality().hash(_certificationDates));

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
      final String? position,
      final List<String> certifications,
      final List<String> specializations,
      final String? contactNumber,
      final String? email,
      final Map<String, Object>? additionalInfo,
      final Map<String, Object> metadata,
      final Map<String, Object> schedule,
      final Map<String, DateTime> certificationDates}) = _$PersonnelImpl;
  const _Personnel._() : super._();

  factory _Personnel.fromJson(Map<String, dynamic> json) =
      _$PersonnelImpl.fromJson;

// Core Information
  @override
  String get name;
  @override
  EntityId get vendorId; // Updated to EntityId
  @override
  int get skillLevel; // Made required
// Professional Details
  @override
  String? get position;
  @override
  List<String> get certifications;
  @override
  List<String> get specializations; // Contact Information
  @override
  String? get contactNumber;
  @override
  String? get email; // Additional Data
  @override
  Map<String, Object>? get additionalInfo;
  @override
  Map<String, Object> get metadata; // Added standardized metadata
  @override
  Map<String, Object> get schedule; // Added schedule tracking
  @override
  Map<String, DateTime> get certificationDates;

  /// Create a copy of Personnel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonnelImplCopyWith<_$PersonnelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
