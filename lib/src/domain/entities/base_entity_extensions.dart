import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:data_manager/data_manager.dart' hide ValidationException; // Hide validation from data_manager
import 'package:data_manager/src/domain/core/exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_entity_extensions.freezed.dart';
part 'base_entity_extensions.g.dart';

/// Tree Path Management Extension
extension TreePathExtension<T extends Object> on BaseEntity<T> {
  String sanitizePath(String? rawPath) {
    if (rawPath == null || rawPath.isEmpty) return '';

    try {
      final decodedPath = Uri.decodeFull(rawPath);

      if (decodedPath.length > SystemLimits.pathMaxLength) {
        throw FieldValidationException(
          message: 'Path exceeds maximum length',
          field: 'path',
          invalidValue: decodedPath,
          details:
              'Max length: ${SystemLimits.pathMaxLength}, Actual: ${decodedPath.length}',
        );
      }

      final segments = decodedPath
          .split(EntityDefaults.pathSeparator)
          .where((s) => s.isNotEmpty)
          .map(_sanitizePathSegment)
          .where((s) => s.isNotEmpty)
          .toList();

      if (segments.any((s) => s.length > SystemLimits.pathMaxSegment)) {
        throw FieldValidationException(
          message: 'Path segment exceeds maximum length',
          field: 'path',
          invalidValue: segments
              .firstWhere((s) => s.length > SystemLimits.pathMaxSegment),
          details: 'Max segment length: ${SystemLimits.pathMaxSegment}',
        );
      }

      return segments.isEmpty
          ? ''
          : '${EntityDefaults.pathSeparator}${segments.join(EntityDefaults.pathSeparator)}${EntityDefaults.pathSeparator}';
    } catch (e) {
      throw PathValidationException(
        message: 'Invalid path format',
        path: rawPath,
        details: e.toString(),
      );
    }
  }

  String _sanitizePathSegment(String segment) {
    final cleaned =
        segment.replaceAll(RegExp(EntityDefaults.invalidPathChars), '');
    final trimmed = cleaned.trim().replaceAll(RegExp(r'^\.+|\.+$'), '');
    return Uri.encodeComponent(trimmed).replaceAll(
        EntityDefaults.encodedPathSeparator, EntityDefaults.pathSeparator);
  }

  bool isPathValid(String? path) {
    if (path == null) return true;
    try {
      return sanitizePath(path) == path;
    } catch (_) {
      return false;
    }
  }

  List<String> splitPath(String? path) {
    return sanitizePath(path)
        .split(EntityDefaults.pathSeparator)
        .where((s) => s.isNotEmpty)
        .toList();
  }

  String get canonicalPath => treePath?.toLowerCase() ?? id.value;
  List<String> get pathParts =>
      treePath?.split(EntityDefaults.pathSeparator) ?? [id.value];
  List<String> get ancestorPaths => splitPath(treePath);

  String get absolutePath {
    final basePath = treePath ?? '';
    final entityPart = id.value;
    return sanitizePath('$basePath${EntityDefaults.pathSeparator}$entityPart');
  }

  List<String> buildTreePaths() {
    final paths = <String>[];
    final parts = treePath?.split(EntityDefaults.pathSeparator) ?? [];
    String currentPath = '';

    for (final part in parts) {
      currentPath = currentPath.isEmpty
          ? part
          : '$currentPath${EntityDefaults.pathSeparator}$part';
      paths.add(currentPath);
    }

    return paths;
  }
}

// Global type aliases
typedef EntityVersionVector = Map<String, int>;
typedef EntityLockMetadata = Map<String, dynamic>;
typedef EntityEventMeta = Map<String, Object>;
typedef EntitySearchIndex = Map<String, Object>;

// System-wide constants
abstract class SystemLimits {
  static const pathMaxLength = 1024;
  static const pathMaxSegment = 255;
  static const hierarchyDepthMax = 10;
  static const historyMax = 50;
  static const historyDefault = 50;
}

