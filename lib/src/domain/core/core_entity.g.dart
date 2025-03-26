// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoreEntity<T> _$CoreEntityFromJson<T extends Object>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _CoreEntity<T>(
  id: EntityId.fromJson(
    (json['id'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e as Object),
    ),
  ),
  name: json['name'] as String,
  description: json['description'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  schemaVer: json['schemaVer'] as String? ?? EntityDefaults.version,
  status:
      $enumDecodeNullable(_$EntityStatusEnumMap, json['status']) ??
      EntityDefaults.status,
  meta:
      (json['meta'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ) ??
      const {},
  owner: UserAction.fromJson(
    (json['owner'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e as Object),
    ),
  ),
  creator: UserAction.fromJson(
    (json['creator'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e as Object),
    ),
  ),
  modifier: UserAction.fromJson(
    (json['modifier'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e as Object),
    ),
  ),
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
);

Map<String, dynamic> _$CoreEntityToJson<T extends Object>(
  _CoreEntity<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'schemaVer': instance.schemaVer,
  'status': _$EntityStatusEnumMap[instance.status]!,
  'meta': instance.meta,
  'owner': instance.owner,
  'creator': instance.creator,
  'modifier': instance.modifier,
  'data': _$nullableGenericToJson(instance.data, toJsonT),
};

const _$EntityStatusEnumMap = {
  EntityStatus.active: 'active',
  EntityStatus.inactive: 'inactive',
  EntityStatus.archived: 'archived',
  EntityStatus.deleted: 'deleted',
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);
