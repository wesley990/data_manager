import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:data_manager/data_manager.dart';

part 'core_entity.freezed.dart';
part 'core_entity.g.dart';

@Freezed(genericArgumentFactories: true)
class CoreEntityDto<T extends Object> with _$CoreEntityDto<T> {
  const CoreEntityDto._();

  const factory CoreEntityDto({
    required EntityId id,
    required String name,
    String? description,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(EntityDefaults.version) String schemaVer,
    @Default(EntityDefaults.status) EntityStatus status,
    @Default({}) Map<String, Object> meta,
    required UserAction owner,
    required UserAction creator,
    required UserAction modifier,
    T? data,
  }) = _CoreEntityDto<T>;

  factory CoreEntityDto.fromJson(
    Map<String, Object> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$CoreEntityDtoFromJson(json, fromJsonT);

  String get uid => id.value;
  String get type => T.toString();

  dynamic getMeta(String key) => meta[key];

  dynamic operator [](String key) {
    return switch (key) {
      'entityId' => id,
      'entityName' => name,
      'entityDescription' => description,
      'status' => status,
      _ => meta[key],
    };
  }
}
