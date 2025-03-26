// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EntityConfig {

// Path limits
/// Maximum length of an entity path in characters.
 int get maxPathLength;/// Maximum length of a single path segment in characters.
 int get maxPathSegment;/// Maximum allowed depth of entity hierarchies.
 int get maxHierarchyDepth;// History limits
/// Maximum number of history entries to retain per entity.
 int get maxHistorySize;/// Default number of history entries to show in views.
 int get defaultHistorySize;// Lock settings
/// Default duration before an entity lock expires.
 Duration get defaultLockTimeout;/// Duration by which a lock can be extended.
 Duration get lockExtensionPeriod;/// Minimum duration for which an entity can be locked.
 Duration get minLockDuration;/// Maximum duration for which an entity can be locked.
 Duration get maxLockDuration;// Entity defaults
/// Default version string for new entities.
 String get defaultVersion;/// Whether entities are public by default.
 bool get defaultIsPublic;/// Default priority level for new entities.
 EntityPriority get defaultPriority;/// Default workflow stage for new entities.
 EntityStage get defaultStage;// Path settings
/// Character used to separate path segments.
 String get pathSeparator;/// Regular expression pattern defining invalid characters in paths.
 String get invalidPathChars;
/// Create a copy of EntityConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityConfigCopyWith<EntityConfig> get copyWith => _$EntityConfigCopyWithImpl<EntityConfig>(this as EntityConfig, _$identity);

  /// Serializes this EntityConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityConfig&&(identical(other.maxPathLength, maxPathLength) || other.maxPathLength == maxPathLength)&&(identical(other.maxPathSegment, maxPathSegment) || other.maxPathSegment == maxPathSegment)&&(identical(other.maxHierarchyDepth, maxHierarchyDepth) || other.maxHierarchyDepth == maxHierarchyDepth)&&(identical(other.maxHistorySize, maxHistorySize) || other.maxHistorySize == maxHistorySize)&&(identical(other.defaultHistorySize, defaultHistorySize) || other.defaultHistorySize == defaultHistorySize)&&(identical(other.defaultLockTimeout, defaultLockTimeout) || other.defaultLockTimeout == defaultLockTimeout)&&(identical(other.lockExtensionPeriod, lockExtensionPeriod) || other.lockExtensionPeriod == lockExtensionPeriod)&&(identical(other.minLockDuration, minLockDuration) || other.minLockDuration == minLockDuration)&&(identical(other.maxLockDuration, maxLockDuration) || other.maxLockDuration == maxLockDuration)&&(identical(other.defaultVersion, defaultVersion) || other.defaultVersion == defaultVersion)&&(identical(other.defaultIsPublic, defaultIsPublic) || other.defaultIsPublic == defaultIsPublic)&&(identical(other.defaultPriority, defaultPriority) || other.defaultPriority == defaultPriority)&&(identical(other.defaultStage, defaultStage) || other.defaultStage == defaultStage)&&(identical(other.pathSeparator, pathSeparator) || other.pathSeparator == pathSeparator)&&(identical(other.invalidPathChars, invalidPathChars) || other.invalidPathChars == invalidPathChars));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxPathLength,maxPathSegment,maxHierarchyDepth,maxHistorySize,defaultHistorySize,defaultLockTimeout,lockExtensionPeriod,minLockDuration,maxLockDuration,defaultVersion,defaultIsPublic,defaultPriority,defaultStage,pathSeparator,invalidPathChars);

@override
String toString() {
  return 'EntityConfig(maxPathLength: $maxPathLength, maxPathSegment: $maxPathSegment, maxHierarchyDepth: $maxHierarchyDepth, maxHistorySize: $maxHistorySize, defaultHistorySize: $defaultHistorySize, defaultLockTimeout: $defaultLockTimeout, lockExtensionPeriod: $lockExtensionPeriod, minLockDuration: $minLockDuration, maxLockDuration: $maxLockDuration, defaultVersion: $defaultVersion, defaultIsPublic: $defaultIsPublic, defaultPriority: $defaultPriority, defaultStage: $defaultStage, pathSeparator: $pathSeparator, invalidPathChars: $invalidPathChars)';
}


}

