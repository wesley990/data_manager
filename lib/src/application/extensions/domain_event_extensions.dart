import '../../domain/events/domain_event.dart';
import '../providers/event_service_provider.dart';

/// Extension methods for working with domain events in the application layer
extension DomainEventModelExtensions on DomainEventModel {
  /// Migrates the event schema to the target version using the provided service provider
  ///
  /// Usage example:
  /// ```dart
  /// final serviceProvider = EventServiceProvider();
  /// final migratedEvent = event.migrate('1.1.0', serviceProvider);
  /// ```
  DomainEventModel migrate(
    String targetVersion,
    EventServiceProvider serviceProvider,
  ) {
    return serviceProvider.migrateEventSchema(this, targetVersion);
  }
}
