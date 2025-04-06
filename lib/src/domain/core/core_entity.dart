import '../value_objects/enum_objects.dart';
import '../value_objects/identity_value_objects.dart';
import '../value_objects/user_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
      // Error handling without external logger dependency
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

  /// Retrieve metadata by key with a simplified interface
  ///
  /// Returns the value from metadata or null if not found
  dynamic getMeta(String key) => meta[key];

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
      return null;
    }
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

  /// Gets a metadata value by key
  Object? getMetadata(String key) {
    return meta[key];
  }

  /// Operator to access either domain properties or metadata
  /// First tries to access domain properties, then falls back to metadata
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
