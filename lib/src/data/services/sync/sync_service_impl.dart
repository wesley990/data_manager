import 'dart:async';

import 'package:data_manager/src/application/services/i_sync_service.dart';
import 'package:data_manager/src/presentation/bloc/entity_bloc.dart';
import 'package:data_manager/src/data/services/network/connectivity_service_impl.dart';

class SyncServiceImpl implements ISyncService {
  final List<EntityBloc> blocs;
  final ConnectivityServiceImpl _connectivityService;
  Timer? _syncTimer;

  SyncServiceImpl({
    required this.blocs,
    required ConnectivityServiceImpl connectivityService,
  }) : _connectivityService = connectivityService;

  @override
  void startPeriodicSync({Duration period = const Duration(minutes: 15)}) {
    _syncTimer?.cancel();
    _syncTimer = Timer.periodic(period, (_) => syncAll());
  }

  @override
  Future<void> syncAll() async {
    if (await _connectivityService.isOnline()) {
      for (final bloc in blocs) {
        bloc.add(SyncEntities());
      }
    }
  }

  @override
  void dispose() {
    _syncTimer?.cancel();
  }
}
