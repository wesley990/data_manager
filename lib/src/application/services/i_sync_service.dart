abstract class ISyncService {
  void startPeriodicSync({Duration period});
  Future<void> syncAll();
  void dispose();
}
