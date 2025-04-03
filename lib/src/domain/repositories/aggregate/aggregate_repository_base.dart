import 'package:data_manager/data_manager.dart';

abstract class AggregateRepositoryBase<T extends BaseEntity> {
  final IEventStore _eventStore;

  AggregateRepositoryBase(this._eventStore);

  Future<T> getById(EntityId id) async {
    final events = await _eventStore.getEvents(id);
    if (events.isEmpty) throw EntityNotFoundException(id);

    return reconstituteFromEvents(events);
  }

  Future<void> save(T aggregate) async {
    await _saveAggregate(aggregate);
    await _publishPendingEvents(aggregate.pendingEvents);
  }

  // Template methods
  Future<T> reconstituteFromEvents(List<DomainEvent> events);
  Future<void> _saveAggregate(T aggregate);
  Future<Map<String, BaseEntity>> loadRelatedEntities(T aggregate);

  Future<void> _publishPendingEvents(List<String> eventIds) async {
    for (final eventId in eventIds) {
      final event = await _eventStore.getEvents(EntityId(eventId));
      if (event.isNotEmpty) {
        await _eventStore.store(event.first);
      }
    }
  }
}

class EntityNotFoundException implements Exception {
  final EntityId id;
  EntityNotFoundException(this.id);

  @override
  String toString() => 'Entity not found: ${id.value}';
}
