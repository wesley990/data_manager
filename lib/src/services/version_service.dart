import 'package:data_manager/data_manager.dart';

/// Service for managing version control and conflict resolution
class VersionService {
  bool isValidVersionFormat(String version) {
    try {
      final parts = version.split('.');
      return parts.length == 3 && parts.every((p) => int.tryParse(p) != null);
    } catch (_) {
      return false;
    }
  }

  bool hasVersionConflict(
    int structVer,
    int dataVer,
    Map<String, int> verVectors,
    BaseEntityModel other,
  ) {
    return structVer != other.structVer ||
           dataVer != other.dataVer ||
           hasVersionVectorConflict(verVectors, other.verVectors);
  }

  bool hasVersionVectorConflict(
    Map<String, int> currentVectors,
    Map<String, int> otherVectors,
  ) {
    return currentVectors.entries.any((entry) =>
        otherVectors[entry.key] != null &&
        entry.value > otherVectors[entry.key]!);
  }

  int compareVersions(String v1, String v2) {
    final v1Parts = v1.split('.').map(int.parse).toList();
    final v2Parts = v2.split('.').map(int.parse).toList();
    
    for (var i = 0; i < 3; i++) {
      if (v1Parts[i] != v2Parts[i]) {
        return v1Parts[i].compareTo(v2Parts[i]);
      }
    }
    return 0;
  }

  Map<String, Object> getResolutionMeta(
    Map<String, Object> currentMeta,
    String resolution,
    String otherVersion,
  ) {
    return {
      ...currentMeta,
      'conflictResolved': resolution,
      resolution == 'localWins' ? 'serverVersion' : 'localVersion': otherVersion,
    };
  }
}
