import 'package:data_manager/src/domain/entities/base_entity.dart';
import 'package:data_manager/src/domain/events/domain_event.dart';
import 'package:data_manager/src/domain/value_objects/contact_value_objects.dart';
import 'package:data_manager/src/domain/value_objects/enum_objects.dart';
import 'package:data_manager/src/domain/value_objects/identity_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_types.freezed.dart';
part 'entity_types.g.dart';

/// Domain-specific data models for business entities
@freezed
sealed class OwnerData with _$OwnerData {
  const OwnerData._(); // Private constructor for methods

  /// Organization or individual owner entity with contact information
  ///
  /// [contact] - Primary contact details including name, phone, email
  /// [siteIds] - References to sites owned by this entity
  const factory OwnerData({
    // Core info
    required ContactInfo contact,
    @Default([]) List<EntityId> siteIds,

    // Metadata
    @Default({}) Map<String, Object> meta,
    Map<String, Object>? customData,
  }) = _OwnerData;

  factory OwnerData.fromJson(Map<String, Object> json) =>
      _$OwnerDataFromJson(json);

  // Computed properties
  /// Whether this owner has associated sites
  bool get hasSites => siteIds.isNotEmpty;

  /// Whether owner has multiple sites
  bool get hasMultipleSites => siteIds.length > 1;

  /// Whether valid contact information exists (email or phone)
  bool get hasValidContact => contact.email != null || contact.phone != null;

  /// Human-readable name for display
  String get displayName => contact.displayName;

