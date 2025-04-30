import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/enum_objects.dart';
import '../value_objects/identity_value_objects.dart';
import '../value_objects/user_action.dart';

part 'core_entity.freezed.dart';
part 'core_entity.g.dart';

/// Entity-specific default values and configurations
abstract class EntityDefaults {
  /// Default schema version for new entities
  static const String version = '1.0.0';

  /// Default status for new entities
  static const EntityStatus status = EntityStatus.active;

  /// Default priority level for new entities
  static const EntityPriority priority = EntityPriority.medium;

  /// Default workflow stage for new entities
  static const EntityStage stage = EntityStage.draft;

  /// Default public visibility setting
  static const bool isPublic = true;

  /// Default access count for new entities
  static const int accessCount = 0;

  // Path related defaults
  /// Standard path separator character
  static const String pathSeparator = '/';

  /// URL-encoded path separator
  static const String encodedPathSeparator = '%2F';

  /// Regular expression pattern for invalid path characters
  static const String invalidPathChars = r'[<>:"|?*\x00-\x1F]';
}

/// Utility function to safely parse DateTime from a String
DateTime? _tryParseDateTime(Object value) {
  if (value is String) {
    return DateTime.tryParse(value);
  }
  return null;
}

class TypedMetadata {
  final Map<String, Object> _meta;

  const TypedMetadata(this._meta);

  /// Returns whether the metadata contains a specific key
  bool containsKey(String key) => _meta.containsKey(key);

  /// Safely convert a value to the specified type with proper error handling
  ///
  /// This is a central conversion method used by all type-specific getters.
  /// Returns null if conversion fails.
  T? _convertSafely<T>(Object? value) {
    try {
      if (value == null) {
        return null;
      }

      // Special handling for DateTime
      if (T == DateTime) {
        final dateTime = _tryParseDateTime(value);
        if (dateTime != null) return dateTime as T;
        throw FormatException('Invalid DateTime string: $value');
      }

      if (value is T) {
        return value as T;
      }

      // More complex conversion cases could be handled here
      throw TypeError();
    } catch (e) {
      // Error handling without external logger dependency
      return null;
    }
  }

  /// Get a value with a specific type, with proper error handling
  ///
  /// Note: Null is always allowed and will be returned if the key is missing or the value is null.
  T? _getValueTyped<T>(String key) {
    if (!_meta.containsKey(key)) return null;
    return _convertSafely<T>(_meta[key]);
  }

  /// Get a string value from metadata
  String? getString(String key) => _getValueTyped<String?>(key);

  /// Get an integer value from metadata
  int? getInt(String key) => _getValueTyped<int?>(key);

  /// Get a double value from metadata
  double? getDouble(String key) => _getValueTyped<double?>(key);

  /// Get a boolean value from metadata
  bool? getBool(String key) => _getValueTyped<bool?>(key);

  /// Get a DateTime value from metadata
  DateTime? getDateTime(String key) => _getValueTyped<DateTime?>(key);

  /// Get a list value from metadata
  List<R>? getListAs<R>(String key) =>
      _getCollectionTyped<List, R>(key) as List<R>?;

  /// Get a map value from metadata
  Map<K, V>? getMapAs<K, V>(String key) =>
      _getCollectionTyped<Map, V>(key) as Map<K, V>?;

  /// Generic method to handle collection types (List, Map)
  ///
  /// Centralizes the error handling for collection type conversions
  Object? _getCollectionTyped<C, V>(String key) {
    final value = _meta[key];
    if (!_meta.containsKey(key) || value == null) return null;

    if (value is C) {
      try {
        if (C == List) return (value as List).cast<V>() as C;
        if (C == Map) return (value as Map).cast<String, V>() as C;
        return value;
      } catch (e) {
        return null;
      }
    }
    return null;
  }
}

@Freezed(genericArgumentFactories: true)
sealed class CoreEntity<T extends Object> with _$CoreEntity<T> {
  const CoreEntity._();

