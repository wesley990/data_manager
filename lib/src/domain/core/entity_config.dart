import 'dart:math' as math;

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/value_objects/enum_objects.dart';

part 'entity_config.freezed.dart';
part 'entity_config.g.dart';

/// Result of a validation operation that includes error details
class ValidationResult {
  /// Whether the validation passed successfully
  final bool isValid;

  /// Map of field names to error messages (empty if validation passed)
  final Map<String, String> errors;

  /// Creates a successful validation result with no errors
  ValidationResult.success() : isValid = true, errors = const {};

  /// Creates a failed validation result with specific errors
  ValidationResult.failure(this.errors) : isValid = errors.isNotEmpty;

  /// Returns a string representation of all errors, or "Valid" if no errors
  @override
  String toString() {
    if (isValid) return "Valid";
    return errors.entries.map((e) => "${e.key}: ${e.value}").join(", ");
  }
}

/// Default values and configurations for entity configs
abstract class EntityConfigDefaults {
  /// Schema version for config entities
  static const String configVersion = '1.0.0';

  // Path limits
  /// Maximum length of entity path in characters
  static const int maxPathLength = 1024;

  /// Maximum length of path segment
  static const int maxPathSegment = 255;

  /// Maximum depth of entity hierarchies
  static const int maxHierarchyDepth = 10;

  // History limits
  /// Maximum number of history entries to retain
  static const int maxHistorySize = 50;

  /// Default number of history entries to show in views
  static const int defaultHistorySize = 50;

  // Lock settings
  /// Default duration before a lock expires
  static const Duration defaultLockTimeout = Duration(minutes: 15);

  /// Duration by which a lock can be extended
  static const Duration lockExtensionPeriod = Duration(minutes: 5);

  /// Minimum duration for which an entity can be locked
  static const Duration minLockDuration = Duration(seconds: 30);

  /// Maximum duration for which an entity can be locked
  static const Duration maxLockDuration = Duration(hours: 24);

  // Entity defaults
  /// Default version string for new entities
  static const String defaultVersion = '1.0.0';

  /// Default public visibility setting
  static const bool defaultIsPublic = true;

  /// Default priority level for new entities
  static const EntityPriority defaultPriority = EntityPriority.medium;

  /// Default workflow stage for new entities
  static const EntityStage defaultStage = EntityStage.draft;

  // Path settings
  /// Character used to separate path segments
  static const String pathSeparator = '/';

  /// Regular expression pattern for invalid path characters
  static const String invalidPathChars = r'[<>:"|?*\x00-\x1F]';
}

/// Configuration settings for entities within the data manager
///
/// Controls path handling, history limits, locking behavior and entity defaults
@freezed
sealed class EntityConfig with _$EntityConfig {
  const EntityConfig._(); // Private constructor for implementing instance methods

  const factory EntityConfig({
    /// Configuration schema version for tracking changes to the configuration format itself
    @Default(EntityConfigDefaults.configVersion) String configVersion,

    // Path limits
    /// Maximum length of an entity path in characters.
    @Default(EntityConfigDefaults.maxPathLength) int maxPathLength,

    /// Maximum length of a single path segment in characters.
    @Default(EntityConfigDefaults.maxPathSegment) int maxPathSegment,

    /// Maximum allowed depth of entity hierarchies.
    @Default(EntityConfigDefaults.maxHierarchyDepth) int maxHierarchyDepth,

    // History limits
    /// Maximum number of history entries to retain per entity.
    @Default(EntityConfigDefaults.maxHistorySize) int maxHistorySize,

    /// Default number of history entries to show in views.
    @Default(EntityConfigDefaults.defaultHistorySize) int defaultHistorySize,

    // Lock settings
    /// Default duration before an entity lock expires.
    @Default(EntityConfigDefaults.defaultLockTimeout)
    Duration defaultLockTimeout,

    /// Duration by which a lock can be extended.
    @Default(EntityConfigDefaults.lockExtensionPeriod)
    Duration lockExtensionPeriod,

    /// Minimum duration for which an entity can be locked.
    @Default(EntityConfigDefaults.minLockDuration) Duration minLockDuration,

    /// Maximum duration for which an entity can be locked.
    @Default(EntityConfigDefaults.maxLockDuration) Duration maxLockDuration,

    // Entity defaults
    /// Default version string for new entities.
    @Default(EntityConfigDefaults.defaultVersion) String defaultVersion,

    /// Whether entities are public by default.
    @Default(EntityConfigDefaults.defaultIsPublic) bool defaultIsPublic,

    /// Default priority level for new entities.
    @Default(EntityConfigDefaults.defaultPriority)
    EntityPriority defaultPriority,

    /// Default workflow stage for new entities.
    @Default(EntityConfigDefaults.defaultStage) EntityStage defaultStage,

    // Path settings
    /// Character used to separate path segments.
    @Default(EntityConfigDefaults.pathSeparator) String pathSeparator,

    /// Regular expression pattern defining invalid characters in paths.
    @Default(EntityConfigDefaults.invalidPathChars) String invalidPathChars,
  }) = _EntityConfig;

