/// A versatile base entity class that provides a foundation for domain objects with advanced features.
///
/// This class implements a robust entity management system with support for:
/// * Hierarchical data structures using materialized paths
/// * Optimistic locking mechanism
/// * Access tracking and history
/// * Version control and schema management
/// * Comprehensive metadata management
/// * Workflow states and priorities
///
/// The class is generic, accepting a type parameter `T` that represents additional
/// data specific to the entity type.

/// The entity supports several extension methods through:
/// * [LockManagement] - For handling entity locking mechanisms
/// * [TrackingManagement] - For tracking access and modifications
/// * [EntityUtilities] - For general utility operations
/// * [HierarchyManagement] - For managing hierarchical relationships
/// * [MaterializedPathManagement] - For handling materialized paths
///
/// Key features:
/// * Immutable data structure using Freezed
/// * Built-in version control
/// * Hierarchical data management
/// * Access control and tracking
/// * History management with configurable depth
/// * Extensible attribute system
/// * Type-safe additional data handling
///
/// The entity maintains several types of history:
/// * Modification history - Tracks changes to the entity
/// * Access history - Tracks when and who accessed the entity
/// * Hierarchy updates - Tracks changes to the entity's position in hierarchies
///
/// For synchronization purposes, the entity includes:
/// * Schema versioning
/// * Hierarchy versioning
/// * Sync metadata
/// * Conflict resolution support
///
/// Performance optimizations:
/// * Denormalized ancestor data
/// * Pre-built search paths
/// * Custom query indexes
/// * Materialized paths for efficient traversal
library;

import 'dart:convert';
import 'dart:math';

import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/domain/value_objects/user_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_entity.freezed.dart';
part 'base_entity.g.dart';

// Add type aliases at the top
typedef VersionVector = Map<String, int>;
typedef LockMetadata = Map<String, dynamic>;
typedef EventMetadata = Map<String, Object>;
typedef QueryIndex = Map<String, Object>;

// Group constants by category
class EntityConstants {
  // Status and workflow
  static const defaultVersion = '1.0.0';
  static const defaultStatus = EntityStatus.active;
  static const defaultPriority = Priority.medium;
  static const defaultWorkflowStage = WorkflowStage.draft;

  // Access control
  static const defaultIsPublic = true;
  static const defaultAccessCount = 0;

  // History limits
  static const maxHistoryLength = 50;
  static const defaultHistoryLimit = 50;
  static const maxHistoryLimit = 100;
  static const initialVersion = 1;

  // Lock durations
  static const defaultLockTimeout = Duration(minutes: 15);
  static const defaultLockExtensionPeriod = Duration(minutes: 5);
  static const minimumLockDuration = Duration(seconds: 30);
  static const maximumLockDuration = Duration(hours: 24);

  static const maximumHierarchyDepth = 10;
}

// Remove the PathManagement mixin and move its constants here
class PathConstants {
  static const pathSeparator = '/';
  static const encodedPathSeparator = '%2F';
  static const invalidPathChars = r'[<>:"|?*\x00-\x1F]';
  static const maxPathLength = 1024;
  static const maxSegmentLength = 255;
}

@Freezed(genericArgumentFactories: true)
class BaseEntity<T extends Object> with _$BaseEntity<T> {
  // Remove PathManagement from here
  const BaseEntity._();

  static Clock clock = SystemClock(); // Default implementation

  const factory BaseEntity({
    // Update identifiers to use EntityId
    required EntityId entityId, // renamed from uuid to id
    required String entityName,
    String? entityDescription,

    // Metadata
    required DateTime metaCreatedAt,
    required DateTime metaUpdatedAt,
    @Default(EntityConstants.defaultVersion) String schemaVersion,
    @Default(EntityConstants.defaultStatus) EntityStatus status,
    @Default(<String, Object>{}) Map<String, Object> metaAttributes,

    // Hierarchy and Relations (using Materialized Path)
    String? hierarchyPath,
    @Default(0) int hierarchyDepth,
    @Default(<String, List<EntityId>>{}) Map<String, List<EntityId>> relations,
    @Default(10)
    int maxDepth, // Maximum allowed depth for hierarchical structures

    // Firestore Hierarchy Optimizations
    @Default(<EntityId>[])
    List<EntityId> hierarchyAncestors, // For ancestor queries
    EntityId? hierarchyParentId, // Direct parent reference
    @Default(<EntityId>[]) List<EntityId> childrenIds, // Direct children

    // Collection paths for nested data
    @Default(<String, String>{})
    Map<String, String>
        subCollections, // e.g. {'documents': 'documents/', 'attachments': 'attachments/'}

    // Denormalized data for quick access
    @Default({})
    Map<String, EntityMetadata> ancestorMetadata, // Contains name, type, etc
    String? parentName,

    // Indexed fields for querying
    @Default([])
    List<String> searchablePath, // ['dept-001', 'dept-001/dept-002']
    String? hierarchyLevel, // Make nullable

    // Batch operation tracking
    @Default(0) int hierarchyVersion, // For concurrent updates
    DateTime? lastHierarchyUpdate,

    // User Management
    required UserAction owner, // Replace ownerId
    required UserAction createdBy,
    required UserAction lastModifiedBy,
    UserAction? accessLastBy,

    // Locking
    UserAction? lockedBy, // Replace lockId with full user context
    DateTime? lockExpiresAt,

    // Deletion tracking
    UserAction? deletedBy, // Combines deletedAt + deletedBy

    // Optional: Add modification history
    @Default(<UserAction>[])
    @Assert('modificationHistory.length <= EntityConstants.maxHistoryLimit')
    List<UserAction> modificationHistory,

    // Optional: Add access history
    @Default(<UserAction>[])
    @Assert('accessHistory.length <= EntityConstants.maxHistoryLimit')
    List<UserAction> accessHistory,
    @Default(EntityConstants.defaultIsPublic) bool accessIsPublic,

    // Access Tracking
    @Default(EntityConstants.defaultAccessCount) int accessCount,

    // Classification
    @Default([]) List<String> tags,
    @Default({}) Map<String, String> labels,

    // Workflow and Priority
    @Default(EntityConstants.defaultPriority) Priority priority,
    @Default(EntityConstants.defaultWorkflowStage) WorkflowStage workflowStage,

    // Time-related
    DateTime? expiresAt,

    // Sync and Lock Mechanisms
    @Default({}) Map<String, Object> syncMetadata,
    String? lastSyncedVersion,

    // Firestore-specific indexing
    @Default({})
    Map<String, Object> queryIndex, // Custom indexes for complex queries

    // Extension point
    T? additionalData,

    /// Event sourcing support
    @Default(0) int eventVersion,
    @Default(<String>[]) List<String> eventPending,
    @Default(<String, Object>{}) Map<String, Object> eventMetadata,

    // Add history size configuration
    @Default(EntityConstants.defaultHistoryLimit) int historyLimit,

    // Add version control fields
    @Default(EntityConstants.initialVersion)
    int entityVersion, // For data changes
    @Default(EntityConstants.initialVersion)
    int structureVersion, // For structure changes
    String? lastKnownVersion, // For CAS operations

    // Add distributed lock fields
    String? distributedLockId,
    DateTime? distributedLockExpiry,
    String? distributedLockNode,
    @Default({}) Map<String, dynamic> lockMetadata,

    // Add version vectors for conflict resolution
    @Default({}) Map<String, int> versionVectors,
    @Default(EntityConstants.defaultLockTimeout) Duration lockTimeout,

    // Add AI/LLM integration fields
    @Default({})
    Map<String, List<double>>
        aiEmbeddings, // Store embeddings from different AI models
    @Default({})
    Map<String, double> aiScores, // Store relevance/confidence scores
    @Default({})
    Map<String, String> aiMetadata, // Store model-specific metadata
    @Default([]) List<String> aiTags, // AI-generated tags
    @Default({}) Map<String, Object> aiAnnotations, // AI-generated annotations
    DateTime? lastAiProcessingTime,
    String? aiProcessingVersion,
  }) = _BaseEntity<T>;

