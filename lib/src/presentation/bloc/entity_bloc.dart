import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/domain/repositories/i_entity_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class EntityEvent {}

class LoadEntities<T> extends EntityEvent {}

class SyncEntities<T> extends EntityEvent {}

sealed class EntityState<T extends Object> {
  final List<BaseEntity<T>> entities;
  final bool isLoading;
  final String? error;

  const EntityState({
    required this.entities,
    required this.isLoading,
    this.error,
  });
}

class EntityInitial<T extends Object> extends EntityState<T> {
  EntityInitial() : super(entities: [], isLoading: false);
}

class EntityLoading<T extends Object> extends EntityState<T> {
  EntityLoading(List<BaseEntity<T>> current)
      : super(entities: current, isLoading: true);
}

class EntityLoaded<T extends Object> extends EntityState<T> {
  EntityLoaded(List<BaseEntity<T>> entities)
      : super(entities: entities, isLoading: false);
}

class EntityError<T extends Object> extends EntityState<T> {
  EntityError(List<BaseEntity<T>> current, String error)
      : super(entities: current, isLoading: false, error: error);
}

class EntityBloc<T extends Object> extends Bloc<EntityEvent, EntityState<T>> {
  final IEntityRepository<T> repository;
  final IEventStore? eventStore; // Optional event store
  final List<IDomainEventHandler> eventHandlers; // Event handlers

  EntityBloc(
    this.repository, {
    this.eventStore,
    this.eventHandlers = const [],
  }) : super(EntityInitial()) {
    on<LoadEntities<T>>(_onLoadEntities);
    on<SyncEntities<T>>(_onSyncEntities);
  }

  Future<void> _onLoadEntities(
    LoadEntities<T> event,
    Emitter<EntityState<T>> emit,
  ) async {
    emit(EntityLoading(state.entities));

    await for (final entities in repository.watchAll()) {
      // Process any pending events for each entity
      if (eventStore != null) {
        for (final entity in entities) {
          await _dispatchEvents(entity);
        }
      }
      emit(EntityLoaded(entities));
    }
  }

  Future<void> _onSyncEntities(
    SyncEntities<T> event,
    Emitter<EntityState<T>> emit,
  ) async {
    try {
      emit(EntityLoading(state.entities));
      await repository.sync();

      // Process events after sync
      if (eventStore != null) {
        final entities = await repository.getAll();
        for (final entity in entities) {
          await _dispatchEvents(entity);
        }
      }

      emit(EntityLoaded(state.entities));
    } catch (e) {
      emit(EntityError(state.entities, e.toString()));
    }
  }

  Future<void> _dispatchEvents(BaseEntity<T> entity) async {
    if (!entity.hasPendingEvents || eventStore == null) return;

    for (final eventId in entity.pendingEvents) {
      // Fetch event details from entity's metadata
      final event = _createEventFromEntity(entity, eventId);
      await eventStore?.store(event);

      // Notify handlers
      for (final handler in eventHandlers) {
        await handler.handle(event);
      }
    }

    // Clear pending events after processing
    await repository.save(entity.clearPendingEvents());
  }

  DomainEvent _createEventFromEntity(BaseEntity<T> entity, String eventId) {
    return DomainEvent(
      id: EventId(eventId),
      entityId: EntityId(entity.uuid),
      eventType: entity.eventMetadata['lastEventType'] as String,
      timestamp:
          DateTime.parse(entity.eventMetadata['lastEventTimestamp'] as String),
      initiator: entity.lastModifiedBy,
      changes: entity.eventMetadata['changes'] as Map<String, Object>? ?? {},
      entityType: T.toString(),
    );
  }
}
