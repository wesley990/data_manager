import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:data_manager/data_manager.dart';

part 'domain_event.freezed.dart';
part 'domain_event.g.dart';

/// System-wide event defaults
abstract class EventDefaults {
  static const version = 0;
  static const isAsync = false;
  static const tags = <String>[];
}

@freezed
class DomainEventModel with _$DomainEventModel {
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
      changes: {
        'oldStatus': oldStatus,
        'newStatus': newStatus,
      },
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
  versionMerged
}
