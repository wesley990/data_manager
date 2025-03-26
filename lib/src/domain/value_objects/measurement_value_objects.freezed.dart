// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement_value_objects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Measurement {

 double get value; String get unit; double? get tolerance; DateTime? get timestamp;
/// Create a copy of Measurement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasurementCopyWith<Measurement> get copyWith => _$MeasurementCopyWithImpl<Measurement>(this as Measurement, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Measurement&&(identical(other.value, value) || other.value == value)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.tolerance, tolerance) || other.tolerance == tolerance)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,value,unit,tolerance,timestamp);

@override
String toString() {
  return 'Measurement(value: $value, unit: $unit, tolerance: $tolerance, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $MeasurementCopyWith<$Res>  {
  factory $MeasurementCopyWith(Measurement value, $Res Function(Measurement) _then) = _$MeasurementCopyWithImpl;
@useResult
$Res call({
 double value, String unit, double? tolerance, DateTime? timestamp
});




}
/// @nodoc
class _$MeasurementCopyWithImpl<$Res>
    implements $MeasurementCopyWith<$Res> {
  _$MeasurementCopyWithImpl(this._self, this._then);

  final Measurement _self;
  final $Res Function(Measurement) _then;

/// Create a copy of Measurement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? unit = null,Object? tolerance = freezed,Object? timestamp = freezed,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,tolerance: freezed == tolerance ? _self.tolerance : tolerance // ignore: cast_nullable_to_non_nullable
as double?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc


class _Measurement extends Measurement {
  const _Measurement({required this.value, required this.unit, this.tolerance, this.timestamp}): super._();
  

@override final  double value;
@override final  String unit;
@override final  double? tolerance;
@override final  DateTime? timestamp;

/// Create a copy of Measurement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeasurementCopyWith<_Measurement> get copyWith => __$MeasurementCopyWithImpl<_Measurement>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Measurement&&(identical(other.value, value) || other.value == value)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.tolerance, tolerance) || other.tolerance == tolerance)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,value,unit,tolerance,timestamp);

@override
String toString() {
  return 'Measurement(value: $value, unit: $unit, tolerance: $tolerance, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$MeasurementCopyWith<$Res> implements $MeasurementCopyWith<$Res> {
  factory _$MeasurementCopyWith(_Measurement value, $Res Function(_Measurement) _then) = __$MeasurementCopyWithImpl;
@override @useResult
$Res call({
 double value, String unit, double? tolerance, DateTime? timestamp
});




}
/// @nodoc
class __$MeasurementCopyWithImpl<$Res>
    implements _$MeasurementCopyWith<$Res> {
  __$MeasurementCopyWithImpl(this._self, this._then);

  final _Measurement _self;
  final $Res Function(_Measurement) _then;

/// Create a copy of Measurement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? unit = null,Object? tolerance = freezed,Object? timestamp = freezed,}) {
  return _then(_Measurement(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,tolerance: freezed == tolerance ? _self.tolerance : tolerance // ignore: cast_nullable_to_non_nullable
as double?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$Range<T extends num> {

 T get min; T get max;
/// Create a copy of Range
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RangeCopyWith<T, Range<T>> get copyWith => _$RangeCopyWithImpl<T, Range<T>>(this as Range<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Range<T>&&const DeepCollectionEquality().equals(other.min, min)&&const DeepCollectionEquality().equals(other.max, max));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(min),const DeepCollectionEquality().hash(max));

@override
String toString() {
  return 'Range<$T>(min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $RangeCopyWith<T extends num,$Res>  {
  factory $RangeCopyWith(Range<T> value, $Res Function(Range<T>) _then) = _$RangeCopyWithImpl;
@useResult
$Res call({
 T min, T max
});




}
/// @nodoc
class _$RangeCopyWithImpl<T extends num,$Res>
    implements $RangeCopyWith<T, $Res> {
  _$RangeCopyWithImpl(this._self, this._then);

  final Range<T> _self;
  final $Res Function(Range<T>) _then;

/// Create a copy of Range
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? min = null,Object? max = null,}) {
  return _then(_self.copyWith(
min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as T,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// @nodoc


class _Range<T extends num> extends Range<T> {
  const _Range({required this.min, required this.max}): super._();
  

@override final  T min;
@override final  T max;

/// Create a copy of Range
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RangeCopyWith<T, _Range<T>> get copyWith => __$RangeCopyWithImpl<T, _Range<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Range<T>&&const DeepCollectionEquality().equals(other.min, min)&&const DeepCollectionEquality().equals(other.max, max));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(min),const DeepCollectionEquality().hash(max));

@override
String toString() {
  return 'Range<$T>(min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class _$RangeCopyWith<T extends num,$Res> implements $RangeCopyWith<T, $Res> {
  factory _$RangeCopyWith(_Range<T> value, $Res Function(_Range<T>) _then) = __$RangeCopyWithImpl;
@override @useResult
$Res call({
 T min, T max
});




}
/// @nodoc
class __$RangeCopyWithImpl<T extends num,$Res>
    implements _$RangeCopyWith<T, $Res> {
  __$RangeCopyWithImpl(this._self, this._then);

  final _Range<T> _self;
  final $Res Function(_Range<T>) _then;

/// Create a copy of Range
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? min = null,Object? max = null,}) {
  return _then(_Range<T>(
min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as T,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
