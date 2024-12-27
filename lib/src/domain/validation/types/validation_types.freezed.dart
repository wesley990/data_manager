// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidationIssue _$ValidationIssueFromJson(Map<String, dynamic> json) {
  return _ValidationIssue.fromJson(json);
}

/// @nodoc
mixin _$ValidationIssue {
  String get message => throw _privateConstructorUsedError;
  ValidationSeverity get severity => throw _privateConstructorUsedError;
  String? get fieldName => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  Map<String, Object>? get context => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;

  /// Serializes this ValidationIssue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationIssue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationIssueCopyWith<ValidationIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationIssueCopyWith<$Res> {
  factory $ValidationIssueCopyWith(
          ValidationIssue value, $Res Function(ValidationIssue) then) =
      _$ValidationIssueCopyWithImpl<$Res, ValidationIssue>;
  @useResult
  $Res call(
      {String message,
      ValidationSeverity severity,
      String? fieldName,
      String? code,
      Map<String, Object>? context,
      String? source});
}

/// @nodoc
class _$ValidationIssueCopyWithImpl<$Res, $Val extends ValidationIssue>
    implements $ValidationIssueCopyWith<$Res> {
  _$ValidationIssueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationIssue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? severity = null,
    Object? fieldName = freezed,
    Object? code = freezed,
    Object? context = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ValidationSeverity,
      fieldName: freezed == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationIssueImplCopyWith<$Res>
    implements $ValidationIssueCopyWith<$Res> {
  factory _$$ValidationIssueImplCopyWith(_$ValidationIssueImpl value,
          $Res Function(_$ValidationIssueImpl) then) =
      __$$ValidationIssueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      ValidationSeverity severity,
      String? fieldName,
      String? code,
      Map<String, Object>? context,
      String? source});
}

/// @nodoc
class __$$ValidationIssueImplCopyWithImpl<$Res>
    extends _$ValidationIssueCopyWithImpl<$Res, _$ValidationIssueImpl>
    implements _$$ValidationIssueImplCopyWith<$Res> {
  __$$ValidationIssueImplCopyWithImpl(
      _$ValidationIssueImpl _value, $Res Function(_$ValidationIssueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationIssue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? severity = null,
    Object? fieldName = freezed,
    Object? code = freezed,
    Object? context = freezed,
    Object? source = freezed,
  }) {
    return _then(_$ValidationIssueImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ValidationSeverity,
      fieldName: freezed == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value._context
          : context // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationIssueImpl implements _ValidationIssue {
  const _$ValidationIssueImpl(
      {required this.message,
      this.severity = ValidationSeverity.error,
      this.fieldName,
      this.code,
      final Map<String, Object>? context,
      this.source})
      : _context = context;

  factory _$ValidationIssueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationIssueImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final ValidationSeverity severity;
  @override
  final String? fieldName;
  @override
  final String? code;
  final Map<String, Object>? _context;
  @override
  Map<String, Object>? get context {
    final value = _context;
    if (value == null) return null;
    if (_context is EqualUnmodifiableMapView) return _context;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? source;

  @override
  String toString() {
    return 'ValidationIssue(message: $message, severity: $severity, fieldName: $fieldName, code: $code, context: $context, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationIssueImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.fieldName, fieldName) ||
                other.fieldName == fieldName) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._context, _context) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, severity, fieldName,
      code, const DeepCollectionEquality().hash(_context), source);

  /// Create a copy of ValidationIssue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationIssueImplCopyWith<_$ValidationIssueImpl> get copyWith =>
      __$$ValidationIssueImplCopyWithImpl<_$ValidationIssueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationIssueImplToJson(
      this,
    );
  }
}

abstract class _ValidationIssue implements ValidationIssue {
  const factory _ValidationIssue(
      {required final String message,
      final ValidationSeverity severity,
      final String? fieldName,
      final String? code,
      final Map<String, Object>? context,
      final String? source}) = _$ValidationIssueImpl;

  factory _ValidationIssue.fromJson(Map<String, dynamic> json) =
      _$ValidationIssueImpl.fromJson;

  @override
  String get message;
  @override
  ValidationSeverity get severity;
  @override
  String? get fieldName;
  @override
  String? get code;
  @override
  Map<String, Object>? get context;
  @override
  String? get source;

  /// Create a copy of ValidationIssue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationIssueImplCopyWith<_$ValidationIssueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidationResult _$ValidationResultFromJson(Map<String, dynamic> json) {
  return _ValidationResult.fromJson(json);
}