// Entity-specific defaults
abstract class EntityDefaults {
  static const version = '1.0.0';
  static const status = EntityStatus.active;
  static const priority = Priority.medium;
  static const stage = WorkflowStage.draft;
  static const isPublic = true;
  static const accessCount = 0;

  // Path related
  static const pathSeparator = '/';
  static const encodedPathSeparator = '%2F';
  static const invalidPathChars = r'[<>:"|?*\x00-\x1F]';
}

// Lock-related configurations
abstract class LockConfig {
  static const defaultTimeout = Duration(minutes: 15);
  static const extensionPeriod = Duration(minutes: 5);
  static const minimumDuration = Duration(seconds: 30);
  static const maximumDuration = Duration(hours: 24);
}

@Freezed(genericArgumentFactories: true)
class BaseEntity<T extends Object> with _$BaseEntity<T> {
  const BaseEntity._();

  const factory BaseEntity({
    // Core entity data
    required CoreEntity<T> core,

    // Hierarchical Structure
    String? treePath,
    @Default(0) int treeDepth,
    @Default([]) List<EntityId> ancestors,
    EntityId? parentId,
    @Default([]) List<EntityId> childIds,
    @Default(true) bool isHierarchyRoot,
    @Default(true) bool isHierarchyLeaf,
    @Default({}) Map<String, Object> hierarchyMeta,

    // Access Control & Security
    UserAction? lastAccessor,
    UserAction? lockOwner,
    DateTime? lockExpiry,
    UserAction? remover,
    @Default([]) List<UserAction> modHistory,
    @Default([]) List<UserAction> accessLog,
    @Default(EntityDefaults.isPublic) bool isPublic,
    @Default(EntityDefaults.accessCount) int accessCount,

    // Classification & Metadata
    @Default([]) List<String> tags,
    @Default({}) Map<String, String> labels,
    @Default(EntityDefaults.priority) Priority priority,
    @Default(EntityDefaults.stage) WorkflowStage stage,
    DateTime? expiryDate,

    // Synchronization & Versioning
    @Default({}) Map<String, Object> syncMeta,
    String? syncVer,
    @Default({}) Map<String, Object> searchIndex,
    T? extraData,
    @Default(0) int eventVer,
    @Default([]) List<String> pendingEvents,
    @Default({}) Map<String, Object> eventMeta,
    @Default(SystemLimits.historyDefault) int historyLimit,
    @Default(1) int dataVer,
    @Default(1) int structVer,
    String? lastVer,

    // Distributed Systems
    String? distLockId,
    DateTime? distLockExpiry,
    String? distLockNode,
    @Default({}) Map<String, dynamic> lockMeta,
    @Default({}) Map<String, int> verVectors,
    @Default(LockConfig.defaultTimeout) Duration lockTimeout,

    // AI & Machine Learning
    @Default({}) Map<String, List<double>> aiVectors,
    @Default({}) Map<String, double> aiScores,
    @Default({}) Map<String, String> aiMeta,
    @Default([]) List<String> aiTags,
    @Default({}) Map<String, Object> aiNotes,
    DateTime? aiLastRun,
    String? aiVer,
  }) = _BaseEntity<T>;

  // Delegate core properties
  EntityId get id => core.id;
  String get name => core.name;
  String? get description => core.description;
  DateTime get createdAt => core.createdAt;
  DateTime get updatedAt => core.updatedAt;
  String get schemaVer => core.schemaVer;
  EntityStatus get status => core.status;
  Map<String, Object> get meta => core.meta;
  UserAction get owner => core.owner;
  UserAction get creator => core.creator;
  UserAction get modifier => core.modifier;

  // Hierarchy properties - direct instead of delegated
  bool get isRoot => isHierarchyRoot;
  bool get isLeaf => isHierarchyLeaf;
  String? get parentPath => parentId?.value;

