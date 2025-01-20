import 'package:data_manager/data_manager.dart';
import 'package:uuid/uuid.dart';

abstract class EventAwareRepository<T extends BaseEntity>
    implements IEntityRepository<T> {
  final IEventStore eventStore;
  final IEntityValidator<T> validator;
  final ValidationCache validationCache;

  EventAwareRepository(this.eventStore, this.validator)
      : validationCache = ValidationCache();

  @override
  Future<BaseEntity<T>> operate(
    OperationType type,
    EntityId id, [
    Map<String, Object>? params,
  ]) async {
    if (type == OperationType.read) {
      return _executeOperation(type, id, params);
    }

    final action = UserAction(uid: 'system', timestamp: DateTime.now());
    final event = _createEvent(type, id, params, action);

    final eventValidation = await eventStore.validateEvent(event);
    if (!eventValidation.isValid) {
      throw ValidationException(eventValidation.getErrorMessage());
    }

    final result = await _executeOperation(type, id, params);
    await eventStore.store(event);
    return result;
  }

  Future<BaseEntity<T>> _executeOperation(
    OperationType type,
    EntityId id, [
    Map<String, Object>? params,
  ]) async {
    final entity = await loadEntity(id);
    final context = ValidationContext(
      data: params ?? {},
      relatedEntities: await _loadRelatedEntities(id),
      useCache: true,
    );

    final validationResult = await validator.validate(entity, context);
    if (!validationResult.isValid) {
      throw ValidationException(validationResult.getErrorMessage());
    }

    // Implement concrete operation logic in subclasses
    throw UnimplementedError();
  }

  // Protected methods to be implemented
  Future<T> loadEntity(EntityId id);
  Future<Map<String, BaseEntity>> _loadRelatedEntities(EntityId id);

  // Event management methods
  Stream<DomainEvent> watchEntityEvents(EntityId id) =>
      eventStore.watchEvents(id);

  Future<BaseEntity<T>> rebuildFromEvents(EntityId id, [DateTime? asOf]) async {
    final events = await eventStore.queryEvents(EventQuery(
      entityId: id,
      toDate: asOf,
      includeSystemEvents: true,
    ));

    if (events.isEmpty) {
      throw StateError('No events found for entity');
    }

    BaseEntity<T>? result;
    for (final event in events) {
      result = await operate(
        OperationType.values.byName(event.eventType),
        event.entityId,
        event.changes,
      );
    }

    return result!;
  }

  DomainEvent _createEvent(
    OperationType type,
    EntityId id,
    Map<String, Object>? params,
    UserAction initiator,
  ) {
    return DomainEvent(
      id: EventId(const Uuid().v4()),
      entityId: id,
      eventType: type.name,
      timestamp: DateTime.now(),
      initiator: initiator,
      changes: params ?? {},
      entityType: T.toString(),
    );
  }

  @override
  Future<List<BaseEntity<T>>> batchOperate(
    OperationType type,
    List<EntityId> ids, [
    Map<String, Object>? params,
  ]) async {
    final action = UserAction(uid: 'system', timestamp: DateTime.now());
    final events =
        ids.map((id) => _createEvent(type, id, params, action)).toList();

    final results = await _executeBatchOperation(type, ids, params);
    await eventStore.storeBatch(events);
    return results;
  }

  Future<void> replayEvents(EntityId id, DateTime from, DateTime to) async {
    final events = await eventStore.queryEvents(EventQuery(
      entityId: id,
      fromDate: from,
      toDate: to,
    ));

    for (final event in events) {
      await eventStore.store(event);
    }
  }

  @override
  Future<RepairReport> repair(EntityId id, RepairOptions options) async {
    final report = await _executeRepair(id, options);
    await eventStore.createSnapshot(DateTime.now());
    return report;
  }

  Future<void> createSnapshot(DateTime timestamp) async {
    await eventStore.createSnapshot(timestamp);
  }

  Future<void> restoreFromSnapshot(DateTime timestamp) async {
    await eventStore.restoreFromSnapshot(timestamp);
  }

  // Template methods to be implemented by concrete repositories
  Future<List<BaseEntity<T>>> _executeBatchOperation(
    OperationType type,
    List<EntityId> ids, [
    Map<String, Object>? params,
  ]);

  Future<RepairReport> _executeRepair(EntityId id, RepairOptions options);
}
