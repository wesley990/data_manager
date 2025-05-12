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
DateTime? _tryParseDateTime(Object value) {
  if (value is String) {
    return DateTime.tryParse(value);
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
          // Try to convert string to enum using standard values() lookup
          final enumValues = (T as dynamic).values;
          final enumValue = enumValues.firstWhere(
            (e) => e.toString().split('.').last == value,
            orElse: () => null,
          );
          return enumValue as T?;
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

  /// Gets typed value from metadata
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
  int   getInt(String key, {int defaultValue = 0}) =>
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

  /// Handles collection types with error handling
  /// Ensures all elements match the expected type
  /// [C] - The collection type (List or Map)
  /// [V] - The value type (list elements or map values)
  /// [K] - The key type for maps
  C? _getCollectionTyped<C, V, K extends Object>(String key) {
    final value = _meta[key];
    if (!_meta.containsKey(key) || value == null) return null;

    try {
      if (C == List && value is List) {
        // More robust list conversion
        final list = <V>[];
        for (final item in value) {
          if (item is V) {
            list.add(item);
          } else {
            final converted = _convertSafely<V>(item, key: '$key[element]');
            if (converted != null) {
              list.add(converted);
            } else {
              return null; // Type mismatch in list elements
            }
          }
        }
        return list as C;
      }
      if (C == Map && value is Map) {
        final map = <K, V>{};
        for (final entry in value.entries) {
          final keyIsValid = entry.key is K;
          final valueIsValid = entry.value is V;
          
          if (keyIsValid && valueIsValid) {
            map[entry.key as K] = entry.value as V;
          } else if (keyIsValid) {
            // Try to convert the value
            final convertedValue = _convertSafely<V>(
              entry.value, 
              key: '$key.${entry.key}'
            );
            if (convertedValue != null) {
              map[entry.key as K] = convertedValue;
            } else {
              return null; // Value type mismatch
            }
          } else {
            return null; // Key type mismatch
          }
        }
        return map as C;
      }
      // Return null for non-collection types
      if (onConversionError != null) {
        onConversionError!(
          key, 
          value, 
          C, 
          "Value is not of expected collection type"
        );
      }
      return null;
    } catch (e) {
      if (onConversionError != null) {
        onConversionError!(key, value, C, e);
      }
      return null;
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

  /// Clears the entire type conversion cache
  void clearCache() => _cache.clear();

  /// Clears a specific entry from the type conversion cache
  /// [key] - The metadata key whose cached value should be removed
  void clearCacheEntry(String key) => _cache.remove(key);
}

@Freezed(genericArgumentFactories: true)
sealed class CoreEntity<T extends Object> with _$CoreEntity<T> {
  const CoreEntity._();

  /// Base entity class containing core properties and metadata
  /// [id] - Unique identifier for this entity
  /// [name] - Human-readable name for this entity
  /// [createdAt] - Timestamp of entity creation
  /// [updatedAt] - Timestamp of last update
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
    final updatedMeta = Map<String, Object>.from(meta);
    updatedMeta.addAll(updates);

    if (removeKeys != null) {
      for (final key in removeKeys) {
        updatedMeta.remove(key);
      }
    }

    return copyWith(meta: updatedMeta);
  }

  /// Gets typed value from metadata safely
  R? _getMetadataTyped<R>(String key) {
    if (!meta.containsKey(key)) return null;
    return typedMeta._convertSafely<R>(meta[key]);
  }

  /// Gets a core property by name
  dynamic getProperty(String key) {
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

  /// Provides unified access to properties and metadata
  /// Properties take precedence over metadata with same key
  dynamic operator [](String key) {
    final propertyValue = getProperty(key);
    if (propertyValue != null) {
      return propertyValue;
    }
    return getMetadataValue(key);
  }
}
