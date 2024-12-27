import 'package:data_manager/data_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_types.freezed.dart';
part 'entity_types.g.dart';

// Entity-specific classes
@freezed
class Owner with _$Owner {
  const Owner._(); // Add private constructor for methods

  const factory Owner({
    required ContactInfo contact,
    @Default([]) List<EntityId> siteIds, // Updated to EntityId
    Map<String, Object>? additionalInfo,
    @Default({}) Map<String, Object> metadata, // Added standardized metadata
  }) = _Owner;

  factory Owner.fromJson(Map<String, Object> json) => _$OwnerFromJson(json);

  // Useful computed properties
  bool get hasMultipleSites => siteIds.length > 1;
  bool get hasValidContact => contact.hasValidContact;
  String get displayName => contact.displayName;

  // New validation methods
  ValidationResult validate() {
    final issues = <ValidationIssue>[];

    if (!hasValidContact) {
      issues.add(ValidationIssue(
        message: 'At least one contact method (email or phone) is required',
      ));
    }

    if (siteIds.length < 2) {
      issues.add(ValidationIssue(
        message: 'Owner must have at least 2 sites',
      ));
    }

    return issues.isEmpty
        ? ValidationResult.valid()
        : ValidationResult.invalid(issues);
  }

  // Helper method for quick validation check
  bool get isValid => validate().isValid;

  // Add validation against PathConstants
  bool validateSitePath(String path) {
    if (path.length > PathConstants.maxPathLength) return false;
    final segments = path.split(PathConstants.pathSeparator);
    return segments.every((s) => s.length <= PathConstants.maxSegmentLength);
  }

  // Add event handling support
  Owner applyEvent(DomainEvent event) {
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
          metadata: {
            ...metadata,
            ...event.changes['metadata'] as Map<String, Object>
          },
        ),
      _ => this,
    };
  }
}

@freezed
class Site with _$Site {
  const Site._();

  const factory Site({
    required String name,
    required EntityId ownerId, // Updated to EntityId

    // Location Information
    String? address,
    double? latitude,
    double? longitude,

    // Relationships
    @Default([]) List<EntityId> equipmentIds, // Updated to EntityId

    // Site Details
    @Default({}) Map<String, Object> siteDetails,

    // Additional Data
    Map<String, Object>? additionalInfo,
    @Default({}) Map<String, Object> metadata, // Added standardized metadata
    @Default({}) Map<String, String> contacts, // Added standardized contacts
  }) = _Site;

  factory Site.fromJson(Map<String, Object> json) => _$SiteFromJson(json);

  // Add coordinates handling
  bool get hasLocation => latitude != null && longitude != null;
  String get coordinates => hasLocation ? '$latitude,$longitude' : '';
  bool get hasEquipment => equipmentIds.isNotEmpty;

  // Add path validation
  bool validateEquipmentPath(String path) {
    return path.length <= PathConstants.maxPathLength &&
        path
            .split(PathConstants.pathSeparator)
            .every((s) => s.length <= PathConstants.maxSegmentLength);
  }

