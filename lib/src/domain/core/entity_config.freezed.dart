// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EntityConfig _$EntityConfigFromJson(Map<String, dynamic> json) {
  return _EntityConfig.fromJson(json);
}

/// @nodoc
mixin _$EntityConfig {
// Path limits
  /// Maximum length of an entity path in characters.
  int get maxPathLength => throw _privateConstructorUsedError;

  /// Maximum length of a single path segment in characters.
  int get maxPathSegment => throw _privateConstructorUsedError;

  /// Maximum allowed depth of entity hierarchies.
  int get maxHierarchyDepth =>
      throw _privateConstructorUsedError; // History limits
  /// Maximum number of history entries to retain per entity.
  int get maxHistorySize => throw _privateConstructorUsedError;

  /// Default number of history entries to show in views.
  int get defaultHistorySize =>
      throw _privateConstructorUsedError; // Lock settings
  /// Default duration before an entity lock expires.
  Duration get defaultLockTimeout => throw _privateConstructorUsedError;

  /// Duration by which a lock can be extended.
  Duration get lockExtensionPeriod => throw _privateConstructorUsedError;

  /// Minimum duration for which an entity can be locked.
  Duration get minLockDuration => throw _privateConstructorUsedError;

  /// Maximum duration for which an entity can be locked.
  Duration get maxLockDuration =>
      throw _privateConstructorUsedError; // Entity defaults
  /// Default version string for new entities.
  String get defaultVersion => throw _privateConstructorUsedError;

  /// Whether entities are public by default.
  bool get defaultIsPublic => throw _privateConstructorUsedError;

  /// Default priority level for new entities.
  EntityPriority get defaultPriority => throw _privateConstructorUsedError;

  /// Default workflow stage for new entities.
  EntityStage get defaultStage =>
      throw _privateConstructorUsedError; // Path settings
  /// Character used to separate path segments.
  String get pathSeparator => throw _privateConstructorUsedError;

  /// Regular expression pattern defining invalid characters in paths.
  String get invalidPathChars => throw _privateConstructorUsedError;

  /// Serializes this EntityConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntityConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntityConfigCopyWith<EntityConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityConfigCopyWith<$Res> {
  factory $EntityConfigCopyWith(
          EntityConfig value, $Res Function(EntityConfig) then) =
      _$EntityConfigCopyWithImpl<$Res, EntityConfig>;
  @useResult
  $Res call(
      {int maxPathLength,
      int maxPathSegment,
      int maxHierarchyDepth,
      int maxHistorySize,
      int defaultHistorySize,
      Duration defaultLockTimeout,
      Duration lockExtensionPeriod,
      Duration minLockDuration,
      Duration maxLockDuration,
      String defaultVersion,
      bool defaultIsPublic,
      EntityPriority defaultPriority,
      EntityStage defaultStage,
      String pathSeparator,
      String invalidPathChars});
}

