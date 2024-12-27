abstract class ILocalStorage {
  Future<void> save(String key, String value);
  String? get(String key);
}
