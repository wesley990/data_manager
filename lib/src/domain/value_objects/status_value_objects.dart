import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_value_objects.freezed.dart';

@freezed
sealed class Progress with _$Progress {
  const factory Progress({
    required int completed,
    required int total,
    String? status,
    String? message,
  }) = _Progress;

  const Progress._();

  double get percentage => (completed / total) * 100;
  bool get isComplete => completed == total;
  String get formatted => '${percentage.toStringAsFixed(1)}%';
}

@freezed
sealed class TaskStatus with _$TaskStatus {
  const factory TaskStatus({
    required String status,
    required DateTime timestamp,
    String? notes,
    @Default(false) bool isBlocking,
  }) = _TaskStatus;

  const TaskStatus._();

  Duration get age => DateTime.now().difference(timestamp);
  bool get isRecent => age.inHours < 24;
}