/// @nodoc
class _$EntityConfigCopyWithImpl<$Res, $Val extends EntityConfig>
    implements $EntityConfigCopyWith<$Res> {
  _$EntityConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntityConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPathLength = null,
    Object? maxPathSegment = null,
    Object? maxHierarchyDepth = null,
    Object? maxHistorySize = null,
    Object? defaultHistorySize = null,
    Object? defaultLockTimeout = null,
    Object? lockExtensionPeriod = null,
    Object? minLockDuration = null,
    Object? maxLockDuration = null,
    Object? defaultVersion = null,
    Object? defaultIsPublic = null,
    Object? defaultPriority = null,
    Object? defaultStage = null,
    Object? pathSeparator = null,
    Object? invalidPathChars = null,
  }) {
    return _then(_value.copyWith(
      maxPathLength: null == maxPathLength
          ? _value.maxPathLength
          : maxPathLength // ignore: cast_nullable_to_non_nullable
              as int,
      maxPathSegment: null == maxPathSegment
          ? _value.maxPathSegment
          : maxPathSegment // ignore: cast_nullable_to_non_nullable
              as int,
      maxHierarchyDepth: null == maxHierarchyDepth
          ? _value.maxHierarchyDepth
          : maxHierarchyDepth // ignore: cast_nullable_to_non_nullable
              as int,
      maxHistorySize: null == maxHistorySize
          ? _value.maxHistorySize
          : maxHistorySize // ignore: cast_nullable_to_non_nullable
              as int,
      defaultHistorySize: null == defaultHistorySize
          ? _value.defaultHistorySize
          : defaultHistorySize // ignore: cast_nullable_to_non_nullable
              as int,
      defaultLockTimeout: null == defaultLockTimeout
          ? _value.defaultLockTimeout
          : defaultLockTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      lockExtensionPeriod: null == lockExtensionPeriod
          ? _value.lockExtensionPeriod
          : lockExtensionPeriod // ignore: cast_nullable_to_non_nullable
              as Duration,
      minLockDuration: null == minLockDuration
          ? _value.minLockDuration
          : minLockDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      maxLockDuration: null == maxLockDuration
          ? _value.maxLockDuration
          : maxLockDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      defaultVersion: null == defaultVersion
          ? _value.defaultVersion
          : defaultVersion // ignore: cast_nullable_to_non_nullable
              as String,
      defaultIsPublic: null == defaultIsPublic
          ? _value.defaultIsPublic
          : defaultIsPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultPriority: null == defaultPriority
          ? _value.defaultPriority
          : defaultPriority // ignore: cast_nullable_to_non_nullable
              as EntityPriority,
      defaultStage: null == defaultStage
          ? _value.defaultStage
          : defaultStage // ignore: cast_nullable_to_non_nullable
              as EntityStage,
      pathSeparator: null == pathSeparator
          ? _value.pathSeparator
          : pathSeparator // ignore: cast_nullable_to_non_nullable
              as String,
      invalidPathChars: null == invalidPathChars
          ? _value.invalidPathChars
          : invalidPathChars // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityConfigImplCopyWith<$Res>
    implements $EntityConfigCopyWith<$Res> {
  factory _$$EntityConfigImplCopyWith(
          _$EntityConfigImpl value, $Res Function(_$EntityConfigImpl) then) =
      __$$EntityConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int maxPathLength,
      int maxPathSegment,
      int maxHierarchyDepth,
      int maxHistorySize,
      int defaultHistorySize,
      Duration defaultLockTimeout,
      Duration lockExtensionPeriod,
      Duration minLockDuration,
      Duration maxLockDuration,
      String defaultVersion,
      bool defaultIsPublic,
      EntityPriority defaultPriority,
      EntityStage defaultStage,
      String pathSeparator,
      String invalidPathChars});
}

/// @nodoc
class __$$EntityConfigImplCopyWithImpl<$Res>
    extends _$EntityConfigCopyWithImpl<$Res, _$EntityConfigImpl>
    implements _$$EntityConfigImplCopyWith<$Res> {
  __$$EntityConfigImplCopyWithImpl(
      _$EntityConfigImpl _value, $Res Function(_$EntityConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntityConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPathLength = null,
    Object? maxPathSegment = null,
    Object? maxHierarchyDepth = null,
    Object? maxHistorySize = null,
    Object? defaultHistorySize = null,
    Object? defaultLockTimeout = null,
    Object? lockExtensionPeriod = null,
    Object? minLockDuration = null,
    Object? maxLockDuration = null,
    Object? defaultVersion = null,
    Object? defaultIsPublic = null,
    Object? defaultPriority = null,
    Object? defaultStage = null,
    Object? pathSeparator = null,
    Object? invalidPathChars = null,
  }) {
    return _then(_$EntityConfigImpl(
      maxPathLength: null == maxPathLength
          ? _value.maxPathLength
          : maxPathLength // ignore: cast_nullable_to_non_nullable
              as int,
      maxPathSegment: null == maxPathSegment
          ? _value.maxPathSegment
          : maxPathSegment // ignore: cast_nullable_to_non_nullable
              as int,
      maxHierarchyDepth: null == maxHierarchyDepth
          ? _value.maxHierarchyDepth
          : maxHierarchyDepth // ignore: cast_nullable_to_non_nullable
              as int,
      maxHistorySize: null == maxHistorySize
          ? _value.maxHistorySize
          : maxHistorySize // ignore: cast_nullable_to_non_nullable
              as int,
      defaultHistorySize: null == defaultHistorySize
          ? _value.defaultHistorySize
          : defaultHistorySize // ignore: cast_nullable_to_non_nullable
              as int,
      defaultLockTimeout: null == defaultLockTimeout
          ? _value.defaultLockTimeout
          : defaultLockTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      lockExtensionPeriod: null == lockExtensionPeriod
          ? _value.lockExtensionPeriod
          : lockExtensionPeriod // ignore: cast_nullable_to_non_nullable
              as Duration,
      minLockDuration: null == minLockDuration
          ? _value.minLockDuration
          : minLockDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      maxLockDuration: null == maxLockDuration
          ? _value.maxLockDuration
          : maxLockDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      defaultVersion: null == defaultVersion
          ? _value.defaultVersion
          : defaultVersion // ignore: cast_nullable_to_non_nullable
              as String,
      defaultIsPublic: null == defaultIsPublic
          ? _value.defaultIsPublic
          : defaultIsPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultPriority: null == defaultPriority
          ? _value.defaultPriority
          : defaultPriority // ignore: cast_nullable_to_non_nullable
              as EntityPriority,
      defaultStage: null == defaultStage
          ? _value.defaultStage
          : defaultStage // ignore: cast_nullable_to_non_nullable
              as EntityStage,
      pathSeparator: null == pathSeparator
          ? _value.pathSeparator
          : pathSeparator // ignore: cast_nullable_to_non_nullable
              as String,
      invalidPathChars: null == invalidPathChars
          ? _value.invalidPathChars
          : invalidPathChars // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntityConfigImpl implements _EntityConfig {
  const _$EntityConfigImpl(
      {this.maxPathLength = 1024,
      this.maxPathSegment = 255,
      this.maxHierarchyDepth = 10,
      this.maxHistorySize = 50,
      this.defaultHistorySize = 50,
      this.defaultLockTimeout = const Duration(minutes: 15),
      this.lockExtensionPeriod = const Duration(minutes: 5),
      this.minLockDuration = const Duration(seconds: 30),
      this.maxLockDuration = const Duration(hours: 24),
      this.defaultVersion = '1.0.0',
      this.defaultIsPublic = true,
      this.defaultPriority = EntityPriority.medium,
      this.defaultStage = EntityStage.draft,
      this.pathSeparator = '/',
      this.invalidPathChars = r'[<>:"|?*\x00-\x1F]'});

  factory _$EntityConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntityConfigImplFromJson(json);

// Path limits
  /// Maximum length of an entity path in characters.
  @override
  @JsonKey()
  final int maxPathLength;

  /// Maximum length of a single path segment in characters.
  @override
  @JsonKey()
  final int maxPathSegment;

  /// Maximum allowed depth of entity hierarchies.
  @override
  @JsonKey()
  final int maxHierarchyDepth;
// History limits
  /// Maximum number of history entries to retain per entity.
  @override
  @JsonKey()
  final int maxHistorySize;

  /// Default number of history entries to show in views.
  @override
  @JsonKey()
  final int defaultHistorySize;
// Lock settings
  /// Default duration before an entity lock expires.
  @override
  @JsonKey()
  final Duration defaultLockTimeout;

  /// Duration by which a lock can be extended.
  @override
  @JsonKey()
  final Duration lockExtensionPeriod;

  /// Minimum duration for which an entity can be locked.
  @override
  @JsonKey()
  final Duration minLockDuration;

  /// Maximum duration for which an entity can be locked.
  @override
  @JsonKey()
  final Duration maxLockDuration;
// Entity defaults
  /// Default version string for new entities.
  @override
  @JsonKey()
  final String defaultVersion;

  /// Whether entities are public by default.
  @override
  @JsonKey()
  final bool defaultIsPublic;

  /// Default priority level for new entities.
  @override
  @JsonKey()
  final EntityPriority defaultPriority;

  /// Default workflow stage for new entities.
  @override
  @JsonKey()
  final EntityStage defaultStage;
// Path settings
  /// Character used to separate path segments.
  @override
  @JsonKey()
  final String pathSeparator;

  /// Regular expression pattern defining invalid characters in paths.
  @override
  @JsonKey()
  final String invalidPathChars;

  @override
  String toString() {
    return 'EntityConfig(maxPathLength: $maxPathLength, maxPathSegment: $maxPathSegment, maxHierarchyDepth: $maxHierarchyDepth, maxHistorySize: $maxHistorySize, defaultHistorySize: $defaultHistorySize, defaultLockTimeout: $defaultLockTimeout, lockExtensionPeriod: $lockExtensionPeriod, minLockDuration: $minLockDuration, maxLockDuration: $maxLockDuration, defaultVersion: $defaultVersion, defaultIsPublic: $defaultIsPublic, defaultPriority: $defaultPriority, defaultStage: $defaultStage, pathSeparator: $pathSeparator, invalidPathChars: $invalidPathChars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityConfigImpl &&
            (identical(other.maxPathLength, maxPathLength) ||
                other.maxPathLength == maxPathLength) &&
            (identical(other.maxPathSegment, maxPathSegment) ||
                other.maxPathSegment == maxPathSegment) &&
            (identical(other.maxHierarchyDepth, maxHierarchyDepth) ||
                other.maxHierarchyDepth == maxHierarchyDepth) &&
            (identical(other.maxHistorySize, maxHistorySize) ||
                other.maxHistorySize == maxHistorySize) &&
            (identical(other.defaultHistorySize, defaultHistorySize) ||
                other.defaultHistorySize == defaultHistorySize) &&
            (identical(other.defaultLockTimeout, defaultLockTimeout) ||
                other.defaultLockTimeout == defaultLockTimeout) &&
            (identical(other.lockExtensionPeriod, lockExtensionPeriod) ||
                other.lockExtensionPeriod == lockExtensionPeriod) &&
            (identical(other.minLockDuration, minLockDuration) ||
                other.minLockDuration == minLockDuration) &&
            (identical(other.maxLockDuration, maxLockDuration) ||
                other.maxLockDuration == maxLockDuration) &&
            (identical(other.defaultVersion, defaultVersion) ||
                other.defaultVersion == defaultVersion) &&
            (identical(other.defaultIsPublic, defaultIsPublic) ||
                other.defaultIsPublic == defaultIsPublic) &&
            (identical(other.defaultPriority, defaultPriority) ||
                other.defaultPriority == defaultPriority) &&
            (identical(other.defaultStage, defaultStage) ||
                other.defaultStage == defaultStage) &&
            (identical(other.pathSeparator, pathSeparator) ||
                other.pathSeparator == pathSeparator) &&
            (identical(other.invalidPathChars, invalidPathChars) ||
                other.invalidPathChars == invalidPathChars));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      maxPathLength,
      maxPathSegment,
      maxHierarchyDepth,
      maxHistorySize,
      defaultHistorySize,
      defaultLockTimeout,
      lockExtensionPeriod,
      minLockDuration,
      maxLockDuration,
      defaultVersion,
      defaultIsPublic,
      defaultPriority,
      defaultStage,
      pathSeparator,
      invalidPathChars);

  /// Create a copy of EntityConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityConfigImplCopyWith<_$EntityConfigImpl> get copyWith =>
      __$$EntityConfigImplCopyWithImpl<_$EntityConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntityConfigImplToJson(
      this,
    );
  }
}

abstract class _EntityConfig implements EntityConfig {
  const factory _EntityConfig(
      {final int maxPathLength,
      final int maxPathSegment,
      final int maxHierarchyDepth,
      final int maxHistorySize,
      final int defaultHistorySize,
      final Duration defaultLockTimeout,
      final Duration lockExtensionPeriod,
      final Duration minLockDuration,
      final Duration maxLockDuration,
      final String defaultVersion,
      final bool defaultIsPublic,
      final EntityPriority defaultPriority,
      final EntityStage defaultStage,
      final String pathSeparator,
      final String invalidPathChars}) = _$EntityConfigImpl;

  factory _EntityConfig.fromJson(Map<String, dynamic> json) =
      _$EntityConfigImpl.fromJson;

// Path limits
  /// Maximum length of an entity path in characters.
  @override
  int get maxPathLength;

  /// Maximum length of a single path segment in characters.
  @override
  int get maxPathSegment;

  /// Maximum allowed depth of entity hierarchies.
  @override
  int get maxHierarchyDepth; // History limits
  /// Maximum number of history entries to retain per entity.
  @override
  int get maxHistorySize;

  /// Default number of history entries to show in views.
  @override
  int get defaultHistorySize; // Lock settings
  /// Default duration before an entity lock expires.
  @override
  Duration get defaultLockTimeout;

  /// Duration by which a lock can be extended.
  @override
  Duration get lockExtensionPeriod;

  /// Minimum duration for which an entity can be locked.
  @override
  Duration get minLockDuration;

  /// Maximum duration for which an entity can be locked.
  @override
  Duration get maxLockDuration; // Entity defaults
  /// Default version string for new entities.
  @override
  String get defaultVersion;

  /// Whether entities are public by default.
  @override
  bool get defaultIsPublic;

  /// Default priority level for new entities.
  @override
  EntityPriority get defaultPriority;

  /// Default workflow stage for new entities.
  @override
  EntityStage get defaultStage; // Path settings
  /// Character used to separate path segments.
  @override
  String get pathSeparator;

  /// Regular expression pattern defining invalid characters in paths.
  @override
  String get invalidPathChars;

  /// Create a copy of EntityConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntityConfigImplCopyWith<_$EntityConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
