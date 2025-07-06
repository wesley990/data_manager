// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_value_objects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimeWindow {

 DateTime get start; DateTime get end;
/// Create a copy of TimeWindow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeWindowCopyWith<TimeWindow> get copyWith => _$TimeWindowCopyWithImpl<TimeWindow>(this as TimeWindow, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeWindow&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}


@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString() {
  return 'TimeWindow(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class $TimeWindowCopyWith<$Res>  {
  factory $TimeWindowCopyWith(TimeWindow value, $Res Function(TimeWindow) _then) = _$TimeWindowCopyWithImpl;
@useResult
$Res call({
 DateTime start, DateTime end
});




}
/// @nodoc
class _$TimeWindowCopyWithImpl<$Res>
    implements $TimeWindowCopyWith<$Res> {
  _$TimeWindowCopyWithImpl(this._self, this._then);

  final TimeWindow _self;
  final $Res Function(TimeWindow) _then;

/// Create a copy of TimeWindow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = null,Object? end = null,}) {
  return _then(_self.copyWith(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeWindow].
extension TimeWindowPatterns on TimeWindow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeWindow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeWindow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeWindow value)  $default,){
final _that = this;
switch (_that) {
case _TimeWindow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeWindow value)?  $default,){
final _that = this;
switch (_that) {
case _TimeWindow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime start,  DateTime end)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeWindow() when $default != null:
return $default(_that.start,_that.end);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime start,  DateTime end)  $default,) {final _that = this;
switch (_that) {
case _TimeWindow():
return $default(_that.start,_that.end);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime start,  DateTime end)?  $default,) {final _that = this;
switch (_that) {
case _TimeWindow() when $default != null:
return $default(_that.start,_that.end);case _:
  return null;

}
}

}

/// @nodoc


class _TimeWindow extends TimeWindow {
  const _TimeWindow({required this.start, required this.end}): super._();
  

@override final  DateTime start;
@override final  DateTime end;

/// Create a copy of TimeWindow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeWindowCopyWith<_TimeWindow> get copyWith => __$TimeWindowCopyWithImpl<_TimeWindow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeWindow&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end));
}


@override
int get hashCode => Object.hash(runtimeType,start,end);

@override
String toString() {
  return 'TimeWindow(start: $start, end: $end)';
}


}

/// @nodoc
abstract mixin class _$TimeWindowCopyWith<$Res> implements $TimeWindowCopyWith<$Res> {
  factory _$TimeWindowCopyWith(_TimeWindow value, $Res Function(_TimeWindow) _then) = __$TimeWindowCopyWithImpl;
@override @useResult
$Res call({
 DateTime start, DateTime end
});




}
/// @nodoc
class __$TimeWindowCopyWithImpl<$Res>
    implements _$TimeWindowCopyWith<$Res> {
  __$TimeWindowCopyWithImpl(this._self, this._then);

  final _TimeWindow _self;
  final $Res Function(_TimeWindow) _then;

/// Create a copy of TimeWindow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = null,Object? end = null,}) {
  return _then(_TimeWindow(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$Schedule {

 TimeWindow get window; List<DateTime> get breakTimes; Duration get bufferTime;
/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleCopyWith<Schedule> get copyWith => _$ScheduleCopyWithImpl<Schedule>(this as Schedule, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Schedule&&(identical(other.window, window) || other.window == window)&&const DeepCollectionEquality().equals(other.breakTimes, breakTimes)&&(identical(other.bufferTime, bufferTime) || other.bufferTime == bufferTime));
}


@override
int get hashCode => Object.hash(runtimeType,window,const DeepCollectionEquality().hash(breakTimes),bufferTime);

@override
String toString() {
  return 'Schedule(window: $window, breakTimes: $breakTimes, bufferTime: $bufferTime)';
}


}

/// @nodoc
abstract mixin class $ScheduleCopyWith<$Res>  {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) _then) = _$ScheduleCopyWithImpl;
@useResult
$Res call({
 TimeWindow window, List<DateTime> breakTimes, Duration bufferTime
});


$TimeWindowCopyWith<$Res> get window;

}
/// @nodoc
class _$ScheduleCopyWithImpl<$Res>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._self, this._then);

  final Schedule _self;
  final $Res Function(Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? window = null,Object? breakTimes = null,Object? bufferTime = null,}) {
  return _then(_self.copyWith(
window: null == window ? _self.window : window // ignore: cast_nullable_to_non_nullable
as TimeWindow,breakTimes: null == breakTimes ? _self.breakTimes : breakTimes // ignore: cast_nullable_to_non_nullable
as List<DateTime>,bufferTime: null == bufferTime ? _self.bufferTime : bufferTime // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}
/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeWindowCopyWith<$Res> get window {
  
  return $TimeWindowCopyWith<$Res>(_self.window, (value) {
    return _then(_self.copyWith(window: value));
  });
}
}


/// Adds pattern-matching-related methods to [Schedule].
extension SchedulePatterns on Schedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Schedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Schedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Schedule value)  $default,){
final _that = this;
switch (_that) {
case _Schedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Schedule value)?  $default,){
final _that = this;
switch (_that) {
case _Schedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TimeWindow window,  List<DateTime> breakTimes,  Duration bufferTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Schedule() when $default != null:
return $default(_that.window,_that.breakTimes,_that.bufferTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TimeWindow window,  List<DateTime> breakTimes,  Duration bufferTime)  $default,) {final _that = this;
switch (_that) {
case _Schedule():
return $default(_that.window,_that.breakTimes,_that.bufferTime);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TimeWindow window,  List<DateTime> breakTimes,  Duration bufferTime)?  $default,) {final _that = this;
switch (_that) {
case _Schedule() when $default != null:
return $default(_that.window,_that.breakTimes,_that.bufferTime);case _:
  return null;

}
}

}

