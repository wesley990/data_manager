// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_value_objects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Progress {

 int get completed; int get total; String? get status; String? get message;
/// Create a copy of Progress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProgressCopyWith<Progress> get copyWith => _$ProgressCopyWithImpl<Progress>(this as Progress, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Progress&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.total, total) || other.total == total)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,completed,total,status,message);

@override
String toString() {
  return 'Progress(completed: $completed, total: $total, status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $ProgressCopyWith<$Res>  {
  factory $ProgressCopyWith(Progress value, $Res Function(Progress) _then) = _$ProgressCopyWithImpl;
@useResult
$Res call({
 int completed, int total, String? status, String? message
});




}
/// @nodoc
class _$ProgressCopyWithImpl<$Res>
    implements $ProgressCopyWith<$Res> {
  _$ProgressCopyWithImpl(this._self, this._then);

  final Progress _self;
  final $Res Function(Progress) _then;

/// Create a copy of Progress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? completed = null,Object? total = null,Object? status = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Progress].
extension ProgressPatterns on Progress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Progress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Progress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Progress value)  $default,){
final _that = this;
switch (_that) {
case _Progress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Progress value)?  $default,){
final _that = this;
switch (_that) {
case _Progress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int completed,  int total,  String? status,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Progress() when $default != null:
return $default(_that.completed,_that.total,_that.status,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int completed,  int total,  String? status,  String? message)  $default,) {final _that = this;
switch (_that) {
case _Progress():
return $default(_that.completed,_that.total,_that.status,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int completed,  int total,  String? status,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _Progress() when $default != null:
return $default(_that.completed,_that.total,_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Progress extends Progress {
  const _Progress({required this.completed, required this.total, this.status, this.message}): super._();
  

@override final  int completed;
@override final  int total;
@override final  String? status;
@override final  String? message;

/// Create a copy of Progress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProgressCopyWith<_Progress> get copyWith => __$ProgressCopyWithImpl<_Progress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Progress&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.total, total) || other.total == total)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,completed,total,status,message);

@override
String toString() {
  return 'Progress(completed: $completed, total: $total, status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ProgressCopyWith<$Res> implements $ProgressCopyWith<$Res> {
  factory _$ProgressCopyWith(_Progress value, $Res Function(_Progress) _then) = __$ProgressCopyWithImpl;
@override @useResult
$Res call({
 int completed, int total, String? status, String? message
});




}
/// @nodoc
class __$ProgressCopyWithImpl<$Res>
    implements _$ProgressCopyWith<$Res> {
  __$ProgressCopyWithImpl(this._self, this._then);

  final _Progress _self;
  final $Res Function(_Progress) _then;

/// Create a copy of Progress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? completed = null,Object? total = null,Object? status = freezed,Object? message = freezed,}) {
  return _then(_Progress(
completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$TaskStatus {

 String get status; DateTime get timestamp; String? get notes; bool get isBlocking;
/// Create a copy of TaskStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskStatusCopyWith<TaskStatus> get copyWith => _$TaskStatusCopyWithImpl<TaskStatus>(this as TaskStatus, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskStatus&&(identical(other.status, status) || other.status == status)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isBlocking, isBlocking) || other.isBlocking == isBlocking));
}


@override
int get hashCode => Object.hash(runtimeType,status,timestamp,notes,isBlocking);

@override
String toString() {
  return 'TaskStatus(status: $status, timestamp: $timestamp, notes: $notes, isBlocking: $isBlocking)';
}


}

/// @nodoc
abstract mixin class $TaskStatusCopyWith<$Res>  {
  factory $TaskStatusCopyWith(TaskStatus value, $Res Function(TaskStatus) _then) = _$TaskStatusCopyWithImpl;
@useResult
$Res call({
 String status, DateTime timestamp, String? notes, bool isBlocking
});




}
/// @nodoc
class _$TaskStatusCopyWithImpl<$Res>
    implements $TaskStatusCopyWith<$Res> {
  _$TaskStatusCopyWithImpl(this._self, this._then);

  final TaskStatus _self;
  final $Res Function(TaskStatus) _then;

/// Create a copy of TaskStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? timestamp = null,Object? notes = freezed,Object? isBlocking = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,isBlocking: null == isBlocking ? _self.isBlocking : isBlocking // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskStatus].
extension TaskStatusPatterns on TaskStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskStatus value)  $default,){
final _that = this;
switch (_that) {
case _TaskStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskStatus value)?  $default,){
final _that = this;
switch (_that) {
case _TaskStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  DateTime timestamp,  String? notes,  bool isBlocking)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskStatus() when $default != null:
return $default(_that.status,_that.timestamp,_that.notes,_that.isBlocking);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  DateTime timestamp,  String? notes,  bool isBlocking)  $default,) {final _that = this;
switch (_that) {
case _TaskStatus():
return $default(_that.status,_that.timestamp,_that.notes,_that.isBlocking);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  DateTime timestamp,  String? notes,  bool isBlocking)?  $default,) {final _that = this;
switch (_that) {
case _TaskStatus() when $default != null:
return $default(_that.status,_that.timestamp,_that.notes,_that.isBlocking);case _:
  return null;

}
}

}

/// @nodoc


class _TaskStatus extends TaskStatus {
  const _TaskStatus({required this.status, required this.timestamp, this.notes, this.isBlocking = false}): super._();
  

@override final  String status;
@override final  DateTime timestamp;
@override final  String? notes;
@override@JsonKey() final  bool isBlocking;

/// Create a copy of TaskStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskStatusCopyWith<_TaskStatus> get copyWith => __$TaskStatusCopyWithImpl<_TaskStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskStatus&&(identical(other.status, status) || other.status == status)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isBlocking, isBlocking) || other.isBlocking == isBlocking));
}


@override
int get hashCode => Object.hash(runtimeType,status,timestamp,notes,isBlocking);

@override
String toString() {
  return 'TaskStatus(status: $status, timestamp: $timestamp, notes: $notes, isBlocking: $isBlocking)';
}


}

/// @nodoc
abstract mixin class _$TaskStatusCopyWith<$Res> implements $TaskStatusCopyWith<$Res> {
  factory _$TaskStatusCopyWith(_TaskStatus value, $Res Function(_TaskStatus) _then) = __$TaskStatusCopyWithImpl;
@override @useResult
$Res call({
 String status, DateTime timestamp, String? notes, bool isBlocking
});




}
/// @nodoc
class __$TaskStatusCopyWithImpl<$Res>
    implements _$TaskStatusCopyWith<$Res> {
  __$TaskStatusCopyWithImpl(this._self, this._then);

  final _TaskStatus _self;
  final $Res Function(_TaskStatus) _then;

/// Create a copy of TaskStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? timestamp = null,Object? notes = freezed,Object? isBlocking = null,}) {
  return _then(_TaskStatus(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,isBlocking: null == isBlocking ? _self.isBlocking : isBlocking // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
