// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'identity_value_objects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EntityId {

 String get value;
/// Create a copy of EntityId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityIdCopyWith<EntityId> get copyWith => _$EntityIdCopyWithImpl<EntityId>(this as EntityId, _$identity);

  /// Serializes this EntityId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityId&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);



}

/// @nodoc
abstract mixin class $EntityIdCopyWith<$Res>  {
  factory $EntityIdCopyWith(EntityId value, $Res Function(EntityId) _then) = _$EntityIdCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$EntityIdCopyWithImpl<$Res>
    implements $EntityIdCopyWith<$Res> {
  _$EntityIdCopyWithImpl(this._self, this._then);

  final EntityId _self;
  final $Res Function(EntityId) _then;

/// Create a copy of EntityId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EntityId].
extension EntityIdPatterns on EntityId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntityId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntityId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntityId value)  $default,){
final _that = this;
switch (_that) {
case _EntityId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntityId value)?  $default,){
final _that = this;
switch (_that) {
case _EntityId() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntityId() when $default != null:
return $default(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value)  $default,) {final _that = this;
switch (_that) {
case _EntityId():
return $default(_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value)?  $default,) {final _that = this;
switch (_that) {
case _EntityId() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EntityId extends EntityId {
  const _EntityId(this.value): super._();
  factory _EntityId.fromJson(Map<String, dynamic> json) => _$EntityIdFromJson(json);

@override final  String value;

/// Create a copy of EntityId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityIdCopyWith<_EntityId> get copyWith => __$EntityIdCopyWithImpl<_EntityId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntityIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityId&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);



}

/// @nodoc
abstract mixin class _$EntityIdCopyWith<$Res> implements $EntityIdCopyWith<$Res> {
  factory _$EntityIdCopyWith(_EntityId value, $Res Function(_EntityId) _then) = __$EntityIdCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$EntityIdCopyWithImpl<$Res>
    implements _$EntityIdCopyWith<$Res> {
  __$EntityIdCopyWithImpl(this._self, this._then);

  final _EntityId _self;
  final $Res Function(_EntityId) _then;

/// Create a copy of EntityId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_EntityId(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EventId {

 String get value;
/// Create a copy of EventId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventIdCopyWith<EventId> get copyWith => _$EventIdCopyWithImpl<EventId>(this as EventId, _$identity);

  /// Serializes this EventId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventId&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);



}

/// @nodoc
abstract mixin class $EventIdCopyWith<$Res>  {
  factory $EventIdCopyWith(EventId value, $Res Function(EventId) _then) = _$EventIdCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$EventIdCopyWithImpl<$Res>
    implements $EventIdCopyWith<$Res> {
  _$EventIdCopyWithImpl(this._self, this._then);

  final EventId _self;
  final $Res Function(EventId) _then;

/// Create a copy of EventId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EventId].
extension EventIdPatterns on EventId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventId value)  $default,){
final _that = this;
switch (_that) {
case _EventId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventId value)?  $default,){
final _that = this;
switch (_that) {
case _EventId() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventId() when $default != null:
return $default(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value)  $default,) {final _that = this;
switch (_that) {
case _EventId():
return $default(_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value)?  $default,) {final _that = this;
switch (_that) {
case _EventId() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventId extends EventId {
  const _EventId(this.value): super._();
  factory _EventId.fromJson(Map<String, dynamic> json) => _$EventIdFromJson(json);

@override final  String value;

/// Create a copy of EventId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventIdCopyWith<_EventId> get copyWith => __$EventIdCopyWithImpl<_EventId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventId&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);



}

/// @nodoc
abstract mixin class _$EventIdCopyWith<$Res> implements $EventIdCopyWith<$Res> {
  factory _$EventIdCopyWith(_EventId value, $Res Function(_EventId) _then) = __$EventIdCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$EventIdCopyWithImpl<$Res>
    implements _$EventIdCopyWith<$Res> {
  __$EventIdCopyWithImpl(this._self, this._then);

  final _EventId _self;
  final $Res Function(_EventId) _then;

/// Create a copy of EventId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_EventId(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReferenceNumber {

 String get prefix; int get sequence; String? get suffix;
/// Create a copy of ReferenceNumber
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferenceNumberCopyWith<ReferenceNumber> get copyWith => _$ReferenceNumberCopyWithImpl<ReferenceNumber>(this as ReferenceNumber, _$identity);

  /// Serializes this ReferenceNumber to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferenceNumber&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.suffix, suffix) || other.suffix == suffix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prefix,sequence,suffix);

@override
String toString() {
  return 'ReferenceNumber(prefix: $prefix, sequence: $sequence, suffix: $suffix)';
}


}

/// @nodoc
abstract mixin class $ReferenceNumberCopyWith<$Res>  {
  factory $ReferenceNumberCopyWith(ReferenceNumber value, $Res Function(ReferenceNumber) _then) = _$ReferenceNumberCopyWithImpl;
@useResult
$Res call({
 String prefix, int sequence, String? suffix
});




}
/// @nodoc
class _$ReferenceNumberCopyWithImpl<$Res>
    implements $ReferenceNumberCopyWith<$Res> {
  _$ReferenceNumberCopyWithImpl(this._self, this._then);

  final ReferenceNumber _self;
  final $Res Function(ReferenceNumber) _then;

/// Create a copy of ReferenceNumber
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prefix = null,Object? sequence = null,Object? suffix = freezed,}) {
  return _then(_self.copyWith(
prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,suffix: freezed == suffix ? _self.suffix : suffix // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReferenceNumber].
extension ReferenceNumberPatterns on ReferenceNumber {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferenceNumber value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferenceNumber() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferenceNumber value)  $default,){
final _that = this;
switch (_that) {
case _ReferenceNumber():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferenceNumber value)?  $default,){
final _that = this;
switch (_that) {
case _ReferenceNumber() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String prefix,  int sequence,  String? suffix)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferenceNumber() when $default != null:
return $default(_that.prefix,_that.sequence,_that.suffix);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String prefix,  int sequence,  String? suffix)  $default,) {final _that = this;
switch (_that) {
case _ReferenceNumber():
return $default(_that.prefix,_that.sequence,_that.suffix);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String prefix,  int sequence,  String? suffix)?  $default,) {final _that = this;
switch (_that) {
case _ReferenceNumber() when $default != null:
return $default(_that.prefix,_that.sequence,_that.suffix);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReferenceNumber extends ReferenceNumber {
  const _ReferenceNumber({required this.prefix, required this.sequence, this.suffix}): super._();
  factory _ReferenceNumber.fromJson(Map<String, dynamic> json) => _$ReferenceNumberFromJson(json);

@override final  String prefix;
@override final  int sequence;
@override final  String? suffix;

/// Create a copy of ReferenceNumber
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferenceNumberCopyWith<_ReferenceNumber> get copyWith => __$ReferenceNumberCopyWithImpl<_ReferenceNumber>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReferenceNumberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferenceNumber&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.suffix, suffix) || other.suffix == suffix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prefix,sequence,suffix);

@override
String toString() {
  return 'ReferenceNumber(prefix: $prefix, sequence: $sequence, suffix: $suffix)';
}


}

/// @nodoc
abstract mixin class _$ReferenceNumberCopyWith<$Res> implements $ReferenceNumberCopyWith<$Res> {
  factory _$ReferenceNumberCopyWith(_ReferenceNumber value, $Res Function(_ReferenceNumber) _then) = __$ReferenceNumberCopyWithImpl;
@override @useResult
$Res call({
 String prefix, int sequence, String? suffix
});




}
/// @nodoc
class __$ReferenceNumberCopyWithImpl<$Res>
    implements _$ReferenceNumberCopyWith<$Res> {
  __$ReferenceNumberCopyWithImpl(this._self, this._then);

  final _ReferenceNumber _self;
  final $Res Function(_ReferenceNumber) _then;

/// Create a copy of ReferenceNumber
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prefix = null,Object? sequence = null,Object? suffix = freezed,}) {
  return _then(_ReferenceNumber(
prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,suffix: freezed == suffix ? _self.suffix : suffix // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