  factory BaseEntity.fromJson(
          Map<String, Object> json, T Function(Object? json) fromJsonT) =>
      _$BaseEntityFromJson(json, fromJsonT);

  // Core utility methods used across extensions
  List<String> _splitPath() =>
      hierarchyPath?.split('/').where((p) => p.isNotEmpty).toList() ?? [];

  void _validateUser(UserAction user, UserAction? allowedUser, String message) {
    if (allowedUser?.uid != user.uid) {
      throw StateError(message);
    }
  }

  List<UserAction> _addToHistory(UserAction action, List<UserAction> history) {
    final limit = historyLimit.clamp(1, EntityConstants.maxHistoryLimit);
    return [
      action,
      ...history.take(limit - 1),
    ];
  }

  // Add new history management methods
  BaseEntity<T> trimHistory() {
    final limit = historyLimit.clamp(1, EntityConstants.maxHistoryLimit);
    return copyWith(
      modificationHistory: modificationHistory.take(limit).toList(),
      accessHistory: accessHistory.take(limit).toList(),
    );
  }

  BaseEntity<T> setHistoryLimit(int newLimit) {
    final sanitizedLimit = newLimit.clamp(1, EntityConstants.maxHistoryLimit);
    return copyWith(
      historyLimit: sanitizedLimit,
    ).trimHistory();
  }

  // Keep only essential core methods
  bool get isRoot => hierarchyPath == null || hierarchyPath == entityId.value;
  bool get isLeaf => !relations.containsKey('children');
  dynamic getAttribute(String key) => metaAttributes[key];

  // Add operator [] for field access
  /// Access entity fields with runtime type safety
  /// Returns null for non-existent fields
  dynamic operator [](String key) {
    return switch (key) {
      'entityId' => entityId,
      'entityName' => entityName,
      'entityDescription' => entityDescription,
      'status' => status,
      _ => metaAttributes[key],
    };
  }

  // Add convenience getter
  String get uuid => entityId.value;

  String get entityType => T.toString();

  // Add conversion methods
  Map<EntityId, String> get ancestorNamesTyped => Map.fromEntries(
        ancestorMetadata.entries.map(
          (e) => MapEntry(EntityId(e.key), e.value.displayName),
        ),
      );

  static Map<String, EntityMetadata> _convertAncestorNames(
          Map<EntityId, String> names) =>
      Map.fromEntries(
        names.entries.map(
          (e) => MapEntry(
            e.key.value,
            EntityMetadata(
              displayName: e.value,
              entityType: 'ancestor',
              lastNameUpdate: DateTime.now(),
            ),
          ),
        ),
      );

  // Path operations
  bool isValidPath(String? path) {
    if (path == null) return true; // null paths are allowed
    try {
      final normalized = normalizePath(path);
      return normalized == path; // path is already normalized
    } catch (_) {
      return false;
    }
  }

  String sanitizePath(String path) {
    return normalizePath(path.toLowerCase().trim());
  }

  List<String> parsePathSegments(String? path) {
    final normalized = normalizePath(path);
    return normalized.isEmpty
        ? []
        : normalized
            .split(PathConstants.pathSeparator)
            .where((s) => s.isNotEmpty)
            .toList();
  }

  // Add validation to existing path-related methods
  List<String> getAncestors() {
    return parsePathSegments(hierarchyPath);
  }

  String get fullPath {
    final basePath = hierarchyPath ?? '';
    final entitySegment = entityId.value;
    return normalizePath('$basePath$PathConstants.pathSeparator$entitySegment');
  }

  // Version management - consolidated from various extensions
  bool hasValidVersion() {
    try {
      final parts = schemaVersion.split('.');
      return parts.length == 3 && parts.every((p) => int.tryParse(p) != null);
    } catch (_) {
      return false;
    }
  }

  BaseEntity<T> incrementVersion({bool isStructural = false}) {
    final newEntityVersion = isStructural ? entityVersion : entityVersion + 1;
    final newStructureVersion =
        isStructural ? structureVersion + 1 : structureVersion;

    return copyWith(
      entityVersion: newEntityVersion,
      structureVersion: newStructureVersion,
      lastKnownVersion: '$newEntityVersion-$newStructureVersion',
      versionVectors: {
        ...versionVectors,
        'node-${distributedLockNode ?? "local"}': newEntityVersion,
      },
    );
  }

