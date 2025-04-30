// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EntityConfig _$EntityConfigFromJson(
  Map<String, dynamic> json,
) => _EntityConfig(
  configVersion:
      json['configVersion'] as String? ?? EntityConfigDefaults.configVersion,
  maxPathLength:
      (json['maxPathLength'] as num?)?.toInt() ??
      EntityConfigDefaults.maxPathLength,
  maxPathSegment:
      (json['maxPathSegment'] as num?)?.toInt() ??
      EntityConfigDefaults.maxPathSegment,
  maxHierarchyDepth:
      (json['maxHierarchyDepth'] as num?)?.toInt() ??
      EntityConfigDefaults.maxHierarchyDepth,
  maxHistorySize:
      (json['maxHistorySize'] as num?)?.toInt() ??
      EntityConfigDefaults.maxHistorySize,
  defaultHistorySize:
      (json['defaultHistorySize'] as num?)?.toInt() ??
      EntityConfigDefaults.defaultHistorySize,
  defaultLockTimeout:
      json['defaultLockTimeout'] == null
          ? EntityConfigDefaults.defaultLockTimeout
          : Duration(microseconds: (json['defaultLockTimeout'] as num).toInt()),
  lockExtensionPeriod:
      json['lockExtensionPeriod'] == null
          ? EntityConfigDefaults.lockExtensionPeriod
          : Duration(
            microseconds: (json['lockExtensionPeriod'] as num).toInt(),
          ),
  minLockDuration:
      json['minLockDuration'] == null
          ? EntityConfigDefaults.minLockDuration
          : Duration(microseconds: (json['minLockDuration'] as num).toInt()),
  maxLockDuration:
      json['maxLockDuration'] == null
          ? EntityConfigDefaults.maxLockDuration
          : Duration(microseconds: (json['maxLockDuration'] as num).toInt()),
  defaultVersion:
      json['defaultVersion'] as String? ?? EntityConfigDefaults.defaultVersion,
  defaultIsPublic:
      json['defaultIsPublic'] as bool? ?? EntityConfigDefaults.defaultIsPublic,
  defaultPriority:
      $enumDecodeNullable(_$EntityPriorityEnumMap, json['defaultPriority']) ??
      EntityConfigDefaults.defaultPriority,
  defaultStage:
      $enumDecodeNullable(_$EntityStageEnumMap, json['defaultStage']) ??
      EntityConfigDefaults.defaultStage,
  pathSeparator:
      json['pathSeparator'] as String? ?? EntityConfigDefaults.pathSeparator,
  invalidPathChars:
      json['invalidPathChars'] as String? ??
      EntityConfigDefaults.invalidPathChars,
);

Map<String, dynamic> _$EntityConfigToJson(_EntityConfig instance) =>
    <String, dynamic>{
      'configVersion': instance.configVersion,
      'maxPathLength': instance.maxPathLength,
      'maxPathSegment': instance.maxPathSegment,
      'maxHierarchyDepth': instance.maxHierarchyDepth,
      'maxHistorySize': instance.maxHistorySize,
      'defaultHistorySize': instance.defaultHistorySize,
      'defaultLockTimeout': instance.defaultLockTimeout.inMicroseconds,
      'lockExtensionPeriod': instance.lockExtensionPeriod.inMicroseconds,
      'minLockDuration': instance.minLockDuration.inMicroseconds,
      'maxLockDuration': instance.maxLockDuration.inMicroseconds,
      'defaultVersion': instance.defaultVersion,
      'defaultIsPublic': instance.defaultIsPublic,
      'defaultPriority': _$EntityPriorityEnumMap[instance.defaultPriority]!,
      'defaultStage': _$EntityStageEnumMap[instance.defaultStage]!,
      'pathSeparator': instance.pathSeparator,
      'invalidPathChars': instance.invalidPathChars,
    };

const _$EntityPriorityEnumMap = {
  EntityPriority.low: 'low',
  EntityPriority.medium: 'medium',
  EntityPriority.high: 'high',
  EntityPriority.critical: 'critical',
};

const _$EntityStageEnumMap = {
  EntityStage.draft: 'draft',
  EntityStage.review: 'review',
  EntityStage.approved: 'approved',
  EntityStage.published: 'published',
  EntityStage.archived: 'archived',
};
