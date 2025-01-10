import 'package:data_manager/data_manager.dart';

/// Core event store interface for domain event persistence
abstract class IEventStore {
  // Event operations
  Future<void> store(DomainEvent event);
  Future<void> storeBatch(List<DomainEvent> events);
  Future<List<DomainEvent>> getEvents(EntityId entityId);
  Future<List<DomainEvent>> queryEvents(EventQuery query);
  Future<ValidationResult> validateEvent(DomainEvent event);
  Stream<DomainEvent> watchEvents(EntityId entityId);
  
  // Snapshot management
  Future<void> createSnapshot(DateTime timestamp);
  Future<void> restoreFromSnapshot(DateTime timestamp);
  Future<void> pruneEvents(DateTime olderThan);
  Future<void> compactEvents(DateTime upTo);
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
