import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_value_objects.freezed.dart';

@freezed
class TimeWindow with _$TimeWindow {
  const factory TimeWindow({
    required DateTime start,
    required DateTime end,
  }) = _TimeWindow;

  const TimeWindow._();

  Duration get duration => end.difference(start);
  bool contains(DateTime time) => time.isAfter(start) && time.isBefore(end);
  bool isActive() =>
      DateTime.now().isAfter(start) && DateTime.now().isBefore(end);
}

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required TimeWindow window,
    @Default([]) List<DateTime> breakTimes,
    @Default(Duration.zero) Duration bufferTime,
  }) = _Schedule;

  const Schedule._();

  bool isAvailable(DateTime time) {
    if (!window.contains(time)) return false;
    return !breakTimes.any((break_) =>
        time.isAtSameMomentAs(break_) ||
        time.difference(break_).abs() < bufferTime);
  }
}