  // Conflict detection - consolidated
  bool hasConflict(BaseEntity<T> other) =>
      structureVersion != other.structureVersion ||
      entityVersion != other.entityVersion ||
      _hasVersionVectorConflict(other) ||
      _hasLockConflict(other);

  bool _hasVersionVectorConflict(BaseEntity<T> other) =>
      versionVectors.entries.any((entry) =>
          other.versionVectors[entry.key] != null &&
          entry.value > other.versionVectors[entry.key]!);

  bool _hasLockConflict(BaseEntity<T> other) =>
      hasDistributedLock &&
      other.hasDistributedLock &&
      distributedLockId != other.distributedLockId;
}

// Add new exception class
class PathValidationException implements Exception {
  final String message;
  PathValidationException(this.message);
  @override
  String toString() => 'PathValidationException: $message';
}

// Add new extension for event management
extension EventManagement<T extends Object> on BaseEntity<T> {
  bool get hasPendingEvents => eventPending.isNotEmpty;

  BaseEntity<T> recordEvent(DomainEvent event) {
    return copyWith(
      eventVersion: eventVersion + 1,
      eventPending: [...eventPending, event.id.value],
      eventMetadata: {
        ...eventMetadata,
        'lastEventId': event.id,
        'lastEventType': event.eventType,
        'lastEventTimestamp': event.timestamp.toIso8601String(),
      },
    );
  }

  BaseEntity<T> clearPendingEvents() {
    return copyWith(
      eventPending: [],
    );
  }

  // Enhanced change capture
  BaseEntity<T> captureChanges(Map<String, dynamic> changes) {
    final timestamp = DateTime.now();
    return copyWith(
      eventMetadata: {
        ...eventMetadata,
        'changes': changes,
        'changeTimestamp': timestamp.toIso8601String(),
        'changedFields': changes.keys.toList(),
        'previousValues': changes.map((k, v) => MapEntry(k, this[k])),
      },
    );
  }

  // Metadata validation
  bool validateEventMetadata() {
    final requiredFields = [
      'lastEventId',
      'lastEventType',
      'lastEventTimestamp'
    ];
    return requiredFields.every((field) => eventMetadata.containsKey(field));
  }

  // Event replay functionality
  BaseEntity<T> replayEvents(List<DomainEvent> events) {
    return events.fold(
      this,
      (entity, event) => entity.applyEvent(event),
    );
  }

  BaseEntity<T> applyEvent(DomainEvent event) {
    // Override this in specific entities
    return this;
  }

  // Event cleanup
  BaseEntity<T> compressEvents({int maxEvents = 100}) {
    if (eventPending.length <= maxEvents) return this;

    final keepEvents = eventPending.skip(eventPending.length - maxEvents);
    return copyWith(
      eventPending: [...keepEvents],
      eventMetadata: {
        ...eventMetadata,
        'compressedAt': DateTime.now().toIso8601String(),
        'originalEventCount': eventPending.length,
      },
    );
  }
}

/// Lock Management Extension
extension LockManagement<T extends Object> on BaseEntity<T> {
  bool get isLocked {
    final now = BaseEntity.clock.now();
    if (lockExpiresAt != null && lockExpiresAt!.isBefore(now)) {
      return false;
    }
    return lockedBy != null && lockExpiresAt!.isAfter(now);
  }

  bool canEdit(UserAction user) => !isLocked || (lockedBy?.uid == user.uid);

  bool canAcquireLock(UserAction user) {
    if (!isLocked) return true;
    if (lockExpiresAt?.isBefore(DateTime.now()) ?? false) return true;
    return lockedBy?.uid == user.uid;
  }

  BaseEntity<T> acquireLock(UserAction user, {Duration? lockDuration}) {
    final now = BaseEntity.clock.now();
    if (isLocked && lockedBy?.uid != user.uid) {
      final expiry = lockExpiresAt?.toLocal().toString() ?? 'unknown';
      throw StateError('Entity is locked by ${lockedBy!.uid} until $expiry');
    }

    final duration = _validateLockDuration(lockDuration ?? lockTimeout);
    return copyWith(
      lockedBy: user,
      lockExpiresAt: now.add(duration),
      modificationHistory: _addToHistory(
        UserAction(uid: user.uid, timestamp: now),
        modificationHistory,
      ),
    );
  }

  Duration _validateLockDuration(Duration duration) {
    if (duration < EntityConstants.minimumLockDuration) {
      return EntityConstants.minimumLockDuration;
    }
    if (duration > EntityConstants.maximumLockDuration) {
      return EntityConstants.maximumLockDuration;
    }
    return duration;
  }

  BaseEntity<T> releaseLock(UserAction user) {
    if (!isLocked) {
      throw StateError('Cannot release a lock that is not acquired');
    }
    _validateUser(user, lockedBy,
        'Lock can only be released by the user who acquired it');
    return copyWith(lockedBy: null, lockExpiresAt: null);
  }

  BaseEntity<T> extendLock(UserAction user, {Duration? extension}) {
    if (lockedBy?.uid != user.uid) {
      throw StateError('Only the lock owner can extend the lock');
    }

    final extensionDuration = _validateLockDuration(
      extension ?? EntityConstants.defaultLockExtensionPeriod,
    );
    return copyWith(
      lockExpiresAt: BaseEntity.clock.now().add(extensionDuration),
    );
  }

  BaseEntity<T> forceReleaseLock() {
    return copyWith(
      lockedBy: null,
      lockExpiresAt: null,
    );
  }

  LockStatus getLockStatus(UserAction currentUser) {
    if (!isLocked) return LockStatus.unlocked;
    if (lockExpiresAt?.isBefore(DateTime.now()) ?? false) {
      return LockStatus.expired;
    }
    return lockedBy?.uid == currentUser.uid
        ? LockStatus.lockedByCurrentUser
        : LockStatus.lockedByOtherUser;
  }

