abstract class IRemoteStorage {
  Future<Map<String, Object>> getDocument(String id);
  Future<void> setDocument(String id, Map<String, Object> data);
}
