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
    
    final segments = trimmedPath.split(pathSeparator)
      .where((s) => s.isNotEmpty)
      .toList();
      
    return segments.length;
  }
  
  /// Validates that a lock duration is within the configured limits.
  /// 
  /// Returns true if the duration is between minLockDuration and maxLockDuration.
  bool isValidLockDuration(Duration lockDuration) {
    return lockDuration >= minLockDuration && 
           lockDuration <= maxLockDuration;
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
    final segments = path.split(pathSeparator)
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
    if (defaultHistorySize < 0 || defaultHistorySize > maxHistorySize) return false;
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
}
