// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidationIssueImpl _$$ValidationIssueImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationIssueImpl(
      message: json['message'] as String,
      severity:
          $enumDecodeNullable(_$ValidationSeverityEnumMap, json['severity']) ??
              ValidationSeverity.error,
      fieldName: json['fieldName'] as String?,
      code: json['code'] as String?,
      context: (json['context'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      source: json['source'] as String?,
    );

Map<String, dynamic> _$$ValidationIssueImplToJson(
        _$ValidationIssueImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'severity': _$ValidationSeverityEnumMap[instance.severity]!,
      'fieldName': instance.fieldName,
      'code': instance.code,
      'context': instance.context,
      'source': instance.source,
    };

const _$ValidationSeverityEnumMap = {
  ValidationSeverity.error: 'error',
  ValidationSeverity.warning: 'warning',
  ValidationSeverity.info: 'info',
};

_$ValidationResultImpl _$$ValidationResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationResultImpl(
      isValid: json['isValid'] as bool? ?? true,
      issues: (json['issues'] as List<dynamic>?)
              ?.map((e) =>
                  ValidationIssue.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const [],
      fieldIssues: (json['fieldIssues'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map((e) => ValidationIssue.fromJson(
                            (e as Map<String, dynamic>).map(
                          (k, e) => MapEntry(k, e as Object),
                        )))
                    .toList()),
          ) ??
          const {},
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
    );

Map<String, dynamic> _$$ValidationResultImplToJson(
        _$ValidationResultImpl instance) =>
    <String, dynamic>{
      'isValid': instance.isValid,
      'issues': instance.issues,
      'fieldIssues': instance.fieldIssues,
      'metadata': instance.metadata,
    };
