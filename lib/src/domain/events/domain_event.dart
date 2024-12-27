import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/user_action.dart';
import 'package:data_manager/data_manager.dart';

part 'domain_event.freezed.dart';
part 'domain_event.g.dart';

@freezed
class DomainEvent with _$DomainEvent {
  const factory DomainEvent({
    required EventId id,
    required EntityId entityId,
    required String eventType,
    required DateTime timestamp,
    required UserAction initiator,
    required Map<String, Object> changes,
    String? entityType,
    EntityId? aggregateId,
    Map<String, Object>? metadata,
    @Default(false) bool isAsync,
    @Default([]) List<String> tags,
    EventId? correlationId,
    EventId? causationId,
    @Default(0) int version,
    String? status,
  }) = _DomainEvent;

  factory DomainEvent.fromJson(Map<String, Object> json) =>
      _$DomainEventFromJson(json);

  /// Create from user action
  factory DomainEvent.fromUserAction({
    required EventId id,
    required EntityId entityId,
    required String eventType,
    required UserAction action,
    required Map<String, Object> changes,
    Map<String, Object>? metadata,
  }) {
    return DomainEvent(
      id: id,
      entityId: entityId,
      eventType: eventType,
      timestamp: action.timestamp,
      initiator: action,
      changes: changes,
      metadata: metadata,
    );
  }

  /// Create entity creation event
  factory DomainEvent.entityCreated({
    required EventId id,
    required EntityId entityId,
    required String entityType,
    required UserAction action,
    required Map<String, Object> initialData,
  }) {
    return DomainEvent(
      id: id,
      entityId: entityId,
      entityType: entityType,
      eventType: EventType.created.name,
      timestamp: action.timestamp,
      initiator: action,
      changes: initialData,
    );
  }

  /// Create entity update event
  factory DomainEvent.entityUpdated({
    required EventId id,
    required EntityId entityId,
    required String entityType,
    required UserAction action,
    required Map<String, Object> changes,
  }) {
    return DomainEvent(
      id: id,
      entityId: entityId,
      entityType: entityType,
      eventType: EventType.updated.name,
      timestamp: action.timestamp,
      initiator: action,
      changes: changes,
    );
  }

  /// Create relationship change event
  factory DomainEvent.relationshipChanged({
    required EventId id,
    required EntityId entityId,
    required String entityType,
    required UserAction action,
    required String relationshipType,
    required Map<String, Object> changes,
  }) {
    return DomainEvent(
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

  /// Create status change event
  factory DomainEvent.statusChanged({
    required EventId id,
    required EntityId entityId,
    required String entityType,
    required UserAction action,
    required String oldStatus,
    required String newStatus,
  }) {
    return DomainEvent(
      id: id,
      entityId: entityId,
      entityType: entityType,
      eventType: EventType.statusChanged.name,
      timestamp: action.timestamp,
      initiator: action,
      changes: {
        'oldStatus': oldStatus,
        'newStatus': newStatus,
      },
      status: newStatus,
    );
  }

  /// Create hierarchy change event
  factory DomainEvent.hierarchyChanged({
    required EventId id,
    required EntityId entityId,
    required String entityType,
    required UserAction action,
    required EntityId? oldParentId,
    required EntityId? newParentId,
  }) {
    return DomainEvent(
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

  /// Create validation event
  factory DomainEvent.validationPerformed({
    required EventId id,
    required EntityId entityId,
    required String entityType,
    required UserAction action,
    required ValidationResult result,
  }) {
    return DomainEvent(
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
}

enum EventType {
  // Core Entity Events
  created,
  updated,
  deleted,
  validated,

  // Status & Lock Events
  locked,
  unlocked,
  statusChanged,

  // Workflow Events
  workflowChanged,
  workflowTransitioned,
  workflowStepCompleted,
  workflowStepRejected,

  // Relationship Events
  relationshipChanged,
  relationshipAdded,
  relationshipRemoved,

  // Hierarchy Events
  hierarchyChanged,
  hierarchyParentChanged,
  hierarchyChildAdded,
  hierarchyChildRemoved,

  // Metadata Events
  metadataChanged,
  tagged,
  untagged,

  // Access Control Events
  accessGranted,
  accessRevoked,

  // Basic Sync Events
  syncStarted,
  syncCompleted,

  // Version Events
  versionCreated,
  versionMerged
}
