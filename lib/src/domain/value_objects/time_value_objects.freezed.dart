// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_value_objects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimeWindow {
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;

  /// Create a copy of TimeWindow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeWindowCopyWith<TimeWindow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeWindowCopyWith<$Res> {
  factory $TimeWindowCopyWith(
          TimeWindow value, $Res Function(TimeWindow) then) =
      _$TimeWindowCopyWithImpl<$Res, TimeWindow>;
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class _$TimeWindowCopyWithImpl<$Res, $Val extends TimeWindow>
    implements $TimeWindowCopyWith<$Res> {
  _$TimeWindowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeWindow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeWindowImplCopyWith<$Res>
    implements $TimeWindowCopyWith<$Res> {
  factory _$$TimeWindowImplCopyWith(
          _$TimeWindowImpl value, $Res Function(_$TimeWindowImpl) then) =
      __$$TimeWindowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class __$$TimeWindowImplCopyWithImpl<$Res>
    extends _$TimeWindowCopyWithImpl<$Res, _$TimeWindowImpl>
    implements _$$TimeWindowImplCopyWith<$Res> {
  __$$TimeWindowImplCopyWithImpl(
      _$TimeWindowImpl _value, $Res Function(_$TimeWindowImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeWindow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$TimeWindowImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TimeWindowImpl extends _TimeWindow {
  const _$TimeWindowImpl({required this.start, required this.end}) : super._();

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'TimeWindow(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeWindowImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  /// Create a copy of TimeWindow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeWindowImplCopyWith<_$TimeWindowImpl> get copyWith =>
      __$$TimeWindowImplCopyWithImpl<_$TimeWindowImpl>(this, _$identity);
}

abstract class _TimeWindow extends TimeWindow {
  const factory _TimeWindow(
      {required final DateTime start,
      required final DateTime end}) = _$TimeWindowImpl;
  const _TimeWindow._() : super._();

  @override
  DateTime get start;
  @override
  DateTime get end;

  /// Create a copy of TimeWindow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeWindowImplCopyWith<_$TimeWindowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Schedule {
  TimeWindow get window => throw _privateConstructorUsedError;
  List<DateTime> get breakTimes => throw _privateConstructorUsedError;
  Duration get bufferTime => throw _privateConstructorUsedError;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call(
      {TimeWindow window, List<DateTime> breakTimes, Duration bufferTime});

  $TimeWindowCopyWith<$Res> get window;
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? window = null,
    Object? breakTimes = null,
    Object? bufferTime = null,
  }) {
    return _then(_value.copyWith(
      window: null == window
          ? _value.window
          : window // ignore: cast_nullable_to_non_nullable
              as TimeWindow,
      breakTimes: null == breakTimes
          ? _value.breakTimes
          : breakTimes // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      bufferTime: null == bufferTime
          ? _value.bufferTime
          : bufferTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeWindowCopyWith<$Res> get window {
    return $TimeWindowCopyWith<$Res>(_value.window, (value) {
      return _then(_value.copyWith(window: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleImplCopyWith<$Res>
    implements $ScheduleCopyWith<$Res> {
  factory _$$ScheduleImplCopyWith(
          _$ScheduleImpl value, $Res Function(_$ScheduleImpl) then) =
      __$$ScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimeWindow window, List<DateTime> breakTimes, Duration bufferTime});

  @override
  $TimeWindowCopyWith<$Res> get window;
}

/// @nodoc
class __$$ScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$ScheduleImpl>
    implements _$$ScheduleImplCopyWith<$Res> {
  __$$ScheduleImplCopyWithImpl(
      _$ScheduleImpl _value, $Res Function(_$ScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? window = null,
    Object? breakTimes = null,
    Object? bufferTime = null,
  }) {
    return _then(_$ScheduleImpl(
      window: null == window
          ? _value.window
          : window // ignore: cast_nullable_to_non_nullable
              as TimeWindow,
      breakTimes: null == breakTimes
          ? _value._breakTimes
          : breakTimes // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      bufferTime: null == bufferTime
          ? _value.bufferTime
          : bufferTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$ScheduleImpl extends _Schedule {
  const _$ScheduleImpl(
      {required this.window,
      final List<DateTime> breakTimes = const [],
      this.bufferTime = Duration.zero})
      : _breakTimes = breakTimes,
        super._();

  @override
  final TimeWindow window;
  final List<DateTime> _breakTimes;
  @override
  @JsonKey()
  List<DateTime> get breakTimes {
    if (_breakTimes is EqualUnmodifiableListView) return _breakTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breakTimes);
  }

  @override
  @JsonKey()
  final Duration bufferTime;

  @override
  String toString() {
    return 'Schedule(window: $window, breakTimes: $breakTimes, bufferTime: $bufferTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleImpl &&
            (identical(other.window, window) || other.window == window) &&
            const DeepCollectionEquality()
                .equals(other._breakTimes, _breakTimes) &&
            (identical(other.bufferTime, bufferTime) ||
                other.bufferTime == bufferTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, window,
      const DeepCollectionEquality().hash(_breakTimes), bufferTime);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      __$$ScheduleImplCopyWithImpl<_$ScheduleImpl>(this, _$identity);
}

abstract class _Schedule extends Schedule {
  const factory _Schedule(
      {required final TimeWindow window,
      final List<DateTime> breakTimes,
      final Duration bufferTime}) = _$ScheduleImpl;
  const _Schedule._() : super._();

  @override
  TimeWindow get window;
  @override
  List<DateTime> get breakTimes;
  @override
  Duration get bufferTime;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