  // Add event handling support
  Site applyEvent(DomainEvent event) {
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
class Equipment with _$Equipment {
  const Equipment._();

  const factory Equipment({
    // Core Information
    required String name,
    required EntityId siteId, // Updated to EntityId
    required EquipmentType type,

    // Technical Details
    String? serialNumber,
    String? model,
    String? manufacturer,

    // Specifications
    @Default({}) Map<String, Object> specifications,

    // Dates
    DateTime? installationDate,
    DateTime? lastMaintenanceDate,

    // Hierarchy
    EntityId? parentEquipmentId, // Updated to EntityId
    @Default([]) List<EntityId> childEquipmentIds, // Updated to EntityId

    // Additional Data
    Map<String, Object>? additionalInfo,
    @Default({}) Map<String, Object> metadata, // Added standardized metadata
    @Default({})
    Map<String, String> maintenanceContacts, // Added maintenance contacts
  }) = _Equipment;

  factory Equipment.fromJson(Map<String, Object> json) =>
      _$EquipmentFromJson(json);

  // Add maintenance helpers
  bool get needsMaintenance =>
      lastMaintenanceDate
          ?.isBefore(DateTime.now().subtract(const Duration(days: 180))) ??
      true;

  bool get isNewInstallation =>
      installationDate
          ?.isAfter(DateTime.now().subtract(const Duration(days: 30))) ??
      false;

  bool get hasChildren => childEquipmentIds.isNotEmpty;
  bool get isChild => parentEquipmentId != null;

  // Added helper methods
  bool get isMainComponent => parentEquipmentId == null;
  bool get hasSubComponents => childEquipmentIds.isNotEmpty;

  // Add hierarchy validation
  bool validateHierarchyPath(String path) {
    if (path.length > PathConstants.maxPathLength) return false;
    final segments = path.split(PathConstants.pathSeparator);
    if (segments.length > EntityConstants.maximumHierarchyDepth) return false;
    return segments.every((s) => s.length <= PathConstants.maxSegmentLength);
  }

  // Add event handling support
  Equipment applyEvent(DomainEvent event) {
    return switch (event.eventType) {
      'MAINTENANCE_PERFORMED' => copyWith(
          lastMaintenanceDate: event.timestamp,
          metadata: {
            ...metadata,
            'lastMaintenanceBy': event.changes['performedBy'] ?? 'unknown',
            'maintenanceNotes': event.changes['notes'] ?? '',
          },
        ),
      'CHILD_ADDED' => copyWith(
          childEquipmentIds: [
            ...childEquipmentIds,
            event.changes['childId'] as EntityId
          ],
        ),
      'CHILD_REMOVED' => copyWith(
          childEquipmentIds: childEquipmentIds
              .where((id) => id != event.changes['childId'] as EntityId)
              .toList(),
        ),
      _ => this,
    };
  }
}

@freezed
class Vendor with _$Vendor {
  const Vendor._();

  const factory Vendor({
    required ContactInfo contact,
    @Default([]) List<EntityId> personnelIds, // Updated to EntityId
    @Default([]) List<String> serviceCategories,
    @Default({}) Map<String, Object> metadata, // Added standardized metadata
    Map<String, Object>? additionalInfo,
    @Default({}) Map<String, Object> qualifications, // Added qualifications
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, Object> json) => _$VendorFromJson(json);

  // Add business helpers
  bool get hasPersonnel => personnelIds.isNotEmpty;
  bool get providesServices => serviceCategories.isNotEmpty;
  String get displayName => contact.displayName;
  bool get hasValidContact => contact.hasValidContact;

  // Add validation methods
  bool validatePersonnelPath(String path) {
    return path.length <= PathConstants.maxPathLength &&
        path
            .split(PathConstants.pathSeparator)
            .every((s) => s.length <= PathConstants.maxSegmentLength);
  }

  // Add event handling support
  Vendor applyEvent(DomainEvent event) {
    return switch (event.eventType) {
      'PERSONNEL_ADDED' => copyWith(
          personnelIds: [
            ...personnelIds,
            event.changes['personnelId'] as EntityId
          ],
        ),
      'PERSONNEL_REMOVED' => copyWith(
          personnelIds: personnelIds
              .where((id) => id != event.changes['personnelId'] as EntityId)
              .toList(),
        ),
      'SERVICE_CATEGORY_ADDED' => copyWith(
          serviceCategories: [
            ...serviceCategories,
            event.changes['category'] as String
          ],
        ),
      _ => this,
    };
  }
}

@freezed
class Personnel with _$Personnel {
  const Personnel._();

  const factory Personnel({
    // Core Information
    required String name,
    required EntityId vendorId, // Updated to EntityId
    required int skillLevel, // Made required

    // Professional Details
    String? position,
    @Default([]) List<String> certifications,
    @Default([]) List<String> specializations,

    // Contact Information
    String? contactNumber,
    String? email,

    // Additional Data
    Map<String, Object>? additionalInfo,
    @Default({}) Map<String, Object> metadata, // Added standardized metadata
    @Default({}) Map<String, Object> schedule, // Added schedule tracking
    @Default({})
    Map<String, DateTime> certificationDates, // Added certification dates
  }) = _Personnel;

  factory Personnel.fromJson(Map<String, Object> json) =>
      _$PersonnelFromJson(json);

  // Add qualification helpers
  bool get isCertified => certifications.isNotEmpty;
  bool get isSpecialized => specializations.isNotEmpty;
  bool get hasValidContact => email != null || contactNumber != null;

  // Get primary certification
  String? get primaryCertification =>
      certifications.isNotEmpty ? certifications.first : null;

  // Added helper methods
  bool get hasValidCertifications =>
      certifications.isNotEmpty && certificationDates.isNotEmpty;

  DateTime? getCertificationExpiry(String certification) =>
      certificationDates[certification];

  // Add certification validation
  bool validateCertification(String certification) {
    final expiry = certificationDates[certification];
    if (expiry == null) return false;
    return expiry.isAfter(DateTime.now());
  }

  // Add event handling support
  Personnel applyEvent(DomainEvent event) {
    return switch (event.eventType) {
      'CERTIFICATION_ADDED' => copyWith(
          certifications: [...certifications, event.changes['cert'] as String],
          certificationDates: {
            ...certificationDates,
            event.changes['cert'] as String:
                event.changes['expiry'] as DateTime,
          },
        ),
      'CERTIFICATION_EXPIRED' => copyWith(
          certifications: certifications
              .where((c) => c != event.changes['cert'] as String)
              .toList(),
          certificationDates: Map.from(certificationDates)
            ..remove(event.changes['cert'] as String),
        ),
      _ => this,
    };
  }
}

// Type aliases for entity-specific BaseEntity instances
typedef OwnerEntity = BaseEntity<Owner>;
typedef SiteEntity = BaseEntity<Site>;
typedef EquipmentEntity = BaseEntity<Equipment>;
typedef VendorEntity = BaseEntity<Vendor>;
typedef PersonnelEntity = BaseEntity<Personnel>;