  // Factory method with configuration
  factory BaseEntity.create({
    required EntityId id,
    required String name,
    required UserAction owner,
    required T data,
    EntityConfig? config,
  }) {
    final now = DateTime.now();
    return BaseEntity(
      core: CoreEntity(
        id: id,
        name: name,
        createdAt: now,
        updatedAt: now,
        owner: owner,
        creator: owner,
        modifier: owner,
        data: data,
      ),
      // Initialize hierarchy fields directly
      treePath: id.value,
      treeDepth: 0,
      isHierarchyRoot: true,
      isHierarchyLeaf: true,
      hierarchyMeta: {
        'created': now.toIso8601String(),
        'pathType': 'root',
      },
    );
  }

  // Core getters
  String get uid => id.value;
  String get type => T.toString();
  bool get isTreeRoot => treePath == null || treePath == id.value;
  bool get isTreeLeaf => childIds.isEmpty; // Fixed implementation

  // Utility methods
  dynamic getMeta(String key) => meta[key];
  Map<EntityId, String> get ancestorNames => Map.fromEntries(
        ancestors.map(
          (ancestorId) => MapEntry(
            ancestorId,
            meta['ancestor_name_${ancestorId.value}']?.toString() ?? '',
          ),
        ),
      );

  dynamic operator [](String key) {
    return switch (key) {
      'entityId' => id,
      'entityName' => name,
      'entityDescription' => description,
      'status' => status,
      _ => meta[key],
    };
  }
}

@freezed
class EntityMetadata with _$EntityMetadata {
  const EntityMetadata._();

  const factory EntityMetadata({
    required String displayName,
    required String entityType,
    String? description,
    DateTime? lastNameUpdate,
    @Default({}) Map<String, String> searchTerms,
  }) = _EntityMetadata;

  factory EntityMetadata.fromJson(Map<String, Object> json) =>
      _$EntityMetadataFromJson(json);
}

/// Enhanced Hierarchy Management Extension
extension HierarchyExtension<T extends Object> on BaseEntity<T> {
  // Core navigation methods
  List<String> get ancestorPaths => ancestors.map((a) => a.value).toList();
  String get fullPath => treePath ?? id.value;

  bool isAncestorOf(BaseEntity<T> other) => other.ancestors.contains(id);
  bool isDescendantOf(BaseEntity<T> other) => ancestors.contains(other.id);
  bool isRelatedTo(BaseEntity<T> other) =>
      isAncestorOf(other) || isDescendantOf(other);

  // Path validation
  bool hasCircularReference() {
    if (parentId == null) return false;
    return ancestors.contains(id);
  }

  int getDepthTo(BaseEntity<T> ancestor) {
    if (!isDescendantOf(ancestor)) return -1;
    final ancestorIndex = ancestors.indexOf(ancestor.id);
    return ancestors.length - ancestorIndex;
  }

  BaseEntity<T> updateHierarchy({
    required EntityId? newParentId,
    String? newPath,
    List<EntityId>? newAncestors,
    bool validateDepth = true,
  }) {
    if (validateDepth &&
        newAncestors != null &&
        newAncestors.length >= SystemLimits.hierarchyDepthMax) {
      throw HierarchyValidationException(
        message: 'New hierarchy would exceed maximum depth',
        field: 'hierarchy',
        depth: newAncestors.length,
        path: newAncestors.map((a) => a.value).toList(),
      );
    }

    final updatedPath = newPath ?? treePath;
    final updatedAncestors = newAncestors ?? ancestors;
    final existingHistory =
        hierarchyMeta['parent_history'] as List<String>? ?? [];

    return copyWith(
      parentId: newParentId,
      treePath: updatedPath,
      ancestors: updatedAncestors,
      treeDepth: updatedAncestors.length,
      isHierarchyRoot: newParentId == null,
      isHierarchyLeaf: childIds.isEmpty,
      hierarchyMeta: {
        ...hierarchyMeta,
        'last_hierarchy_update': DateTime.now().toIso8601String(),
        'parent_history': [...existingHistory, newParentId?.value ?? 'root'],
      },
    );
  }

