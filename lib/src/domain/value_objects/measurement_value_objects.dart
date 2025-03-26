import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement_value_objects.freezed.dart';

@freezed
sealed class Measurement with _$Measurement {
  const factory Measurement({
    required double value,
    required String unit,
    double? tolerance,
    DateTime? timestamp,
  }) = _Measurement;

  const Measurement._();

  bool isWithinTolerance(double target) {
    if (tolerance == null) return true;
    return (value - target).abs() <= tolerance!;
  }
}

@freezed
sealed class Range<T extends num> with _$Range<T> {
  const factory Range({
    required T min,
    required T max,
  }) = _Range<T>;

  const Range._();

  bool contains(T value) => value >= min && value <= max;
  T get span => max - min as T;
  bool overlaps(Range<T> other) => !(other.max < min || other.min > max);
}
