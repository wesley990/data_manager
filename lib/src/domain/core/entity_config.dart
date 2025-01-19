import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_config.freezed.dart';
part 'entity_config.g.dart';

@freezed
class EntityConfig with _$EntityConfig {
  const factory EntityConfig({
    // Path limits
    @Default(1024) int maxPathLength,
    @Default(255) int maxPathSegment,
    @Default(10) int maxHierarchyDepth,
    
    // History limits
    @Default(50) int maxHistorySize,
    @Default(50) int defaultHistorySize,

    // Lock settings
    @Default(Duration(minutes: 15)) Duration defaultLockTimeout,
    @Default(Duration(minutes: 5)) Duration lockExtensionPeriod,
    @Default(Duration(seconds: 30)) Duration minLockDuration,
    @Default(Duration(hours: 24)) Duration maxLockDuration,

    // Entity defaults
    @Default('1.0.0') String defaultVersion,
    @Default(true) bool defaultIsPublic,
    @Default('medium') String defaultPriority,
    @Default('draft') String defaultStage,
    
    // Path settings
    @Default('/') String pathSeparator,
    @Default(r'[<>:"|?*\x00-\x1F]') String invalidPathChars,
  }) = _EntityConfig;

  factory EntityConfig.fromJson(Map<String, Object?> json) =>
      _$EntityConfigFromJson(json);
}
