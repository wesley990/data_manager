import 'package:data_manager/src/application/services/i_storage_service.dart';
import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesServiceImpl implements IStorageService {
  final Logger _logger = Logger('PreferencesService');
  final Future<SharedPreferences> _preferences;

  PreferencesServiceImpl({Future<SharedPreferences>? preferences})
      : _preferences = preferences ?? SharedPreferences.getInstance();

  @override
  Future<void> save(String key, String value) async {
    try {
      final prefs = await _preferences;
      await prefs.setString(key, value);
      _logger.fine('Saved value for key: $key');
    } catch (e) {
      _logger.severe('Error saving value for key: $key', e);
      rethrow;
    }
  }

  @override
  Future<String?> get(String key) async {
    try {
      final prefs = await _preferences;
      final value = prefs.getString(key);
      _logger.fine('Retrieved value for key: $key');
      return value;
    } catch (e) {
      _logger.severe('Error retrieving value for key: $key', e);
      rethrow;
    }
  }

  @override
  Future<void> remove(String key) async {
    try {
      final prefs = await _preferences;
      await prefs.remove(key);
      _logger.fine('Removed value for key: $key');
    } catch (e) {
      _logger.severe('Error removing value for key: $key', e);
      rethrow;
    }
  }

  @override
  Future<void> clear() async {
    try {
      final prefs = await _preferences;
      await prefs.clear();
      _logger.info('Cleared all preferences');
    } catch (e) {
      _logger.severe('Error clearing preferences', e);
      rethrow;
    }
  }

  // Additional helper methods

  Future<bool> containsKey(String key) async {
    final prefs = await _preferences;
    return prefs.containsKey(key);
  }

  Future<Set<String>> getKeys() async {
    final prefs = await _preferences;
    return prefs.getKeys();
  }

  Future<void> reload() async {
    try {
      final prefs = await _preferences;
      await prefs.reload();
      _logger.info('Preferences reloaded');
    } catch (e) {
      _logger.severe('Error reloading preferences', e);
      rethrow;
    }
  }
}