  // Add automatic lock cleanup
  BaseEntity<T> cleanupExpiredLock() {
    if (isLocked && lockExpiresAt!.isBefore(DateTime.now())) {
      return forceReleaseLock();
    }
    return this;
  }
}

/// Tracking Management Extension
extension TrackingManagement<T extends Object> on BaseEntity<T> {
  BaseEntity<T> trackAccess(UserAction user) {
    return copyWith(
      accessLastBy: user,
      accessCount: accessCount + 1,
      accessHistory: _addToHistory(user, accessHistory),
    );
  }

  BaseEntity<T> trackModification(UserAction user) {
    return copyWith(
      lastModifiedBy: user,
      metaUpdatedAt: DateTime.now(),
      modificationHistory: _addToHistory(user, modificationHistory),
    );
  }
}

/// Entity Utilities Extension
extension EntityUtilities<T extends Object> on BaseEntity<T> {
  bool isValid() {
    return entityName.isNotEmpty &&
        !isExpired &&
        status != EntityStatus.deleted;
  }

  bool get isExpired =>
      expiresAt != null && expiresAt!.isBefore(DateTime.now());

  String get normalizedPath => hierarchyPath?.toLowerCase() ?? entityId.value;

  List<String> get pathSegments =>
      hierarchyPath?.split('/') ?? [entityId.value];

  bool hasValidVersion() {
    try {
      final parts = schemaVersion.split('.');
      return parts.length == 3 && parts.every((p) => int.tryParse(p) != null);
    } catch (_) {
      return false;
    }
  }

  int _compareVersions(String v1, String v2) {
    final v1Parts = v1.split('.').map(int.parse).toList();
    final v2Parts = v2.split('.').map(int.parse).toList();

    for (var i = 0; i < 3; i++) {
      if (v1Parts[i] != v2Parts[i]) {
        return v1Parts[i].compareTo(v2Parts[i]);
      }
    }
    return 0;
  }

  BaseEntity<T> updateWithConflictResolution(BaseEntity<T> serverVersion) {
    final comparison =
        _compareVersions(schemaVersion, serverVersion.schemaVersion);

    if (comparison > 0) {
      return copyWith(
        syncMetadata: {
          ...syncMetadata,
          'conflictResolved': 'localWins',
          'serverVersion': serverVersion.schemaVersion,
        },
      );
    } else if (comparison < 0) {
      return serverVersion.copyWith(
        syncMetadata: {
          ...serverVersion.syncMetadata,
          'conflictResolved': 'serverWins',
          'localVersion': schemaVersion,
        },
      );
    }
    return this;
  }
}

/// Hierarchy Management Extension
extension HierarchyManagement<T extends Object> on BaseEntity<T> {
  List<String> buildSearchablePaths() {
    final paths = <String>[];
    final segments = hierarchyPath?.split('/') ?? [];
    String currentPath = '';

    for (final segment in segments) {
      currentPath = currentPath.isEmpty ? segment : '$currentPath/$segment';
      paths.add(currentPath);
    }
    return paths;
  }

  Map<String, Object> buildQueryIndex() {
    return {
      'depth_name': '${hierarchyDepth}_${entityName.toLowerCase()}',
      'parent_type': '${hierarchyParentId ?? ''}_${hierarchyLevel ?? ''}',
      'ancestry': hierarchyAncestors.join('|'),
    };
  }

  BaseEntity<T> updateHierarchy({
    required EntityId newParentId,
    required String newPath,
    required List<EntityId> newAncestorIds,
    required Map<EntityId, String> newAncestorNames,
  }) {
    return copyWith(
      hierarchyParentId: newParentId,
      hierarchyPath: newPath,
      hierarchyAncestors: newAncestorIds,
      ancestorMetadata: BaseEntity._convertAncestorNames(newAncestorNames),
      hierarchyDepth: newAncestorIds.length,
      searchablePath: buildSearchablePaths(),
      queryIndex: buildQueryIndex(),
      hierarchyVersion: hierarchyVersion + 1,
      lastHierarchyUpdate: DateTime.now(),
    );
  }

  // Add batch operations from HierarchyBatchOperations
  BaseEntity<T> addChildren(List<EntityId> childIds) {
    var entity = this;
    for (final id in childIds) {
      entity = entity.addChild(id);
    }
    return entity;
  }

  BaseEntity<T> removeChildren(List<EntityId> childIds) {
    var entity = this;
    for (final id in childIds) {
      entity = entity.removeChild(id);
    }
    return entity;
  }

  Future<List<BaseEntity<T>>> moveEntities(
    List<BaseEntity<T>> entities,
    BaseEntity<T> newParent,
  ) async {
    return [for (final entity in entities) entity.moveTo(newParent)];
  }

  bool hasCircularReference(EntityId targetId) {
    if (entityId == targetId) return true;
    return hierarchyAncestors.contains(targetId);
  }

  ValidationResult validateHierarchyChange(EntityId newParentId) {
    if (hasCircularReference(newParentId)) {
      return ValidationResult.invalid([
        ValidationIssue(
          message: 'Circular reference detected',
          code: 'CIRCULAR_REF',
        )
      ]);
    }
    return ValidationResult.valid();
  }
}

/// Path Management Extension - converted from mixin
extension PathManagement<T extends Object> on BaseEntity<T> {
  String normalizePath(String? rawPath) {
    if (rawPath == null || rawPath.isEmpty) return '';

    try {
      // Decode URI encoded path
      final decodedPath = Uri.decodeFull(rawPath);

      // Validate path length
      if (decodedPath.length > PathConstants.maxPathLength) {
        throw ValidationException('Path exceeds maximum length');
      }

      // Split and clean path segments
      final segments = decodedPath
          .split(PathConstants.pathSeparator)
          .where((s) => s.isNotEmpty)
          .map(_normalizePathSegment)
          .where((s) => s.isNotEmpty)
          .toList();

      // Validate segments
      if (segments.any((s) => s.length > PathConstants.maxSegmentLength)) {
        throw ValidationException('Path segment exceeds maximum length');
      }

      return segments.isEmpty
          ? ''
          : '${PathConstants.pathSeparator}${segments.join(PathConstants.pathSeparator)}${PathConstants.pathSeparator}';
    } catch (e) {
      throw PathValidationException('Invalid path format: ${e.toString()}');
    }
  }

