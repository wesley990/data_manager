import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:data_manager/data_manager.dart';

part 'core_entity.freezed.dart';
part 'core_entity.g.dart';

/// A class that provides type-safe access to common metadata fields
class TypedMetadata {
  final Map<String, Object> _meta;

  TypedMetadata(this._meta);

  /// Get a string value from metadata
  String? getString(String key) {
    if (!_meta.containsKey(key)) return null;
    try {
      return _meta[key] as String?;
    } catch (e) {
      debugPrint('Type cast error for key "$key": $e');
      return null;
    }
  }

  /// Get an integer value from metadata
  int? getInt(String key) {
    if (!_meta.containsKey(key)) return null;
    try {
      return _meta[key] as int?;
    } catch (e) {
      debugPrint('Type cast error for key "$key": $e');
      return null;
    }
  }

  /// Get a double value from metadata
  double? getDouble(String key) {
    if (!_meta.containsKey(key)) return null;
    try {
      return _meta[key] as double?;
    } catch (e) {
      debugPrint('Type cast error for key "$key": $e');
      return null;
    }
  }

  /// Get a boolean value from metadata
  bool? getBool(String key) {
    if (!_meta.containsKey(key)) return null;
    try {
      return _meta[key] as bool?;
    } catch (e) {
      debugPrint('Type cast error for key "$key": $e');
      return null;
    }
  }

  /// Get a DateTime value from metadata
  DateTime? getDateTime(String key) {
    if (!_meta.containsKey(key)) return null;
    try {
      return _meta[key] is String
          ? DateTime.tryParse(_meta[key] as String)
          : _meta[key] as DateTime?;
    } catch (e) {
      debugPrint('Type cast error for key "$key": $e');
      return null;
    }
  }

  /// Get a list value from metadata
  List<R>? getList<R>(String key) {
    if (!_meta.containsKey(key)) return null;
    try {
      return _meta[key] as List<R>?;
    } catch (e) {
      debugPrint('Type cast error for key "$key": $e');
      return null;
    }
  }

  /// Get a map value from metadata
  Map<K, V>? getMap<K, V>(String key) {
    if (!_meta.containsKey(key)) return null;
    try {
      return _meta[key] as Map<K, V>?;
    } catch (e) {
      debugPrint('Type cast error for key "$key": $e');
      return null;
    }
  }
}

@Freezed(genericArgumentFactories: true)
class CoreEntity<T extends Object> with _$CoreEntity<T> {
  const CoreEntity._();

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
  ) =>
      _$CoreEntityFromJson(json, fromJsonT);

  String get uid => id.value;
  String get type => data?.runtimeType.toString() ?? T.toString();

  /// Access metadata with type safety
  TypedMetadata get typedMeta => TypedMetadata(meta);

  /// Get a value from meta with an expected type
  R? get<R>(String key) {
    return _getValueWithType<R>(key);
  }

  /// Check if metadata contains a specific key
  bool hasMetadata(String key) => meta.containsKey(key);

  /// Get metadata with type safety, providing a default value if not present
  R getMetadataOrDefault<R>(String key, R defaultValue) {
    return _getValueWithType<R>(key) ?? defaultValue;
  }

  /// Internal helper method to handle type casting with error handling
  R? _getValueWithType<R>(String key) {
    if (!meta.containsKey(key)) return null;
    try {
      return meta[key] as R;
    } catch (e) {
      debugPrint('Type cast error for key "$key": $e');
      return null;
    }
  }

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