  // Child management
  BaseEntity<T> addChild(EntityId childId) {
    if (childIds.contains(childId)) return this;

    final updatedChildren = [...childIds, childId];
    return copyWith(
      childIds: updatedChildren,
      isHierarchyLeaf: false,
      hierarchyMeta: {
        ...hierarchyMeta,
        'children_count': updatedChildren.length,
        'last_child_added': DateTime.now().toIso8601String(),
      },
    );
  }

  BaseEntity<T> removeChild(EntityId childId) {
    if (!childIds.contains(childId)) return this;

    final updatedChildren = childIds.where((id) => id != childId).toList();
    return copyWith(
      childIds: updatedChildren,
      isHierarchyLeaf: updatedChildren.isEmpty,
      hierarchyMeta: {
        ...hierarchyMeta,
        'children_count': updatedChildren.length,
        'last_child_removed': DateTime.now().toIso8601String(),
      },
    );
  }

  // Search indexing
  Map<String, Object> buildHierarchyIndex() {
    return {
      'depth_level': treeDepth,
      'parent_type': parentId?.value ?? 'root',
      'ancestry_path': ancestors.map((a) => a.value).join('|'),
      'child_count': childIds.length,
      'is_leaf': isHierarchyLeaf,
      'is_root': isHierarchyRoot,
      ...hierarchyMeta,
    };
  }
}

/// AI Processing Extension
extension AIExtension<T extends Object> on BaseEntity<T> {
  // Core AI getters
  bool get hasEmbeddings => aiVectors.isNotEmpty;
  bool get hasScores => aiScores.isNotEmpty;

  double? getScore(String modelId) => aiScores[modelId];
  List<double>? getVector(String modelId) => aiVectors[modelId];

  // AI Processing methods
  BaseEntity<T> processWithAI({
    required String modelId,
    required Map<String, dynamic> input,
    required Map<String, dynamic> output,
    List<double>? embeddings,
    double? confidence,
    bool useCache = true,
  }) {
    final timestamp = DateTime.now();
    final newEmbeddings =
        embeddings != null ? {...aiVectors, modelId: embeddings} : aiVectors;

    final cacheKey =
        useCache ? _generateCacheKey(modelId, input.toString()) : null;
    final newMeta = {
      ...aiMeta,
      if (cacheKey != null)
        'cache_$cacheKey': json.encode({
          'output': output,
          'timestamp': timestamp.toIso8601String(),
          'confidence': confidence,
          'model_version': aiVer,
        }),
    };

    return copyWith(
      aiVectors: newEmbeddings,
      aiMeta: newMeta,
      aiScores: {...aiScores, if (confidence != null) modelId: confidence},
      aiLastRun: timestamp,
    );
  }

  // Cache management
  Map<String, dynamic>? getCachedResult(
      String modelId, Map<String, dynamic> input,
      {bool requireLatestVersion = false}) {
    final cacheKey = _generateCacheKey(modelId, input.toString());
    final cached = aiMeta['cache_$cacheKey'];

    if (cached == null) return null;

    final result = json.decode(cached) as Map<String, dynamic>;

    if (requireLatestVersion) {
      final cachedVersion = result['model_version'];
      if (cachedVersion != aiVer) return null;
    }

    return result;
  }

  String _generateCacheKey(String modelId, String input) {
    final hash = sha256.convert(utf8.encode(input)).toString();
    return '$modelId:$hash';
  }
}

/// History Management Extension
extension HistoryExtension<T extends Object> on BaseEntity<T> {
  static const _historyMaxSize = 50;

  BaseEntity<T> recordAction(UserAction action, {bool isAccessAction = false}) {
    final history = isAccessAction ? accessLog : modHistory;
    final updatedHistory = [action, ...history.take(_historyMaxSize - 1)];

    return copyWith(
      accessLog: isAccessAction ? updatedHistory : accessLog,
      modHistory: isAccessAction ? modHistory : updatedHistory,
    );
  }

