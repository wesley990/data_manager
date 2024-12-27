class PreferencesConfig {
  static const String cachePrefix = 'cache_';

  static const List<String> entityTypes = [
    'owners',
    'sites',
    'equipment',
    'vendors',
    'personnel',
  ];

  static List<String> get allowedKeys =>
      entityTypes.map((type) => '$cachePrefix$type').toList();

  static bool isValidCacheKey(String key) => allowedKeys.contains(key);
}
