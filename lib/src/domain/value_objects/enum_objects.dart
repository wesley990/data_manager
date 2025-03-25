// Core operation enums
enum OperationType { create, read, update, delete, validate, repair, sync }

enum SortOrder { ascending, descending }

enum SyncMode { full, incremental, metadataOnly }

enum ValidationLevel { strict, lenient, none }

enum HierarchyDirection { children, ancestors, descendants }

enum EntityStatus { active, inactive, archived, deleted }

extension EntityStatusX on EntityStatus {
  bool get isActive => this == EntityStatus.active;
  bool get isInactive => this == EntityStatus.inactive;
  bool get isArchived => this == EntityStatus.archived;
  bool get isDeleted => this == EntityStatus.deleted;

  String get displayName {
    switch (this) {
      case EntityStatus.active:
        return 'Active';
      case EntityStatus.inactive:
        return 'Inactive';
      case EntityStatus.archived:
        return 'Archived';
      case EntityStatus.deleted:
        return 'Deleted';
    }
  }
}

/// Defines priority levels for entities in the data manager.
enum EntityPriority {
  /// Low priority entities.
  low('low'),

  /// Medium priority entities (default).
  medium('medium'),

  /// High priority entities.
  high('high'),

  /// Critical priority entities requiring immediate attention.
  critical('critical');

  /// Creates a new entity priority with the given string representation.
  const EntityPriority(this.value);

  /// The string representation of this priority level.
  final String value;

  /// Converts a string to the corresponding EntityPriority.
  ///
  /// Returns [EntityPriority.medium] if the string doesn't match any priority.
  static EntityPriority fromString(String value) {
    return EntityPriority.values.firstWhere(
      (priority) => priority.value == value.toLowerCase(),
      orElse: () => EntityPriority.medium,
    );
  }
}

extension EntityPriorityX on EntityPriority {
  bool get isLow => this == EntityPriority.low;
  bool get isMedium => this == EntityPriority.medium;
  bool get isHigh => this == EntityPriority.high;
  bool get isCritical => this == EntityPriority.critical;

  String get displayName {
    switch (this) {
      case EntityPriority.low:
        return 'Low';
      case EntityPriority.medium:
        return 'Medium';
      case EntityPriority.high:
        return 'High';
      case EntityPriority.critical:
        return 'Critical';
    }
  }
}

/// Defines workflow stages for entities in the data manager.
enum EntityStage {
  /// Initial draft stage.
  draft('draft'),

  /// Review stage where entity is being evaluated.
  review('review'),

  /// Approved stage ready for publication or deployment.
  approved('approved'),

  /// Published stage where entity is publicly available.
  published('published'),

  /// Archived stage for inactive entities.
  archived('archived');

  /// Creates a new entity stage with the given string representation.
  const EntityStage(this.value);

  /// The string representation of this workflow stage.
  final String value;

  /// Converts a string to the corresponding EntityStage.
  ///
  /// Returns [EntityStage.draft] if the string doesn't match any stage.
  static EntityStage fromString(String value) {
    return EntityStage.values.firstWhere(
      (stage) => stage.value == value.toLowerCase(),
      orElse: () => EntityStage.draft,
    );
  }
}

extension EntityStageX on EntityStage {
  bool get isDraft => this == EntityStage.draft;
  bool get isReview => this == EntityStage.review;
  bool get isApproved => this == EntityStage.approved;
  bool get isPublished => this == EntityStage.published;
  bool get isArchived => this == EntityStage.archived;

  String get displayName {
    switch (this) {
      case EntityStage.draft:
        return 'Draft';
      case EntityStage.review:
        return 'Review';
      case EntityStage.approved:
        return 'Approved';
      case EntityStage.published:
        return 'Published';
      case EntityStage.archived:
        return 'Archived';
    }
  }
}

enum EquipmentType { pcs, bess, array, stack, bp, cell }

extension EquipmentTypeX on EquipmentType {
  bool get isPcs => this == EquipmentType.pcs;
  bool get isBess => this == EquipmentType.bess;
  bool get isArray => this == EquipmentType.array;
  bool get isStack => this == EquipmentType.stack;
  bool get isBp => this == EquipmentType.bp;
  bool get isCell => this == EquipmentType.cell;

  String get displayName {
    switch (this) {
      case EquipmentType.pcs:
        return 'PCS';
      case EquipmentType.bess:
        return 'BESS';
      case EquipmentType.array:
        return 'Array';
      case EquipmentType.stack:
        return 'Stack';
      case EquipmentType.bp:
        return 'BP';
      case EquipmentType.cell:
        return 'Cell';
    }
  }
}

enum UserRole { admin, manager, technician, viewer }

extension UserRoleX on UserRole {
  bool get isAdmin => this == UserRole.admin;
  bool get isManager => this == UserRole.manager;
  bool get isTechnician => this == UserRole.technician;
  bool get isViewer => this == UserRole.viewer;

  bool get canManageUsers => isAdmin || isManager;
  bool get canManageEntities => isAdmin || isManager || isTechnician;
  bool get canViewEntities => isAdmin || isManager || isTechnician || isViewer;

  String get displayName {
    switch (this) {
      case UserRole.admin:
        return 'Admin';
      case UserRole.manager:
        return 'Manager';
      case UserRole.technician:
        return 'Technician';
      case UserRole.viewer:
        return 'Viewer';
    }
  }
}

/// Represents the current lock status of an entity
enum LockStatus { unlocked, lockedByCurrentUser, lockedByOtherUser, expired }

extension LockStatusX on LockStatus {
  bool get isUnlocked => this == LockStatus.unlocked;
  bool get isLockedByCurrentUser => this == LockStatus.lockedByCurrentUser;
  bool get isLockedByOtherUser => this == LockStatus.lockedByOtherUser;
  bool get isExpired => this == LockStatus.expired;

  String get displayName {
    switch (this) {
      case LockStatus.unlocked:
        return 'Unlocked';
      case LockStatus.lockedByCurrentUser:
        return 'Locked by you';
      case LockStatus.lockedByOtherUser:
        return 'Locked by another user';
      case LockStatus.expired:
        return 'Lock expired';
    }
  }
}