  /// Creates a new CoreEntity instance
  ///
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

  /// Unique identifier string derived from the entity ID
  String get uid => id.value;

  /// Runtime type of the entity data
  String get type => data?.runtimeType.toString() ?? T.toString();

  /// Access metadata with type safety
  TypedMetadata get typedMeta => TypedMetadata(meta);

  /// Get a value from meta with an expected type
  ///
  /// Returns null if the key doesn't exist or there's a type conversion error
  /// This is an alias for getMetadata<R>(key) for more concise syntax
  R? getMetadataAs<R>(String key) => getMetadata<R>(key);

  /// Alias for backward compatibility
  @Deprecated('Use getMetadataAs<R> instead for consistent naming')
  R? get<R>(String key) => getMetadataAs<R>(key);

  /// Retrieve metadata by key with a simplified interface
  ///
  /// Returns the value from metadata with the specified type or null if not found
  /// For untyped access, use getMetadata<Object?>(key)
  R? getMetadata<R>(String key) => _getMetadataTyped<R>(key);

  /// Retrieve untyped metadata by key (backward compatibility)
  ///
  /// Returns the raw value from metadata or null if not found
  Object? getMetadataValue(String key) => meta[key];

  /// Check if metadata contains a specific key
  bool hasMetadata(String key) => meta.containsKey(key);

  /// Get metadata with type safety, providing a default value if not present
  ///
  /// [key] - The metadata key to retrieve
  /// [defaultValue] - Value to return if the key doesn't exist or can't be converted
  R getMetadataOrDefault<R>(String key, R defaultValue) {
    return _getMetadataTyped<R>(key) ?? defaultValue;
  }

  /// Filter metadata based on a predicate
  ///
  /// Returns a new Map containing only the metadata entries for which the predicate returns true
  /// [predicate] - Function that tests each key and value
  Map<String, Object> filterMetadata(
    bool Function(String key, Object value) predicate,
  ) {
    return Map.fromEntries(
      meta.entries.where((entry) => predicate(entry.key, entry.value)),
    );
  }

  /// Creates a new instance of CoreEntity with updated metadata
  ///
  /// This method allows for bulk updates to metadata without changing other properties
  /// [updates] - Map of key-value pairs to add or update in metadata
  /// [removeKeys] - Optional list of keys to remove from metadata
  CoreEntity<T> updateMetadata(
    Map<String, Object> updates, {
    List<String>? removeKeys,
  }) {
    // Start with the existing metadata
    final updatedMeta = Map<String, Object>.from(meta);

    // Apply updates
    updatedMeta.addAll(updates);

    // Remove keys if specified
    if (removeKeys != null) {
      for (final key in removeKeys) {
        updatedMeta.remove(key);
      }
    }

    // Create a new entity with updated metadata
    return copyWith(meta: updatedMeta);
  }

  /// Try to retrieve a typed value from metadata
  ///
  /// This method tries to safely cast the value to the expected type.
  /// Returns null if the key doesn't exist or if the type conversion fails.
  R? _getMetadataTyped<R>(String key) {
    if (!meta.containsKey(key)) return null;

    // Delegate the type conversion to the TypedMetadata implementation
    return typedMeta._convertSafely<R>(meta[key]);
  }

  /// Gets a domain property by name
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

  /// Operator to access either domain properties or metadata
  ///
  /// If a key matches both a domain property and a metadata key, the domain property takes precedence.
  /// First tries to access domain properties, then falls back to metadata.
  ///
  /// Note: This provides convenient access but performs multiple lookups. For performance-critical
  /// code, consider using getProperty() or getMetadata<R>() directly when you know the source.
  operator [](String key) {
    // Try domain properties first
    final propertyValue = getProperty(key);
    if (propertyValue != null) {
      return propertyValue;
    }

    // Fall back to metadata
    return getMetadata(key);
  }
}