/// @nodoc


class _Schedule extends Schedule {
  const _Schedule({required this.window, final  List<DateTime> breakTimes = const [], this.bufferTime = Duration.zero}): _breakTimes = breakTimes,super._();
  

@override final  TimeWindow window;
 final  List<DateTime> _breakTimes;
@override@JsonKey() List<DateTime> get breakTimes {
  if (_breakTimes is EqualUnmodifiableListView) return _breakTimes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_breakTimes);
}

@override@JsonKey() final  Duration bufferTime;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleCopyWith<_Schedule> get copyWith => __$ScheduleCopyWithImpl<_Schedule>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Schedule&&(identical(other.window, window) || other.window == window)&&const DeepCollectionEquality().equals(other._breakTimes, _breakTimes)&&(identical(other.bufferTime, bufferTime) || other.bufferTime == bufferTime));
}


@override
int get hashCode => Object.hash(runtimeType,window,const DeepCollectionEquality().hash(_breakTimes),bufferTime);

@override
String toString() {
  return 'Schedule(window: $window, breakTimes: $breakTimes, bufferTime: $bufferTime)';
}


}

/// @nodoc
abstract mixin class _$ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$ScheduleCopyWith(_Schedule value, $Res Function(_Schedule) _then) = __$ScheduleCopyWithImpl;
@override @useResult
$Res call({
 TimeWindow window, List<DateTime> breakTimes, Duration bufferTime
});


@override $TimeWindowCopyWith<$Res> get window;

}
/// @nodoc
class __$ScheduleCopyWithImpl<$Res>
    implements _$ScheduleCopyWith<$Res> {
  __$ScheduleCopyWithImpl(this._self, this._then);

  final _Schedule _self;
  final $Res Function(_Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? window = null,Object? breakTimes = null,Object? bufferTime = null,}) {
  return _then(_Schedule(
window: null == window ? _self.window : window // ignore: cast_nullable_to_non_nullable
as TimeWindow,breakTimes: null == breakTimes ? _self._breakTimes : breakTimes // ignore: cast_nullable_to_non_nullable
as List<DateTime>,bufferTime: null == bufferTime ? _self.bufferTime : bufferTime // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeWindowCopyWith<$Res> get window {
  
  return $TimeWindowCopyWith<$Res>(_self.window, (value) {
    return _then(_self.copyWith(window: value));
  });
}
}

// dart format on
