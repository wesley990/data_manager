import 'package:data_manager/data_manager.dart';

abstract class AggregateRepositoryBase<T extends BaseEntity> {
  final IEventStore _eventStore;
  final IEntityValidator<T> _validator;

  AggregateRepositoryBase(this._eventStore, this._validator);

  Future<T> getById(EntityId id) async {
    final events = await _eventStore.getEvents(id);
    if (events.isEmpty) throw EntityNotFoundException(id);

    return reconstituteFromEvents(events);
  }

  Future<void> save(T aggregate) async {
    // Validate aggregate state
    final context = await buildValidationContext(aggregate);
    final validationResult = await _validator.validate(aggregate, context);

    if (!validationResult.isValid) {
      throw DomainValidationException(validationResult);
    }

    // Save and publish events
    await saveAggregate(aggregate);
    await _publishEvents(aggregate.eventPending);
  }

  // Template methods
  Future<T> reconstituteFromEvents(List<DomainEvent> events);
  Future<void> saveAggregate(T aggregate);

  Future<ValidationContext> buildValidationContext(T aggregate) async {
    final relatedEntities = await loadRelatedEntities(aggregate);
    return ValidationContext(
      relatedEntities: relatedEntities,
      useCache: true,
    );
  }

  Future<Map<String, BaseEntity>> loadRelatedEntities(T aggregate);

  Future<void> _publishEvents(List<String> pendingEventIds) async {
    for (final eventId in pendingEventIds) {
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

class DomainValidationException implements Exception {
  final ValidationResult validationResult;
  DomainValidationException(this.validationResult);

  @override
  String toString() => validationResult.getErrorMessage();
}
