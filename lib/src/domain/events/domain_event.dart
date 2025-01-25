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

/// Event schema versioning configuration
abstract class EventSchemaConfig {
  static const currentVersion = '1.0.0';
  static const minVersion = '1.0.0';
  static const maxBackwardsCompatible = '1.0.0';
  
  static final supportedVersions = <String>{
    '1.0.0'
  };
  
  static final migrationPaths = {
    '1.0.0': {'1.0.0': null}, // No migration needed for same version
  };
}

/// Event schema structure definition
@freezed
class EventSchema with _$EventSchema {
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

  /// Schema validation and migration
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

  DomainEventModel migrateSchema(String targetVersion) {
    if (schemaVersion == targetVersion) return this;
    
    final path = getMigrationPath(targetVersion);
    if (path == null) {
      throw StateError('No migration path from $schemaVersion to $targetVersion');
    }

    // Apply migration logic based on path
    final migrated = copyWith(
      schemaVersion: targetVersion,
      previousSchemaVersion: schemaVersion,
      schemaChanges: {
        'from': schemaVersion,
        'to': targetVersion,
        'path': path,
        'timestamp': DateTime.now().toIso8601String(),
      }
    );

    return migrated;
  }

  /// Schema version vector operations
  bool hasVectorConflict(Map<String, int> otherVectors) {
    return otherVectors.entries.any((entry) =>
      schemaVectors[entry.key] != null && 
      schemaVectors[entry.key]! > entry.value);
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
  versionMerged
}
