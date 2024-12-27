import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/domain/value_objects/user_action.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class BaseRepositoryImpl<T extends Object>
    implements IEntityRepository<T> {
  final FirebaseFirestore _firestore;
  final SharedPreferences _prefs;
  final String collectionName;
  final T Function(Object?) fromJson;
  final String cacheKey;

  BaseRepositoryImpl({
    required FirebaseFirestore firestore,
    required SharedPreferences prefs,
    required this.collectionName,
    required this.fromJson,
  })  : _firestore = firestore,
        _prefs = prefs,
        cacheKey = 'cache_$collectionName';

  Map<String, Object> _convertDynamicToObject(Map<String, dynamic> data) {
    return data.map((key, value) => MapEntry(key, value as Object));
  }

  Stream<List<BaseEntity<T>>> watchAll() async* {
    // First emit cached data
    yield _getCachedData();

    // Then listen to Firestore changes
    yield* _firestore.collection(collectionName).snapshots().map((snapshot) {
      final entities = snapshot.docs
          .map((doc) => BaseEntity<T>.fromJson(
              _convertDynamicToObject(doc.data()), fromJson))
          .toList();

      // Update cache
      _cacheData(entities);
      return entities;
    });
  }

  List<BaseEntity<T>> _getCachedData() {
    final jsonString = _prefs.getString(cacheKey);
    if (jsonString != null) {
      final jsonList = jsonDecode(jsonString) as List;
      return jsonList
          .map((json) => BaseEntity<T>.fromJson(
              json, (data) => fromJson(data as Map<String, Object>)))
          .toList();
    }
    return [];
  }

  Future<void> _cacheData(List<BaseEntity<T>> entities) async {
    final jsonString =
        jsonEncode(entities.map((e) => e.toJson((data) => data)).toList());
    await _prefs.setString(cacheKey, jsonString);
  }

  List<BaseEntity<T>> _getPendingChanges() {
    final jsonString = _prefs.getString('${cacheKey}_pending');
    if (jsonString != null) {
      final jsonList = jsonDecode(jsonString) as List;
      return jsonList
          .map((json) => BaseEntity<T>.fromJson(
              json, (data) => fromJson(data as Map<String, Object>)))
          .toList();
    }
    return [];
  }

  @override
  Future<Result<SyncResult>> sync(SyncMode mode, [SyncParams? params]) async {
    try {
      // Get all local changes queued for sync
      final pendingChanges = _getPendingChanges();

      // Upload changes to Firestore
      for (final change in pendingChanges) {
        await _firestore
            .collection(collectionName)
            .doc(change.uuid)
            .set(change.toJson((data) => data));
      }

      // Clear pending changes
      await _clearPendingChanges();

      return Result.success(SyncResult(
        syncedCount: pendingChanges.length,
        failedCount: 0,
      ));
    } catch (e) {
      return Result.failure(SyncFailure(message: e.toString()));
    }
  }

  Future<void> save(BaseEntity<T> entity) async {
    // Save to Firestore
    await _firestore
        .collection(collectionName)
        .doc(entity.uuid)
        .set(entity.toJson((data) => data));

    // Update cache
    final cached = _getCachedData();
    final index = cached.indexWhere((e) => e.uuid == entity.uuid);
    if (index >= 0) {
      cached[index] = entity;
    } else {
      cached.add(entity);
    }
    await _cacheData(cached);
  }

  Future<void> _clearPendingChanges() async {
    await _prefs.remove('${cacheKey}_pending');
  }

  Future<BaseEntity<T>> getById(String id) async {
    // Check cache first
    if (isCached(id)) {
      final cached = _getCachedData().firstWhere((e) => e.uuid == id);
      return cached;
    }

    final doc = await _firestore.collection(collectionName).doc(id).get();
    return BaseEntity<T>.fromJson(
        _convertDynamicToObject(doc.data()!), fromJson);
  }

  Future<List<BaseEntity<T>>> getAll() async {
    final snapshot = await _firestore.collection(collectionName).get();
    return snapshot.docs
        .map((doc) => BaseEntity<T>.fromJson(
            _convertDynamicToObject(doc.data()),
            (json) => fromJson(json as Map<String, Object>)))
        .toList();
  }

  Future<List<BaseEntity<T>>> getByIds(List<String> ids) async {
    final entities = await Future.wait(ids.map((id) => getById(id)));
    return entities;
  }

  Future<bool> acquireLock(String id, UserAction user) async {
    final entity = await getById(id);
    if (!entity.canAcquireLock(user)) return false;

    final updated = entity.acquireLock(user);
    await save(updated);
    return true;
  }

  Future<bool> releaseLock(String id, UserAction user) async {
    final entity = await getById(id);
    if (entity.lockedBy?.uid != user.uid) return false;

    final updated = entity.releaseLock(user);
    await save(updated);
    return true;
  }

  Future<bool> isLocked(String id) async {
    final entity = await getById(id);
    return entity.isLocked;
  }

  Future<List<UserAction>> getModificationHistory(String id) async {
    final entity = await getById(id);
    return entity.modificationHistory;
  }

  Future<List<UserAction>> getAccessHistory(String id) async {
    final entity = await getById(id);
    return entity.accessHistory;
  }

  Future<List<BaseEntity<T>>> getChildren(String parentId) async {
    final snapshot = await _firestore
        .collection(collectionName)
        .where('path', arrayContains: parentId)
        .get();
    return snapshot.docs
        .map((doc) => BaseEntity<T>.fromJson(
            _convertDynamicToObject(doc.data()),
            (json) => fromJson(json as Map<String, Object>)))
        .toList();
  }

  Future<void> refreshCache() async {
    final entities = await getAll();
    await _cacheData(entities);
  }

  Future<void> invalidateCache(String id) async {
    final cached = _getCachedData();
    cached.removeWhere((e) => e.uuid == id);
    await _cacheData(cached);
  }

  bool isCached(String id) {
    final cached = _getCachedData();
    return cached.any((e) => e.uuid == id);
  }

  Future<void> updateStatus(String id, EntityStatus status) async {
    final entity = await getById(id);
    final updated = entity.copyWith(status: status);
    await save(updated);
  }

  Future<void> updateWorkflowStage(String id, WorkflowStage newStage) async {
    final entity = await getById(id);
    final workflowRule = ValidationRules.workflowRules[T.toString()];

    if (workflowRule != null) {
      final allowedTransitions =
          workflowRule.allowedTransitions[entity.workflowStage];
      if (allowedTransitions == null ||
          !allowedTransitions.contains(newStage)) {
        throw ValidationException('Invalid workflow transition');
      }
    }

    final updated = entity.copyWith(workflowStage: newStage);
    await save(updated);
  }

  Future<void> addRelation(
      String id, String relationType, String targetId) async {
    final entity = await getById(id);
    final relationRule = ValidationRules.relationRules[T.toString()];

    // Validate relation type
    if (relationRule != null &&
        !relationRule.allowedTypes.contains(relationType)) {
      throw ValidationException('Invalid relation type');
    }

    // Validate relation count
    if (relationRule != null) {
      final currentRelations = entity.relations[relationType]?.length ?? 0;
      final maxAllowed = relationRule.maxRelations[relationType];

      if (maxAllowed != null && currentRelations >= maxAllowed) {
        throw ValidationException('Maximum relations exceeded');
      }
    }

    // Update relations
    final relations = Map<String, List<EntityId>>.from(entity.relations);
    relations.update(
      relationType,
      (list) => [...list, EntityId(targetId)],
      ifAbsent: () => [EntityId(targetId)],
    );

    final updated = entity.copyWith(relations: relations);
    await save(updated);
  }

  Future<void> removeRelation(
      String id, String relationType, String targetId) async {
    final entity = await getById(id);

    final relations = Map<String, List<EntityId>>.from(entity.relations);
    if (relations.containsKey(relationType)) {
      relations[relationType] = relations[relationType]!
        ..removeWhere((id) => id.value == targetId);
      if (relations[relationType]!.isEmpty) {
        relations.remove(relationType);
      }
    }

    final updated = entity.copyWith(relations: relations);
    await save(updated);
  }

  Future<Map<String, List<String>>> getRelations(String id) async {
    final entity = await getById(id);
    return entity.relations.map(
      (key, value) => MapEntry(key, value.map((e) => e.toString()).toList()),
    );
  }
}
