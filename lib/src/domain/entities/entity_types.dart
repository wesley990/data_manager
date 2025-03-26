import 'package:data_manager/data_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_types.freezed.dart';
part 'entity_types.g.dart';

// Entity-specific classes
@freezed
sealed class OwnerModel with _$OwnerModel {
  const OwnerModel._(); // Add private constructor for methods

  const factory OwnerModel({
    // Core info
    required ContactInfo contact,
    @Default([]) List<EntityId> siteIds,

    // Metadata
    @Default({}) Map<String, Object> meta,
    Map<String, Object>? customData,
  }) = _OwnerModel;

  factory OwnerModel.fromJson(Map<String, Object> json) =>
      _$OwnerModelFromJson(json);

  // Computed properties
  bool get hasSites => siteIds.isNotEmpty;
  bool get hasMultipleSites => siteIds.length > 1;
  bool get hasValidContact => contact.email != null || contact.phone != null;
  String get displayName => contact.displayName;

  // Event handling
  OwnerModel applyEvent(DomainEventModel event) {
    return switch (event.eventType) {
      'SITE_ADDED' => copyWith(
          siteIds: [...siteIds, event.changes['siteId'] as EntityId],
        ),
      'SITE_REMOVED' => copyWith(
          siteIds: siteIds
              .where((id) => id != event.changes['siteId'] as EntityId)
              .toList(),
        ),
      'METADATA_UPDATED' => copyWith(
          meta: {...meta, ...event.changes['metadata'] as Map<String, Object>},
        ),
      _ => this,
    };
  }
}

@freezed
sealed class SiteModel with _$SiteModel {
  const SiteModel._();

  const factory SiteModel({
    // Core info
    required String name,
    required EntityId ownerId,

    // Location
    String? address,
    double? latitude,
    double? longitude,

    // Equipment
    @Default([]) List<EntityId> equipmentIds,

    // Details
    @Default({}) Map<String, Object> siteInfo,

    // Metadata
    Map<String, Object>? customData,
    @Default({}) Map<String, Object> meta,
    @Default({}) Map<String, String> contactInfo,
  }) = _SiteModel;

  factory SiteModel.fromJson(Map<String, Object> json) =>
      _$SiteModelFromJson(json);

  // Location methods
  bool get hasLocation => latitude != null && longitude != null;
  String get locationCoords => hasLocation ? '$latitude,$longitude' : '';

  // Equipment methods
  bool get hasEquipment => equipmentIds.isNotEmpty;

  // Event handling
  SiteModel applyEvent(DomainEventModel event) {
    return switch (event.eventType) {
      'EQUIPMENT_ADDED' => copyWith(
          equipmentIds: [
            ...equipmentIds,
            event.changes['equipmentId'] as EntityId
          ],
        ),
      'EQUIPMENT_REMOVED' => copyWith(
          equipmentIds: equipmentIds
              .where((id) => id != event.changes['equipmentId'] as EntityId)
              .toList(),
        ),
      'LOCATION_UPDATED' => copyWith(
          latitude: event.changes['latitude'] as double?,
          longitude: event.changes['longitude'] as double?,
        ),
      _ => this,
    };
  }
}

@freezed
sealed class EquipmentModel with _$EquipmentModel {
  const EquipmentModel._();

  const factory EquipmentModel({
    // Core info
    required String name,
    required EntityId siteId,
    required EquipmentType type,

    // Technical info
    String? serialNum,
    String? modelId,
    String? manufacturer,

    // Specs
    @Default({}) Map<String, Object> specs,

    // Dates
    DateTime? installDate,
    DateTime? lastMaintDate,

    // Hierarchy
    EntityId? parentId,
    @Default([]) List<EntityId> childIds,

    // Metadata
    Map<String, Object>? customData,
    @Default({}) Map<String, Object> meta,
    @Default({}) Map<String, String> maintContacts,
  }) = _EquipmentModel;

  factory EquipmentModel.fromJson(Map<String, Object> json) =>
      _$EquipmentModelFromJson(json);

  // Maintenance methods
  bool get needsMaintenance =>
      lastMaintDate
          ?.isBefore(DateTime.now().subtract(const Duration(days: 180))) ??
      true;

  bool get isNewInstall =>
      installDate?.isAfter(DateTime.now().subtract(const Duration(days: 30))) ??
      false;

  // Hierarchy methods
  bool get hasChildren => childIds.isNotEmpty;
  bool get isChild => parentId != null;
  bool get isRoot => parentId == null;
  bool get hasSubComponents => childIds.isNotEmpty;

