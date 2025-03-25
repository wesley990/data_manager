import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums/entity_priority.dart';
import 'enums/entity_stage.dart';

part 'entity_config.freezed.dart';
part 'entity_config.g.dart';

/// Defines configuration settings for entities within the data manager.
///
/// This immutable configuration class provides default settings for various
/// entity-related operations including path handling, history tracking,
/// locking behavior, and entity state defaults.
@freezed
class EntityConfig with _$EntityConfig {
  const factory EntityConfig({
    // Path limits
    /// Maximum length of an entity path in characters.
    @Default(1024) int maxPathLength,

    /// Maximum length of a single path segment in characters.
    @Default(255) int maxPathSegment,

    /// Maximum allowed depth of entity hierarchies.
    @Default(10) int maxHierarchyDepth,

    // History limits
    /// Maximum number of history entries to retain per entity.
    @Default(50) int maxHistorySize,

    /// Default number of history entries to show in views.
    @Default(50) int defaultHistorySize,

    // Lock settings
    /// Default duration before an entity lock expires.
    @Default(Duration(minutes: 15)) Duration defaultLockTimeout,

    /// Duration by which a lock can be extended.
    @Default(Duration(minutes: 5)) Duration lockExtensionPeriod,

    /// Minimum duration for which an entity can be locked.
    @Default(Duration(seconds: 30)) Duration minLockDuration,

    /// Maximum duration for which an entity can be locked.
    @Default(Duration(hours: 24)) Duration maxLockDuration,

    // Entity defaults
    /// Default version string for new entities.
    @Default('1.0.0') String defaultVersion,

    /// Whether entities are public by default.
    @Default(true) bool defaultIsPublic,

    /// Default priority level for new entities.
    @Default(EntityPriority.medium) EntityPriority defaultPriority,

    /// Default workflow stage for new entities.
    @Default(EntityStage.draft) EntityStage defaultStage,

    // Path settings
    /// Character used to separate path segments.
    @Default('/') String pathSeparator,

    /// Regular expression pattern defining invalid characters in paths.
    @Default(r'[<>:"|?*\x00-\x1F]') String invalidPathChars,
  }) = _EntityConfig;

  /// Creates a new instance of [EntityConfig] with configuration optimized for development.
  ///
  /// This configuration has more permissive settings than the default.
  factory EntityConfig.development() {
    return const EntityConfig(
      maxPathLength: 2048,
      maxHistorySize: 100,
      defaultLockTimeout: Duration(hours: 1),
      minLockDuration: Duration(seconds: 5),
      maxLockDuration: Duration(hours: 48),
    );
  }

  /// Creates a new instance of [EntityConfig] with configuration optimized for production.
  ///
  /// This configuration has more restrictive settings than the default.
  factory EntityConfig.production() {
    return const EntityConfig(
      maxPathLength: 512,
      maxPathSegment: 128,
      maxHierarchyDepth: 8,
      maxHistorySize: 25,
      defaultHistorySize: 10,
      defaultLockTimeout: Duration(minutes: 10),
      maxLockDuration: Duration(hours: 12),
      defaultIsPublic: false,
    );
  }

  factory EntityConfig.fromJson(Map<String, Object?> json) =>
      _$EntityConfigFromJson(json);
}
