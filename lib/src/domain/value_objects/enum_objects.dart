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

enum Priority { low, medium, high, critical }

extension PriorityX on Priority {
  bool get isLow => this == Priority.low;
  bool get isMedium => this == Priority.medium;
  bool get isHigh => this == Priority.high;
  bool get isCritical => this == Priority.critical;

  String get displayName {
    switch (this) {
      case Priority.low:
        return 'Low';
      case Priority.medium:
        return 'Medium';
      case Priority.high:
        return 'High';
      case Priority.critical:
        return 'Critical';
    }
  }
}

enum WorkflowStage { draft, review, approved, rejected, active, inactive }

extension WorkflowStageX on WorkflowStage {
  bool get isDraft => this == WorkflowStage.draft;
  bool get isReview => this == WorkflowStage.review;
  bool get isApproved => this == WorkflowStage.approved;
  bool get isRejected => this == WorkflowStage.rejected;
  bool get isActive => this == WorkflowStage.active;
  bool get isInactive => this == WorkflowStage.inactive;

  String get displayName {
    switch (this) {
      case WorkflowStage.draft:
        return 'Draft';
      case WorkflowStage.review:
        return 'Review';
      case WorkflowStage.approved:
        return 'Approved';

      case WorkflowStage.rejected:
        return 'Rejected';
      case WorkflowStage.active:
        return 'Active';
      case WorkflowStage.inactive:
        return 'Inactive';
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
