import 'dart:math' as math;

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
  const EntityConfig._(); // Private constructor for implementing instance methods

  const factory EntityConfig({
    /// Configuration schema version for tracking changes to the configuration format itself.
    /// This version follows semantic versioning and should be incremented when:
    /// - MAJOR: Breaking changes to configuration structure
    /// - MINOR: New backward-compatible fields added
    /// - PATCH: Bug fixes that don't affect configuration structure
    @Default('1.0.0') String configVersion,

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
      configVersion: '1.0.0',
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
      configVersion: '1.0.0',
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
    String? configVersion,
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
    const defaultConfig = EntityConfig();
    return EntityConfig(
      configVersion: configVersion ?? defaultConfig.configVersion,
      maxPathLength: maxPathLength ?? defaultConfig.maxPathLength,
      maxPathSegment: maxPathSegment ?? defaultConfig.maxPathSegment,
      maxHierarchyDepth: maxHierarchyDepth ?? defaultConfig.maxHierarchyDepth,
      maxHistorySize: maxHistorySize ?? defaultConfig.maxHistorySize,
      defaultHistorySize:
          defaultHistorySize ?? defaultConfig.defaultHistorySize,
      defaultLockTimeout:
          defaultLockTimeout ?? defaultConfig.defaultLockTimeout,
      lockExtensionPeriod:
          lockExtensionPeriod ?? defaultConfig.lockExtensionPeriod,
      minLockDuration: minLockDuration ?? defaultConfig.minLockDuration,
      maxLockDuration: maxLockDuration ?? defaultConfig.maxLockDuration,
      defaultVersion: defaultVersion ?? defaultConfig.defaultVersion,
      defaultIsPublic: defaultIsPublic ?? defaultConfig.defaultIsPublic,
      defaultPriority: defaultPriority ?? defaultConfig.defaultPriority,
      defaultStage: defaultStage ?? defaultConfig.defaultStage,
      pathSeparator: pathSeparator ?? defaultConfig.pathSeparator,
      invalidPathChars: invalidPathChars ?? defaultConfig.invalidPathChars,
    );
  }

  factory EntityConfig.fromJson(Map<String, Object?> json) =>
      _$EntityConfigFromJson(json);

  /// Validates if a path string conforms to the configuration constraints.
  ///
  /// Checks if the path:
  /// - Does not exceed the maximum path length
  /// - Does not exceed the maximum hierarchy depth
  /// - Does not contain invalid characters
  /// - Does not have segments that exceed the maximum segment length
  ///
  /// Returns true if the path is valid according to all constraints.
  bool isValidPath(String path) {
    // Check total path length
    if (path.length > maxPathLength) return false;

    // Check path segments
    final segments = path.split(pathSeparator);

    // Check hierarchy depth
    if (segments.length > maxHierarchyDepth) return false;

    // Check each segment
    for (final segment in segments) {
      // Skip empty segments (which can occur with leading/trailing separators)
      if (segment.isEmpty) continue;

      // Check segment length
      if (segment.length > maxPathSegment) return false;

      // Check for invalid characters
      if (RegExp(invalidPathChars).hasMatch(segment)) return false;
    }

    return true;
  }

  /// Sanitizes a path to conform to configuration constraints.
  ///
  /// This method:
  /// - Replaces invalid characters with underscores
  /// - Truncates paths that exceed maximum length
  /// - Truncates segments that exceed maximum length
  ///
  /// Returns a sanitized path that conforms to all path constraints.
  String sanitizePath(String path) {
    // Start with the original path
    String result = path;

    // Replace invalid characters with underscores
    result = result.replaceAll(RegExp(invalidPathChars), '_');

    // Process path segments
    final segments = result.split(pathSeparator);

    // Truncate segments that are too long
    for (int i = 0; i < segments.length; i++) {
      if (segments[i].length > maxPathSegment) {
        segments[i] = segments[i].substring(0, maxPathSegment);
      }
    }

    // Limit hierarchy depth if needed
    if (segments.length > maxHierarchyDepth) {
      segments.removeRange(maxHierarchyDepth, segments.length);
    }

    // Reconstruct path
    result = segments.join(pathSeparator);

    // Truncate final path if still too long
    if (result.length > maxPathLength) {
      result = result.substring(0, maxPathLength);
    }

    return result;
  }

  /// Joins path segments using the configured path separator.
  ///
  /// This is a convenience method that ensures consistent path formatting.
  /// It also sanitizes the result to ensure it conforms to all path constraints.
  ///
  /// Returns the joined path, sanitized according to configuration constraints.
  String joinPath(List<String> segments) {
    final joined = segments.join(pathSeparator);
    return sanitizePath(joined);
  }

  /// Resolves a child path relative to a parent path.
  ///
  /// This ensures proper joining of paths using the configured path separator.
  ///
  /// Returns the full path to the child, sanitized according to configuration constraints.
  String resolvePath(String parent, String child) {
    // Remove trailing separators from parent
    if (parent.endsWith(pathSeparator)) {
      parent = parent.substring(0, parent.length - pathSeparator.length);
    }

    // Remove leading separators from child
    if (child.startsWith(pathSeparator)) {
      child = child.substring(pathSeparator.length);
    }

    return sanitizePath('$parent$pathSeparator$child');
  }

  /// Calculates the depth of a path based on the number of separators.
  ///
  /// Returns the hierarchy level (depth) of the path.
  int getPathDepth(String path) {
    // Count separators, accounting for leading/trailing separators
    final trimmedPath = path.trim();
    if (trimmedPath.isEmpty) return 0;

    final segments =
        trimmedPath.split(pathSeparator).where((s) => s.isNotEmpty).toList();

    return segments.length;
  }

  /// Validates that a lock duration is within the configured limits.
  ///
  /// Returns true if the duration is between minLockDuration and maxLockDuration.
  bool isValidLockDuration(Duration lockDuration) {
    return lockDuration >= minLockDuration && lockDuration <= maxLockDuration;
  }

  /// Adjusts a lock duration to fit within the configured limits.
  ///
  /// If the input duration is too short, returns minLockDuration.
  /// If the input duration is too long, returns maxLockDuration.
  /// Otherwise, returns the original duration.
  Duration constrainLockDuration(Duration lockDuration) {
    if (lockDuration < minLockDuration) return minLockDuration;
    if (lockDuration > maxLockDuration) return maxLockDuration;
    return lockDuration;
  }

  /// Normalizes a path by:
  /// 1. Removing redundant separators
  /// 2. Removing trailing separators
  /// 3. Ensuring the path conforms to configuration constraints
  ///
  /// Returns a normalized path string.
  String normalizePath(String path) {
    // Handle empty paths
    if (path.isEmpty) return '';

    // Split into segments and filter out empty ones (that come from consecutive separators)
    final segments =
        path
            .split(pathSeparator)
            .where((segment) => segment.isNotEmpty)
            .toList();

    // Join with a single separator and sanitize
    return sanitizePath(segments.join(pathSeparator));
  }

  /// Extracts the parent path from a given path.
  ///
  /// Returns the parent path, or an empty string if the path has no parent.
  String getParentPath(String path) {
    final normalized = normalizePath(path);
    final lastSeparatorIndex = normalized.lastIndexOf(pathSeparator);

    if (lastSeparatorIndex <= 0) {
      return ''; // No parent or root path
    }

    return normalized.substring(0, lastSeparatorIndex);
  }

  /// Extracts the last segment (name) from a path.
  ///
  /// Returns the name component, or the full path if there are no separators.
  String getNameFromPath(String path) {
    final normalized = normalizePath(path);
    final lastSeparatorIndex = normalized.lastIndexOf(pathSeparator);

    if (lastSeparatorIndex < 0) {
      return normalized; // No separators, the whole path is the name
    }

    return normalized.substring(lastSeparatorIndex + pathSeparator.length);
  }

  /// Checks if one path is a parent of another path.
  ///
  /// Returns true if parentPath is a parent of childPath.
  bool isParentPath(String parentPath, String childPath) {
    final normalizedParent = normalizePath(parentPath);
    final normalizedChild = normalizePath(childPath);

    if (normalizedParent.isEmpty) {
      return true; // Empty path is the root, parent of all paths
    }

    // Check if childPath starts with parentPath followed by a separator
    return normalizedChild.startsWith(normalizedParent + pathSeparator);
  }

  /// Validates an entity name based on configuration constraints.
  ///
  /// Returns true if the name:
  /// - Is not empty
  /// - Does not contain path separators
  /// - Does not contain invalid characters
  /// - Does not exceed maxPathSegment length
  bool isValidEntityName(String name) {
    if (name.isEmpty) return false;
    if (name.length > maxPathSegment) return false;
    if (name.contains(pathSeparator)) return false;
    if (RegExp(invalidPathChars).hasMatch(name)) return false;
    return true;
  }

  /// Validates configuration values to ensure they are reasonable and consistent.
  ///
  /// This can be called during initialization to check that the configuration
  /// doesn't have contradictory or invalid settings.
  ///
  /// Returns true if the configuration is valid.
  bool validate() {
    if (maxPathLength <= 0) return false;
    if (maxPathSegment <= 0) return false;
    if (maxHierarchyDepth <= 0) return false;
    if (maxHistorySize < 0) return false;
    if (defaultHistorySize < 0 || defaultHistorySize > maxHistorySize) {
      return false;
    }
    if (defaultLockTimeout.isNegative) return false;
    if (lockExtensionPeriod.isNegative) return false;
    if (minLockDuration.isNegative) return false;
    if (maxLockDuration.isNegative) return false;
    if (minLockDuration > maxLockDuration) return false;
    if (pathSeparator.isEmpty) return false;

    // Try to compile the regex pattern to check validity
    try {
      RegExp(invalidPathChars);
    } catch (e) {
      return false;
    }

    return true;
  }

  /// Compares this configuration with another to identify differences.
  ///
  /// Returns a Map with property names as keys and a sub-map with 'this' and 'other' values
  /// for each property that differs. Returns an empty map if the configurations are identical.
  Map<String, Map<String, Object>> compareWith(EntityConfig other) {
    final differences = <String, Map<String, Object>>{};

    // Compare versions
    if (defaultVersion != other.defaultVersion) {
      differences['version'] = {
        'this': defaultVersion,
        'other': other.defaultVersion,
      };
    }

    // Compare path limits
    if (maxPathLength != other.maxPathLength) {
      differences['maxPathLength'] = {
        'this': maxPathLength,
        'other': other.maxPathLength,
      };
    }
    if (maxPathSegment != other.maxPathSegment) {
      differences['maxPathSegment'] = {
        'this': maxPathSegment,
        'other': other.maxPathSegment,
      };
    }
    if (maxHierarchyDepth != other.maxHierarchyDepth) {
      differences['maxHierarchyDepth'] = {
        'this': maxHierarchyDepth,
        'other': other.maxHierarchyDepth,
      };
    }

    // Compare history limits
    if (maxHistorySize != other.maxHistorySize) {
      differences['maxHistorySize'] = {
        'this': maxHistorySize,
        'other': other.maxHistorySize,
      };
    }
    if (defaultHistorySize != other.defaultHistorySize) {
      differences['defaultHistorySize'] = {
        'this': defaultHistorySize,
        'other': other.defaultHistorySize,
      };
    }

    // Compare lock settings
    if (defaultLockTimeout != other.defaultLockTimeout) {
      differences['defaultLockTimeout'] = {
        'this': defaultLockTimeout.inMilliseconds,
        'other': other.defaultLockTimeout.inMilliseconds,
      };
    }
    if (lockExtensionPeriod != other.lockExtensionPeriod) {
      differences['lockExtensionPeriod'] = {
        'this': lockExtensionPeriod.inMilliseconds,
        'other': other.lockExtensionPeriod.inMilliseconds,
      };
    }
    if (minLockDuration != other.minLockDuration) {
      differences['minLockDuration'] = {
        'this': minLockDuration.inMilliseconds,
        'other': other.minLockDuration.inMilliseconds,
      };
    }
    if (maxLockDuration != other.maxLockDuration) {
      differences['maxLockDuration'] = {
        'this': maxLockDuration.inMilliseconds,
        'other': other.maxLockDuration.inMilliseconds,
      };
    }

    // Compare entity defaults
    if (defaultVersion != other.defaultVersion) {
      differences['defaultVersion'] = {
        'this': defaultVersion,
        'other': other.defaultVersion,
      };
    }
    if (defaultIsPublic != other.defaultIsPublic) {
      differences['defaultIsPublic'] = {
        'this': defaultIsPublic,
        'other': other.defaultIsPublic,
      };
    }
    if (defaultPriority != other.defaultPriority) {
      differences['defaultPriority'] = {
        'this': defaultPriority.index,
        'other': other.defaultPriority.index,
      };
    }
    if (defaultStage != other.defaultStage) {
      differences['defaultStage'] = {
        'this': defaultStage.index,
        'other': other.defaultStage.index,
      };
    }

    // Compare path settings
    if (pathSeparator != other.pathSeparator) {
      differences['pathSeparator'] = {
        'this': pathSeparator,
        'other': other.pathSeparator,
      };
    }
    if (invalidPathChars != other.invalidPathChars) {
      differences['invalidPathChars'] = {
        'this': invalidPathChars,
        'other': other.invalidPathChars,
      };
    }

    return differences;
  }

  /// Checks if this configuration is compatible with another configuration.
  ///
  /// A configuration is considered compatible when:
  /// 1. Its path limits are equal to or greater than the other configuration
  /// 2. It uses the same path separator character
  /// 3. Its lock duration constraints can accommodate the other's default lock duration
  ///
  /// Returns true if this configuration is compatible with the other configuration.
  bool isCompatibleWith(EntityConfig other) {
    // Path compatibility
    if (maxPathLength < other.maxPathLength) return false;
    if (maxPathSegment < other.maxPathSegment) return false;
    if (maxHierarchyDepth < other.maxHierarchyDepth) return false;
    if (pathSeparator != other.pathSeparator) return false;

    // Lock duration compatibility
    if (other.defaultLockTimeout < minLockDuration) return false;
    if (other.defaultLockTimeout > maxLockDuration) return false;

    // Compatible with associated defaults
    if (maxHistorySize < other.defaultHistorySize) return false;

    return true;
  }

  /// Creates a merged configuration using the most permissive values from both configurations.
  ///
  /// This is useful when you need to ensure compatibility between two environments.
  ///
  /// Returns a new EntityConfig that will be compatible with both source configurations.
  EntityConfig mergeWith(EntityConfig other) {
    return EntityConfig(
      // Take the larger value for limits
      maxPathLength: math.max(maxPathLength, other.maxPathLength),
      maxPathSegment: math.max(maxPathSegment, other.maxPathSegment),
      maxHierarchyDepth: math.max(maxHierarchyDepth, other.maxHierarchyDepth),
      maxHistorySize: math.max(maxHistorySize, other.maxHistorySize),
      defaultHistorySize: math.min(
        math.max(defaultHistorySize, other.defaultHistorySize),
        math.max(maxHistorySize, other.maxHistorySize),
      ),

      // Take the wider ranges for durations
      defaultLockTimeout: Duration(
        milliseconds:
            (defaultLockTimeout.inMilliseconds +
                other.defaultLockTimeout.inMilliseconds) ~/
            2,
      ),
      lockExtensionPeriod: Duration(
        milliseconds: math.max(
          lockExtensionPeriod.inMilliseconds,
          other.lockExtensionPeriod.inMilliseconds,
        ),
      ),
      minLockDuration: Duration(
        milliseconds: math.min(
          minLockDuration.inMilliseconds,
          other.minLockDuration.inMilliseconds,
        ),
      ),
      maxLockDuration: Duration(
        milliseconds: math.max(
          maxLockDuration.inMilliseconds,
          other.maxLockDuration.inMilliseconds,
        ),
      ),

      // Preserve path separator from this config (they should be the same for compatibility)
      pathSeparator: pathSeparator,

      // Use most permissive regex pattern for invalid chars (if they differ)
      invalidPathChars:
          invalidPathChars == other.invalidPathChars
              ? invalidPathChars
              : _mergeInvalidCharsPatterns(
                invalidPathChars,
                other.invalidPathChars,
              ),

      // Use newest schema version
      defaultVersion:
          _compareVersions(defaultVersion, other.defaultVersion) >= 0
              ? defaultVersion
              : other.defaultVersion,

      // Keep other settings from this config
      defaultIsPublic: defaultIsPublic,
      defaultPriority: defaultPriority,
      defaultStage: defaultStage,
    );
  }

  /// Helper method to merge two regex patterns for invalid characters,
  /// creating a more permissive pattern that allows characters valid in either pattern.
  static String _mergeInvalidCharsPatterns(String pattern1, String pattern2) {
    // This is a simplified implementation - in a real system you might want
    // a more sophisticated regex manipulation approach
    try {
      if (pattern1 == pattern2) return pattern1;

      // Simple approach: just use the more restrictive pattern
      // A more complete approach would parse and merge the character sets
      if (pattern1.length > pattern2.length) return pattern2;
      return pattern1;
    } catch (e) {
      // Fall back to a default safe pattern
      return r'[<>:"|?*\x00-\x1F]';
    }
  }

  /// Helper method to compare semantic version strings.
  /// Returns positive if v1 > v2, negative if v1 < v2, 0 if equal.
  static int _compareVersions(String v1, String v2) {
    try {
      final v1Parts = v1.split('.').map(int.parse).toList();
      final v2Parts = v2.split('.').map(int.parse).toList();

      for (var i = 0; i < math.min(v1Parts.length, v2Parts.length); i++) {
        final diff = v1Parts[i] - v2Parts[i];
        if (diff != 0) return diff;
      }

      return v1Parts.length - v2Parts.length;
    } catch (e) {
      // If parsing fails, fall back to string comparison
      return v1.compareTo(v2);
    }
  }

  /// Checks if this configuration version is compatible with another version.
  ///
  /// Follows semantic versioning principles:
  /// - Major versions must match (breaking changes)
  /// - If this is being used with data created by otherVersion, this.minor >= other.minor
  ///
  /// [otherVersion] - Version string to check compatibility with (e.g., "1.2.3")
  /// [thisVersion] - Optional version to check, defaults to this config's version
  ///
  /// Returns true if versions are compatible.
  bool isVersionCompatible(String otherVersion, [String? thisVersion]) {
    final version = thisVersion ?? defaultVersion;

    // If versions are identical, they're compatible
    if (version == otherVersion) return true;

    try {
      final vParts = version.split('.').map(int.parse).toList();
      final otherParts = otherVersion.split('.').map(int.parse).toList();

      // Major versions must match (breaking changes)
      if (vParts.isNotEmpty &&
          otherParts.isNotEmpty &&
          vParts[0] != otherParts[0]) {
        return false;
      }

      // Minor version: this config must be same or newer than data version
      if (vParts.length > 1 && otherParts.length > 1) {
        if (vParts[1] < otherParts[1]) return false;
      }

      // Patch versions don't affect compatibility
      return true;
    } catch (e) {
      // If parsing fails, fall back to string equality
      return version == otherVersion;
    }
  }

  /// Creates a new configuration with an incremented version.
  ///
  /// [increment] - Which part to increment: "major", "minor", or "patch"
  /// [baseVersion] - Optional base version, defaults to this config's version
  ///
  /// Returns a new version string following semantic versioning.
  String incrementVersion(String increment, [String? baseVersion]) {
    final version = baseVersion ?? defaultVersion;

    try {
      final parts = version.split('.').map(int.parse).toList();

      if (parts.length != 3) {
        // If parsing fails, append to the version
        return '$version.1';
      }

      switch (increment.toLowerCase()) {
        case 'major':
          return '${parts[0] + 1}.0.0';
        case 'minor':
          return '${parts[0]}.${parts[1] + 1}.0';
        case 'patch':
        default:
          return '${parts[0]}.${parts[1]}.${parts[2] + 1}';
      }
    } catch (e) {
      // If parsing fails, append to the version
      return '$version.1';
    }
  }

  /// Creates a new config with the version number incremented.
  ///
  /// This creates a new configuration with an updated version while
  /// preserving all other settings.
  ///
  /// [increment] - Which part to increment: "major", "minor", or "patch"
  ///
  /// Returns a new EntityConfig with the updated version.
  EntityConfig withIncrementedVersion(String increment) {
    final newVersion = incrementVersion(increment);
    return copyWith(defaultVersion: newVersion);
  }
}
