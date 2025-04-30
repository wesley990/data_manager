import 'dart:async';
import 'package:data_manager/data_manager.dart';

abstract class IEntityRepository<T extends Object> {
  // Core operations with proper return types and error handling
  Future<BaseEntityModel<T>> create(EntityCreationConfig<T> config);
  Future<BaseEntityModel<T>> read(EntityId id, {bool includeDeleted = false});
  Future<BaseEntityModel<T>> update(EntityId id, Map<String, Object> changes);
  Future<void> delete(EntityId id, {bool permanent = false});

  // Enhanced query operations
  Future<PagedResult<BaseEntityModel<T>>> query(QueryParams params);
  Future<SearchResult<BaseEntityModel<T>>> search(SearchParams params);
  Future<List<BaseEntityModel<T>>> findByIds(List<EntityId> ids);

  // Reactive streams
  Stream<BaseEntityModel<T>> watchEntity(EntityId id);
  Stream<PagedResult<BaseEntityModel<T>>> watchQuery(QueryParams params);
  Stream<SearchResult<BaseEntityModel<T>>> watchSearch(SearchParams params);

  // Hierarchy & relationships
  Future<List<BaseEntityModel<T>>> getHierarchy(
    EntityId id,
    HierarchyParams params,
  );
  Future<void> addRelation(EntityId sourceId, String type, EntityId targetId);
  Future<void> removeRelation(
    EntityId sourceId,
    String type,
    EntityId targetId,
  );
  Future<List<EntityRelation>> getRelations(EntityId id, {String? type});
  Stream<List<EntityRelation>> watchRelations(EntityId id);

  // Enhanced hierarchy operations
  Future<BaseEntityModel<T>> getParent(EntityId id);
  Future<List<BaseEntityModel<T>>> getAncestors(
    EntityId id, {
    bool includeRoot = false,
  });
  Future<List<BaseEntityModel<T>>> getChildren(
    EntityId id, {
    bool recursive = false,
    int? maxDepth,
  });
  Future<List<BaseEntityModel<T>>> getDescendants(
    EntityId id, {
    bool includeDeleted = false,
  });

  // Path-based operations
  Future<BaseEntityModel<T>> getByPath(String path);
  Future<List<BaseEntityModel<T>>> getByPaths(List<String> paths);
  Future<String> getCanonicalPath(EntityId id);
  Future<List<String>> getAncestorPaths(String path);

  // Tree restructuring
  Future<void> moveEntity(EntityId id, EntityId newParentId);
  Future<void> reorderChildren(EntityId parentId, List<EntityId> newOrder);
  Future<void> detachFromParent(EntityId id);

  // Hierarchy queries
  Future<List<BaseEntityModel<T>>> queryHierarchy(HierarchyQueryParams params);
  Stream<List<BaseEntityModel<T>>> watchHierarchy(
    EntityId rootId,
    HierarchyQueryParams params,
  );

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

  // Event & Version Control
  Future<void> applyEvent(DomainEventModel event);
  Future<void> applyEvents(List<DomainEventModel> events);
  Future<List<DomainEventModel>> getEventHistory(
    EntityId id, {
    DateTime? since,
    int? limit,
  });
  Stream<DomainEventModel> watchEvents(EntityId id);

  Future<BaseEntityModel<T>> getVersion(EntityId id, int version);
  Future<List<int>> getAvailableVersions(EntityId id);
  Future<BaseEntityModel<T>> revertToVersion(EntityId id, int version);

  Future<bool> hasVersionConflict(EntityId id, Map<String, int> versionVectors);
  Future<BaseEntityModel<T>> resolveConflict(
    EntityId id,
    BaseEntityModel<T> localVersion,
    BaseEntityModel<T> serverVersion,
  );

  Future<Map<String, int>> getVersionVectors(EntityId id);
  Future<void> updateVersionVectors(EntityId id, Map<String, int> vectors);
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

// Add new parameter class for hierarchy queries
class HierarchyQueryParams {
  final String? pathPrefix;
  final int? maxDepth;
  final List<String> filter;
  final Map<String, Object> metadata;

  const HierarchyQueryParams({
    this.pathPrefix,
    this.maxDepth,
    this.filter = const [],
    this.metadata = const {},
  });
}

// Add new parameter class for version control
class VersionQuery {
  final EntityId entityId;
  final DateTime? fromDate;
  final DateTime? toDate;
  final int? fromVersion;
  final int? toVersion;
  final bool includeMetadata;

  const VersionQuery({
    required this.entityId,
    this.fromDate,
    this.toDate,
    this.fromVersion,
    this.toVersion,
    this.includeMetadata = false,
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

  SyncResult({this.stats = const {}, this.errors = const []});
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
