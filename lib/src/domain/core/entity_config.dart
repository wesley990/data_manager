import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/value_objects/enum_objects.dart';

part 'entity_config.freezed.dart';
part 'entity_config.g.dart';

/// Defines configuration settings for entities within the data manager.
///
/// This immutable configuration class provides default settings for various
/// entity-related operations including path handling, history tracking,
/// locking behavior, and entity state defaults.
@freezed
sealed class EntityConfig with _$EntityConfig {
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
    ///
    /// By default, this pattern disallows characters that are not permitted in common file systems (e.g., Windows, Unix).
    /// If your environment requires a different set of restrictions, you can override this value using the [EntityConfig.custom] factory.
    ///
    /// Default: `[<>:"|?*\x00-\x1F]`
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

  /// Creates a new instance of [EntityConfig] with custom overrides.
  ///
  /// This factory allows you to define configuration settings for any environment (e.g., staging, testing, CI)
  /// by overriding only the fields you need. All unspecified fields will use the default values.
  ///
  /// Example:
  /// ```dart
  /// final stagingConfig = EntityConfig.custom(
  ///   maxPathLength: 1500,
  ///   defaultIsPublic: false,
  /// );
  /// ```
  ///
  /// [maxPathLength] - Maximum length of an entity path in characters.
  /// [maxPathSegment] - Maximum length of a single path segment in characters.
  /// [maxHierarchyDepth] - Maximum allowed depth of entity hierarchies.
  /// [maxHistorySize] - Maximum number of history entries to retain per entity.
  /// [defaultHistorySize] - Default number of history entries to show in views.
  /// [defaultLockTimeout] - Default duration before an entity lock expires.
  /// [lockExtensionPeriod] - Duration by which a lock can be extended.
  /// [minLockDuration] - Minimum duration for which an entity can be locked.
  /// [maxLockDuration] - Maximum duration for which an entity can be locked.
  /// [defaultVersion] - Default version string for new entities.
  /// [defaultIsPublic] - Whether entities are public by default.
  /// [defaultPriority] - Default priority level for new entities.
  /// [defaultStage] - Default workflow stage for new entities.
  /// [pathSeparator] - Character used to separate path segments.
  /// [invalidPathChars] - Regular expression pattern defining invalid characters in paths.
  factory EntityConfig.custom({
    int? maxPathLength,
    int? maxPathSegment,
    int? maxHierarchyDepth,
    int? maxHistorySize,
    int? defaultHistorySize,
    Duration? defaultLockTimeout,
    Duration? lockExtensionPeriod,
    Duration? minLockDuration,
    Duration? maxLockDuration,
    String? defaultVersion,
    bool? defaultIsPublic,
    EntityPriority? defaultPriority,
    EntityStage? defaultStage,
    String? pathSeparator,
    String? invalidPathChars,
  }) {
    return EntityConfig(
      maxPathLength: maxPathLength ?? const EntityConfig().maxPathLength,
      maxPathSegment: maxPathSegment ?? const EntityConfig().maxPathSegment,
      maxHierarchyDepth:
          maxHierarchyDepth ?? const EntityConfig().maxHierarchyDepth,
      maxHistorySize: maxHistorySize ?? const EntityConfig().maxHistorySize,
      defaultHistorySize:
          defaultHistorySize ?? const EntityConfig().defaultHistorySize,
      defaultLockTimeout:
          defaultLockTimeout ?? const EntityConfig().defaultLockTimeout,
      lockExtensionPeriod:
          lockExtensionPeriod ?? const EntityConfig().lockExtensionPeriod,
      minLockDuration: minLockDuration ?? const EntityConfig().minLockDuration,
      maxLockDuration: maxLockDuration ?? const EntityConfig().maxLockDuration,
      defaultVersion: defaultVersion ?? const EntityConfig().defaultVersion,
      defaultIsPublic: defaultIsPublic ?? const EntityConfig().defaultIsPublic,
      defaultPriority: defaultPriority ?? const EntityConfig().defaultPriority,
      defaultStage: defaultStage ?? const EntityConfig().defaultStage,
      pathSeparator: pathSeparator ?? const EntityConfig().pathSeparator,
      invalidPathChars:
          invalidPathChars ?? const EntityConfig().invalidPathChars,
    );
  }

  factory EntityConfig.fromJson(Map<String, Object?> json) =>
      _$EntityConfigFromJson(json);
}
