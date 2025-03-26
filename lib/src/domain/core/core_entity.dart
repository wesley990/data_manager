import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:data_manager/data_manager.dart';

part 'core_entity.freezed.dart';
part 'core_entity.g.dart';

/// A class that provides type-safe access to common metadata fields
class TypedMetadata {
  final Map<String, Object> _meta;

  TypedMetadata(this._meta);

  /// Returns whether the metadata contains a specific key
  bool containsKey(String key) => _meta.containsKey(key);

  /// Get a value with a specific type, with proper error handling
  T? _getTyped<T>(String key) {
    if (!_meta.containsKey(key)) return null;

    final value = _meta[key];

    try {
      // Handle null case differently from wrong type case
      if (value == null) {
        // Only allowed if T is nullable
        if (T == dynamic || T.toString().endsWith('?')) {
          return null as T?;
        }
        throw TypeError();
      }

      // Special handling for DateTime
      if (T == DateTime && value is String) {
        final dateTime = DateTime.tryParse(value);
        if (dateTime != null) return dateTime as T;
        throw FormatException('Invalid DateTime string: $value');
      }

      if (value is T) return value as T;
      throw TypeError();
    } catch (e) {
      // More informative error message including both expected and actual types
      debugPrint(
        'Type error for key "$key": Expected $T but got ${value.runtimeType}. Error: $e',
      );
      return null;
    }
  }

  /// Get a string value from metadata
  String? getString(String key) => _getTyped<String?>(key);

  /// Get an integer value from metadata
  int? getInt(String key) => _getTyped<int?>(key);

  /// Get a double value from metadata
  double? getDouble(String key) => _getTyped<double?>(key);

  /// Get a boolean value from metadata
  bool? getBool(String key) => _getTyped<bool?>(key);

  /// Get a DateTime value from metadata
  DateTime? getDateTime(String key) => _getTyped<DateTime?>(key);

  /// Get a list value from metadata
  List<R>? getList<R>(String key) {
    final value = _meta[key];
    if (value == null) return null;

    try {
      if (value is List) {
        // Try to cast the entire list
        return value.cast<R>();
      }
      return null;
    } catch (e) {
      debugPrint('List cast error for key "$key": $e');
      return null;
    }
  }

  /// Get a map value from metadata
  Map<K, V>? getMap<K, V>(String key) {
    final value = _meta[key];
    if (value == null) return null;

    try {
      if (value is Map) {
        // Try to cast the entire map
        return value.cast<K, V>();
      }
      return null;
    } catch (e) {
      debugPrint('Map cast error for key "$key": $e');
      return null;
    }
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
  R? get<R>(String key) {
    return _getValueWithType<R>(key);
  }

  /// Check if metadata contains a specific key
  bool hasMetadata(String key) => meta.containsKey(key);

  /// Get metadata with type safety, providing a default value if not present
  ///
  /// [key] - The metadata key to retrieve
  /// [defaultValue] - Value to return if the key doesn't exist or can't be converted
  R getMetadataOrDefault<R>(String key, R defaultValue) {
    return _getValueWithType<R>(key) ?? defaultValue;
  }

  /// Try to retrieve a typed value from metadata
  ///
  /// This method tries to safely cast the value to the expected type.
  /// Returns null if the key doesn't exist or if the type conversion fails.
  R? _getValueWithType<R>(String key) {
    if (!meta.containsKey(key)) return null;

    final value = meta[key];
    if (value == null) {
      // Only return null if R is nullable
      return null;
    }

    try {
      // Special case for DateTime conversion from String
      if (R == DateTime && value is String) {
        final dateTime = DateTime.tryParse(value);
        if (dateTime != null) return dateTime as R;
        throw FormatException('Invalid DateTime string: $value');
      }

      if (value is R) {
        return value as R;
      }

      // More complex conversion cases could be handled here
      throw TypeError();
    } catch (e) {
      debugPrint(
        'Type cast error for key "$key": Expected $R but got ${value.runtimeType}. Error: $e',
      );
      return null;
    }
  }

  /// Access entity properties and metadata by key
  ///
  /// This provides a unified interface to access both entity properties
  /// and metadata with a map-like syntax
  Object? operator [](String key) {
    return switch (key) {
      'entityId' => id.value,
      'entityName' => name,
      'entityDescription' => description,
      'status' => status,
      'createdAt' => createdAt,
      'updatedAt' => updatedAt,
      'schemaVer' => schemaVer,
      'owner' => owner,
      'creator' => creator,
      'modifier' => modifier,
      'data' => data,
      'meta' => meta,
      _ => meta[key],
    };
  }
}