/// @nodoc
abstract mixin class $EntityConfigCopyWith<$Res>  {
  factory $EntityConfigCopyWith(EntityConfig value, $Res Function(EntityConfig) _then) = _$EntityConfigCopyWithImpl;
@useResult
$Res call({
 int maxPathLength, int maxPathSegment, int maxHierarchyDepth, int maxHistorySize, int defaultHistorySize, Duration defaultLockTimeout, Duration lockExtensionPeriod, Duration minLockDuration, Duration maxLockDuration, String defaultVersion, bool defaultIsPublic, EntityPriority defaultPriority, EntityStage defaultStage, String pathSeparator, String invalidPathChars
});




}
/// @nodoc
class _$EntityConfigCopyWithImpl<$Res>
    implements $EntityConfigCopyWith<$Res> {
  _$EntityConfigCopyWithImpl(this._self, this._then);

  final EntityConfig _self;
  final $Res Function(EntityConfig) _then;

/// Create a copy of EntityConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxPathLength = null,Object? maxPathSegment = null,Object? maxHierarchyDepth = null,Object? maxHistorySize = null,Object? defaultHistorySize = null,Object? defaultLockTimeout = null,Object? lockExtensionPeriod = null,Object? minLockDuration = null,Object? maxLockDuration = null,Object? defaultVersion = null,Object? defaultIsPublic = null,Object? defaultPriority = null,Object? defaultStage = null,Object? pathSeparator = null,Object? invalidPathChars = null,}) {
  return _then(_self.copyWith(
maxPathLength: null == maxPathLength ? _self.maxPathLength : maxPathLength // ignore: cast_nullable_to_non_nullable
as int,maxPathSegment: null == maxPathSegment ? _self.maxPathSegment : maxPathSegment // ignore: cast_nullable_to_non_nullable
as int,maxHierarchyDepth: null == maxHierarchyDepth ? _self.maxHierarchyDepth : maxHierarchyDepth // ignore: cast_nullable_to_non_nullable
as int,maxHistorySize: null == maxHistorySize ? _self.maxHistorySize : maxHistorySize // ignore: cast_nullable_to_non_nullable
as int,defaultHistorySize: null == defaultHistorySize ? _self.defaultHistorySize : defaultHistorySize // ignore: cast_nullable_to_non_nullable
as int,defaultLockTimeout: null == defaultLockTimeout ? _self.defaultLockTimeout : defaultLockTimeout // ignore: cast_nullable_to_non_nullable
as Duration,lockExtensionPeriod: null == lockExtensionPeriod ? _self.lockExtensionPeriod : lockExtensionPeriod // ignore: cast_nullable_to_non_nullable
as Duration,minLockDuration: null == minLockDuration ? _self.minLockDuration : minLockDuration // ignore: cast_nullable_to_non_nullable
as Duration,maxLockDuration: null == maxLockDuration ? _self.maxLockDuration : maxLockDuration // ignore: cast_nullable_to_non_nullable
as Duration,defaultVersion: null == defaultVersion ? _self.defaultVersion : defaultVersion // ignore: cast_nullable_to_non_nullable
as String,defaultIsPublic: null == defaultIsPublic ? _self.defaultIsPublic : defaultIsPublic // ignore: cast_nullable_to_non_nullable
as bool,defaultPriority: null == defaultPriority ? _self.defaultPriority : defaultPriority // ignore: cast_nullable_to_non_nullable
as EntityPriority,defaultStage: null == defaultStage ? _self.defaultStage : defaultStage // ignore: cast_nullable_to_non_nullable
as EntityStage,pathSeparator: null == pathSeparator ? _self.pathSeparator : pathSeparator // ignore: cast_nullable_to_non_nullable
as String,invalidPathChars: null == invalidPathChars ? _self.invalidPathChars : invalidPathChars // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EntityConfig implements EntityConfig {
  const _EntityConfig({this.maxPathLength = 1024, this.maxPathSegment = 255, this.maxHierarchyDepth = 10, this.maxHistorySize = 50, this.defaultHistorySize = 50, this.defaultLockTimeout = const Duration(minutes: 15), this.lockExtensionPeriod = const Duration(minutes: 5), this.minLockDuration = const Duration(seconds: 30), this.maxLockDuration = const Duration(hours: 24), this.defaultVersion = '1.0.0', this.defaultIsPublic = true, this.defaultPriority = EntityPriority.medium, this.defaultStage = EntityStage.draft, this.pathSeparator = '/', this.invalidPathChars = r'[<>:"|?*\x00-\x1F]'});
  factory _EntityConfig.fromJson(Map<String, dynamic> json) => _$EntityConfigFromJson(json);

// Path limits
/// Maximum length of an entity path in characters.
@override@JsonKey() final  int maxPathLength;
/// Maximum length of a single path segment in characters.
@override@JsonKey() final  int maxPathSegment;
/// Maximum allowed depth of entity hierarchies.
@override@JsonKey() final  int maxHierarchyDepth;
// History limits
/// Maximum number of history entries to retain per entity.
@override@JsonKey() final  int maxHistorySize;
/// Default number of history entries to show in views.
@override@JsonKey() final  int defaultHistorySize;
// Lock settings
/// Default duration before an entity lock expires.
@override@JsonKey() final  Duration defaultLockTimeout;
/// Duration by which a lock can be extended.
@override@JsonKey() final  Duration lockExtensionPeriod;
/// Minimum duration for which an entity can be locked.
@override@JsonKey() final  Duration minLockDuration;
/// Maximum duration for which an entity can be locked.
@override@JsonKey() final  Duration maxLockDuration;
// Entity defaults
/// Default version string for new entities.
@override@JsonKey() final  String defaultVersion;
/// Whether entities are public by default.
@override@JsonKey() final  bool defaultIsPublic;
/// Default priority level for new entities.
@override@JsonKey() final  EntityPriority defaultPriority;
/// Default workflow stage for new entities.
@override@JsonKey() final  EntityStage defaultStage;
// Path settings
/// Character used to separate path segments.
@override@JsonKey() final  String pathSeparator;
/// Regular expression pattern defining invalid characters in paths.
@override@JsonKey() final  String invalidPathChars;

/// Create a copy of EntityConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityConfigCopyWith<_EntityConfig> get copyWith => __$EntityConfigCopyWithImpl<_EntityConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntityConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityConfig&&(identical(other.maxPathLength, maxPathLength) || other.maxPathLength == maxPathLength)&&(identical(other.maxPathSegment, maxPathSegment) || other.maxPathSegment == maxPathSegment)&&(identical(other.maxHierarchyDepth, maxHierarchyDepth) || other.maxHierarchyDepth == maxHierarchyDepth)&&(identical(other.maxHistorySize, maxHistorySize) || other.maxHistorySize == maxHistorySize)&&(identical(other.defaultHistorySize, defaultHistorySize) || other.defaultHistorySize == defaultHistorySize)&&(identical(other.defaultLockTimeout, defaultLockTimeout) || other.defaultLockTimeout == defaultLockTimeout)&&(identical(other.lockExtensionPeriod, lockExtensionPeriod) || other.lockExtensionPeriod == lockExtensionPeriod)&&(identical(other.minLockDuration, minLockDuration) || other.minLockDuration == minLockDuration)&&(identical(other.maxLockDuration, maxLockDuration) || other.maxLockDuration == maxLockDuration)&&(identical(other.defaultVersion, defaultVersion) || other.defaultVersion == defaultVersion)&&(identical(other.defaultIsPublic, defaultIsPublic) || other.defaultIsPublic == defaultIsPublic)&&(identical(other.defaultPriority, defaultPriority) || other.defaultPriority == defaultPriority)&&(identical(other.defaultStage, defaultStage) || other.defaultStage == defaultStage)&&(identical(other.pathSeparator, pathSeparator) || other.pathSeparator == pathSeparator)&&(identical(other.invalidPathChars, invalidPathChars) || other.invalidPathChars == invalidPathChars));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxPathLength,maxPathSegment,maxHierarchyDepth,maxHistorySize,defaultHistorySize,defaultLockTimeout,lockExtensionPeriod,minLockDuration,maxLockDuration,defaultVersion,defaultIsPublic,defaultPriority,defaultStage,pathSeparator,invalidPathChars);

@override
String toString() {
  return 'EntityConfig(maxPathLength: $maxPathLength, maxPathSegment: $maxPathSegment, maxHierarchyDepth: $maxHierarchyDepth, maxHistorySize: $maxHistorySize, defaultHistorySize: $defaultHistorySize, defaultLockTimeout: $defaultLockTimeout, lockExtensionPeriod: $lockExtensionPeriod, minLockDuration: $minLockDuration, maxLockDuration: $maxLockDuration, defaultVersion: $defaultVersion, defaultIsPublic: $defaultIsPublic, defaultPriority: $defaultPriority, defaultStage: $defaultStage, pathSeparator: $pathSeparator, invalidPathChars: $invalidPathChars)';
}


}

/// @nodoc
abstract mixin class _$EntityConfigCopyWith<$Res> implements $EntityConfigCopyWith<$Res> {
  factory _$EntityConfigCopyWith(_EntityConfig value, $Res Function(_EntityConfig) _then) = __$EntityConfigCopyWithImpl;
@override @useResult
$Res call({
 int maxPathLength, int maxPathSegment, int maxHierarchyDepth, int maxHistorySize, int defaultHistorySize, Duration defaultLockTimeout, Duration lockExtensionPeriod, Duration minLockDuration, Duration maxLockDuration, String defaultVersion, bool defaultIsPublic, EntityPriority defaultPriority, EntityStage defaultStage, String pathSeparator, String invalidPathChars
});




}
/// @nodoc
class __$EntityConfigCopyWithImpl<$Res>
    implements _$EntityConfigCopyWith<$Res> {
  __$EntityConfigCopyWithImpl(this._self, this._then);

  final _EntityConfig _self;
  final $Res Function(_EntityConfig) _then;

/// Create a copy of EntityConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxPathLength = null,Object? maxPathSegment = null,Object? maxHierarchyDepth = null,Object? maxHistorySize = null,Object? defaultHistorySize = null,Object? defaultLockTimeout = null,Object? lockExtensionPeriod = null,Object? minLockDuration = null,Object? maxLockDuration = null,Object? defaultVersion = null,Object? defaultIsPublic = null,Object? defaultPriority = null,Object? defaultStage = null,Object? pathSeparator = null,Object? invalidPathChars = null,}) {
  return _then(_EntityConfig(
maxPathLength: null == maxPathLength ? _self.maxPathLength : maxPathLength // ignore: cast_nullable_to_non_nullable
as int,maxPathSegment: null == maxPathSegment ? _self.maxPathSegment : maxPathSegment // ignore: cast_nullable_to_non_nullable
as int,maxHierarchyDepth: null == maxHierarchyDepth ? _self.maxHierarchyDepth : maxHierarchyDepth // ignore: cast_nullable_to_non_nullable
as int,maxHistorySize: null == maxHistorySize ? _self.maxHistorySize : maxHistorySize // ignore: cast_nullable_to_non_nullable
as int,defaultHistorySize: null == defaultHistorySize ? _self.defaultHistorySize : defaultHistorySize // ignore: cast_nullable_to_non_nullable
as int,defaultLockTimeout: null == defaultLockTimeout ? _self.defaultLockTimeout : defaultLockTimeout // ignore: cast_nullable_to_non_nullable
as Duration,lockExtensionPeriod: null == lockExtensionPeriod ? _self.lockExtensionPeriod : lockExtensionPeriod // ignore: cast_nullable_to_non_nullable
as Duration,minLockDuration: null == minLockDuration ? _self.minLockDuration : minLockDuration // ignore: cast_nullable_to_non_nullable
as Duration,maxLockDuration: null == maxLockDuration ? _self.maxLockDuration : maxLockDuration // ignore: cast_nullable_to_non_nullable
as Duration,defaultVersion: null == defaultVersion ? _self.defaultVersion : defaultVersion // ignore: cast_nullable_to_non_nullable
as String,defaultIsPublic: null == defaultIsPublic ? _self.defaultIsPublic : defaultIsPublic // ignore: cast_nullable_to_non_nullable
as bool,defaultPriority: null == defaultPriority ? _self.defaultPriority : defaultPriority // ignore: cast_nullable_to_non_nullable
as EntityPriority,defaultStage: null == defaultStage ? _self.defaultStage : defaultStage // ignore: cast_nullable_to_non_nullable
as EntityStage,pathSeparator: null == pathSeparator ? _self.pathSeparator : pathSeparator // ignore: cast_nullable_to_non_nullable
as String,invalidPathChars: null == invalidPathChars ? _self.invalidPathChars : invalidPathChars // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
