import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/enum_objects.dart';
import '../value_objects/identity_value_objects.dart';
import '../value_objects/user_action.dart';
import 'dart:developer' as developer;

part 'core_entity.freezed.dart';
part 'core_entity.g.dart';

/// Default values and configurations for entities
abstract class EntityDefaults {
  /// Schema version for new entities
  static const String version = '1.0.0';

  /// Status for new entities
  static const EntityStatus status = EntityStatus.active;

  /// Priority level for new entities
  static const EntityPriority priority = EntityPriority.medium;

  /// Workflow stage for new entities
  static const EntityStage stage = EntityStage.draft;

  /// Public visibility setting
  static const bool isPublic = true;

  /// Access count for new entities
  static const int accessCount = 0;

  // Path related defaults
  /// Path separator character
  static const String pathSeparator = '/';

  /// URL-encoded path separator
  static const String encodedPathSeparator = '%2F';

  /// Regex pattern for invalid path characters
  static const String invalidPathChars = r'[<>:"|?*\x00-\x1F]';
}

/// Parses DateTime from a String safely
DateTime? _tryParseDateTime(Object? value) {
  if (value == null) return null;
  
  if (value is String) {
    // Handle empty/whitespace strings
    if (value.trim().isEmpty) return null;
    return DateTime.tryParse(value);
  }
  
  // Handle numeric timestamps (common in JSON/APIs)
  if (value is int) {
    try {
      return DateTime.fromMillisecondsSinceEpoch(value);
    } catch (_) {
      return null;
    }
  }
  
  // Handle DateTime objects passed through (defensive programming)
  if (value is DateTime) {
    return value;
  }
  
  return null;
}

/// Provides type-safe access to metadata values
class TypedMetadata {
  final Map<String, Object> _meta;
  final void Function(
    String key,
    Object? value,
    Type targetType,
    Object? error,
  )?
  onConversionError;

  /// Creates a TypedMetadata instance for type-safe access to metadata
  /// [_meta] - The source metadata map
  /// [onConversionError] - Optional callback for type conversion errors
  TypedMetadata(this._meta, {this.onConversionError});

  /// Checks if metadata contains a key
  bool containsKey(String key) => _meta.containsKey(key);

  /// Converts value to specified type with error handling
  /// [value] - The value to be converted to type T
  /// [key] - Optional key name for better error reporting
  /// Returns the converted value or null if conversion fails
  T? _convertSafely<T>(Object? value, {String? key}) {
    if (value == null) return null;

    try {
      // Special handling for DateTime
      if (T == DateTime) {
        final dateTime = _tryParseDateTime(value);
        return dateTime as T?;
      }

      // Direct match
      if (value is T) {
        return value as T;
      }

      // Basic type conversions
      if (T == int && value is num) {
        return value.toInt() as T;
      }
      if (T == double && value is num) {
        return value.toDouble() as T;
      }
      if (T == String) {
        return value.toString() as T;
      }
      if (T == bool && value is String) {
        final lowered = value.toLowerCase();
        if (lowered == 'true' || lowered == '1' || lowered == 'yes') {
          return true as T;
        }
        if (lowered == 'false' || lowered == '0' || lowered == 'no') {
          return false as T;
        }
      }
      if (T == bool && value is num) {
        return (value != 0) as T;
      }

      // Handle enum types when value is a string
      if (T is Enum && value is String) {
        try {
          // Use Dart's type system rather than dynamic reflection
          // This is more reliable across different compilation modes
          return _convertStringToEnum<T>(value);
        } catch (_) {
          // Enum conversion failed
        }
      }

      // Log error in development and production
      developer.log(
        'Failed to convert ${value.runtimeType} to $T${key != null ? ' for key "$key"' : ''}',
        name: 'TypedMetadata',
      );

      // Report error through callback if provided
      if (onConversionError != null) {
        onConversionError!(key ?? '', value, T, null);
      }

      return null;
    } catch (e) {
      developer.log(
        'Exception during conversion to $T: $e',
        name: 'TypedMetadata',
        error: e,
      );

      // Report exception through callback if provided
      if (onConversionError != null) {
        onConversionError!(key ?? '', value, T, e);
      }

      return null;
    }
  }