  String _normalizePathSegment(String segment) {
    // Remove invalid characters
    final cleaned =
        segment.replaceAll(RegExp(PathConstants.invalidPathChars), '');

    // Trim whitespace and dots
    final trimmed = cleaned.trim().replaceAll(RegExp(r'^\.+|\.+$'), '');

    // URI encode the segment (preserve path separator)
    return Uri.encodeComponent(trimmed).replaceAll(
        PathConstants.encodedPathSeparator, PathConstants.pathSeparator);
  }

  // Add new path validation methods
  bool isValidPath(String? path) {
    if (path == null) return true; // null paths are allowed
    try {
      final normalized = normalizePath(path);
      return normalized == path; // path is already normalized
    } catch (_) {
      return false;
    }
  }

  String sanitizePath(String path) {
    return normalizePath(path.toLowerCase().trim());
  }

  List<String> parsePathSegments(String? path) {
    final normalized = normalizePath(path);
    return normalized.isEmpty
        ? []
        : normalized
            .split(PathConstants.pathSeparator)
            .where((s) => s.isNotEmpty)
            .toList();
  }
}

// Update MaterializedPathManagement to use PathConstants
extension MaterializedPathManagement<T extends Object> on BaseEntity<T> {
  // Get ancestor IDs from path
  List<String> get ancestors => _splitPath();

  // Get depth level in tree
  int get level => ancestors.length;

  // Check if entity is ancestor of another
  bool isAncestorOf(BaseEntity other) =>
      other.hierarchyPath?.startsWith(hierarchyPath ?? '') ?? false;

  // Check if entity is descendant of another
  bool isDescendantOf(BaseEntity other) =>
      hierarchyPath?.startsWith(other.hierarchyPath ?? '') ?? false;

  // Get full path including current entity
  String get fullPath => hierarchyPath == null
      ? entityId.value
      : '$hierarchyPath/${entityId.value}';

  // Add child relation
  BaseEntity<T> addChild(EntityId childId) =>
      _updateChildrenRelation(childId, true);
  BaseEntity<T> removeChild(EntityId childId) =>
      _updateChildrenRelation(childId, false);

  // Strict validate path consistency
  bool validatePath() {
    if (hierarchyPath == null) return true;

    try {
      final normalized = normalizePath(hierarchyPath);
      if (normalized != hierarchyPath) return false;

      final segments = parsePathSegments(hierarchyPath);
      if (segments.length != hierarchyDepth) return false;

      // Validate each segment
      return segments.every((segment) =>
          segment.length <= PathConstants.maxSegmentLength &&
          !segment.contains(RegExp(PathConstants.invalidPathChars.toString())));
    } catch (_) {
      return false;
    }
  }

  // Move entity to new parent
  BaseEntity<T> moveTo(BaseEntity newParent) {
    final newPath = newParent.fullPath;
    final newDepth = newParent.hierarchyDepth + 1;
    return copyWith(
        hierarchyPath: newPath,
        hierarchyDepth: newDepth,
        metaUpdatedAt: DateTime.now());
  }

  // Batch relation operations
  BaseEntity<T> updateRelations(String relationType, List<EntityId> ids,
      {bool replace = false}) {
    var updatedRelations = Map<String, List<EntityId>>.from(relations);
    if (replace) {
      updatedRelations[relationType] = List<EntityId>.from(ids);
    } else {
      var existing = Set<EntityId>.from(relations[relationType] ?? []);
      existing.addAll(ids);
      updatedRelations[relationType] = existing.toList();
    }
    return copyWith(relations: updatedRelations);
  }

  BaseEntity<T> _updateChildrenRelation(EntityId childId, bool add) {
    var children = List<EntityId>.from(relations['children'] ?? []);
    if (add) {
      if (!children.contains(childId)) children.add(childId);
    } else {
      children.remove(childId);
    }

    var updatedRelations = Map<String, List<EntityId>>.from(relations);
    if (children.isEmpty) {
      updatedRelations.remove('children');
    } else {
      updatedRelations['children'] = children;
    }

    return copyWith(relations: updatedRelations);
  }

  // Add helper for building full paths
  String buildPath(List<String> segments) {
    return normalizePath(segments.join(PathConstants.pathSeparator));
  }
}

/// Enhanced Concurrency Control Extension
extension ConcurrencyControl<T extends Object> on BaseEntity<T> {
  // Comprehensive conflict detection
  bool hasConflict(BaseEntity<T> other) {
    // Check structural version for hierarchy changes
    if (structureVersion != other.structureVersion) return true;

    // Check entity version for data changes
    if (entityVersion != other.entityVersion) return true;

    // Check version vectors
    final mergedVersions = {...versionVectors};
    for (final entry in other.versionVectors.entries) {
      if (mergedVersions[entry.key] != null &&
          mergedVersions[entry.key]! > entry.value) {
        return true;
      }
    }

    // Check distributed lock
    if (hasDistributedLock &&
        other.hasDistributedLock &&
        distributedLockId != other.distributedLockId) {
      return true;
    }

    return false;
  }

  // CAS support
  bool canUpdate(String expectedVersion) {
    return lastKnownVersion == expectedVersion;
  }

  // Version management
  BaseEntity<T> incrementVersion({bool isStructural = false}) {
    final newEntityVersion = isStructural ? entityVersion : entityVersion + 1;
    final newStructureVersion =
        isStructural ? structureVersion + 1 : structureVersion;

    return copyWith(
      entityVersion: newEntityVersion,
      structureVersion: newStructureVersion,
      lastKnownVersion: '$newEntityVersion-$newStructureVersion',
      versionVectors: {
        ...versionVectors,
        'node-${distributedLockNode ?? "local"}': newEntityVersion,
      },
    );
  }

  // Distributed lock support
  bool get hasDistributedLock =>
      distributedLockId != null &&
      distributedLockExpiry != null &&
      distributedLockExpiry!.isAfter(DateTime.now());