  /// Creates a new instance of [EntityConfig] with configuration optimized for development
  ///
  /// This configuration has more permissive settings than the default
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

  /// Creates a new instance of [EntityConfig] with configuration optimized for production
  ///
  /// This configuration has more restrictive settings than the default
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

  /// Creates a new instance of [EntityConfig] with configuration optimized for testing
  ///
  /// This configuration has relaxed constraints and smaller timeouts to facilitate testing
  factory EntityConfig.testing() {
    return const EntityConfig(
      configVersion: '1.0.0',
      maxPathLength: 256, // Smaller to catch path issues during tests
      maxPathSegment: 64, // Smaller to catch segment issues during tests
      maxHierarchyDepth: 5, // Reduced depth for simpler test structures
      maxHistorySize: 10, // Smaller history for faster test execution
      defaultHistorySize: 5,
      defaultLockTimeout: Duration(
        seconds: 30,
      ), // Short timeouts for faster tests
      lockExtensionPeriod: Duration(seconds: 10),
      minLockDuration: Duration(
        seconds: 1,
      ), // Very short min duration for testing edge cases
      maxLockDuration: Duration(minutes: 5), // Short max duration for testing
      defaultIsPublic: true, // Public for easier test access
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

  /// Validates if a path string conforms to the configuration constraints
  ///
  /// Returns true if the path is valid according to all path constraints
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
  /// This method removes invalid characters, truncates paths and segments
  /// that exceed maximum length.
  ///
  /// Returns a sanitized path that conforms to configuration constraints.
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
  /// It handles empty segments and normalizes the result.
  ///
  /// Returns the joined path, sanitized according to configuration constraints.
  String joinPath(List<String> segments) {
    // Filter out empty segments
    final filteredSegments =
        segments.where((segment) => segment.trim().isNotEmpty).toList();

    // If all segments were empty, return an empty string
    if (filteredSegments.isEmpty) return '';

    // Join and normalize
    return normalizePath(filteredSegments.join(pathSeparator));
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

  /// Normalizes a path by removing redundant separators and ensuring constraints
  ///
  /// This method handles several edge cases:
  /// - Empty paths return an empty string
  /// - Leading/trailing separators are removed
  /// - Consecutive separators are collapsed to a single separator
  /// - Path is sanitized to meet length and character constraints
  ///
  /// Returns a normalized path string.
  String normalizePath(String path) {
    // Handle empty paths
    if (path.isEmpty) return '';

    // Trim whitespace from both ends
    final trimmed = path.trim();
    if (trimmed.isEmpty) return '';

    // Handle case of just separators (e.g. "///")
    if (trimmed.replaceAll(pathSeparator, '').isEmpty) return '';

    // Split into segments and filter out empty ones (that come from consecutive separators)
    final segments =
        trimmed
            .split(pathSeparator)
            .where((segment) => segment.isNotEmpty)
            .toList();

    // If all segments were empty, return an empty string
    if (segments.isEmpty) return '';

    // Join with a single separator and sanitize
    return sanitizePath(segments.join(pathSeparator));
  }

  /// Extracts the parent path from a given path.
  ///
  /// Returns the parent path, or an empty string if the path has no parent.
  String getParentPath(String path) {
    final normalized = normalizePath(path);
    if (normalized.isEmpty) return '';

    final lastSeparatorIndex = normalized.lastIndexOf(pathSeparator);

    if (lastSeparatorIndex <= 0) {
      return ''; // No parent (root level) or invalid path
    }

    return normalized.substring(0, lastSeparatorIndex);
  }

  /// Extracts the last segment (name) from a path.
  ///
  /// Returns the name component, or the full path if there are no separators.
  String getNameFromPath(String path) {
    final normalized = normalizePath(path);
    if (normalized.isEmpty) return '';

    final lastSeparatorIndex = normalized.lastIndexOf(pathSeparator);

    if (lastSeparatorIndex < 0) {
      return normalized; // No separators, return the whole path
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
      // Empty parent is considered the root and is the parent of everything except empty path
      return normalizedChild.isNotEmpty;
    }

    if (normalizedChild.isEmpty) {
      // Empty child can't have a parent
      return false;
    }

    if (normalizedParent == normalizedChild) {
      // A path isn't its own parent
      return false;
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
  /// Returns a ValidationResult containing details of any validation failures.
  ValidationResult validate() {
    final errors = <String, String>{};

    if (maxPathLength <= 0) {
      errors['maxPathLength'] = 'Must be greater than 0';
    }

    if (maxPathSegment <= 0) {
      errors['maxPathSegment'] = 'Must be greater than 0';
    }

    if (maxHierarchyDepth <= 0) {
      errors['maxHierarchyDepth'] = 'Must be greater than 0';
    }

    if (maxHistorySize < 0) {
      errors['maxHistorySize'] = 'Must be non-negative';
    }

    if (defaultHistorySize < 0) {
      errors['defaultHistorySize'] = 'Must be non-negative';
    } else if (defaultHistorySize > maxHistorySize) {
      errors['defaultHistorySize'] =
          'Cannot exceed maxHistorySize ($maxHistorySize)';
    }

    if (defaultLockTimeout.isNegative) {
      errors['defaultLockTimeout'] = 'Cannot be negative';
    }

    if (lockExtensionPeriod.isNegative) {
      errors['lockExtensionPeriod'] = 'Cannot be negative';
    }

    if (minLockDuration.isNegative) {
      errors['minLockDuration'] = 'Cannot be negative';
    }

    if (maxLockDuration.isNegative) {
      errors['maxLockDuration'] = 'Cannot be negative';
    }

    if (minLockDuration > maxLockDuration) {
      errors['lockDurationRange'] =
          'minLockDuration cannot be greater than maxLockDuration';
    }

    if (pathSeparator.isEmpty) {
      errors['pathSeparator'] = 'Cannot be empty';
    }

    // Try to compile the regex pattern to check validity
    try {
      RegExp(invalidPathChars);
    } catch (e) {
      errors['invalidPathChars'] = 'Invalid regex pattern: ${e.toString()}';
    }

    return errors.isEmpty
        ? ValidationResult.success()
        : ValidationResult.failure(errors);
  }

  /// Compares this configuration with another to identify differences.
  ///
  /// Returns a Map with property names as keys and a sub-map with 'this' and 'other' values
  /// for each property that differs. Returns an empty map if the configurations are identical.
  /// The value types can be String, int, bool, or EntityPriority/EntityStage (as int indices).
  Map<String, Map<String, Object>> compareWith(EntityConfig other) {
    final differences = <String, Map<String, Object>>{};

    // Compare versions
    if (defaultVersion != other.defaultVersion) {
      differences['version'] = <String, String>{
        'this': defaultVersion,
        'other': other.defaultVersion,
      };
    }

    // Compare path limits
    if (maxPathLength != other.maxPathLength) {
      differences['maxPathLength'] = <String, int>{
        'this': maxPathLength,
        'other': other.maxPathLength,
      };
    }
    if (maxPathSegment != other.maxPathSegment) {
      differences['maxPathSegment'] = <String, int>{
        'this': maxPathSegment,
        'other': other.maxPathSegment,
      };
    }
    if (maxHierarchyDepth != other.maxHierarchyDepth) {
      differences['maxHierarchyDepth'] = <String, int>{
        'this': maxHierarchyDepth,
        'other': other.maxHierarchyDepth,
      };
    }

    // Compare history limits
    if (maxHistorySize != other.maxHistorySize) {
      differences['maxHistorySize'] = <String, int>{
        'this': maxHistorySize,
        'other': other.maxHistorySize,
      };
    }
    if (defaultHistorySize != other.defaultHistorySize) {
      differences['defaultHistorySize'] = <String, int>{
        'this': defaultHistorySize,
        'other': other.defaultHistorySize,
      };
    }

    // Compare lock settings
    if (defaultLockTimeout != other.defaultLockTimeout) {
      differences['defaultLockTimeout'] = <String, int>{
        'this': defaultLockTimeout.inMilliseconds,
        'other': other.defaultLockTimeout.inMilliseconds,
      };
    }
    if (lockExtensionPeriod != other.lockExtensionPeriod) {
      differences['lockExtensionPeriod'] = <String, int>{
        'this': lockExtensionPeriod.inMilliseconds,
        'other': other.lockExtensionPeriod.inMilliseconds,
      };
    }
    if (minLockDuration != other.minLockDuration) {
      differences['minLockDuration'] = <String, int>{
        'this': minLockDuration.inMilliseconds,
        'other': other.minLockDuration.inMilliseconds,
      };
    }
    if (maxLockDuration != other.maxLockDuration) {
      differences['maxLockDuration'] = <String, int>{
        'this': maxLockDuration.inMilliseconds,
        'other': other.maxLockDuration.inMilliseconds,
      };
    }

    // Compare entity defaults
    if (defaultVersion != other.defaultVersion) {
      differences['defaultVersion'] = <String, String>{
        'this': defaultVersion,
        'other': other.defaultVersion,
      };
    }
    if (defaultIsPublic != other.defaultIsPublic) {
      differences['defaultIsPublic'] = <String, bool>{
        'this': defaultIsPublic,
        'other': other.defaultIsPublic,
      };
    }
    if (defaultPriority != other.defaultPriority) {
      differences['defaultPriority'] = <String, int>{
        'this': defaultPriority.index,
        'other': other.defaultPriority.index,
      };
    }
    if (defaultStage != other.defaultStage) {
      differences['defaultStage'] = <String, int>{
        'this': defaultStage.index,
        'other': other.defaultStage.index,
      };
    }

    // Compare path settings
    if (pathSeparator != other.pathSeparator) {
      differences['pathSeparator'] = <String, String>{
        'this': pathSeparator,
        'other': other.pathSeparator,
      };
    }
    if (invalidPathChars != other.invalidPathChars) {
      differences['invalidPathChars'] = <String, String>{
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

  /// Creates a merged configuration using the most permissive values from both configurations
  ///
  /// This is useful when you need to ensure compatibility between two environments
  ///
  /// Returns a new EntityConfig that will be compatible with both source configurations
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
        milliseconds: math.max(
          defaultLockTimeout.inMilliseconds,
          other.defaultLockTimeout.inMilliseconds,
        ),
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
  ///
  /// This method properly handles character classes, negated character classes,
  /// escaped characters, and other regex constructs to create a correct intersection.
  static String _mergeInvalidCharsPatterns(String pattern1, String pattern2) {
    // For simple character class patterns like [<>:"|?*\x00-\x1F], we can
    // parse and merge them properly. For other patterns, we'll need to resort to
    // a more conservative approach.

    // First check if both patterns are character classes (surrounded by [ ])
    final isPattern1CharClass =
        pattern1.startsWith('[') && pattern1.endsWith(']');
    final isPattern2CharClass =
        pattern2.startsWith('[') && pattern2.endsWith(']');

    if (isPattern1CharClass && isPattern2CharClass) {
      // Extract the contents of the character classes
      final content1 = pattern1.substring(1, pattern1.length - 1);
      final content2 = pattern2.substring(1, pattern2.length - 1);

      // Check if either is a negated character class (starts with ^)
      final isNegated1 = content1.startsWith('^');
      final isNegated2 = content2.startsWith('^');

      // If both are negated, we need to take the union of the negated sets
      if (isNegated1 && isNegated2) {
        final chars1 = _parseCharacterClass(content1.substring(1));
        final chars2 = _parseCharacterClass(content2.substring(1));

        // For negated classes, we want the intersection of the negated sets
        // (i.e., characters that are invalid in both patterns)
        final intersection = chars1.intersection(chars2);
        if (intersection.isEmpty) {
          return '[]'; // No common invalid chars, everything is valid
        }
        return '[^${_formatCharacterSet(intersection)}]';
      }

      // If one is negated and one is not, more complex logic is needed
      if (isNegated1 || isNegated2) {
        // Convert to non-negated form for consistency
        final chars1 =
            isNegated1
                ? _invertCharacterSet(
                  _parseCharacterClass(content1.substring(1)),
                )
                : _parseCharacterClass(content1);
        final chars2 =
            isNegated2
                ? _invertCharacterSet(
                  _parseCharacterClass(content2.substring(1)),
                )
                : _parseCharacterClass(content2);

        // Take the intersection - chars invalid in both patterns
        final intersection = chars1.intersection(chars2);
        if (intersection.isEmpty) {
          return '[]'; // No common invalid chars
        }
        return '[${_formatCharacterSet(intersection)}]';
      }

      // Both are positive character classes, take the union
      final chars1 = _parseCharacterClass(content1);
      final chars2 = _parseCharacterClass(content2);
      final union = chars1.union(chars2);
      if (union.isEmpty) {
        return '[]'; // No invalid chars
      }
      return '[${_formatCharacterSet(union)}]';
    }

    // For non-character class patterns or if parsing fails,
    // use a more conservative approach: either keep both or use a simpler pattern
    try {
      // Validate both patterns compile
      RegExp(pattern1);
      RegExp(pattern2);

      // Try to use alternation to combine patterns
      return '($pattern1|$pattern2)';
    } catch (e) {
      // If either pattern doesn't compile, return a safe default
      return r'[<>:"|?*\x00-\x1F]'; // Default invalid chars pattern
    }
  }

  /// Parses a character class content into a set of characters it represents
  static Set<int> _parseCharacterClass(String content) {
    final result = <int>{};
    int i = 0;

    while (i < content.length) {
      if (i + 2 < content.length && content[i + 1] == '-') {
        // Handle character range (e.g., a-z)
        final start = content.codeUnitAt(i);
        final end = content.codeUnitAt(i + 2);
        for (int c = start; c <= end; c++) {
          result.add(c);
        }
        i += 3;
      } else if (i + 1 < content.length && content[i] == '\\') {
        // Handle escape sequences
        final next = content[i + 1];
        if (next == 'x' && i + 3 < content.length) {
          // Handle hex escape like \x00
          try {
            final hexValue = int.parse(
              content.substring(i + 2, i + 4),
              radix: 16,
            );
            result.add(hexValue);
            i += 4;
          } catch (e) {
            // If the hex parse fails, just add the literal \x
            result.add('\\'.codeUnitAt(0));
            result.add('x'.codeUnitAt(0));
            i += 2;
          }
        } else {
          // Handle other escapes like \n, \t, etc.
          final escapedChar = _getEscapedChar(next);
          result.add(escapedChar);
          i += 2;
        }
      } else {
        // Regular character
        result.add(content.codeUnitAt(i));
        i++;
      }
    }

    return result;
  }

  /// Gets the character code for an escaped character
  static int _getEscapedChar(String char) {
    switch (char) {
      case 'n':
        return 10; // \n
      case 'r':
        return 13; // \r
      case 't':
        return 9; // \t
      case 'f':
        return 12; // \f
      case 'v':
        return 11; // \v
      case 'b':
        return 8; // \b
      default:
        return char.codeUnitAt(0);
    }
  }

  /// Inverts a set of characters (used for negated character classes)
  static Set<int> _invertCharacterSet(Set<int> chars) {
    // Create a set of all valid characters (0-0x10FFFF is the valid Unicode range)
    // For practicality, we'll limit to ASCII range 0-127
    final allChars = <int>{};
    for (int i = 0; i <= 127; i++) {
      allChars.add(i);
    }
    return allChars.difference(chars);
  }

  /// Formats a set of character codes into a character class string,
  /// trying to use ranges when possible for readability and compactness
  static String _formatCharacterSet(Set<int> chars) {
    if (chars.isEmpty) return '';

    final sorted = chars.toList()..sort();
    final buffer = StringBuffer();

    int rangeStart = sorted[0];
    int rangeEnd = rangeStart;

    for (int i = 1; i < sorted.length; i++) {
      if (sorted[i] == rangeEnd + 1) {
        // Continue the current range
        rangeEnd = sorted[i];
      } else {
        // Output the current range and start a new one
        _appendRange(buffer, rangeStart, rangeEnd);
        rangeStart = rangeEnd = sorted[i];
      }
    }

    // Output the last range
    _appendRange(buffer, rangeStart, rangeEnd);

    return buffer.toString();
  }

  /// Helper to append a character range to a string buffer
  static void _appendRange(StringBuffer buffer, int start, int end) {
    if (start == end) {
      // Single character
      buffer.write(_formatChar(start));
    } else if (end == start + 1) {
      // Two consecutive characters - write individually rather than as a range
      buffer.write(_formatChar(start));
      buffer.write(_formatChar(end));
    } else {
      // Range of 3+ characters
      buffer.write('${_formatChar(start)}-${_formatChar(end)}');
    }
  }

  /// Formats a character code as a string, escaping special regex characters
  static String _formatChar(int charCode) {
    final char = String.fromCharCode(charCode);

    // Escape regex metacharacters
    switch (char) {
      case '[':
      case ']':
      case '\\':
      case '^':
      case '-':
      case '.':
      case '*':
      case '+':
      case '?':
      case '(':
      case ')':
      case '|':
      case '{':
      case '}':
      case r'$':
        return '\\$char';
      default:
        // Non-printable characters should be escaped as hex
        if (charCode < 32 || charCode == 127) {
          return '\\x${charCode.toRadixString(16).padLeft(2, '0')}';
        }
        return char;
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

  /// Creates a new version string following semantic versioning.
  ///
  /// [increment] - Which part to increment: "major", "minor", or "patch"
  /// [baseVersion] - Optional base version, defaults to this config's version
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

  /// Gets a configuration property by name with proper type information
  /// [key] - The property name to retrieve
  /// Returns the property value or null if the property doesn't exist
  Object? getConfigProperty(String key) {
    switch (key) {
      case 'configVersion':
        return configVersion;
      case 'maxPathLength':
        return maxPathLength;
      case 'maxPathSegment':
        return maxPathSegment;
      case 'maxHierarchyDepth':
        return maxHierarchyDepth;
      case 'maxHistorySize':
        return maxHistorySize;
      case 'defaultHistorySize':
        return defaultHistorySize;
      case 'defaultLockTimeout':
        return defaultLockTimeout;
      case 'lockExtensionPeriod':
        return lockExtensionPeriod;
      case 'minLockDuration':
        return minLockDuration;
      case 'maxLockDuration':
        return maxLockDuration;
      case 'defaultVersion':
        return defaultVersion;
      case 'defaultIsPublic':
        return defaultIsPublic;
      case 'defaultPriority':
        return defaultPriority;
      case 'defaultStage':
        return defaultStage;
      case 'pathSeparator':
        return pathSeparator;
      case 'invalidPathChars':
        return invalidPathChars;
      default:
        return null;
    }
  }

  /// Gets a configuration property by name with expected return type
  /// [key] - The property name to retrieve
  /// [R] - The expected return type
  /// Returns the property value as type R, or null if property doesn't exist or type doesn't match
  R? getConfigPropertyTyped<R>(String key) {
    final value = getConfigProperty(key);
    return (value is R) ? value : null;
  }

  /// Provides unified access to configuration properties
  /// This allows convenient access using the index operator
  /// Example: config['maxPathLength'] returns the maxPathLength property
  Object? operator [](String key) => getConfigProperty(key);
}
