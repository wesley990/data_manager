import '../../domain/events/domain_event.dart';
import '../services/event_migration_service.dart';

/// Provider class that connects domain model with the application services
class EventServiceProvider {
  final EventMigrationService _migrationService;

  EventServiceProvider({EventMigrationService? migrationService})
    : _migrationService = migrationService ?? EventMigrationService();

  /// Extension method to allow DomainEventModel to use the migration service
  /// without violating clean architecture principles
  DomainEventModel migrateEventSchema(
    DomainEventModel event,
    String targetVersion,
  ) {
    return _migrationService.migrateEventSchema(event, targetVersion);
  }
}
