// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseEntityImpl<T> _$$BaseEntityImplFromJson<T extends Object>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BaseEntityImpl<T>(
      id: EntityId.fromJson((json['id'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      name: json['name'] as String,
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      schemaVer: json['schemaVer'] as String? ?? EntityDefaults.version,
      status: $enumDecodeNullable(_$EntityStatusEnumMap, json['status']) ??
          EntityDefaults.status,
      meta: (json['meta'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      treePath: json['treePath'] as String?,
      treeDepth: (json['treeDepth'] as num?)?.toInt() ?? 0,
      refs: (json['refs'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map((e) =>
                        EntityId.fromJson((e as Map<String, dynamic>).map(
                          (k, e) => MapEntry(k, e as Object),
                        )))
                    .toList()),
          ) ??
          const {},
      treeMaxDepth: (json['treeMaxDepth'] as num?)?.toInt() ??
          EntityLimits.hierarchyDepthMax,
      ancestors: (json['ancestors'] as List<dynamic>?)
              ?.map((e) => EntityId.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const [],
      parentId: json['parentId'] == null
          ? null
          : EntityId.fromJson((json['parentId'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      childIds: (json['childIds'] as List<dynamic>?)
              ?.map((e) => EntityId.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const [],
      subPaths: (json['subPaths'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      ancestorMeta: (json['ancestorMeta'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                EntityMetadata.fromJson((e as Map<String, dynamic>).map(
                  (k, e) => MapEntry(k, e as Object),
                ))),
          ) ??
          const {},
      parentName: json['parentName'] as String?,
      searchPaths: (json['searchPaths'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      treeLevel: json['treeLevel'] as String?,
      treeVersion: (json['treeVersion'] as num?)?.toInt() ?? 0,
      treeLastUpdate: json['treeLastUpdate'] == null
          ? null
          : DateTime.parse(json['treeLastUpdate'] as String),
      owner: UserAction.fromJson((json['owner'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      creator:
          UserAction.fromJson((json['creator'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      modifier:
          UserAction.fromJson((json['modifier'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      lastAccessor: json['lastAccessor'] == null
          ? null
          : UserAction.fromJson(
              (json['lastAccessor'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      lockOwner: json['lockOwner'] == null
          ? null
          : UserAction.fromJson((json['lockOwner'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      lockExpiry: json['lockExpiry'] == null
          ? null
          : DateTime.parse(json['lockExpiry'] as String),
      remover: json['remover'] == null
          ? null
          : UserAction.fromJson((json['remover'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      modHistory: (json['modHistory'] as List<dynamic>?)
              ?.map((e) => UserAction.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const [],
      accessLog: (json['accessLog'] as List<dynamic>?)
              ?.map((e) => UserAction.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const [],
      isPublic: json['isPublic'] as bool? ?? EntityDefaults.isPublic,
      accessCount:
          (json['accessCount'] as num?)?.toInt() ?? EntityDefaults.accessCount,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      labels: (json['labels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      priority: $enumDecodeNullable(_$PriorityEnumMap, json['priority']) ??
          EntityDefaults.priority,
      stage: $enumDecodeNullable(_$WorkflowStageEnumMap, json['stage']) ??
          EntityDefaults.stage,
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      syncMeta: (json['syncMeta'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      syncVer: json['syncVer'] as String?,
      searchIndex: (json['searchIndex'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      extraData: _$nullableGenericFromJson(json['extraData'], fromJsonT),
      eventVer: (json['eventVer'] as num?)?.toInt() ?? 0,
      pendingEvents: (json['pendingEvents'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      eventMeta: (json['eventMeta'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      historyLimit: (json['historyLimit'] as num?)?.toInt() ??
          EntityLimits.historyDefault,
      dataVer: (json['dataVer'] as num?)?.toInt() ?? 1,
      structVer: (json['structVer'] as num?)?.toInt() ?? 1,
      lastVer: json['lastVer'] as String?,
      distLockId: json['distLockId'] as String?,
      distLockExpiry: json['distLockExpiry'] == null
          ? null
          : DateTime.parse(json['distLockExpiry'] as String),
      distLockNode: json['distLockNode'] as String?,
      lockMeta: json['lockMeta'] as Map<String, dynamic>? ?? const {},
      verVectors: (json['verVectors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
      lockTimeout: json['lockTimeout'] == null
          ? LockDurations.timeout
          : Duration(microseconds: (json['lockTimeout'] as num).toInt()),
      aiVectors: (json['aiVectors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map((e) => (e as num).toDouble())
                    .toList()),
          ) ??
          const {},
      aiScores: (json['aiScores'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toDouble()),
          ) ??
          const {},
      aiMeta: (json['aiMeta'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      aiTags: (json['aiTags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      aiNotes: (json['aiNotes'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      aiLastRun: json['aiLastRun'] == null
          ? null
          : DateTime.parse(json['aiLastRun'] as String),
      aiVer: json['aiVer'] as String?,
    );

Map<String, dynamic> _$$BaseEntityImplToJson<T extends Object>(
  _$BaseEntityImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'schemaVer': instance.schemaVer,
      'status': _$EntityStatusEnumMap[instance.status]!,
      'meta': instance.meta,
      'treePath': instance.treePath,
      'treeDepth': instance.treeDepth,
      'refs': instance.refs,
      'treeMaxDepth': instance.treeMaxDepth,
      'ancestors': instance.ancestors,
      'parentId': instance.parentId,
      'childIds': instance.childIds,
      'subPaths': instance.subPaths,
      'ancestorMeta': instance.ancestorMeta,
      'parentName': instance.parentName,
      'searchPaths': instance.searchPaths,
      'treeLevel': instance.treeLevel,
      'treeVersion': instance.treeVersion,
      'treeLastUpdate': instance.treeLastUpdate?.toIso8601String(),
      'owner': instance.owner,
      'creator': instance.creator,
      'modifier': instance.modifier,
      'lastAccessor': instance.lastAccessor,
      'lockOwner': instance.lockOwner,
      'lockExpiry': instance.lockExpiry?.toIso8601String(),
      'remover': instance.remover,
      'modHistory': instance.modHistory,
      'accessLog': instance.accessLog,
      'isPublic': instance.isPublic,
      'accessCount': instance.accessCount,
      'tags': instance.tags,
      'labels': instance.labels,
      'priority': _$PriorityEnumMap[instance.priority]!,
      'stage': _$WorkflowStageEnumMap[instance.stage]!,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'syncMeta': instance.syncMeta,
      'syncVer': instance.syncVer,
      'searchIndex': instance.searchIndex,
      'extraData': _$nullableGenericToJson(instance.extraData, toJsonT),
      'eventVer': instance.eventVer,
      'pendingEvents': instance.pendingEvents,
      'eventMeta': instance.eventMeta,
      'historyLimit': instance.historyLimit,
      'dataVer': instance.dataVer,
      'structVer': instance.structVer,
      'lastVer': instance.lastVer,
      'distLockId': instance.distLockId,
      'distLockExpiry': instance.distLockExpiry?.toIso8601String(),
      'distLockNode': instance.distLockNode,
      'lockMeta': instance.lockMeta,
      'verVectors': instance.verVectors,
      'lockTimeout': instance.lockTimeout.inMicroseconds,
      'aiVectors': instance.aiVectors,
      'aiScores': instance.aiScores,
      'aiMeta': instance.aiMeta,
      'aiTags': instance.aiTags,
      'aiNotes': instance.aiNotes,
      'aiLastRun': instance.aiLastRun?.toIso8601String(),
      'aiVer': instance.aiVer,
    };

const _$EntityStatusEnumMap = {
  EntityStatus.active: 'active',
  EntityStatus.inactive: 'inactive',
  EntityStatus.archived: 'archived',
  EntityStatus.deleted: 'deleted',
};

const _$PriorityEnumMap = {
  Priority.low: 'low',
  Priority.medium: 'medium',
  Priority.high: 'high',
  Priority.critical: 'critical',
};

const _$WorkflowStageEnumMap = {
  WorkflowStage.draft: 'draft',
  WorkflowStage.review: 'review',
  WorkflowStage.approved: 'approved',
  WorkflowStage.rejected: 'rejected',
  WorkflowStage.active: 'active',
  WorkflowStage.inactive: 'inactive',
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_$EntityMetadataImpl _$$EntityMetadataImplFromJson(Map<String, dynamic> json) =>
    _$EntityMetadataImpl(
      displayName: json['displayName'] as String,
      entityType: json['entityType'] as String,
      description: json['description'] as String?,
      lastNameUpdate: json['lastNameUpdate'] == null
          ? null
          : DateTime.parse(json['lastNameUpdate'] as String),
      searchTerms: (json['searchTerms'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$EntityMetadataImplToJson(
        _$EntityMetadataImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'entityType': instance.entityType,
      'description': instance.description,
      'lastNameUpdate': instance.lastNameUpdate?.toIso8601String(),
      'searchTerms': instance.searchTerms,
    };
