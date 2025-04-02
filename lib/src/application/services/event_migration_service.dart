import '../../domain/events/domain_event.dart';

/// Service responsible for handling domain event schema migrations
class EventMigrationService {
  /// Migrates a domain event to the target schema version
  ///
  /// This method implements the migration logic that was previously in the domain layer,
  /// following Clean Architecture principles by keeping the implementation details
  /// out of the domain layer.
  DomainEventModel migrateEventSchema(
    DomainEventModel event,
    String targetVersion,
  ) {
    // Return the event as is if it's already at the target version
    if (event.schemaVersion == targetVersion) {
      return event;
    }

    // Validate that the migration is possible
    if (!EventSchemaConfig.supportedVersions.contains(targetVersion)) {
      throw UnsupportedError(
        'Target schema version $targetVersion is not supported',
      );
    }

    final migrationPath = event.getMigrationPath(targetVersion);
    if (migrationPath == null) {
      throw UnsupportedError(
        'No migration path from ${event.schemaVersion} to $targetVersion',
      );
    }

    // Track schema changes during migration
    final schemaChanges = Map<String, Object>.from(event.schemaChanges ?? {});
    schemaChanges['migratedFrom'] = event.schemaVersion;
    schemaChanges['migratedTo'] = targetVersion;
    schemaChanges['migratedAt'] = DateTime.now().toIso8601String();

    // Apply version-specific migrations
    var migratedEvent = _applyMigration(event, targetVersion);

    // Update schema metadata
    return migratedEvent.copyWith(
      schemaVersion: targetVersion,
      previousSchemaVersion: event.schemaVersion,
      schemaChanges: schemaChanges,
    );
  }

  /// Applies version-specific migration transformations
  DomainEventModel _applyMigration(
    DomainEventModel event,
    String targetVersion,
  ) {
    // Implementation of migration logic for different versions
    switch ('${event.schemaVersion}-$targetVersion') {
      // Example: Migrating from v1.0.0 to v1.1.0
      case '1.0.0-1.1.0':
        return _migrateFrom100To110(event);

      // Add more migration paths as needed

      default:
        // For now, if there's no specific migration needed, return as-is
        return event;
    }
  }

  /// Example migration implementation from v1.0.0 to v1.1.0
  DomainEventModel _migrateFrom100To110(DomainEventModel event) {
    // Deep copy the changes map to avoid mutation
    final migratedChanges = Map<String, Object>.from(event.changes);

    // Example transformation: rename a field
    if (migratedChanges.containsKey('oldFieldName')) {
      migratedChanges['newFieldName'] = migratedChanges['oldFieldName']!;
      migratedChanges.remove('oldFieldName');
    }

    // Example: change data format for a specific field
    if (migratedChanges.containsKey('dateField') &&
        migratedChanges['dateField'] is String) {
      // Convert from ISO format to timestamp or vice versa
      final dateStr = migratedChanges['dateField'] as String;
      try {
        final date = DateTime.parse(dateStr);
        migratedChanges['dateField'] = date.millisecondsSinceEpoch;
      } catch (_) {
        // Handle parsing error
      }
    }

    return event.copyWith(changes: migratedChanges);
  }
}
