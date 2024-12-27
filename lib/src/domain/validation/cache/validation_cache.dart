import 'package:data_manager/data_manager.dart';

class ValidationCacheEntry {
  final ValidationResult result;
  final DateTime timestamp;
  final String hash;

  ValidationCacheEntry({
    required this.result,
    required this.timestamp,
    required this.hash,
  });

  bool isValid(Duration duration) =>
      DateTime.now().difference(timestamp) < duration;
}

class ValidationCache {
  final Map<String, ValidationCacheEntry> _cache = {};
  final int maxEntries;

  ValidationCache({
    this.maxEntries = 1000,
  });

  ValidationResult? get(
    String key,
    String hash,
    Duration duration,
  ) {
    final entry = _cache[key];
    if (entry == null) return null;

    if (entry.hash != hash || !entry.isValid(duration)) {
      _cache.remove(key);
      return null;
    }

    return entry.result;
  }

  void set(
    String key,
    ValidationResult result,
    String hash,
  ) {
    _ensureCapacity();
    _cache[key] = ValidationCacheEntry(
      result: result,
      timestamp: DateTime.now(),
      hash: hash,
    );
  }

  void _ensureCapacity() {
    if (_cache.length >= maxEntries) {
      // Remove oldest entries
      final sorted = _cache.entries.toList()
        ..sort((a, b) => a.value.timestamp.compareTo(b.value.timestamp));

      for (var i = 0; i < sorted.length / 2; i++) {
        _cache.remove(sorted[i].key);
      }
    }
  }

  void clear() => _cache.clear();
  void remove(String key) => _cache.remove(key);
}
