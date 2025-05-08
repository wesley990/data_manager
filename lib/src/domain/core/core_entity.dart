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

  const TypedMetadata(this._meta);

  /// Checks if metadata contains a key
  bool containsKey(String key) => _meta.containsKey(key);

  /// Converts value to specified type with error handling
  /// Returns null if conversion fails
  Object? _convertSafely<T>(Object? value, {String? key}) {
    if (value == null) return null;

    try {
      // Special handling for DateTime
      if (T == DateTime) {
        final dateTime = _tryParseDateTime(value);
        return dateTime as T?;
      }

      if (value is T) {
        return value;
      }

      // For debugging in development
      assert(() {
        developer.log(
          'Failed to convert ${value.runtimeType} to $T${key != null ? ' for key "$key"' : ''}',
          name: 'TypedMetadata',
        );
        return true;
      }());

      return null;
    } catch (e) {
      assert(() {
        developer.log(
          'Exception during conversion to $T: $e',
          name: 'TypedMetadata',
          error: e,
        );
        return true;
      }());
      return null;
    }
  }

  /// Gets typed value from metadata
  Object? _getValueTyped<T>(String key) {
    if (!_meta.containsKey(key)) return null;
    return _convertSafely<T>(_meta[key]);
  }

  /// Gets string value from metadata
  Object? getString(String key) => _getValueTyped<String?>(key);

  /// Gets integer value from metadata
  Object? getInt(String key) => _getValueTyped<int?>(key);

  /// Gets double value from metadata
  Object? getDouble(String key) => _getValueTyped<double?>(key);

  /// Gets boolean value from metadata
  Object? getBool(String key) => _getValueTyped<bool?>(key);

  /// Gets DateTime value from metadata
  Object? getDateTime(String key) => _getValueTyped<DateTime?>(key);

  /// Gets typed list from metadata
  List<R>? getListAs<R>(String key) =>
      _getCollectionTyped<List, R>(key) as List<R>?;

  /// Gets typed map from metadata
  Map<K, V>? getMapAs<K, V>(String key) =>
      _getCollectionTyped<Map, V>(key) as Map<K, V>?;

  /// Handles collection types with error handling
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
  Object? getMetadataAs<R>(String key) => getMetadata<R>(key);

  /// Gets typed value from metadata
  Object? getMetadata<R>(String key) => _getMetadataTyped<R>(key);

  /// Gets raw value from metadata
  Object? getMetadataValue(String key) => meta[key];

  /// Checks if metadata contains a key
  bool hasMetadata(String key) => meta.containsKey(key);

  /// Gets typed metadata with default fallback
  /// [key] - The metadata key to retrieve
  /// [defaultValue] - Value to return if the key doesn't exist or can't be converted
  Object? getMetadataOrDefault<R>(String key, R defaultValue) {
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
  Object? _getMetadataTyped<R>(String key) {
    if (!meta.containsKey(key)) return null;
    return typedMeta._convertSafely<R>(meta[key]);
  }

  /// Gets a core property by name
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

  /// Provides unified access to properties and metadata
  /// Properties take precedence over metadata with same key
  operator [](String key) {
    final propertyValue = getProperty(key);
    if (propertyValue != null) {
      return propertyValue;
    }
    return getMetadata(key);
  }
}
