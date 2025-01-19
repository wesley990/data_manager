// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntityConfigImpl _$$EntityConfigImplFromJson(Map<String, dynamic> json) =>
    _$EntityConfigImpl(
      maxPathLength: (json['maxPathLength'] as num?)?.toInt() ?? 1024,
      maxPathSegment: (json['maxPathSegment'] as num?)?.toInt() ?? 255,
      maxHierarchyDepth: (json['maxHierarchyDepth'] as num?)?.toInt() ?? 10,
      maxHistorySize: (json['maxHistorySize'] as num?)?.toInt() ?? 50,
      defaultHistorySize: (json['defaultHistorySize'] as num?)?.toInt() ?? 50,
      defaultLockTimeout: json['defaultLockTimeout'] == null
          ? const Duration(minutes: 15)
          : Duration(microseconds: (json['defaultLockTimeout'] as num).toInt()),
      lockExtensionPeriod: json['lockExtensionPeriod'] == null
          ? const Duration(minutes: 5)
          : Duration(
              microseconds: (json['lockExtensionPeriod'] as num).toInt()),
      minLockDuration: json['minLockDuration'] == null
          ? const Duration(seconds: 30)
          : Duration(microseconds: (json['minLockDuration'] as num).toInt()),
      maxLockDuration: json['maxLockDuration'] == null
          ? const Duration(hours: 24)
          : Duration(microseconds: (json['maxLockDuration'] as num).toInt()),
      defaultVersion: json['defaultVersion'] as String? ?? '1.0.0',
      defaultIsPublic: json['defaultIsPublic'] as bool? ?? true,
      defaultPriority: json['defaultPriority'] as String? ?? 'medium',
      defaultStage: json['defaultStage'] as String? ?? 'draft',
      pathSeparator: json['pathSeparator'] as String? ?? '/',
      invalidPathChars:
          json['invalidPathChars'] as String? ?? r'[<>:"|?*\x00-\x1F]',
    );

Map<String, dynamic> _$$EntityConfigImplToJson(_$EntityConfigImpl instance) =>
    <String, dynamic>{
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
      'defaultPriority': instance.defaultPriority,
      'defaultStage': instance.defaultStage,
      'pathSeparator': instance.pathSeparator,
      'invalidPathChars': instance.invalidPathChars,
    };
