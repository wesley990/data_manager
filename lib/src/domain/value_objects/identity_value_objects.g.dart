// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity_value_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EntityId _$EntityIdFromJson(Map<String, dynamic> json) =>
    _EntityId(json['value'] as String);

Map<String, dynamic> _$EntityIdToJson(_EntityId instance) => <String, dynamic>{
  'value': instance.value,
};

_EventId _$EventIdFromJson(Map<String, dynamic> json) =>
    _EventId(json['value'] as String);

Map<String, dynamic> _$EventIdToJson(_EventId instance) => <String, dynamic>{
  'value': instance.value,
};

_ReferenceNumber _$ReferenceNumberFromJson(Map<String, dynamic> json) =>
    _ReferenceNumber(
      prefix: json['prefix'] as String,
      sequence: (json['sequence'] as num).toInt(),
      suffix: json['suffix'] as String?,
    );

Map<String, dynamic> _$ReferenceNumberToJson(_ReferenceNumber instance) =>
    <String, dynamic>{
      'prefix': instance.prefix,
      'sequence': instance.sequence,
      'suffix': instance.suffix,
    };
