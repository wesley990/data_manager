import 'package:data_manager/data_manager.dart';

/// Core event store interface for domain event persistence
abstract class IEventStore {
  // Event operations
  Future<void> store(DomainEventModel event);
  Future<void> storeBatch(List<DomainEventModel> events);
  Future<List<DomainEventModel>> getEvents(EntityId entityId);
  Future<List<DomainEventModel>> queryEvents(EventQuery query);
  Stream<DomainEventModel> watchEvents(EntityId entityId);

  // Snapshot management
  Future<void> createSnapshot(DateTime timestamp);
  Future<void> restoreFromSnapshot(DateTime timestamp);
  Future<void> pruneEvents(DateTime olderThan);
  Future<void> compactEvents(DateTime upTo);

  // Enhanced event queries
  Future<List<DomainEventModel>> getEventsByType(
    String eventType, {
    DateTime? since,
    int? limit,
  });
  Future<List<DomainEventModel>> getEventsByCorrelation(String correlationId);
  Future<List<DomainEventModel>> getEventChain(String causationId);

  // Version control
  Future<Map<String, int>> getVersionVectors(EntityId entityId);
  Future<void> updateVersionVectors(
    EntityId entityId,
    Map<String, int> vectors,
  );
  Future<List<DomainEventModel>> getEventsForVersion(
    EntityId entityId,
    int version,
  );
  Future<DomainEventModel?> getVersionEvent(EntityId entityId, int version);

  // Event replay and recovery
  Future<List<DomainEventModel>> replayEvents(
    EntityId entityId,
    DateTime fromTimestamp,
    DateTime toTimestamp,
  );
  Future<void> rebaseEvents(
    EntityId entityId,
    List<DomainEventModel> newBaseEvents,
  );

  // Enhanced snapshot management
  Future<DomainEventModel?> getLatestSnapshot(EntityId entityId);
  Future<void> createVersionSnapshot(EntityId entityId, int version);
  Future<bool> hasVersionConflict(
    EntityId entityId,
    Map<String, int> versionVectors,
  );
}

/// Event query parameters
class EventQuery {
  final EntityId? entityId;
  final DateTime? fromDate;
  final DateTime? toDate;
  final String? eventType;
  final bool includeSystemEvents;
  final int? limit;
  final Map<String, Object>? filters;
  final bool ascending;

  const EventQuery({
    this.entityId,
    this.fromDate,
    this.toDate,
    this.eventType,
    this.includeSystemEvents = false,
    this.limit,
    this.filters,
    this.ascending = true,
  });

  EventQuery copyWith({
    EntityId? entityId,
    DateTime? fromDate,
    DateTime? toDate,
    String? eventType,
    bool? includeSystemEvents,
    int? limit,
    Map<String, Object>? filters,
    bool? ascending,
  }) {
    return EventQuery(
      entityId: entityId ?? this.entityId,
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
      eventType: eventType ?? this.eventType,
      includeSystemEvents: includeSystemEvents ?? this.includeSystemEvents,
      limit: limit ?? this.limit,
      filters: filters ?? this.filters,
      ascending: ascending ?? this.ascending,
    );
  }
}

// Add event metadata class
class EventMetadata {
  final String? source;
  final String? correlationId;
  final Map<String, int> versionVectors;
  final Map<String, Object> customData;
  final DateTime timestamp;
  final bool isSnapshot;

  const EventMetadata({
    this.source,
    this.correlationId,
    this.versionVectors = const {},
    this.customData = const {},
    required this.timestamp,
    this.isSnapshot = false,
  });
}