/// @nodoc
mixin _$ValidationResult {
  bool get isValid => throw _privateConstructorUsedError;
  List<ValidationIssue> get issues => throw _privateConstructorUsedError;
  Map<String, List<ValidationIssue>> get fieldIssues =>
      throw _privateConstructorUsedError;
  Map<String, Object>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this ValidationResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationResultCopyWith<ValidationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationResultCopyWith<$Res> {
  factory $ValidationResultCopyWith(
          ValidationResult value, $Res Function(ValidationResult) then) =
      _$ValidationResultCopyWithImpl<$Res, ValidationResult>;
  @useResult
  $Res call(
      {bool isValid,
      List<ValidationIssue> issues,
      Map<String, List<ValidationIssue>> fieldIssues,
      Map<String, Object>? metadata});
}

/// @nodoc
class _$ValidationResultCopyWithImpl<$Res, $Val extends ValidationResult>
    implements $ValidationResultCopyWith<$Res> {
  _$ValidationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? issues = null,
    Object? fieldIssues = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      issues: null == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<ValidationIssue>,
      fieldIssues: null == fieldIssues
          ? _value.fieldIssues
          : fieldIssues // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ValidationIssue>>,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationResultImplCopyWith<$Res>
    implements $ValidationResultCopyWith<$Res> {
  factory _$$ValidationResultImplCopyWith(_$ValidationResultImpl value,
          $Res Function(_$ValidationResultImpl) then) =
      __$$ValidationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isValid,
      List<ValidationIssue> issues,
      Map<String, List<ValidationIssue>> fieldIssues,
      Map<String, Object>? metadata});
}

/// @nodoc
class __$$ValidationResultImplCopyWithImpl<$Res>
    extends _$ValidationResultCopyWithImpl<$Res, _$ValidationResultImpl>
    implements _$$ValidationResultImplCopyWith<$Res> {
  __$$ValidationResultImplCopyWithImpl(_$ValidationResultImpl _value,
      $Res Function(_$ValidationResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? issues = null,
    Object? fieldIssues = null,
    Object? metadata = freezed,
  }) {
    return _then(_$ValidationResultImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      issues: null == issues
          ? _value._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<ValidationIssue>,
      fieldIssues: null == fieldIssues
          ? _value._fieldIssues
          : fieldIssues // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ValidationIssue>>,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationResultImpl extends _ValidationResult {
  const _$ValidationResultImpl(
      {this.isValid = true,
      final List<ValidationIssue> issues = const [],
      final Map<String, List<ValidationIssue>> fieldIssues = const {},
      final Map<String, Object>? metadata})
      : _issues = issues,
        _fieldIssues = fieldIssues,
        _metadata = metadata,
        super._();

  factory _$ValidationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationResultImplFromJson(json);

  @override
  @JsonKey()
  final bool isValid;
  final List<ValidationIssue> _issues;
  @override
  @JsonKey()
  List<ValidationIssue> get issues {
    if (_issues is EqualUnmodifiableListView) return _issues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issues);
  }

  final Map<String, List<ValidationIssue>> _fieldIssues;
  @override
  @JsonKey()
  Map<String, List<ValidationIssue>> get fieldIssues {
    if (_fieldIssues is EqualUnmodifiableMapView) return _fieldIssues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fieldIssues);
  }

  final Map<String, Object>? _metadata;
  @override
  Map<String, Object>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ValidationResult(isValid: $isValid, issues: $issues, fieldIssues: $fieldIssues, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationResultImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            const DeepCollectionEquality().equals(other._issues, _issues) &&
            const DeepCollectionEquality()
                .equals(other._fieldIssues, _fieldIssues) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isValid,
      const DeepCollectionEquality().hash(_issues),
      const DeepCollectionEquality().hash(_fieldIssues),
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationResultImplCopyWith<_$ValidationResultImpl> get copyWith =>
      __$$ValidationResultImplCopyWithImpl<_$ValidationResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationResultImplToJson(
      this,
    );
  }
}

abstract class _ValidationResult extends ValidationResult {
  const factory _ValidationResult(
      {final bool isValid,
      final List<ValidationIssue> issues,
      final Map<String, List<ValidationIssue>> fieldIssues,
      final Map<String, Object>? metadata}) = _$ValidationResultImpl;
  const _ValidationResult._() : super._();

  factory _ValidationResult.fromJson(Map<String, dynamic> json) =
      _$ValidationResultImpl.fromJson;

  @override
  bool get isValid;
  @override
  List<ValidationIssue> get issues;
  @override
  Map<String, List<ValidationIssue>> get fieldIssues;
  @override
  Map<String, Object>? get metadata;

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationResultImplCopyWith<_$ValidationResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