  /// Applies domain event and returns updated state without mutation
  OwnerData applyEvent(DomainEventModel event) {
    return switch (event.eventType) {
      'SITE_ADDED' => copyWith(
        siteIds: [...siteIds, event.changes['siteId'] as EntityId],
      ),
      'SITE_REMOVED' => copyWith(
        siteIds:
            siteIds
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
sealed class SiteData with _$SiteData {
  const SiteData._();

  /// Physical location or site data model
  ///
  /// [name] - Site identifier name
  /// [ownerId] - Reference to the owner of this site
  /// [address] - Optional physical street address
  /// [equipmentIds] - Equipment installed at this location
  const factory SiteData({
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
  }) = _SiteData;

  factory SiteData.fromJson(Map<String, Object> json) =>
      _$SiteDataFromJson(json);

  /// Whether site has valid geolocation coordinates
  bool get hasLocation => latitude != null && longitude != null;

  /// Formatted location coordinates string in "lat,lng" format
  String get locationCoords => hasLocation ? '$latitude,$longitude' : '';

  /// Whether site has associated equipment
  bool get hasEquipment => equipmentIds.isNotEmpty;

  /// Handles domain events by returning updated immutable state
  SiteData applyEvent(DomainEventModel event) {
    return switch (event.eventType) {
      'EQUIPMENT_ADDED' => copyWith(
        equipmentIds: [
          ...equipmentIds,
          event.changes['equipmentId'] as EntityId,
        ],
      ),
      'EQUIPMENT_REMOVED' => copyWith(
        equipmentIds:
            equipmentIds
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
sealed class EquipmentData with _$EquipmentData {
  const EquipmentData._();

  /// Physical equipment or machinery data model
  ///
  /// [name] - Equipment identifier name
  /// [siteId] - Location where equipment is installed
  /// [type] - Equipment classification category
  /// [parentId] - Optional parent in equipment hierarchy
  /// [childIds] - Direct sub-components of this equipment
  const factory EquipmentData({
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
  }) = _EquipmentData;

  factory EquipmentData.fromJson(Map<String, Object> json) =>
      _$EquipmentDataFromJson(json);

  /// Whether equipment requires maintenance (over 180 days since last)
  bool get needsMaintenance =>
      lastMaintDate?.isBefore(
        DateTime.now().subtract(const Duration(days: 180)),
      ) ??
      true;

  /// Whether equipment was installed in the last 30 days
  bool get isNewInstall =>
      installDate?.isAfter(DateTime.now().subtract(const Duration(days: 30))) ??
      false;

  /// Whether equipment has child components
  bool get hasChildren => childIds.isNotEmpty;

  /// Whether equipment is a child/sub-component
  bool get isChild => parentId != null;

  /// Whether equipment is a root component (not a child)
  bool get isRoot => parentId == null;

  /// Whether equipment has sub-components
  bool get hasSubComponents => childIds.isNotEmpty;

  /// Processes domain events, returning updated immutable state
  EquipmentData applyEvent(DomainEventModel event) {
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
        childIds:
            childIds
                .where((id) => id != event.changes['childId'] as EntityId)
                .toList(),
      ),
      _ => this,
    };
  }
}

@freezed
sealed class VendorData with _$VendorData {
  const VendorData._();

  /// Service provider or vendor organization data model
  ///
  /// [contact] - Primary vendor contact information
  /// [staffIds] - Personnel affiliated with this vendor
  /// [services] - Service categories offered
  const factory VendorData({
    // Core info
    required ContactInfo contact,
    @Default([]) List<EntityId> staffIds,
    @Default([]) List<String> services,

    // Metadata
    @Default({}) Map<String, Object> meta,
    Map<String, Object>? customData,
    @Default({}) Map<String, Object> certifications,
  }) = _VendorData;

  factory VendorData.fromJson(Map<String, Object> json) =>
      _$VendorDataFromJson(json);

  /// Whether vendor has associated staff members
  bool get hasStaff => staffIds.isNotEmpty;

  /// Whether vendor provides services
  bool get hasServices => services.isNotEmpty;

  /// Human-readable name for display
  String get displayName => contact.displayName;

  /// Whether valid contact information exists
  bool get hasValidContact => contact.email != null || contact.phone != null;

  /// Processes domain events to produce updated immutable state
  VendorData applyEvent(DomainEventModel event) {
    return switch (event.eventType) {
      'PERSONNEL_ADDED' => copyWith(
        staffIds: [...staffIds, event.changes['personnelId'] as EntityId],
      ),
      'PERSONNEL_REMOVED' => copyWith(
        staffIds:
            staffIds
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
sealed class PersonnelData with _$PersonnelData {
  const PersonnelData._();

  /// Individual service provider data model
  ///
  /// [name] - Individual's name
  /// [vendorId] - Associated vendor/employer
  /// [skillLevel] - Skill rating (1-10)
  /// [certs] - Professional certifications held
  /// [certDates] - Certification validity periods
  const factory PersonnelData({
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
  }) = _PersonnelData;

  factory PersonnelData.fromJson(Map<String, Object> json) =>
      _$PersonnelDataFromJson(json);

  /// Whether person holds certifications
  bool get isCertified => certs.isNotEmpty;

  /// Whether person has specialized skills
  bool get isSpecialized => specs.isNotEmpty;

  /// Whether valid contact information exists
  bool get hasValidContact => email != null || phone != null;

  /// Primary certification, if any
  String? get primaryCert => certs.isNotEmpty ? certs.first : null;

  /// Whether certifications are valid and have dates
  bool get hasValidCerts => certs.isNotEmpty && certDates.isNotEmpty;

  /// Gets the expiration date for a specific certification
  DateTime? getCertExpiry(String cert) => certDates[cert];

  /// Processes domain events to produce updated immutable state
  PersonnelData applyEvent(DomainEventModel event) {
    return switch (event.eventType) {
      'CERTIFICATION_ADDED' => copyWith(
        certs: [...certs, event.changes['cert'] as String],
        certDates: {
          ...certDates,
          event.changes['cert'] as String: event.changes['expiry'] as DateTime,
        },
      ),
      'CERTIFICATION_EXPIRED' => copyWith(
        certs:
            certs.where((c) => c != event.changes['cert'] as String).toList(),
        certDates: Map.from(certDates)..remove(event.changes['cert'] as String),
      ),
      _ => this,
    };
  }
}

/// Type aliases for entity-specific BaseEntityModel instances
typedef OwnerEntityModel = BaseEntityModel<OwnerData>;
typedef SiteEntityModel = BaseEntityModel<SiteData>;
typedef EquipmentEntityModel = BaseEntityModel<EquipmentData>;
typedef VendorEntityModel = BaseEntityModel<VendorData>;
typedef PersonnelEntityModel = BaseEntityModel<PersonnelData>;