  BaseEntity<T> acquireDistributedLock(
    String nodeId, {
    Duration timeout = EntityConstants.defaultLockTimeout,
    Map<String, dynamic>? metadata,
  }) {
    if (hasDistributedLock) {
      throw StateError('Entity already has a distributed lock');
    }

    return copyWith(
      distributedLockId:
          '${entityId.value}-$nodeId-${DateTime.now().millisecondsSinceEpoch}',
      distributedLockNode: nodeId,
      distributedLockExpiry: DateTime.now().add(timeout),
      lockMetadata: metadata ?? {},
    );
  }

  BaseEntity<T> releaseDistributedLock(String nodeId) {
    if (!hasDistributedLock || distributedLockNode != nodeId) {
      throw StateError('Cannot release lock: Invalid node or no lock present');
    }

    return copyWith(
      distributedLockId: null,
      distributedLockNode: null,
      distributedLockExpiry: null,
      lockMetadata: {},
    );
  }

  // Version vector operations
  BaseEntity<T> mergeVersionVectors(Map<String, int> other) {
    final merged = {...versionVectors};
    for (final entry in other.entries) {
      merged.update(
        entry.key,
        (existing) => entry.value > existing ? entry.value : existing,
        ifAbsent: () => entry.value,
      );
    }
    return copyWith(versionVectors: merged);
  }

  bool isVersionAhead(BaseEntity<T> other) {
    return versionVectors.entries.any((entry) =>
        other.versionVectors[entry.key] == null ||
        entry.value > other.versionVectors[entry.key]!);
  }
}

// Add helper class
@freezed
class EntityMetadata with _$EntityMetadata {
  const EntityMetadata._();

  const factory EntityMetadata({
    required String displayName,
    required String entityType,
    String? description,
    DateTime? lastNameUpdate,
    @Default({}) Map<String, String> searchTerms,
  }) = _EntityMetadata;

  factory EntityMetadata.fromJson(Map<String, Object> json) =>
      _$EntityMetadataFromJson(json);
}

// Add extension methods
extension MetadataAccess<T extends Object> on BaseEntity<T> {
  String? getAncestorDisplayName(EntityId id) =>
      ancestorMetadata[id.value]?.displayName;

  String? get parentDisplayName => hierarchyParentId != null
      ? ancestorMetadata[hierarchyParentId!.value]?.displayName
      : null;

  BaseEntity<T> updateAncestorMetadata(EntityId id, EntityMetadata metadata) =>
      copyWith(ancestorMetadata: {
        ...ancestorMetadata,
        id.value: metadata,
      });

  // Convert between EntityId and String maps
  Map<EntityId, EntityMetadata> get typedAncestorMetadata =>
      ancestorMetadata.map((key, value) => MapEntry(EntityId(key), value));
}

/// Graph Traversal Extension
extension GraphTraversal<T extends Object> on BaseEntity<T> {
  /// Returns all direct relation types
  Set<String> get relationTypes => relations.keys.toSet();

  /// Returns all direct relations of a specific type
  List<EntityId> getRelations(String relationType) =>
      relations[relationType] ?? [];

  /// Returns all direct relations of any type
  Iterable<EntityId> get allRelatedIds => relations.values.expand((ids) => ids);

  /// Determines if there's a direct relation of any type to the given entity
  bool isDirectlyRelatedTo(EntityId otherId) => allRelatedIds.contains(otherId);

  /// Determines if there's a direct relation of a specific type
  bool hasRelation(String relationType, EntityId otherId) =>
      relations[relationType]?.contains(otherId) ?? false;

  /// Calculates the degree (number of direct relations) for a specific type
  int degreeOf(String relationType) => relations[relationType]?.length ?? 0;

  /// Returns total number of direct relations
  int get totalDegree =>
      relations.values.fold(0, (sum, ids) => sum + ids.length);

  /// Returns true if entity has any relations
  bool get hasRelations => relations.isNotEmpty;

  /// Returns true if entity has relations of specific type
  bool hasRelationType(String relationType) =>
      relations.containsKey(relationType) &&
      (relations[relationType]?.isNotEmpty ?? false);

  /// Returns the common relations between this entity and another
  Map<String, List<EntityId>> findCommonRelations(BaseEntity<T> other) {
    final common = <String, List<EntityId>>{};
    for (final type in relationTypes) {
      final commonIds = getRelations(type)
          .where((id) => other.hasRelation(type, id))
          .toList();
      if (commonIds.isNotEmpty) {
        common[type] = commonIds;
      }
    }
    return common;
  }

  /// Returns hierarchy distance to another entity (-1 if not related)
  int hierarchicalDistanceTo(BaseEntity<T> other) {
    // If one is ancestor of other, return difference in depths
    if (isAncestorOf(other)) {
      return other.hierarchyDepth - hierarchyDepth;
    }
    if (isDescendantOf(other)) {
      return hierarchyDepth - other.hierarchyDepth;
    }

    // Find nearest common ancestor
    final commonAncestors = hierarchyAncestors
        .toSet()
        .intersection(other.hierarchyAncestors.toSet());
    if (commonAncestors.isEmpty) return -1;

    // Return combined distances through common ancestor
    final nearestAncestor = commonAncestors.reduce((a, b) {
      final depthA = ancestorMetadata[a.value]?.displayName.length ?? 0;
      final depthB = ancestorMetadata[b.value]?.displayName.length ?? 0;
      return depthA > depthB ? a : b;
    });

    final distanceToAncestor = hierarchyDepth -
        (ancestorMetadata[nearestAncestor.value]?.displayName.length ?? 0);
    final otherDistanceToAncestor = other.hierarchyDepth -
        (other.ancestorMetadata[nearestAncestor.value]?.displayName.length ??
            0);

    return distanceToAncestor + otherDistanceToAncestor;
  }

  /// Returns siblings (entities with same parent)
  List<EntityId> get siblings => hierarchyParentId != null
      ? (relations['siblings'] ?? []).where((id) => id != entityId).toList()
      : [];

