import 'package:data_manager/data_manager.dart';

/// Service for managing locks and distributed locking
class LockService {
  final EntityConfig config;
  
  const LockService({required this.config});

  bool isLocked(UserAction? owner, DateTime? expiry) {
    return owner != null && (expiry?.isAfter(DateTime.now()) ?? false);
  }

  Duration normalizeLockDuration(Duration duration) {
    if (duration < config.minLockDuration) return config.minLockDuration;
    if (duration > config.maxLockDuration) return config.maxLockDuration;
    return duration;
  }

  bool hasLockConflict(String? currentLockId, String? otherLockId) {
    return currentLockId != null &&
           otherLockId != null &&
           currentLockId != otherLockId;
  }

  String? generateDistributedLockId(
    EntityId entityId,
    String? nodeId,
    bool isDistributed,
  ) {
    if (!isDistributed) return null;
    return '${entityId.value}-$nodeId-${DateTime.now().millisecondsSinceEpoch}';
  }
}
