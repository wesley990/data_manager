import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:data_manager/src/application/services/i_connectivity_service.dart';
import 'package:logging/logging.dart';
import 'dart:async';

enum ConnectionQuality { none, poor, good, excellent }

class ConnectivityServiceImpl implements IConnectivityService {
  final Connectivity _connectivity;
  final Logger _logger = Logger('ConnectivityService');
  bool _lastKnownStatus = false;
  ConnectionQuality _lastKnownQuality = ConnectionQuality.none;

  static const int _maxRetries = 3;
  static const Duration _initialRetryDelay = Duration(seconds: 1);

  ConnectivityServiceImpl({Connectivity? connectivity})
    : _connectivity = connectivity ?? Connectivity() {
    _initializeLogging();
  }

  void _initializeLogging() {
    Logger.root.level = Level.INFO;
    Logger.root.onRecord.listen((record) {
      debugPrint('${record.level.name}: ${record.time}: ${record.message}');
    });
  }

  @override
  Stream<(bool, ConnectionQuality)> get connectivityStatus {
    return _connectivity.onConnectivityChanged
        .distinct()
        .asyncMap(
          (status) => _checkConnectionWithQuality(status as ConnectivityResult),
        )
        .map((result) {
          _lastKnownStatus = result.$1;
          _lastKnownQuality = result.$2;
          _logger.info(
            'Connectivity changed: online=${result.$1}, quality=${result.$2}',
          );
          return result;
        });
  }

  @override
  Future<bool> isOnline() async {
    return _withRetry(() async {
      final result = await _connectivity.checkConnectivity();
      _lastKnownStatus = result.any(
        (status) => status != ConnectivityResult.none,
      );
      _logger.info('Connectivity check: online=$_lastKnownStatus');
      return _lastKnownStatus;
    });
  }

  @override
  Future<ConnectionQuality> checkConnectionQuality() async {
    try {
      final latency = await _measureLatency();
      final quality = _determineQuality(latency);
      _lastKnownQuality = quality;
      _logger.info(
        'Connection quality check: $quality (latency: ${latency}ms)',
      );
      return quality;
    } catch (e) {
      _logger.warning('Failed to check connection quality: $e');
      return _lastKnownQuality;
    }
  }

  Future<T> _withRetry<T>(Future<T> Function() operation) async {
    var delay = _initialRetryDelay;
    for (var i = 0; i < _maxRetries; i++) {
      try {
        return await operation();
      } catch (e) {
        if (i == _maxRetries - 1) rethrow;
        _logger.warning(
          'Operation failed, attempting retry ${i + 1}/$_maxRetries: $e',
        );
        await Future.delayed(delay);
        delay *= 2; // Exponential backoff
      }
    }
    throw Exception('Retry attempts exhausted');
  }

  Future<(bool, ConnectionQuality)> _checkConnectionWithQuality(
    ConnectivityResult status,
  ) async {
    final isOnline = status != ConnectivityResult.none;
    final quality =
        isOnline ? await checkConnectionQuality() : ConnectionQuality.none;
    return (isOnline, quality);
  }

  Future<int> _measureLatency() async {
    // Implement actual latency measurement here
    // Example: ping a reliable server multiple times and average
    final stopwatch = Stopwatch()..start();
    try {
      await _withRetry(
        () => Future.delayed(Duration(milliseconds: 100)),
      ); // Placeholder
      return stopwatch.elapsedMilliseconds;
    } finally {
      stopwatch.stop();
    }
  }

  ConnectionQuality _determineQuality(int latency) {
    if (latency < 100) return ConnectionQuality.excellent;
    if (latency < 300) return ConnectionQuality.good;
    return ConnectionQuality.poor;
  }

  @override
  void dispose() {
    _logger.info('Disposing ConnectivityService');
  }
}
