// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntityMetadataImpl _$$EntityMetadataImplFromJson(Map<String, dynamic> json) =>
    _$EntityMetadataImpl(
      displayName: json['displayName'] as String,
      entityType: json['entityType'] as String,
      description: json['description'] as String?,
      lastNameUpdate: json['lastNameUpdate'] == null
          ? null
          : DateTime.parse(json['lastNameUpdate'] as String),
      searchTerms: (json['searchTerms'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$EntityMetadataImplToJson(
        _$EntityMetadataImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'entityType': instance.entityType,
      'description': instance.description,
      'lastNameUpdate': instance.lastNameUpdate?.toIso8601String(),
      'searchTerms': instance.searchTerms,
    };