  /// Converts a string to an enum value without using dynamic reflection
  /// This approach is more reliable across different compilation modes
  /// [value] - The string value to convert to an enum
  /// Returns the enum value or null if conversion fails
  T? _convertStringToEnum<T>(String value) {
    // For EntityStatus enum
    if (T == EntityStatus) {
      try {
        return EntityStatus.values.firstWhere(
              (e) =>
                  e.toString().split('.').last.toLowerCase() ==
                  value.toLowerCase(),
            )
            as T;
      } catch (_) {
        return null;
      }
    }

    // For EntityPriority enum
    if (T == EntityPriority) {
      try {
        return EntityPriority.values.firstWhere(
              (e) =>
                  e.toString().split('.').last.toLowerCase() ==
                  value.toLowerCase(),
            )
            as T;
      } catch (_) {
        return null;
      }
    }

    // For EntityStage enum
    if (T == EntityStage) {
      try {
        return EntityStage.values.firstWhere(
              (e) =>
                  e.toString().split('.').last.toLowerCase() ==
                  value.toLowerCase(),
            )
            as T;
      } catch (_) {
        return null;
      }
    }

    // Add support for other enum types as needed

    return null;
  }

  /// Gets typed value from metadata with caching
  /// [key] - The metadata key to retrieve
  /// [T] - The target type to convert the value to
  /// Returns the value converted to type T or null if key doesn't exist or conversion fails
  T? _getValueTyped<T>(String key) {
    // Check cache with type safety
    if (_cache.containsKey(key)) {
      final cachedValue = _cache[key];
      if (cachedValue == null || cachedValue is T) {
        return cachedValue as T?;
      }
      // Value exists but wrong type - clear cache and reconvert
      _cache.remove(key);
    }

    if (!_meta.containsKey(key)) return null;

    final value = _convertSafely<T>(_meta[key], key: key);
    
    // Manage cache size before adding new entry
    if (_cache.length >= _maxCacheSize && !_cache.containsKey(key)) {
      // Simple eviction strategy: remove a random key
      // A more sophisticated approach would use LRU, but that requires more tracking
      if (_cache.isNotEmpty) {
        _cache.remove(_cache.keys.first);
      }
    }
    
    _cache[key] = value;
    return value;
  }

  /// Gets string value from metadata
  /// [key] - The metadata key to retrieve
  /// [defaultValue] - Value to return if the key doesn't exist or can't be converted
  /// Returns typed String value or the default value
  String getString(String key, {String defaultValue = ''}) =>
      _getValueTyped<String>(key) ?? defaultValue;

  /// Gets integer value from metadata
  /// [key] - The metadata key to retrieve
  /// [defaultValue] - Value to return if the key doesn't exist or can't be converted
  /// Returns typed int value or the default value
  int getInt(String key, {int defaultValue = 0}) =>
      _getValueTyped<int>(key) ?? defaultValue;

  /// Gets double value from metadata
  /// [key] - The metadata key to retrieve
  /// [defaultValue] - Value to return if the key doesn't exist or can't be converted
  /// Returns typed double value or the default value
  double getDouble(String key, {double defaultValue = 0.0}) =>
      _getValueTyped<double>(key) ?? defaultValue;

  /// Gets boolean value from metadata
  /// [key] - The metadata key to retrieve
  /// [defaultValue] - Value to return if the key doesn't exist or can't be converted
  /// Returns typed boolean value or the default value
  bool getBool(String key, {bool defaultValue = false}) =>
      _getValueTyped<bool>(key) ?? defaultValue;

  /// Gets DateTime value from metadata
  /// [key] - The metadata key to retrieve
  /// [defaultValue] - Value to return if the key doesn't exist or can't be converted
  /// Returns typed DateTime value or the default value
  DateTime? getDateTime(String key, {DateTime? defaultValue}) {
    final value = _getValueTyped<DateTime>(key);
    return value ?? defaultValue;
  }

  /// Gets typed list from metadata
  /// [key] - The metadata key containing a List to be converted
  /// Returns a strongly-typed list or null if conversion fails
  List<R>? getListAs<R>(String key) =>
      _getCollectionTyped<List, R, Object>(key) as List<R>?;

  /// Gets typed map from metadata
  /// [key] - The metadata key containing a Map to be converted
  /// [K] - The key type for the map (must be an Object)
  /// [V] - The value type for the map
  /// Returns a strongly-typed map or null if conversion fails
  Map<K, V>? getMapAs<K extends Object, V>(String key) =>
      _getCollectionTyped<Map, V, K>(key) as Map<K, V>?;

  /// Handles collection types with type-safe conversion and error handling
  /// Ensures all elements in the collection match the expected type
  /// [C] - The collection type (List or Map)
  /// [V] - The value type (list elements or map values)
  /// [K] - The key type for maps (only used when C is Map)
  C? _getCollectionTyped<C, V, K extends Object>(String key) {
    final value = _meta[key];
    if (!_meta.containsKey(key) || value == null) return null;

    try {
      // Handle List conversion
      if (C == List && value is List) {
        return _convertToTypedList<V>(value, key) as C;
      }

      // Handle Map conversion
      if (C == Map && value is Map) {
        return _convertToTypedMap<K, V>(value, key) as C;
      }

      // Report error for non-collection types
      _reportConversionError(
        key,
        value,
        C,
        "Value is not of expected collection type",
      );
      return null;
    } catch (e) {
      _reportConversionError(key, value, C, e);
      return null;
    }
  }

