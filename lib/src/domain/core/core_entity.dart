import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:data_manager/data_manager.dart';

part 'core_entity.freezed.dart';
part 'core_entity.g.dart';

@Freezed(genericArgumentFactories: true)
class CoreEntity<T extends Object> with _$CoreEntity<T> {
  const CoreEntity._();

  const factory CoreEntity({
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
  }) = _CoreEntity<T>;

  factory CoreEntity.fromJson(
    Map<String, Object> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$CoreEntityFromJson(json, fromJsonT);

  String get uid => id.value;
  String get type => data?.runtimeType.toString() ?? T.toString();

  T? get(String key) => meta.containsKey(key)
      ? () {
          try {
            return meta[key] as T;
          } catch (e) {
            debugPrint('Type cast error for key "$key": $e');
            return null;
          }
        }()
      : null;

  Object? operator [](String key) {
    return switch (key) {
      'entityId' => id.value,
      'entityName' => name,
      'entityDescription' => description,
      'status' => status,
      'createdAt' => createdAt,
      'updatedAt' => updatedAt,
      'schemaVer' => schemaVer,
      'owner' => owner,
      'creator' => creator,
      'modifier' => modifier,
      'data' => data,
      'meta' => meta,
      _ => meta[key],
    };
  }
}
