import 'package:data_manager/src/data/services/network/connectivity_service_impl.dart';

abstract class IConnectivityService {
  Stream<(bool, ConnectionQuality)> get connectivityStatus;
  Future<bool> isOnline();
  Future<ConnectionQuality> checkConnectionQuality();
  void dispose();
}
