// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

/// Configuration schema version for tracking changes to the configuration format itself
 String get configVersion;// Path limits
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityConfig&&(identical(other.configVersion, configVersion) || other.configVersion == configVersion)&&(identical(other.maxPathLength, maxPathLength) || other.maxPathLength == maxPathLength)&&(identical(other.maxPathSegment, maxPathSegment) || other.maxPathSegment == maxPathSegment)&&(identical(other.maxHierarchyDepth, maxHierarchyDepth) || other.maxHierarchyDepth == maxHierarchyDepth)&&(identical(other.maxHistorySize, maxHistorySize) || other.maxHistorySize == maxHistorySize)&&(identical(other.defaultHistorySize, defaultHistorySize) || other.defaultHistorySize == defaultHistorySize)&&(identical(other.defaultLockTimeout, defaultLockTimeout) || other.defaultLockTimeout == defaultLockTimeout)&&(identical(other.lockExtensionPeriod, lockExtensionPeriod) || other.lockExtensionPeriod == lockExtensionPeriod)&&(identical(other.minLockDuration, minLockDuration) || other.minLockDuration == minLockDuration)&&(identical(other.maxLockDuration, maxLockDuration) || other.maxLockDuration == maxLockDuration)&&(identical(other.defaultVersion, defaultVersion) || other.defaultVersion == defaultVersion)&&(identical(other.defaultIsPublic, defaultIsPublic) || other.defaultIsPublic == defaultIsPublic)&&(identical(other.defaultPriority, defaultPriority) || other.defaultPriority == defaultPriority)&&(identical(other.defaultStage, defaultStage) || other.defaultStage == defaultStage)&&(identical(other.pathSeparator, pathSeparator) || other.pathSeparator == pathSeparator)&&(identical(other.invalidPathChars, invalidPathChars) || other.invalidPathChars == invalidPathChars));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,configVersion,maxPathLength,maxPathSegment,maxHierarchyDepth,maxHistorySize,defaultHistorySize,defaultLockTimeout,lockExtensionPeriod,minLockDuration,maxLockDuration,defaultVersion,defaultIsPublic,defaultPriority,defaultStage,pathSeparator,invalidPathChars);

@override
String toString() {
  return 'EntityConfig(configVersion: $configVersion, maxPathLength: $maxPathLength, maxPathSegment: $maxPathSegment, maxHierarchyDepth: $maxHierarchyDepth, maxHistorySize: $maxHistorySize, defaultHistorySize: $defaultHistorySize, defaultLockTimeout: $defaultLockTimeout, lockExtensionPeriod: $lockExtensionPeriod, minLockDuration: $minLockDuration, maxLockDuration: $maxLockDuration, defaultVersion: $defaultVersion, defaultIsPublic: $defaultIsPublic, defaultPriority: $defaultPriority, defaultStage: $defaultStage, pathSeparator: $pathSeparator, invalidPathChars: $invalidPathChars)';
}


}