  /// Converts a List to a type-safe List`<V>`
  /// Returns null if any element can't be converted to type V
  List<V>? _convertToTypedList<V>(List source, String key) {
    // Fast path for empty lists
    if (source.isEmpty) {
      return <V>[];
    }

    final result = <V>[];

    for (final item in source) {
      // Direct type match
      if (item is V) {
        result.add(item);
        continue;
      }

      // Try conversion
      final converted = _convertSafely<V>(item, key: '$key[element]');
      if (converted != null) {
        result.add(converted);
      } else {
        // Fail entire conversion if any element fails
        return null;
      }
    }

    return result;
  }

  /// Converts a Map to a type-safe Map`<K, V>`
  /// Returns null if any key or value can't be converted to types K, V
  Map<K, V>? _convertToTypedMap<K extends Object, V>(Map source, String key) {
    // Fast path for empty maps
    if (source.isEmpty) {
      return <K, V>{};
    }

    final result = <K, V>{};

    for (final entry in source.entries) {
      final entryKey = entry.key;
      final entryValue = entry.value;

      // Validate key type
      if (entryKey is! K) {
        return null; // Key type mismatch - fail fast
      }

      // Direct value type match
      if (entryValue is V) {
        result[entryKey] = entryValue;
        continue;
      }

      // Try value conversion
      final convertedValue = _convertSafely<V>(
        entryValue,
        key: '$key.$entryKey',
      );

      if (convertedValue != null) {
        result[entryKey] = convertedValue;
      } else {
        return null; // Value conversion failed
      }
    }

    return result;
  }

  /// Helper method to report conversion errors
  void _reportConversionError(
    String key,
    Object value,
    Type targetType,
    Object? error,
  ) {
    if (onConversionError != null) {
      onConversionError!(key, value, targetType, error);
    }
  }

  /// Gets nested metadata as another TypedMetadata instance
  /// [key] - The key containing a Map that should be wrapped in TypedMetadata
  /// Returns null if the value is not a Map`<String, Object>`
  TypedMetadata? getNestedMetadata(String key) {
    final value = _meta[key];
    if (value is Map<String, Object>) {
      return TypedMetadata(value, onConversionError: onConversionError);
    }
    return null;
  }

  /// Tries multiple keys in sequence until finding a non-null value
  /// [keys] - List of keys to try in order
  /// [T] - The target type to convert the value to
  /// Returns the first matching value or null if no matches
  T? getFirstMatching<T>(List<String> keys) {
    for (final key in keys) {
      final value = _getValueTyped<T>(key);
      if (value != null) return value;
    }
    return null;
  }

  /// Internal cache for previously converted values
  final Map<String, Object?> _cache = {};
  
  /// Maximum number of entries in the cache
  static const int _maxCacheSize = 100;

  /// Clears the entire type conversion cache
  void clearCache() => _cache.clear();

  /// Clears a specific entry from the type conversion cache
  /// [key] - The metadata key whose cached value should be removed
  void clearCacheEntry(String key) => _cache.remove(key);

  /// Called when the underlying _meta map may have been modified externally
  /// to ensure cache consistency. This should be called by any code that
  /// modifies the source map directly.
  void invalidateCache() => _cache.clear();
}

/// IMPORTANT: If you directly modify the metadata map that was passed to TypedMetadata,
/// you MUST call invalidateCache() afterwards to ensure type conversion results remain consistent.
/// Example:
/// ```dart
/// final meta = {'count': 10};
/// final typedMeta = TypedMetadata(meta);
/// print(typedMeta.getInt('count')); // Prints: 10
///
/// // Direct modification requires cache invalidation
/// meta['count'] = 20;
/// typedMeta.invalidateCache();
/// print(typedMeta.getInt('count')); // Prints: 20
/// ```
/// Failing to invalidate the cache after direct modifications will result in stale data.

@Freezed(genericArgumentFactories: true)
sealed class CoreEntity<T extends Object> with _$CoreEntity<T> {
  const CoreEntity._();

