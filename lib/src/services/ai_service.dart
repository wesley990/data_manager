import 'dart:convert';
import 'package:crypto/crypto.dart';

/// Service for managing AI processing and caching
class AIService {
  String generateCacheKey(String modelId, String input) {
    final hash = sha256.convert(utf8.encode(input)).toString();
    return '$modelId:$hash';
  }

  bool hasCachedResult(Map<String, String> aiMeta, String cacheKey) {
    return aiMeta.containsKey('cache_$cacheKey');
  }

  Map<String, dynamic>? getCachedResult(
      Map<String, String> aiMeta, String cacheKey, String? currentVersion,
      {bool requireLatestVersion = false}) {
    final cached = aiMeta['cache_$cacheKey'];
    if (cached == null) return null;

    final result = json.decode(cached) as Map<String, dynamic>;

    if (requireLatestVersion) {
      final cachedVersion = result['model_version'];
      if (cachedVersion != currentVersion) return null;
    }

    return result;
  }

  Map<String, Object> getProcessingMeta({
    required Map<String, Object> currentMeta,
    required String modelId,
    required Map<String, dynamic> input,
    required Map<String, dynamic> output,
    required DateTime timestamp,
    double? confidence,
    String? modelVersion,
    bool useCache = true,
  }) {
    if (!useCache) return currentMeta;

    final cacheKey = generateCacheKey(modelId, input.toString());
    return {
      ...currentMeta,
      'cache_$cacheKey': json.encode({
        'output': output,
        'timestamp': timestamp.toIso8601String(),
        'confidence': confidence,
        'model_version': modelVersion,
      }),
    };
  }
}
