import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'identity_value_objects.freezed.dart';
part 'identity_value_objects.g.dart';

@freezed
sealed class EntityId with _$EntityId {
  const factory EntityId(String value) = _EntityId;

  factory EntityId.generate() => EntityId(const Uuid().v4());

  const EntityId._();

  // Add utility methods
  bool get isEmpty => value.isEmpty;
  bool get isNotEmpty => value.isNotEmpty;

  @override
  String toString() => value;


  factory EntityId.fromJson(Map<String, Object> json) =>
      _$EntityIdFromJson(json);
}

@freezed
sealed class EventId with _$EventId {
  const factory EventId(String value) = _EventId;

  factory EventId.generate() => EventId(const Uuid().v4());

  const EventId._();

  bool get isEmpty => value.isEmpty;
  bool get isNotEmpty => value.isNotEmpty;

  @override
  String toString() => value;


  factory EventId.fromJson(Map<String, Object> json) => _$EventIdFromJson(json);
}

@freezed
sealed class ReferenceNumber with _$ReferenceNumber {
  const factory ReferenceNumber({
    required String prefix,
    required int sequence,
    String? suffix,
  }) = _ReferenceNumber;

  const ReferenceNumber._();

  String get formatted =>
      '$prefix-$sequence${suffix != null ? '-$suffix' : ''}';

  static ReferenceNumber parse(String value) {
    final parts = value.split('-');
    return ReferenceNumber(
      prefix: parts[0],
      sequence: int.parse(parts[1]),
      suffix: parts.length > 2 ? parts[2] : null,
    );
  }

  factory ReferenceNumber.fromJson(Map<String, Object?> json) =>
      _$ReferenceNumberFromJson(json);
}
