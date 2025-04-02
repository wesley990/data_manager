import 'package:data_manager/src/domain/value_objects/identity_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/user_action.dart';

part 'domain_event.freezed.dart';
part 'domain_event.g.dart';

/// Domain Event System
/// ===================
///
/// This module provides a structured approach to domain events in a clean architecture.
/// Domain events represent something significant that happened in the domain and allow
/// for decoupled communication between components.
///
/// ## Usage Examples
///
/// ### Creating Events
///
/// ```dart
/// // Create an entity creation event
/// final creationEvent = DomainEventModel.entityCreated(
///   id: EventId.generate(),
///   entityId: EntityId.generate(),
///   entityType: 'Product',
///   action: UserAction(
///     userId: 'user-123',
///     timestamp: DateTime.now(),
///     actionType: 'create',
///   ),
///   initialData: {
///     'name': 'Premium Widget',
///     'price': 29.99,
///     'category': 'Electronics',
///   },
/// );
///
/// // Create an entity update event
/// final updateEvent = DomainEventModel.entityUpdated(
///   id: EventId.generate(),
///   entityId: EntityId.fromString('product-456'),
///   entityType: 'Product',
///   action: UserAction(
///     userId: 'user-123',
///     timestamp: DateTime.now(),
///     actionType: 'update',
///   ),
///   changes: {
///     'price': 24.99,
///     'isOnSale': true,
///   },
/// );
/// ```
///
/// ### Event Schema Migration
///
/// Schema migrations are implemented in the application layer:
///
/// ```dart
/// import 'package:data_manager/src/application/providers/event_service_provider.dart';
/// import 'package:data_manager/src/application/extensions/domain_event_extensions.dart';
///
/// // Create a service provider
/// final eventProvider = EventServiceProvider();
///
/// // Option 1: Using the provider directly
/// final migratedEvent = eventProvider.migrateEventSchema(originalEvent, '1.1.0');
///
/// // Option 2: Using the extension method (recommended)
/// final migratedEvent = originalEvent.migrate('1.1.0', eventProvider);
/// ```
///
/// ### Event Persistence
///
/// ```dart
/// import 'package:data_manager/src/infrastructure/repositories/event_repository.dart';
///
/// // Store events
/// await eventRepository.saveEvent(creationEvent);
///
/// // Fetch events for an entity
/// final events = await eventRepository.getEventsForEntity(entityId);
///
/// // Reconstruct entity state from events
/// final entityState = events.fold(
///   <String, dynamic>{},
///   (state, event) => eventReducer.applyEvent(state, event),
/// );
/// ```

/// System-wide event defaults
abstract class EventDefaults {
  static const version = 0;
  static const isAsync = false;
  static const tags = <String>[];
}

/// Event schema versioning configuration
abstract class EventSchemaConfig {
  static const currentVersion = '1.0.0';
  static const minVersion = '1.0.0';
  static const maxBackwardsCompatible = '1.0.0';

  static final supportedVersions = <String>{'1.0.0'};

  static final migrationPaths = {
    '1.0.0': {'1.0.0': null}, // No migration needed for same version
  };
}

/// Event schema structure definition
@freezed
sealed class EventSchema with _$EventSchema {
  const factory EventSchema({
    required String version,
    required String eventType,
    required Map<String, String> fields,
    required Map<String, bool> required,
    Map<String, Object>? defaults,
    Map<String, String>? migrations,
  }) = _EventSchema;

  factory EventSchema.fromJson(Map<String, Object> json) =>
      _$EventSchemaFromJson(json);
}

@freezed
sealed class DomainEventModel with _$DomainEventModel {
  const DomainEventModel._();

  const factory DomainEventModel({
    // Core event data
    required EventId id,
    required EntityId entityId,
    required String eventType,
    required DateTime timestamp,
    required UserAction initiator,
    required Map<String, Object> changes,

    // Entity context
    String? entityType,
    EntityId? aggregateId,

    // Metadata
    Map<String, Object>? metadata,
    @Default(EventDefaults.isAsync) bool isAsync,
    @Default(EventDefaults.tags) List<String> tags,

    // Event chain
    EventId? correlationId,
    EventId? causationId,
    @Default(EventDefaults.version) int version,

    // Status
    String? status,

    // Schema versioning
    @Default(EventSchemaConfig.currentVersion) String schemaVersion,
    Map<String, Object>? schemaChanges,
    String? previousSchemaVersion,

    // Version vectors for distributed events
    @Default({}) Map<String, int> schemaVectors,
  }) = _DomainEventModel;

  factory DomainEventModel.fromJson(Map<String, Object> json) =>
      _$DomainEventModelFromJson(json);

  // Entity lifecycle events
  factory DomainEventModel.entityCreated({
    required EventId id,
    required EntityId entityId,
    required String entityType,
    required UserAction action,
    required Map<String, Object> initialData,
  }) {
    return DomainEventModel(
      id: id,
      entityId: entityId,
      entityType: entityType,
      eventType: EventType.created.name,
      timestamp: action.timestamp,
      initiator: action,
      changes: initialData,
    );
  }