/// @nodoc
abstract mixin class $EntityConfigCopyWith<$Res>  {
  factory $EntityConfigCopyWith(EntityConfig value, $Res Function(EntityConfig) _then) = _$EntityConfigCopyWithImpl;
@useResult
$Res call({
 String configVersion, int maxPathLength, int maxPathSegment, int maxHierarchyDepth, int maxHistorySize, int defaultHistorySize, Duration defaultLockTimeout, Duration lockExtensionPeriod, Duration minLockDuration, Duration maxLockDuration, String defaultVersion, bool defaultIsPublic, EntityPriority defaultPriority, EntityStage defaultStage, String pathSeparator, String invalidPathChars
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
@pragma('vm:prefer-inline') @override $Res call({Object? configVersion = null,Object? maxPathLength = null,Object? maxPathSegment = null,Object? maxHierarchyDepth = null,Object? maxHistorySize = null,Object? defaultHistorySize = null,Object? defaultLockTimeout = null,Object? lockExtensionPeriod = null,Object? minLockDuration = null,Object? maxLockDuration = null,Object? defaultVersion = null,Object? defaultIsPublic = null,Object? defaultPriority = null,Object? defaultStage = null,Object? pathSeparator = null,Object? invalidPathChars = null,}) {
  return _then(_self.copyWith(
configVersion: null == configVersion ? _self.configVersion : configVersion // ignore: cast_nullable_to_non_nullable
as String,maxPathLength: null == maxPathLength ? _self.maxPathLength : maxPathLength // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [EntityConfig].
extension EntityConfigPatterns on EntityConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntityConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntityConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntityConfig value)  $default,){
final _that = this;
switch (_that) {
case _EntityConfig():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntityConfig value)?  $default,){
final _that = this;
switch (_that) {
case _EntityConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String configVersion,  int maxPathLength,  int maxPathSegment,  int maxHierarchyDepth,  int maxHistorySize,  int defaultHistorySize,  Duration defaultLockTimeout,  Duration lockExtensionPeriod,  Duration minLockDuration,  Duration maxLockDuration,  String defaultVersion,  bool defaultIsPublic,  EntityPriority defaultPriority,  EntityStage defaultStage,  String pathSeparator,  String invalidPathChars)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntityConfig() when $default != null:
return $default(_that.configVersion,_that.maxPathLength,_that.maxPathSegment,_that.maxHierarchyDepth,_that.maxHistorySize,_that.defaultHistorySize,_that.defaultLockTimeout,_that.lockExtensionPeriod,_that.minLockDuration,_that.maxLockDuration,_that.defaultVersion,_that.defaultIsPublic,_that.defaultPriority,_that.defaultStage,_that.pathSeparator,_that.invalidPathChars);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String configVersion,  int maxPathLength,  int maxPathSegment,  int maxHierarchyDepth,  int maxHistorySize,  int defaultHistorySize,  Duration defaultLockTimeout,  Duration lockExtensionPeriod,  Duration minLockDuration,  Duration maxLockDuration,  String defaultVersion,  bool defaultIsPublic,  EntityPriority defaultPriority,  EntityStage defaultStage,  String pathSeparator,  String invalidPathChars)  $default,) {final _that = this;
switch (_that) {
case _EntityConfig():
return $default(_that.configVersion,_that.maxPathLength,_that.maxPathSegment,_that.maxHierarchyDepth,_that.maxHistorySize,_that.defaultHistorySize,_that.defaultLockTimeout,_that.lockExtensionPeriod,_that.minLockDuration,_that.maxLockDuration,_that.defaultVersion,_that.defaultIsPublic,_that.defaultPriority,_that.defaultStage,_that.pathSeparator,_that.invalidPathChars);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String configVersion,  int maxPathLength,  int maxPathSegment,  int maxHierarchyDepth,  int maxHistorySize,  int defaultHistorySize,  Duration defaultLockTimeout,  Duration lockExtensionPeriod,  Duration minLockDuration,  Duration maxLockDuration,  String defaultVersion,  bool defaultIsPublic,  EntityPriority defaultPriority,  EntityStage defaultStage,  String pathSeparator,  String invalidPathChars)?  $default,) {final _that = this;
switch (_that) {
case _EntityConfig() when $default != null:
return $default(_that.configVersion,_that.maxPathLength,_that.maxPathSegment,_that.maxHierarchyDepth,_that.maxHistorySize,_that.defaultHistorySize,_that.defaultLockTimeout,_that.lockExtensionPeriod,_that.minLockDuration,_that.maxLockDuration,_that.defaultVersion,_that.defaultIsPublic,_that.defaultPriority,_that.defaultStage,_that.pathSeparator,_that.invalidPathChars);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EntityConfig extends EntityConfig {
  const _EntityConfig({this.configVersion = EntityConfigDefaults.configVersion, this.maxPathLength = EntityConfigDefaults.maxPathLength, this.maxPathSegment = EntityConfigDefaults.maxPathSegment, this.maxHierarchyDepth = EntityConfigDefaults.maxHierarchyDepth, this.maxHistorySize = EntityConfigDefaults.maxHistorySize, this.defaultHistorySize = EntityConfigDefaults.defaultHistorySize, this.defaultLockTimeout = EntityConfigDefaults.defaultLockTimeout, this.lockExtensionPeriod = EntityConfigDefaults.lockExtensionPeriod, this.minLockDuration = EntityConfigDefaults.minLockDuration, this.maxLockDuration = EntityConfigDefaults.maxLockDuration, this.defaultVersion = EntityConfigDefaults.defaultVersion, this.defaultIsPublic = EntityConfigDefaults.defaultIsPublic, this.defaultPriority = EntityConfigDefaults.defaultPriority, this.defaultStage = EntityConfigDefaults.defaultStage, this.pathSeparator = EntityConfigDefaults.pathSeparator, this.invalidPathChars = EntityConfigDefaults.invalidPathChars}): super._();
  factory _EntityConfig.fromJson(Map<String, dynamic> json) => _$EntityConfigFromJson(json);

/// Configuration schema version for tracking changes to the configuration format itself
@override@JsonKey() final  String configVersion;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityConfig&&(identical(other.configVersion, configVersion) || other.configVersion == configVersion)&&(identical(other.maxPathLength, maxPathLength) || other.maxPathLength == maxPathLength)&&(identical(other.maxPathSegment, maxPathSegment) || other.maxPathSegment == maxPathSegment)&&(identical(other.maxHierarchyDepth, maxHierarchyDepth) || other.maxHierarchyDepth == maxHierarchyDepth)&&(identical(other.maxHistorySize, maxHistorySize) || other.maxHistorySize == maxHistorySize)&&(identical(other.defaultHistorySize, defaultHistorySize) || other.defaultHistorySize == defaultHistorySize)&&(identical(other.defaultLockTimeout, defaultLockTimeout) || other.defaultLockTimeout == defaultLockTimeout)&&(identical(other.lockExtensionPeriod, lockExtensionPeriod) || other.lockExtensionPeriod == lockExtensionPeriod)&&(identical(other.minLockDuration, minLockDuration) || other.minLockDuration == minLockDuration)&&(identical(other.maxLockDuration, maxLockDuration) || other.maxLockDuration == maxLockDuration)&&(identical(other.defaultVersion, defaultVersion) || other.defaultVersion == defaultVersion)&&(identical(other.defaultIsPublic, defaultIsPublic) || other.defaultIsPublic == defaultIsPublic)&&(identical(other.defaultPriority, defaultPriority) || other.defaultPriority == defaultPriority)&&(identical(other.defaultStage, defaultStage) || other.defaultStage == defaultStage)&&(identical(other.pathSeparator, pathSeparator) || other.pathSeparator == pathSeparator)&&(identical(other.invalidPathChars, invalidPathChars) || other.invalidPathChars == invalidPathChars));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,configVersion,maxPathLength,maxPathSegment,maxHierarchyDepth,maxHistorySize,defaultHistorySize,defaultLockTimeout,lockExtensionPeriod,minLockDuration,maxLockDuration,defaultVersion,defaultIsPublic,defaultPriority,defaultStage,pathSeparator,invalidPathChars);

@override
String toString() {
  return 'EntityConfig(configVersion: $configVersion, maxPathLength: $maxPathLength, maxPathSegment: $maxPathSegment, maxHierarchyDepth: $maxHierarchyDepth, maxHistorySize: $maxHistorySize, defaultHistorySize: $defaultHistorySize, defaultLockTimeout: $defaultLockTimeout, lockExtensionPeriod: $lockExtensionPeriod, minLockDuration: $minLockDuration, maxLockDuration: $maxLockDuration, defaultVersion: $defaultVersion, defaultIsPublic: $defaultIsPublic, defaultPriority: $defaultPriority, defaultStage: $defaultStage, pathSeparator: $pathSeparator, invalidPathChars: $invalidPathChars)';
}


}

/// @nodoc
abstract mixin class _$EntityConfigCopyWith<$Res> implements $EntityConfigCopyWith<$Res> {
  factory _$EntityConfigCopyWith(_EntityConfig value, $Res Function(_EntityConfig) _then) = __$EntityConfigCopyWithImpl;
@override @useResult
$Res call({
 String configVersion, int maxPathLength, int maxPathSegment, int maxHierarchyDepth, int maxHistorySize, int defaultHistorySize, Duration defaultLockTimeout, Duration lockExtensionPeriod, Duration minLockDuration, Duration maxLockDuration, String defaultVersion, bool defaultIsPublic, EntityPriority defaultPriority, EntityStage defaultStage, String pathSeparator, String invalidPathChars
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
@override @pragma('vm:prefer-inline') $Res call({Object? configVersion = null,Object? maxPathLength = null,Object? maxPathSegment = null,Object? maxHierarchyDepth = null,Object? maxHistorySize = null,Object? defaultHistorySize = null,Object? defaultLockTimeout = null,Object? lockExtensionPeriod = null,Object? minLockDuration = null,Object? maxLockDuration = null,Object? defaultVersion = null,Object? defaultIsPublic = null,Object? defaultPriority = null,Object? defaultStage = null,Object? pathSeparator = null,Object? invalidPathChars = null,}) {
  return _then(_EntityConfig(
configVersion: null == configVersion ? _self.configVersion : configVersion // ignore: cast_nullable_to_non_nullable
as String,maxPathLength: null == maxPathLength ? _self.maxPathLength : maxPathLength // ignore: cast_nullable_to_non_nullable
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
