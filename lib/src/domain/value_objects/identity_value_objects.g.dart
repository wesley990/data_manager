// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_value_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntityIdImpl _$$EntityIdImplFromJson(Map<String, dynamic> json) =>
    _$EntityIdImpl(
      json['value'] as String,
    );

Map<String, dynamic> _$$EntityIdImplToJson(_$EntityIdImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$EventIdImpl _$$EventIdImplFromJson(Map<String, dynamic> json) =>
    _$EventIdImpl(
      json['value'] as String,
    );

Map<String, dynamic> _$$EventIdImplToJson(_$EventIdImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$ReferenceNumberImpl _$$ReferenceNumberImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferenceNumberImpl(
      prefix: json['prefix'] as String,
      sequence: (json['sequence'] as num).toInt(),
      suffix: json['suffix'] as String?,
    );

Map<String, dynamic> _$$ReferenceNumberImplToJson(
        _$ReferenceNumberImpl instance) =>
    <String, dynamic>{
      'prefix': instance.prefix,
      'sequence': instance.sequence,
      'suffix': instance.suffix,
    };
