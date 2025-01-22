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

OwnerModel _$OwnerModelFromJson(Map<String, dynamic> json) {
  return _OwnerModel.fromJson(json);
}

/// @nodoc
mixin _$OwnerModel {
// Core info
  ContactInfo get contact => throw _privateConstructorUsedError;
  List<EntityId> get siteIds => throw _privateConstructorUsedError; // Metadata
  Map<String, Object> get meta => throw _privateConstructorUsedError;
  Map<String, Object>? get customData => throw _privateConstructorUsedError;

  /// Serializes this OwnerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerModelCopyWith<OwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerModelCopyWith<$Res> {
  factory $OwnerModelCopyWith(
          OwnerModel value, $Res Function(OwnerModel) then) =
      _$OwnerModelCopyWithImpl<$Res, OwnerModel>;
  @useResult
  $Res call(
      {ContactInfo contact,
      List<EntityId> siteIds,
      Map<String, Object> meta,
      Map<String, Object>? customData});

  $ContactInfoCopyWith<$Res> get contact;
}

/// @nodoc
class _$OwnerModelCopyWithImpl<$Res, $Val extends OwnerModel>
    implements $OwnerModelCopyWith<$Res> {
  _$OwnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerModel
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

  /// Create a copy of OwnerModel
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
abstract class _$$OwnerModelImplCopyWith<$Res>
    implements $OwnerModelCopyWith<$Res> {
  factory _$$OwnerModelImplCopyWith(
          _$OwnerModelImpl value, $Res Function(_$OwnerModelImpl) then) =
      __$$OwnerModelImplCopyWithImpl<$Res>;
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
class __$$OwnerModelImplCopyWithImpl<$Res>
    extends _$OwnerModelCopyWithImpl<$Res, _$OwnerModelImpl>
    implements _$$OwnerModelImplCopyWith<$Res> {
  __$$OwnerModelImplCopyWithImpl(
      _$OwnerModelImpl _value, $Res Function(_$OwnerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? siteIds = null,
    Object? meta = null,
    Object? customData = freezed,
  }) {
    return _then(_$OwnerModelImpl(
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
class _$OwnerModelImpl extends _OwnerModel {
  const _$OwnerModelImpl(
      {required this.contact,
      final List<EntityId> siteIds = const [],
      final Map<String, Object> meta = const {},
      final Map<String, Object>? customData})
      : _siteIds = siteIds,
        _meta = meta,
        _customData = customData,
        super._();

  factory _$OwnerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerModelImplFromJson(json);

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
    return 'OwnerModel(contact: $contact, siteIds: $siteIds, meta: $meta, customData: $customData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerModelImpl &&
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

  /// Create a copy of OwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerModelImplCopyWith<_$OwnerModelImpl> get copyWith =>
      __$$OwnerModelImplCopyWithImpl<_$OwnerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerModelImplToJson(
      this,
    );
  }
}

abstract class _OwnerModel extends OwnerModel {
  const factory _OwnerModel(
      {required final ContactInfo contact,
      final List<EntityId> siteIds,
      final Map<String, Object> meta,
      final Map<String, Object>? customData}) = _$OwnerModelImpl;
  const _OwnerModel._() : super._();

  factory _OwnerModel.fromJson(Map<String, dynamic> json) =
      _$OwnerModelImpl.fromJson;

// Core info
  @override
  ContactInfo get contact;
  @override
  List<EntityId> get siteIds; // Metadata
  @override
  Map<String, Object> get meta;
  @override
  Map<String, Object>? get customData;

  /// Create a copy of OwnerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerModelImplCopyWith<_$OwnerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SiteModel _$SiteModelFromJson(Map<String, dynamic> json) {
  return _SiteModel.fromJson(json);
}

/// @nodoc
mixin _$SiteModel {
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

  /// Serializes this SiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiteModelCopyWith<SiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteModelCopyWith<$Res> {
  factory $SiteModelCopyWith(SiteModel value, $Res Function(SiteModel) then) =
      _$SiteModelCopyWithImpl<$Res, SiteModel>;
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
class _$SiteModelCopyWithImpl<$Res, $Val extends SiteModel>
    implements $SiteModelCopyWith<$Res> {
  _$SiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiteModel
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

  /// Create a copy of SiteModel
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
abstract class _$$SiteModelImplCopyWith<$Res>
    implements $SiteModelCopyWith<$Res> {
  factory _$$SiteModelImplCopyWith(
          _$SiteModelImpl value, $Res Function(_$SiteModelImpl) then) =
      __$$SiteModelImplCopyWithImpl<$Res>;
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
class __$$SiteModelImplCopyWithImpl<$Res>
    extends _$SiteModelCopyWithImpl<$Res, _$SiteModelImpl>
    implements _$$SiteModelImplCopyWith<$Res> {
  __$$SiteModelImplCopyWithImpl(
      _$SiteModelImpl _value, $Res Function(_$SiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteModel
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
    return _then(_$SiteModelImpl(
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
class _$SiteModelImpl extends _SiteModel {
  const _$SiteModelImpl(
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

  factory _$SiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SiteModelImplFromJson(json);

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
    return 'SiteModel(name: $name, ownerId: $ownerId, address: $address, latitude: $latitude, longitude: $longitude, equipmentIds: $equipmentIds, siteInfo: $siteInfo, customData: $customData, meta: $meta, contactInfo: $contactInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteModelImpl &&
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

  /// Create a copy of SiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteModelImplCopyWith<_$SiteModelImpl> get copyWith =>
      __$$SiteModelImplCopyWithImpl<_$SiteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SiteModelImplToJson(
      this,
    );
  }
}

abstract class _SiteModel extends SiteModel {
  const factory _SiteModel(
      {required final String name,
      required final EntityId ownerId,
      final String? address,
      final double? latitude,
      final double? longitude,
      final List<EntityId> equipmentIds,
      final Map<String, Object> siteInfo,
      final Map<String, Object>? customData,
      final Map<String, Object> meta,
      final Map<String, String> contactInfo}) = _$SiteModelImpl;
  const _SiteModel._() : super._();

  factory _SiteModel.fromJson(Map<String, dynamic> json) =
      _$SiteModelImpl.fromJson;

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

  /// Create a copy of SiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteModelImplCopyWith<_$SiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EquipmentModel _$EquipmentModelFromJson(Map<String, dynamic> json) {
  return _EquipmentModel.fromJson(json);
}

/// @nodoc
mixin _$EquipmentModel {
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

  /// Serializes this EquipmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EquipmentModelCopyWith<EquipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentModelCopyWith<$Res> {
  factory $EquipmentModelCopyWith(
          EquipmentModel value, $Res Function(EquipmentModel) then) =
      _$EquipmentModelCopyWithImpl<$Res, EquipmentModel>;
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
class _$EquipmentModelCopyWithImpl<$Res, $Val extends EquipmentModel>
    implements $EquipmentModelCopyWith<$Res> {
  _$EquipmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EquipmentModel
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

  /// Create a copy of EquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityIdCopyWith<$Res> get siteId {
    return $EntityIdCopyWith<$Res>(_value.siteId, (value) {
      return _then(_value.copyWith(siteId: value) as $Val);
    });
  }

  /// Create a copy of EquipmentModel
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
abstract class _$$EquipmentModelImplCopyWith<$Res>
    implements $EquipmentModelCopyWith<$Res> {
  factory _$$EquipmentModelImplCopyWith(_$EquipmentModelImpl value,
          $Res Function(_$EquipmentModelImpl) then) =
      __$$EquipmentModelImplCopyWithImpl<$Res>;
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
class __$$EquipmentModelImplCopyWithImpl<$Res>
    extends _$EquipmentModelCopyWithImpl<$Res, _$EquipmentModelImpl>
    implements _$$EquipmentModelImplCopyWith<$Res> {
  __$$EquipmentModelImplCopyWithImpl(
      _$EquipmentModelImpl _value, $Res Function(_$EquipmentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EquipmentModel
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
    return _then(_$EquipmentModelImpl(
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
class _$EquipmentModelImpl extends _EquipmentModel {
  const _$EquipmentModelImpl(
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

  factory _$EquipmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentModelImplFromJson(json);

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
    return 'EquipmentModel(name: $name, siteId: $siteId, type: $type, serialNum: $serialNum, modelId: $modelId, manufacturer: $manufacturer, specs: $specs, installDate: $installDate, lastMaintDate: $lastMaintDate, parentId: $parentId, childIds: $childIds, customData: $customData, meta: $meta, maintContacts: $maintContacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentModelImpl &&
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

  /// Create a copy of EquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentModelImplCopyWith<_$EquipmentModelImpl> get copyWith =>
      __$$EquipmentModelImplCopyWithImpl<_$EquipmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipmentModelImplToJson(
      this,
    );
  }
}

abstract class _EquipmentModel extends EquipmentModel {
  const factory _EquipmentModel(
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
      final Map<String, String> maintContacts}) = _$EquipmentModelImpl;
  const _EquipmentModel._() : super._();

  factory _EquipmentModel.fromJson(Map<String, dynamic> json) =
      _$EquipmentModelImpl.fromJson;

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

  /// Create a copy of EquipmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EquipmentModelImplCopyWith<_$EquipmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VendorModel _$VendorModelFromJson(Map<String, dynamic> json) {
  return _VendorModel.fromJson(json);
}

/// @nodoc
mixin _$VendorModel {
// Core info
  ContactInfo get contact => throw _privateConstructorUsedError;
  List<EntityId> get staffIds => throw _privateConstructorUsedError;
  List<String> get services => throw _privateConstructorUsedError; // Metadata
  Map<String, Object> get meta => throw _privateConstructorUsedError;
  Map<String, Object>? get customData => throw _privateConstructorUsedError;
  Map<String, Object> get certifications => throw _privateConstructorUsedError;

  /// Serializes this VendorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendorModelCopyWith<VendorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorModelCopyWith<$Res> {
  factory $VendorModelCopyWith(
          VendorModel value, $Res Function(VendorModel) then) =
      _$VendorModelCopyWithImpl<$Res, VendorModel>;
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
class _$VendorModelCopyWithImpl<$Res, $Val extends VendorModel>
    implements $VendorModelCopyWith<$Res> {
  _$VendorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendorModel
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

  /// Create a copy of VendorModel
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
abstract class _$$VendorModelImplCopyWith<$Res>
    implements $VendorModelCopyWith<$Res> {
  factory _$$VendorModelImplCopyWith(
          _$VendorModelImpl value, $Res Function(_$VendorModelImpl) then) =
      __$$VendorModelImplCopyWithImpl<$Res>;
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
class __$$VendorModelImplCopyWithImpl<$Res>
    extends _$VendorModelCopyWithImpl<$Res, _$VendorModelImpl>
    implements _$$VendorModelImplCopyWith<$Res> {
  __$$VendorModelImplCopyWithImpl(
      _$VendorModelImpl _value, $Res Function(_$VendorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendorModel
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
    return _then(_$VendorModelImpl(
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
class _$VendorModelImpl extends _VendorModel {
  const _$VendorModelImpl(
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

  factory _$VendorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorModelImplFromJson(json);

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
    return 'VendorModel(contact: $contact, staffIds: $staffIds, services: $services, meta: $meta, customData: $customData, certifications: $certifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorModelImpl &&
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

  /// Create a copy of VendorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorModelImplCopyWith<_$VendorModelImpl> get copyWith =>
      __$$VendorModelImplCopyWithImpl<_$VendorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorModelImplToJson(
      this,
    );
  }
}

abstract class _VendorModel extends VendorModel {
  const factory _VendorModel(
      {required final ContactInfo contact,
      final List<EntityId> staffIds,
      final List<String> services,
      final Map<String, Object> meta,
      final Map<String, Object>? customData,
      final Map<String, Object> certifications}) = _$VendorModelImpl;
  const _VendorModel._() : super._();

  factory _VendorModel.fromJson(Map<String, dynamic> json) =
      _$VendorModelImpl.fromJson;

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

  /// Create a copy of VendorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendorModelImplCopyWith<_$VendorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonnelModel _$PersonnelModelFromJson(Map<String, dynamic> json) {
  return _PersonnelModel.fromJson(json);
}

/// @nodoc
mixin _$PersonnelModel {
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

  /// Serializes this PersonnelModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonnelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonnelModelCopyWith<PersonnelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonnelModelCopyWith<$Res> {
  factory $PersonnelModelCopyWith(
          PersonnelModel value, $Res Function(PersonnelModel) then) =
      _$PersonnelModelCopyWithImpl<$Res, PersonnelModel>;
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
class _$PersonnelModelCopyWithImpl<$Res, $Val extends PersonnelModel>
    implements $PersonnelModelCopyWith<$Res> {
  _$PersonnelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonnelModel
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

  /// Create a copy of PersonnelModel
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
abstract class _$$PersonnelModelImplCopyWith<$Res>
    implements $PersonnelModelCopyWith<$Res> {
  factory _$$PersonnelModelImplCopyWith(_$PersonnelModelImpl value,
          $Res Function(_$PersonnelModelImpl) then) =
      __$$PersonnelModelImplCopyWithImpl<$Res>;
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
class __$$PersonnelModelImplCopyWithImpl<$Res>
    extends _$PersonnelModelCopyWithImpl<$Res, _$PersonnelModelImpl>
    implements _$$PersonnelModelImplCopyWith<$Res> {
  __$$PersonnelModelImplCopyWithImpl(
      _$PersonnelModelImpl _value, $Res Function(_$PersonnelModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonnelModel
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
    return _then(_$PersonnelModelImpl(
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
class _$PersonnelModelImpl extends _PersonnelModel {
  const _$PersonnelModelImpl(
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

  factory _$PersonnelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonnelModelImplFromJson(json);

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
    return 'PersonnelModel(name: $name, vendorId: $vendorId, skillLevel: $skillLevel, role: $role, certs: $certs, specs: $specs, phone: $phone, email: $email, customData: $customData, meta: $meta, schedule: $schedule, certDates: $certDates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonnelModelImpl &&
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

  /// Create a copy of PersonnelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonnelModelImplCopyWith<_$PersonnelModelImpl> get copyWith =>
      __$$PersonnelModelImplCopyWithImpl<_$PersonnelModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonnelModelImplToJson(
      this,
    );
  }
}

abstract class _PersonnelModel extends PersonnelModel {
  const factory _PersonnelModel(
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
      final Map<String, DateTime> certDates}) = _$PersonnelModelImpl;
  const _PersonnelModel._() : super._();

  factory _PersonnelModel.fromJson(Map<String, dynamic> json) =
      _$PersonnelModelImpl.fromJson;

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

  /// Create a copy of PersonnelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonnelModelImplCopyWith<_$PersonnelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
