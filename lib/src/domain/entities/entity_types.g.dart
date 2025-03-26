// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OwnerModel _$OwnerModelFromJson(Map<String, dynamic> json) => _OwnerModel(
  contact: ContactInfo.fromJson(
    (json['contact'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e as Object),
    ),
  ),
  siteIds:
      (json['siteIds'] as List<dynamic>?)
          ?.map(
            (e) => EntityId.fromJson(
              (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(k, e as Object),
              ),
            ),
          )
          .toList() ??
      const [],
  meta:
      (json['meta'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ) ??
      const {},
  customData: (json['customData'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as Object),
  ),
);

Map<String, dynamic> _$OwnerModelToJson(_OwnerModel instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'siteIds': instance.siteIds,
      'meta': instance.meta,
      'customData': instance.customData,
    };

_SiteModel _$SiteModelFromJson(Map<String, dynamic> json) => _SiteModel(
  name: json['name'] as String,
  ownerId: EntityId.fromJson(
    (json['ownerId'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e as Object),
    ),
  ),
  address: json['address'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  equipmentIds:
      (json['equipmentIds'] as List<dynamic>?)
          ?.map(
            (e) => EntityId.fromJson(
              (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(k, e as Object),
              ),
            ),
          )
          .toList() ??
      const [],
  siteInfo:
      (json['siteInfo'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ) ??
      const {},
  customData: (json['customData'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as Object),
  ),
  meta:
      (json['meta'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ) ??
      const {},
  contactInfo:
      (json['contactInfo'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ) ??
      const {},
);

Map<String, dynamic> _$SiteModelToJson(_SiteModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ownerId': instance.ownerId,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'equipmentIds': instance.equipmentIds,
      'siteInfo': instance.siteInfo,
      'customData': instance.customData,
      'meta': instance.meta,
      'contactInfo': instance.contactInfo,
    };

_EquipmentModel _$EquipmentModelFromJson(Map<String, dynamic> json) =>
    _EquipmentModel(
      name: json['name'] as String,
      siteId: EntityId.fromJson(
        (json['siteId'] as Map<String, dynamic>).map(
          (k, e) => MapEntry(k, e as Object),
        ),
      ),
      type: $enumDecode(_$EquipmentTypeEnumMap, json['type']),
      serialNum: json['serialNum'] as String?,
      modelId: json['modelId'] as String?,
      manufacturer: json['manufacturer'] as String?,
      specs:
          (json['specs'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      installDate:
          json['installDate'] == null
              ? null
              : DateTime.parse(json['installDate'] as String),
      lastMaintDate:
          json['lastMaintDate'] == null
              ? null
              : DateTime.parse(json['lastMaintDate'] as String),
      parentId:
          json['parentId'] == null
              ? null
              : EntityId.fromJson(
                (json['parentId'] as Map<String, dynamic>).map(
                  (k, e) => MapEntry(k, e as Object),
                ),
              ),
      childIds:
          (json['childIds'] as List<dynamic>?)
              ?.map(
                (e) => EntityId.fromJson(
                  (e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  ),
                ),
              )
              .toList() ??
          const [],
      customData: (json['customData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      meta:
          (json['meta'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      maintContacts:
          (json['maintContacts'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$EquipmentModelToJson(_EquipmentModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'siteId': instance.siteId,
      'type': _$EquipmentTypeEnumMap[instance.type]!,
      'serialNum': instance.serialNum,
      'modelId': instance.modelId,
      'manufacturer': instance.manufacturer,
      'specs': instance.specs,
      'installDate': instance.installDate?.toIso8601String(),
      'lastMaintDate': instance.lastMaintDate?.toIso8601String(),
      'parentId': instance.parentId,
      'childIds': instance.childIds,
      'customData': instance.customData,
      'meta': instance.meta,
      'maintContacts': instance.maintContacts,
    };

const _$EquipmentTypeEnumMap = {
  EquipmentType.pcs: 'pcs',
  EquipmentType.bess: 'bess',
  EquipmentType.array: 'array',
  EquipmentType.stack: 'stack',
  EquipmentType.bp: 'bp',
  EquipmentType.cell: 'cell',
};

_VendorModel _$VendorModelFromJson(Map<String, dynamic> json) => _VendorModel(
  contact: ContactInfo.fromJson(
    (json['contact'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e as Object),
    ),
  ),
  staffIds:
      (json['staffIds'] as List<dynamic>?)
          ?.map(
            (e) => EntityId.fromJson(
              (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(k, e as Object),
              ),
            ),
          )
          .toList() ??
      const [],
  services:
      (json['services'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  meta:
      (json['meta'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ) ??
      const {},
  customData: (json['customData'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as Object),
  ),
  certifications:
      (json['certifications'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ) ??
      const {},
);

Map<String, dynamic> _$VendorModelToJson(_VendorModel instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'staffIds': instance.staffIds,
      'services': instance.services,
      'meta': instance.meta,
      'customData': instance.customData,
      'certifications': instance.certifications,
    };

_PersonnelModel _$PersonnelModelFromJson(Map<String, dynamic> json) =>
    _PersonnelModel(
      name: json['name'] as String,
      vendorId: EntityId.fromJson(
        (json['vendorId'] as Map<String, dynamic>).map(
          (k, e) => MapEntry(k, e as Object),
        ),
      ),
      skillLevel: (json['skillLevel'] as num).toInt(),
      role: json['role'] as String?,
      certs:
          (json['certs'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      specs:
          (json['specs'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      customData: (json['customData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      meta:
          (json['meta'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      schedule:
          (json['schedule'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      certDates:
          (json['certDates'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, DateTime.parse(e as String)),
          ) ??
          const {},
    );

Map<String, dynamic> _$PersonnelModelToJson(_PersonnelModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'vendorId': instance.vendorId,
      'skillLevel': instance.skillLevel,
      'role': instance.role,
      'certs': instance.certs,
      'specs': instance.specs,
      'phone': instance.phone,
      'email': instance.email,
      'customData': instance.customData,
      'meta': instance.meta,
      'schedule': instance.schedule,
      'certDates': instance.certDates.map(
        (k, e) => MapEntry(k, e.toIso8601String()),
      ),
    };