  BaseEntity<T> pruneHistory() {
    return copyWith(
      accessLog: accessLog.take(_historyMaxSize).toList(),
      modHistory: modHistory.take(_historyMaxSize).toList(),
    );
  }
}

/// Version Control Extension
extension VersionControlExtension<T extends Object> on BaseEntity<T> {
  // Combine version management and locking
  bool hasValidVersion() {
    try {
      final parts = schemaVer.split('.');
      return parts.length == 3 && parts.every((p) => int.tryParse(p) != null);
    } catch (_) {
      return false;
    }
  }

  BaseEntity<T> incrementVersion({bool isStructural = false, String? nodeId}) {
    return copyWith(
      dataVer: isStructural ? dataVer : dataVer + 1,
      structVer: isStructural ? structVer + 1 : structVer,
      verVectors: {
        ...verVectors,
        'node-${nodeId ?? "local"}': dataVer + 1,
      },
    );
  }

  bool hasConflict(BaseEntity<T> other) =>
      structVer != other.structVer ||
      dataVer != other.dataVer ||
      _hasVersionVectorConflict(other) ||
      hasLockConflict(other);

  bool _hasVersionVectorConflict(BaseEntity<T> other) =>
      verVectors.entries.any((entry) =>
          other.verVectors[entry.key] != null &&
          entry.value > other.verVectors[entry.key]!);

  BaseEntity<T> updateWithConflictResolution(BaseEntity<T> serverVersion) {
    final comparison = _compareVersions(schemaVer, serverVersion.schemaVer);
    if (comparison > 0) {
      return copyWith(
        syncMeta: {
          ...syncMeta,
          'conflictResolved': 'localWins',
          'serverVersion': serverVersion.schemaVer,
        },
      );
    } else if (comparison < 0) {
      return serverVersion.copyWith(
        syncMeta: {
          ...serverVersion.syncMeta,
          'conflictResolved': 'serverWins',
          'localVersion': schemaVer,
        },
      );
    }
    return this;
  }

  int _compareVersions(String v1, String v2) {
    final v1Parts = v1.split('.').map(int.parse).toList();
    final v2Parts = v2.split('.').map(int.parse).toList();
    for (var i = 0; i < 3; i++) {
      if (v1Parts[i] != v2Parts[i]) {
        return v1Parts[i].compareTo(v2Parts[i]);
      }
    }
    return 0;
  }
}

/// Lock Management Extension
extension LockExtension<T extends Object> on BaseEntity<T> {
  bool get isLockActive =>
      lockOwner != null && (lockExpiry?.isAfter(DateTime.now()) ?? false);

  Duration _normalizeLockDuration(Duration duration) {
    if (duration < LockConfig.minimumDuration) {
      return LockConfig.minimumDuration;
    }
    if (duration > LockConfig.maximumDuration) {
      return LockConfig.maximumDuration;
    }
    return duration;
  }

  bool hasLockConflict(BaseEntity<T> other) {
    return distLockId != null &&
        other.distLockId != null &&
        distLockId != other.distLockId;
  }

  BaseEntity<T> setLock(
    UserAction user, {
    Duration? duration,
    bool isDistributed = false,
    String? nodeId,
  }) {
    final lockDuration =
        _normalizeLockDuration(duration ?? LockConfig.defaultTimeout);

    return copyWith(
      lockOwner: user,
      lockExpiry: DateTime.now().add(lockDuration),
      distLockId: isDistributed
          ? '${id.value}-$nodeId-${DateTime.now().millisecondsSinceEpoch}'
          : null,
      distLockNode: isDistributed ? nodeId : null,
    );
  }
}

/// Tree Path Management Methods
extension PathManagementExtension<T extends Object> on BaseEntity<T> {
  Map<String, Object> buildTreeIndex() {
    return {
      'depth_name': '${treeDepth}_${name.toLowerCase()}',
      'parent_type': parentId?.value ?? 'root',
      'ancestry': ancestors.map((e) => e.value).join('|'),
    };
  }
}