  /// Returns a map of relation strengths (frequency of connection types)
  Map<String, int> relationStrengths() {
    final strengths = <String, int>{};
    for (final type in relationTypes) {
      strengths[type] = degreeOf(type);
    }
    return strengths;
  }

  /// Returns true if this entity forms part of a bidirectional relationship
  bool hasBidirectionalRelation(
    String relationType,
    EntityId otherId,
    BaseEntity<T> other,
  ) =>
      hasRelation(relationType, otherId) &&
      other.hasRelation(relationType, entityId);

  /// Returns the shortest path to target through relations
  /// Returns empty list if no path exists
  List<String> findPathTo(
    EntityId targetId,
    Map<EntityId, BaseEntity<T>> entityMap,
  ) {
    final visited = <EntityId>{};
    final queue = <(EntityId, List<String>)>[];
    queue.add((entityId, [entityId.value]));

    while (queue.isNotEmpty) {
      final (current, path) = queue.removeAt(0);
      if (current == targetId) return path;

      if (!visited.contains(current) && entityMap.containsKey(current)) {
        visited.add(current);
        final currentEntity = entityMap[current]!;

        for (final relatedId in currentEntity.allRelatedIds) {
          if (!visited.contains(relatedId)) {
            queue.add((relatedId, [...path, relatedId.value]));
          }
        }
      }
    }

    return [];
  }

  /// Returns a list of all entities in the subtree (recursive children)
  /// Includes this entity as the root
  List<BaseEntity<T>> getSubtree(Map<EntityId, BaseEntity<T>> entityMap) {
    final subtree = <BaseEntity<T>>[this];
    final queue = <EntityId>[...childrenIds];

    while (queue.isNotEmpty) {
      final childId = queue.removeAt(0);
      final child = entityMap[childId];
      if (child != null) {
        subtree.add(child);
        queue.addAll(child.childrenIds);
      }
    }

    return subtree;
  }

  /// Returns the chain of ancestors from root to this entity
  /// The list is ordered from root (first) to this entity (last)
  List<BaseEntity<T>> getAncestorChain(Map<EntityId, BaseEntity<T>> entityMap) {
    final chain = <BaseEntity<T>>[];
    var current = this;

    while (current.hierarchyParentId != null) {
      final parent = entityMap[current.hierarchyParentId!];
      if (parent == null) break;
      chain.insert(0, parent);
      current = parent;
    }

    chain.add(this);
    return chain;
  }

  /// Returns all siblings (entities with same parent)
  /// Optionally includes this entity if includeSelf is true
  List<BaseEntity<T>> getSiblings(
    Map<EntityId, BaseEntity<T>> entityMap, {
    bool includeSelf = false,
  }) {
    if (hierarchyParentId == null) return [];

    final parent = entityMap[hierarchyParentId!];
    if (parent == null) return [];

    return parent.childrenIds
        .where((id) => includeSelf || id != entityId)
        .map((id) => entityMap[id])
        .whereType<BaseEntity<T>>()
        .toList();
  }

  /// Returns all related entities of a specific type
  /// Optionally filters by a predicate
  List<BaseEntity<T>> getRelatedByType(
    String relationType,
    Map<EntityId, BaseEntity<T>> entityMap, {
    bool Function(BaseEntity<T>)? where,
  }) {
    final relatedIds = relations[relationType] ?? [];
    final related = relatedIds
        .map((id) => entityMap[id])
        .whereType<BaseEntity<T>>()
        .toList();

    return where != null ? related.where(where).toList() : related;
  }
}

/// AI Integration Extension
extension AIIntegration<T extends Object> on BaseEntity<T> {
  // Add embeddings from any AI model
  BaseEntity<T> withEmbeddings(String modelId, List<double> embeddings) {
    return copyWith(
      aiEmbeddings: {
        ...aiEmbeddings,
        modelId: embeddings,
      },
      lastAiProcessingTime: DateTime.now(),
    );
  }

  // Get embeddings for a specific model
  List<double>? getEmbeddings(String modelId) => aiEmbeddings[modelId];

  // Add AI-generated metadata
  BaseEntity<T> withAiMetadata({
    required String modelId,
    required Map<String, dynamic> metadata,
    double? confidence,
  }) {
    return copyWith(
      aiMetadata: {
        ...aiMetadata,
        '$modelId:metadata': metadata.toString(),
      },
      aiScores: {
        ...aiScores,
        if (confidence != null) '$modelId:confidence': confidence,
      },
      lastAiProcessingTime: DateTime.now(),
    );
  }

  // Add semantic search capabilities
  double semanticSimilarity(BaseEntity<T> other, String modelId) {
    final e1 = getEmbeddings(modelId);
    final e2 = other.getEmbeddings(modelId);
    if (e1 == null || e2 == null) return 0.0;
    return _cosineSimilarity(e1, e2);
  }

  double _cosineSimilarity(List<double> v1, List<double> v2) {
    if (v1.length != v2.length) return 0.0;
    double dotProduct = 0.0;
    double norm1 = 0.0;
    double norm2 = 0.0;
    for (int i = 0; i < v1.length; i++) {
      dotProduct += v1[i] * v2[i];
      norm1 += v1[i] * v1[i];
      norm2 += v2[i] * v2[i];
    }
    return dotProduct / (sqrt(norm1) * sqrt(norm2));
  }

  // Add AI annotation support
  BaseEntity<T> addAiAnnotation(String modelId, String key, dynamic value) {
    return copyWith(
      aiAnnotations: {
        ...aiAnnotations,
        '$modelId:$key': value,
      },
      lastAiProcessingTime: DateTime.now(),
    );
  }

  // Add AI tagging support
  BaseEntity<T> withAiTags(List<String> newTags, String modelId) {
    return copyWith(
      aiTags: [...aiTags, ...newTags.map((tag) => '$modelId:$tag')],
      lastAiProcessingTime: DateTime.now(),
    );
  }
}

