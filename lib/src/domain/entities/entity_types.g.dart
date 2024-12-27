// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      contact:
          ContactInfo.fromJson((json['contact'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      siteIds: (json['siteIds'] as List<dynamic>?)
              ?.map((e) => EntityId.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const [],
      additionalInfo: (json['additionalInfo'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'siteIds': instance.siteIds,
      'additionalInfo': instance.additionalInfo,
      'metadata': instance.metadata,
    };

_$SiteImpl _$$SiteImplFromJson(Map<String, dynamic> json) => _$SiteImpl(
      name: json['name'] as String,
      ownerId: EntityId.fromJson((json['ownerId'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      equipmentIds: (json['equipmentIds'] as List<dynamic>?)
              ?.map((e) => EntityId.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const [],
      siteDetails: (json['siteDetails'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      additionalInfo: (json['additionalInfo'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      contacts: (json['contacts'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$SiteImplToJson(_$SiteImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ownerId': instance.ownerId,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'equipmentIds': instance.equipmentIds,
      'siteDetails': instance.siteDetails,
      'additionalInfo': instance.additionalInfo,
      'metadata': instance.metadata,
      'contacts': instance.contacts,
    };

_$EquipmentImpl _$$EquipmentImplFromJson(Map<String, dynamic> json) =>
    _$EquipmentImpl(
      name: json['name'] as String,
      siteId: EntityId.fromJson((json['siteId'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      type: $enumDecode(_$EquipmentTypeEnumMap, json['type']),
      serialNumber: json['serialNumber'] as String?,
      model: json['model'] as String?,
      manufacturer: json['manufacturer'] as String?,
      specifications: (json['specifications'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      installationDate: json['installationDate'] == null
          ? null
          : DateTime.parse(json['installationDate'] as String),
      lastMaintenanceDate: json['lastMaintenanceDate'] == null
          ? null
          : DateTime.parse(json['lastMaintenanceDate'] as String),
      parentEquipmentId: json['parentEquipmentId'] == null
          ? null
          : EntityId.fromJson(
              (json['parentEquipmentId'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      childEquipmentIds: (json['childEquipmentIds'] as List<dynamic>?)
              ?.map((e) => EntityId.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const [],
      additionalInfo: (json['additionalInfo'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      maintenanceContacts:
          (json['maintenanceContacts'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as String),
              ) ??
              const {},
    );

Map<String, dynamic> _$$EquipmentImplToJson(_$EquipmentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'siteId': instance.siteId,
      'type': _$EquipmentTypeEnumMap[instance.type]!,
      'serialNumber': instance.serialNumber,
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'specifications': instance.specifications,
      'installationDate': instance.installationDate?.toIso8601String(),
      'lastMaintenanceDate': instance.lastMaintenanceDate?.toIso8601String(),
      'parentEquipmentId': instance.parentEquipmentId,
      'childEquipmentIds': instance.childEquipmentIds,
      'additionalInfo': instance.additionalInfo,
      'metadata': instance.metadata,
      'maintenanceContacts': instance.maintenanceContacts,
    };

const _$EquipmentTypeEnumMap = {
  EquipmentType.pcs: 'pcs',
  EquipmentType.bess: 'bess',
  EquipmentType.array: 'array',
  EquipmentType.stack: 'stack',
  EquipmentType.bp: 'bp',
  EquipmentType.cell: 'cell',
};

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      contact:
          ContactInfo.fromJson((json['contact'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      personnelIds: (json['personnelIds'] as List<dynamic>?)
              ?.map((e) => EntityId.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const [],
      serviceCategories: (json['serviceCategories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      additionalInfo: (json['additionalInfo'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      qualifications: (json['qualifications'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'personnelIds': instance.personnelIds,
      'serviceCategories': instance.serviceCategories,
      'metadata': instance.metadata,
      'additionalInfo': instance.additionalInfo,
      'qualifications': instance.qualifications,
    };

_$PersonnelImpl _$$PersonnelImplFromJson(Map<String, dynamic> json) =>
    _$PersonnelImpl(
      name: json['name'] as String,
      vendorId:
          EntityId.fromJson((json['vendorId'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      skillLevel: (json['skillLevel'] as num).toInt(),
      position: json['position'] as String?,
      certifications: (json['certifications'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      specializations: (json['specializations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      contactNumber: json['contactNumber'] as String?,
      email: json['email'] as String?,
      additionalInfo: (json['additionalInfo'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      schedule: (json['schedule'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      certificationDates:
          (json['certificationDates'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, DateTime.parse(e as String)),
              ) ??
              const {},
    );

Map<String, dynamic> _$$PersonnelImplToJson(_$PersonnelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'vendorId': instance.vendorId,
      'skillLevel': instance.skillLevel,
      'position': instance.position,
      'certifications': instance.certifications,
      'specializations': instance.specializations,
      'contactNumber': instance.contactNumber,
      'email': instance.email,
      'additionalInfo': instance.additionalInfo,
      'metadata': instance.metadata,
      'schedule': instance.schedule,
      'certificationDates': instance.certificationDates
          .map((k, e) => MapEntry(k, e.toIso8601String())),
    };
