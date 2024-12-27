import 'package:data_manager/data_manager.dart';

abstract class IEventStore {
  Future<void> store(DomainEvent event);
  Future<void> storeBatch(List<DomainEvent> events);
  Future<List<DomainEvent>> getEvents(EntityId entityId);
  Future<List<DomainEvent>> queryEvents(EventQuery query);
  Future<ValidationResult> validateEvent(DomainEvent event);
  Stream<DomainEvent> watchEvents(EntityId entityId);
  Future<void> createSnapshot(DateTime timestamp);
  Future<void> restoreFromSnapshot(DateTime timestamp);
}

class EventQuery {
  final EntityId? entityId;
  final DateTime? fromDate;
  final DateTime? toDate;
  final String? eventType;
  final bool includeSystemEvents;

  const EventQuery({
    this.entityId,
    this.fromDate,
    this.toDate,
    this.eventType,
    this.includeSystemEvents = false,
  });
}
