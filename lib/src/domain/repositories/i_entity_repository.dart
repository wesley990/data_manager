import 'dart:async';
import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/domain/value_objects/user_action.dart';
import 'package:flutter/material.dart';

// Repository interface
abstract class IEntityRepository<T extends Object> {
  // Core operations
  Future<BaseEntity<T>> operate(OperationType type, EntityId id, [Map<String, Object>? params]);
  Future<List<BaseEntity<T>>> batchOperate(OperationType type, List<EntityId> ids, [Map<String, Object>? params]);

  // Query operations
  Future<PagedResult<BaseEntity<T>>> query(QueryParams params);
  Stream<BaseEntity<T>> watchEntity(EntityId id);
  Stream<List<BaseEntity<T>>> watchQuery(QueryParams params);

  // Validation & repair
  Future<ValidationResult> validateBatch(List<EntityId> ids);
  Future<RepairReport> repair(EntityId id, RepairOptions options);

  // Hierarchy & relationships
  Future<List<BaseEntity<T>>> getHierarchy(EntityId id, HierarchyParams params);
  Future<void> addRelation(EntityId sourceId, String type, EntityId targetId);
  Future<void> removeRelation(EntityId sourceId, String type, EntityId targetId);
  Future<List<EntityRelation>> getRelations(EntityId id, {String? type});
  Stream<List<EntityRelation>> watchRelations(EntityId id);

  // Transaction support
  Future<R> transaction<R>(Future<R> Function() operation);

  // Lock management
  Future<bool> acquireLock(EntityId id, UserAction user, {Duration? timeout});
  Future<bool> releaseLock(EntityId id, UserAction user);
  Future<bool> extendLock(EntityId id, UserAction user, Duration extension);
  Future<bool> forceLock(EntityId id, UserAction admin);
  Stream<LockState> watchLockState(EntityId id);

  // Cache management
  Future<void> invalidateCache(EntityId id);
  Future<void> refreshCache();
}

// Unified parameter classes
class QueryParams {
  final Map<String, Object> filters;
  final Map<String, SortOrder> sort;
  final int? limit;
  final int? offset;
  final List<String> include;
  final bool withDeleted;

  QueryParams({
    this.filters = const {},
    this.sort = const {},
    this.limit,
    this.offset,
    this.include = const [],
    this.withDeleted = false,
  });
}

class SearchParams {
  final String query;
  final Map<String, Object> filters;
  final int limit;
  final List<String> fields;

  SearchParams({
    required this.query,
    this.filters = const {},
    this.limit = 10,
    this.fields = const [],
  });
}

class SyncParams {
  final Duration timeout;
  final bool force;
  final List<String> collections;

  SyncParams({
    this.timeout = const Duration(minutes: 5),
    this.force = false,
    this.collections = const [],
  });
}

class HierarchyParams {
  final HierarchyDirection direction;
  final int? maxDepth;
  final bool includeDeleted;

  HierarchyParams({
    required this.direction,
    this.maxDepth,
    this.includeDeleted = false,
  });
}

class WatchParams {
  final EntityId? id;
  final QueryParams? query;
  final Duration debounceTime;

  WatchParams({
    this.id,
    this.query,
    this.debounceTime = const Duration(milliseconds: 500),
  });
}

// Result classes
class PagedResult<T> {
  final List<T> items;
  final int total;
  final int page;
  final int pageSize;

  PagedResult({
    required this.items,
    required this.total,
    required this.page,
    required this.pageSize,
  });
}

class SearchResult<T> {
  final List<T> items;
  final int totalCount;
  final double searchTime;
  final Map<String, Object> facets;

  SearchResult({
    required this.items,
    required this.totalCount,
    required this.searchTime,
    this.facets = const {},
  });
}

class SyncResult {
  final Map<String, Object> stats;
  final List<String> errors;

  SyncResult({
    this.stats = const {},
    this.errors = const [],
  });
}

class SyncProgress {
  final int total;
  final int current;
  final String status;
  final double percentage;

  SyncProgress({
    required this.total,
    required this.current,
    required this.status,
    required this.percentage,
  });
}

// New Options class
class RepairOptions {
  final bool dryRun;
  final ValidationLevel validationLevel;
  final bool recursive;
  final Map<String, Object>? settings;

  const RepairOptions({
    this.dryRun = true,
    this.validationLevel = ValidationLevel.strict,
    this.recursive = false,
    this.settings,
  });
}

// New Report class
class RepairReport {
  final int entitiesChecked;
  final int entitiesRepaired;
  final List<String> errors;
  final Map<String, Object> stats;
  final DateTime timestamp;

  const RepairReport({
    required this.entitiesChecked,
    required this.entitiesRepaired,
    required this.errors,
    required this.stats,
    required this.timestamp,
  });
}

class LockState {
  final bool isLocked;
  final UserAction? lockedBy;
  final DateTime? expiresAt;
  final int attemptCount;
  final Map<String, dynamic> metadata;

  const LockState({
    required this.isLocked,
    this.lockedBy,
    this.expiresAt,
    required this.attemptCount,
    required this.metadata,
  });
}

class EntityAuditReport {
  final List<UserAction> modifications;
  final List<UserAction> accesses;
  final Map<String, int> operationCounts;
  final Map<String, Set<String>> userAccess;
  final DateTime generatedAt;

  const EntityAuditReport({
    required this.modifications,
    required this.accesses,
    required this.operationCounts,
    required this.userAccess,
    required this.generatedAt,
  });
}

class EntityRelation {
  final String type;
  final EntityId sourceId;
  final EntityId targetId;
  final DateTime createdAt;
  final UserAction createdBy;
  final Map<String, Object> metadata;

  const EntityRelation({
    required this.type,
    required this.sourceId,
    required this.targetId,
    required this.createdAt,
    required this.createdBy,
    this.metadata = const {},
  });
}