  // Event handling
  EquipmentModel applyEvent(DomainEventModel event) {
    return switch (event.eventType) {
      'MAINTENANCE_PERFORMED' => copyWith(
          lastMaintDate: event.timestamp,
          meta: {
            ...meta,
            'lastMaintenanceBy': event.changes['performedBy'] ?? 'unknown',
            'maintenanceNotes': event.changes['notes'] ?? '',
          },
        ),
      'CHILD_ADDED' => copyWith(
          childIds: [...childIds, event.changes['childId'] as EntityId],
        ),
      'CHILD_REMOVED' => copyWith(
          childIds: childIds
              .where((id) => id != event.changes['childId'] as EntityId)
              .toList(),
        ),
      _ => this,
    };
  }
}

@freezed
sealed class VendorModel with _$VendorModel {
  const VendorModel._();

  const factory VendorModel({
    // Core info
    required ContactInfo contact,
    @Default([]) List<EntityId> staffIds,
    @Default([]) List<String> services,

    // Metadata
    @Default({}) Map<String, Object> meta,
    Map<String, Object>? customData,
    @Default({}) Map<String, Object> certifications,
  }) = _VendorModel;

  factory VendorModel.fromJson(Map<String, Object> json) =>
      _$VendorModelFromJson(json);

  // Business methods
  bool get hasStaff => staffIds.isNotEmpty;
  bool get hasServices => services.isNotEmpty;
  String get displayName => contact.displayName;
  bool get hasValidContact => contact.email != null || contact.phone != null;

  // Event handling
  VendorModel applyEvent(DomainEventModel event) {
    return switch (event.eventType) {
      'PERSONNEL_ADDED' => copyWith(
          staffIds: [...staffIds, event.changes['personnelId'] as EntityId],
        ),
      'PERSONNEL_REMOVED' => copyWith(
          staffIds: staffIds
              .where((id) => id != event.changes['personnelId'] as EntityId)
              .toList(),
        ),
      'SERVICE_CATEGORY_ADDED' => copyWith(
          services: [...services, event.changes['category'] as String],
        ),
      _ => this,
    };
  }
}

@freezed
sealed class PersonnelModel with _$PersonnelModel {
  const PersonnelModel._();

  const factory PersonnelModel({
    // Core info
    required String name,
    required EntityId vendorId,
    required int skillLevel,

    // Professional info
    String? role,
    @Default([]) List<String> certs,
    @Default([]) List<String> specs,

    // Contact info
    String? phone,
    String? email,

    // Metadata
    Map<String, Object>? customData,
    @Default({}) Map<String, Object> meta,
    @Default({}) Map<String, Object> schedule,
    @Default({}) Map<String, DateTime> certDates,
  }) = _PersonnelModel;

  factory PersonnelModel.fromJson(Map<String, Object> json) =>
      _$PersonnelModelFromJson(json);

  // Qualification methods
  bool get isCertified => certs.isNotEmpty;
  bool get isSpecialized => specs.isNotEmpty;
  bool get hasValidContact => email != null || phone != null;
  String? get primaryCert => certs.isNotEmpty ? certs.first : null;
  bool get hasValidCerts => certs.isNotEmpty && certDates.isNotEmpty;

  DateTime? getCertExpiry(String cert) => certDates[cert];

  // Event handling
  PersonnelModel applyEvent(DomainEventModel event) {
    return switch (event.eventType) {
      'CERTIFICATION_ADDED' => copyWith(
          certs: [...certs, event.changes['cert'] as String],
          certDates: {
            ...certDates,
            event.changes['cert'] as String:
                event.changes['expiry'] as DateTime,
          },
        ),
      'CERTIFICATION_EXPIRED' => copyWith(
          certs:
              certs.where((c) => c != event.changes['cert'] as String).toList(),
          certDates: Map.from(certDates)
            ..remove(event.changes['cert'] as String),
        ),
      _ => this,
    };
  }
}

// Type aliases for entity-specific BaseEntity instances
typedef OwnerEntity = BaseEntityModel<OwnerModel>;
typedef SiteEntity = BaseEntityModel<SiteModel>;
typedef EquipmentEntity = BaseEntityModel<EquipmentModel>;
typedef VendorEntity = BaseEntityModel<VendorModel>;
typedef PersonnelEntity = BaseEntityModel<PersonnelModel>;