/// RAG (Retrieval Augmented Generation) Extension
extension RAGCapabilities<T extends Object> on BaseEntity<T> {
  // Prepare context for RAG
  Map<String, dynamic> toRAGContext() {
    return {
      'content': {
        'text': entityName,
        'description': entityDescription,
        'metadata': metaAttributes,
      },
      'embeddings': aiEmbeddings,
      'annotations': aiAnnotations,
      'tags': [...tags, ...aiTags],
      'timestamp': lastAiProcessingTime?.toIso8601String(),
    };
  }

  // Add RAG results
  BaseEntity<T> withRAGResults(String modelId, Map<String, dynamic> results) {
    return copyWith(
      aiAnnotations: {
        ...aiAnnotations,
        '$modelId:rag_results': results,
      },
      aiMetadata: {
        ...aiMetadata,
        '$modelId:rag_timestamp': DateTime.now().toIso8601String(),
      },
      lastAiProcessingTime: DateTime.now(),
    );
  }
}

/// Language Model Integration Extension
extension LanguageModelIntegration<T extends Object> on BaseEntity<T> {
  static const supportedModels = {
    'gpt-4',
    'gemini-pro',
    'claude-3',
    'vertex-ai',
    'palm-2',
  };

  // Track LLM interactions
  BaseEntity<T> withLLMInteraction(
    String modelId, {
    required Map<String, dynamic> input,
    required Map<String, dynamic> output,
    required double confidence,
  }) {
    final timestamp = DateTime.now().toIso8601String();
    return copyWith(
      aiMetadata: {
        ...aiMetadata,
        '$modelId:last_interaction': timestamp,
        '$modelId:last_input': input.toString(),
      },
      aiAnnotations: {
        ...aiAnnotations,
        '$modelId:$timestamp': output,
      },
      aiScores: {
        ...aiScores,
        '$modelId:confidence': confidence,
      },
      lastAiProcessingTime: DateTime.now(),
    );
  }

  // Get LLM processing history
  List<Map<String, dynamic>> getLLMHistory(String modelId) {
    return aiAnnotations.entries
        .where((e) => e.key.startsWith('$modelId:'))
        .map((e) => {
              'timestamp': e.key.split(':')[1],
              'data': e.value,
            })
        .toList();
  }
}

/// Cache-Augmented Generation Extension
extension CacheAugmentedGeneration<T extends Object> on BaseEntity<T> {
  static const cacheVersion = '1.0.0';

  get sha256 => null;

  // Add cache entry
  BaseEntity<T> withCacheEntry(
    String modelId,
    String prompt,
    dynamic output, {
    required double confidence,
    Map<String, dynamic>? metadata,
  }) {
    final cacheKey = _generateCacheKey(modelId, prompt);
    final timestamp = DateTime.now().toIso8601String();

    return copyWith(
      aiMetadata: {
        ...aiMetadata,
        'cag_$cacheKey': {
          'output': output,
          'confidence': confidence,
          'timestamp': timestamp,
          'version': cacheVersion,
          'metadata': metadata,
          'hits': 0,
        }.toString(),
      },
      lastAiProcessingTime: DateTime.now(),
    );
  }

  // Get cache entry
  Map<String, dynamic>? getCacheEntry(String modelId, String prompt) {
    final cacheKey = _generateCacheKey(modelId, prompt);
    final entry = aiMetadata['cag_$cacheKey'];
    if (entry == null) return null;

    try {
      // Update cache hit count
      final Map<String, dynamic> cacheData = Map<String, dynamic>.from(
          Map<String, dynamic>.from(json.decode(entry.toString())));

      cacheData['hits'] = (cacheData['hits'] as int) + 1;
      aiMetadata['cag_$cacheKey'] = cacheData.toString();

      return cacheData;
    } catch (e) {
      return null;
    }
  }

  // Invalidate cache entry
  BaseEntity<T> invalidateCache(String modelId, [String? prompt]) {
    final newMetadata = Map<String, String>.from(aiMetadata);
    if (prompt != null) {
      final cacheKey = _generateCacheKey(modelId, prompt);
      newMetadata.remove('cag_$cacheKey');
    } else {
      newMetadata.removeWhere((key, _) => key.startsWith('cag_$modelId'));
    }

    return copyWith(
      aiMetadata: newMetadata,
      lastAiProcessingTime: DateTime.now(),
    );
  }

  // Get cache statistics
  Map<String, dynamic> getCacheStats(String modelId) {
    final cacheEntries = aiMetadata.entries
        .where((e) => e.key.startsWith('cag_$modelId'))
        .map((e) => json.decode(e.value.toString()))
        .toList();

    return {
      'total_entries': cacheEntries.length,
      'total_hits':
          cacheEntries.fold(0, (sum, entry) => sum + (entry['hits'] as int)),
      'avg_confidence': cacheEntries.isEmpty
          ? 0.0
          : cacheEntries.fold(
                  0.0, (sum, entry) => sum + (entry['confidence'] as double)) /
              cacheEntries.length,
      'oldest_entry': cacheEntries.isEmpty
          ? null
          : cacheEntries
              .map((e) => e['timestamp'] as String)
              .reduce((a, b) => a.compareTo(b) < 0 ? a : b),
      'newest_entry': cacheEntries.isEmpty
          ? null
          : cacheEntries
              .map((e) => e['timestamp'] as String)
              .reduce((a, b) => a.compareTo(b) > 0 ? a : b),
    };
  }

  // Cache optimization hints
  Map<String, dynamic> getCacheOptimizationHints(String modelId) {
    final stats = getCacheStats(modelId);
    return {
      'should_prune': (stats['total_entries'] as int) > 1000,
      'low_confidence_entries': aiMetadata.entries
          .where((e) => e.key.startsWith('cag_$modelId'))
          .map((e) => json.decode(e.value.toString()))
          .where((entry) => (entry['confidence'] as double) < 0.5)
          .length,
      'unused_entries': aiMetadata.entries
          .where((e) => e.key.startsWith('cag_$modelId'))
          .map((e) => json.decode(e.value.toString()))
          .where((entry) => (entry['hits'] as int) == 0)
          .length,
    };
  }

  // Private helper methods
  String _generateCacheKey(String modelId, String prompt) {
    final hash = sha256.convert(utf8.encode(prompt)).toString();
    return '$modelId:$hash';
  }
}