  /// Base entity class containing core properties and metadata
  /// [id] - Unique identifier for this entity
  /// [name] - Human-readable name for this entity
  /// [description] - Optional description for the entity
  /// [createdAt] - Timestamp of entity creation
  /// [updatedAt] - Timestamp of last update
  /// [schemaVer] - Schema version of the entity
  /// [status] - Current status of the entity
  /// [meta] - Custom metadata as key-value pairs
  /// [owner] - User who owns this entity
  /// [creator] - User who created this entity
  /// [modifier] - User who last modified this entity
  /// [data] - Optional typed payload data
  const factory CoreEntity({
    required EntityId id,
    required String name,
    String? description,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(EntityDefaults.version) String schemaVer,
    @Default(EntityDefaults.status) EntityStatus status,
    @Default({}) Map<String, Object> meta,
    required UserAction owner,
    required UserAction creator,
    required UserAction modifier,
    T? data,
  }) = _CoreEntity<T>;

  factory CoreEntity.fromJson(
    Map<String, Object> json,
    T Function(Object? json) fromJsonT,
  ) => _$CoreEntityFromJson(json, fromJsonT);

  /// Unique identifier string from entity ID
  String get uid => id.value;

  /// Runtime type of entity data
  String get type => data?.runtimeType.toString() ?? T.toString();

  /// Type-safe metadata accessor
  TypedMetadata get typedMeta => TypedMetadata(meta);

  /// Gets typed value from metadata
  /// [key] - The metadata key to retrieve
  /// [R] - The target type to convert the value to
  /// Returns the value converted to type R or null if conversion fails
  R? getMetadata<R>(String key) => _getMetadataTyped<R>(key);

  /// Gets raw value from metadata without type conversion
  /// [key] - The metadata key to retrieve
  /// Returns the raw Object value or null if key doesn't exist
  Object? getMetadataValue(String key) => meta[key];

  /// Checks if metadata contains a key
  /// [key] - The metadata key to check
  /// Returns true if the key exists in metadata, false otherwise
  bool hasMetadata(String key) => meta.containsKey(key);

  /// Gets typed metadata with default fallback
  /// [key] - The metadata key to retrieve
  /// [defaultValue] - Value to return if the key doesn't exist or can't be converted
  R getMetadataOrDefault<R>(String key, R defaultValue) {
    return _getMetadataTyped<R>(key) ?? defaultValue;
  }

  /// Returns filtered metadata based on predicate
  /// [predicate] - Function that tests each key and value
  Map<String, Object> filterMetadata(
    bool Function(String key, Object value) predicate,
  ) {
    return Map.fromEntries(
      meta.entries.where((entry) => predicate(entry.key, entry.value)),
    );
  }

  /// Creates new instance with updated metadata
  /// [updates] - Map of key-value pairs to add or update in metadata
  /// [removeKeys] - Optional list of keys to remove from metadata
  CoreEntity<T> updateMetadata(
    Map<String, Object> updates, {
    List<String>? removeKeys,
  }) {
    // Create a new map with the current metadata
    final updatedMeta = Map<String, Object>.from(meta);

    // Apply updates
    updatedMeta.addAll(updates);

    // Apply removals if specified
    if (removeKeys != null) {
      for (final key in removeKeys) {
        updatedMeta.remove(key);
      }
    }

    // Since we're creating a new entity with the modified metadata,
    // the TypedMetadata instance will be recreated with a fresh cache
    return copyWith(meta: updatedMeta);
  }

  /// Gets typed value from metadata safely
  R? _getMetadataTyped<R>(String key) {
    if (!meta.containsKey(key)) return null;
    return typedMeta._convertSafely<R>(meta[key]);
  }

  /// Gets a core property by name with proper type information
  /// [key] - The property name to retrieve
  /// Returns the property value or null if the property doesn't exist
  Object? getProperty(String key) {
    switch (key) {
      case 'id':
        return id;
      case 'name':
        return name;
      case 'description':
        return description;
      case 'createdAt':
        return createdAt;
      case 'updatedAt':
        return updatedAt;
      case 'schemaVer':
        return schemaVer;
      case 'status':
        return status;
      case 'owner':
        return owner;
      case 'creator':
        return creator;
      case 'modifier':
        return modifier;
      case 'data':
        return data;
      default:
        return null;
    }
  }

  /// Gets a core property by name with expected return type
  /// [key] - The property name to retrieve
  /// [R] - The expected return type
  /// Returns the property value as type R, or null if property doesn't exist or type doesn't match
  R? getPropertyTyped<R>(String key) {
    final value = getProperty(key);
    return (value is R) ? value : null;
  }

  /// Provides unified access to properties and metadata
  /// Properties take precedence over metadata with same key
  Object? operator [](String key) {
    final propertyValue = getProperty(key);
    if (propertyValue != null) {
      return propertyValue;
    }
    return getMetadataValue(key);
  }
}