  factory DomainEventModel.entityUpdated({
    required EventId id,
    required EntityId entityId,
    required String entityType,
    required UserAction action,
    required Map<String, Object> changes,
  }) {
    return DomainEventModel(
      id: id,
      entityId: entityId,
      entityType: entityType,
      eventType: EventType.updated.name,
      timestamp: action.timestamp,
      initiator: action,
      changes: changes,
    );
  }

  // Relationship events
  factory DomainEventModel.relationshipChanged({
    required EventId id,
    required EntityId entityId,
    required String entityType,
    required UserAction action,
    required String relationshipType,
    required Map<String, Object> changes,
  }) {
    return DomainEventModel(
      id: id,
      entityId: entityId,
      entityType: entityType,
      eventType: EventType.relationshipChanged.name,
      timestamp: action.timestamp,
      initiator: action,
      changes: changes,
      metadata: {'relationshipType': relationshipType},
    );
  }

  // Status events
  factory DomainEventModel.statusChanged({
    required EventId id,
    required EntityId entityId,
    required String entityType,
    required UserAction action,
    required String oldStatus,
    required String newStatus,
  }) {
    return DomainEventModel(
      id: id,
      entityId: entityId,
      entityType: entityType,
      eventType: EventType.statusChanged.name,
      timestamp: action.timestamp,
      initiator: action,
      changes: {'oldStatus': oldStatus, 'newStatus': newStatus},
      status: newStatus,
    );
  }

  // Hierarchy events
  factory DomainEventModel.hierarchyChanged({
    required EventId id,
    required EntityId entityId,
    required String entityType,
    required UserAction action,
    required EntityId? oldParentId,
    required EntityId? newParentId,
  }) {
    return DomainEventModel(
      id: id,
      entityId: entityId,
      entityType: entityType,
      eventType: EventType.hierarchyChanged.name,
      timestamp: action.timestamp,
      initiator: action,
      changes: {
        'oldParentId': oldParentId?.value ?? '',
        'newParentId': newParentId?.value ?? '',
      },
    );
  }

  // TODO: Temporarily disabled validation events
  /* 
  factory DomainEventModel.validationPerformed({
    required EventId id,
    required EntityId entityId,
    required String entityType,
    required UserAction action,
    required ValidationResult result,
  }) {
    return DomainEventModel(
      id: id,
      entityId: entityId,
      entityType: entityType,
      eventType: EventType.validated.name,
      timestamp: action.timestamp,
      initiator: action,
      changes: {
        'isValid': result.isValid,
        'issues': result.issues,
      },
    );
  }
  */

  /// Schema validation
  bool hasValidSchema() {
    return EventSchemaConfig.supportedVersions.contains(schemaVersion);
  }

  bool isBackwardsCompatible() {
    final minVer = EventSchemaConfig.maxBackwardsCompatible;
    return schemaVersion.compareTo(minVer) >= 0;
  }

  String? getMigrationPath(String targetVersion) {
    final paths = EventSchemaConfig.migrationPaths[schemaVersion];
    return paths?[targetVersion];
  }

  /// Domain event interface method for schema migration
  /// Actual implementation is moved to application layer
  DomainEventModel migrateSchema(String targetVersion) {
    throw UnimplementedError(
      'Schema migration implementation should be provided by the application layer',
    );
  }

  /// Schema version vector operations
  bool hasVectorConflict(Map<String, int> otherVectors) {
    return otherVectors.entries.any(
      (entry) =>
          schemaVectors[entry.key] != null &&
          schemaVectors[entry.key]! > entry.value,
    );
  }

  DomainEventModel incrementVector(String node) {
    final vectors = Map<String, int>.from(schemaVectors);
    vectors[node] = (vectors[node] ?? 0) + 1;
    return copyWith(schemaVectors: vectors);
  }

  DomainEventModel mergeVectors(Map<String, int> otherVectors) {
    final merged = Map<String, int>.from(schemaVectors);
    for (final entry in otherVectors.entries) {
      final current = merged[entry.key] ?? 0;
      if (entry.value > current) {
        merged[entry.key] = entry.value;
      }
    }
    return copyWith(schemaVectors: merged);
  }
}

// Event type classifications
enum EventType {
  // Entity lifecycle
  created,
  updated,
  deleted,

  // Status management
  locked,
  unlocked,
  statusChanged,

  // Workflow
  workflowChanged,
  workflowTransitioned,
  workflowStepCompleted,
  workflowStepRejected,

  // Relationships
  relationshipChanged,
  relationshipAdded,
  relationshipRemoved,

  // Hierarchy
  hierarchyChanged,
  hierarchyParentChanged,
  hierarchyChildAdded,
  hierarchyChildRemoved,

  // Metadata
  metadataChanged,
  tagged,
  untagged,

  // Access control
  accessGranted,
  accessRevoked,

  // Synchronization
  syncStarted,
  syncCompleted,

  // Versioning
  versionCreated,
  versionMerged,
}
