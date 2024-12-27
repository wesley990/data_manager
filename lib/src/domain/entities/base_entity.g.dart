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
      entityId:
          EntityId.fromJson((json['entityId'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      entityName: json['entityName'] as String,
      entityDescription: json['entityDescription'] as String?,
      metaCreatedAt: DateTime.parse(json['metaCreatedAt'] as String),
      metaUpdatedAt: DateTime.parse(json['metaUpdatedAt'] as String),
      schemaVersion:
          json['schemaVersion'] as String? ?? EntityConstants.defaultVersion,
      status: $enumDecodeNullable(_$EntityStatusEnumMap, json['status']) ??
          EntityConstants.defaultStatus,
      metaAttributes: (json['metaAttributes'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const <String, Object>{},
      hierarchyPath: json['hierarchyPath'] as String?,
      hierarchyDepth: (json['hierarchyDepth'] as num?)?.toInt() ?? 0,
      relations: (json['relations'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map((e) =>
                        EntityId.fromJson((e as Map<String, dynamic>).map(
                          (k, e) => MapEntry(k, e as Object),
                        )))
                    .toList()),
          ) ??
          const <String, List<EntityId>>{},
      maxDepth: (json['maxDepth'] as num?)?.toInt() ?? 10,
      hierarchyAncestors: (json['hierarchyAncestors'] as List<dynamic>?)
              ?.map((e) => EntityId.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const <EntityId>[],
      hierarchyParentId: json['hierarchyParentId'] == null
          ? null
          : EntityId.fromJson(
              (json['hierarchyParentId'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      childrenIds: (json['childrenIds'] as List<dynamic>?)
              ?.map((e) => EntityId.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const <EntityId>[],
      subCollections: (json['subCollections'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const <String, String>{},
      ancestorMetadata:
          (json['ancestorMetadata'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(
                    k,
                    EntityMetadata.fromJson((e as Map<String, dynamic>).map(
                      (k, e) => MapEntry(k, e as Object),
                    ))),
              ) ??
              const {},
      parentName: json['parentName'] as String?,
      searchablePath: (json['searchablePath'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      hierarchyLevel: json['hierarchyLevel'] as String?,
      hierarchyVersion: (json['hierarchyVersion'] as num?)?.toInt() ?? 0,
      lastHierarchyUpdate: json['lastHierarchyUpdate'] == null
          ? null
          : DateTime.parse(json['lastHierarchyUpdate'] as String),
      owner: UserAction.fromJson((json['owner'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      createdBy:
          UserAction.fromJson((json['createdBy'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      lastModifiedBy: UserAction.fromJson(
          (json['lastModifiedBy'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      accessLastBy: json['accessLastBy'] == null
          ? null
          : UserAction.fromJson(
              (json['accessLastBy'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      lockedBy: json['lockedBy'] == null
          ? null
          : UserAction.fromJson((json['lockedBy'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      lockExpiresAt: json['lockExpiresAt'] == null
          ? null
          : DateTime.parse(json['lockExpiresAt'] as String),
      deletedBy: json['deletedBy'] == null
          ? null
          : UserAction.fromJson((json['deletedBy'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      modificationHistory: (json['modificationHistory'] as List<dynamic>?)
              ?.map((e) => UserAction.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const <UserAction>[],
      accessHistory: (json['accessHistory'] as List<dynamic>?)
              ?.map((e) => UserAction.fromJson((e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )))
              .toList() ??
          const <UserAction>[],
      accessIsPublic:
          json['accessIsPublic'] as bool? ?? EntityConstants.defaultIsPublic,
      accessCount: (json['accessCount'] as num?)?.toInt() ??
          EntityConstants.defaultAccessCount,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      labels: (json['labels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      priority: $enumDecodeNullable(_$PriorityEnumMap, json['priority']) ??
          EntityConstants.defaultPriority,
      workflowStage:
          $enumDecodeNullable(_$WorkflowStageEnumMap, json['workflowStage']) ??
              EntityConstants.defaultWorkflowStage,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      syncMetadata: (json['syncMetadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      lastSyncedVersion: json['lastSyncedVersion'] as String?,
      queryIndex: (json['queryIndex'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      additionalData:
          _$nullableGenericFromJson(json['additionalData'], fromJsonT),
      eventVersion: (json['eventVersion'] as num?)?.toInt() ?? 0,
      eventPending: (json['eventPending'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      eventMetadata: (json['eventMetadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const <String, Object>{},
      historyLimit: (json['historyLimit'] as num?)?.toInt() ??
          EntityConstants.defaultHistoryLimit,
      entityVersion: (json['entityVersion'] as num?)?.toInt() ??
          EntityConstants.initialVersion,
      structureVersion: (json['structureVersion'] as num?)?.toInt() ??
          EntityConstants.initialVersion,
      lastKnownVersion: json['lastKnownVersion'] as String?,
      distributedLockId: json['distributedLockId'] as String?,
      distributedLockExpiry: json['distributedLockExpiry'] == null
          ? null
          : DateTime.parse(json['distributedLockExpiry'] as String),
      distributedLockNode: json['distributedLockNode'] as String?,
      lockMetadata: json['lockMetadata'] as Map<String, dynamic>? ?? const {},
      versionVectors: (json['versionVectors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
      lockTimeout: json['lockTimeout'] == null
          ? EntityConstants.defaultLockTimeout
          : Duration(microseconds: (json['lockTimeout'] as num).toInt()),
      aiEmbeddings: (json['aiEmbeddings'] as Map<String, dynamic>?)?.map(
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
      aiMetadata: (json['aiMetadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      aiTags: (json['aiTags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      aiAnnotations: (json['aiAnnotations'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ) ??
          const {},
      lastAiProcessingTime: json['lastAiProcessingTime'] == null
          ? null
          : DateTime.parse(json['lastAiProcessingTime'] as String),
      aiProcessingVersion: json['aiProcessingVersion'] as String?,
    );

Map<String, dynamic> _$$BaseEntityImplToJson<T extends Object>(
  _$BaseEntityImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'entityId': instance.entityId,
      'entityName': instance.entityName,
      'entityDescription': instance.entityDescription,
      'metaCreatedAt': instance.metaCreatedAt.toIso8601String(),
      'metaUpdatedAt': instance.metaUpdatedAt.toIso8601String(),
      'schemaVersion': instance.schemaVersion,
      'status': _$EntityStatusEnumMap[instance.status]!,
      'metaAttributes': instance.metaAttributes,
      'hierarchyPath': instance.hierarchyPath,
      'hierarchyDepth': instance.hierarchyDepth,
      'relations': instance.relations,
      'maxDepth': instance.maxDepth,
      'hierarchyAncestors': instance.hierarchyAncestors,
      'hierarchyParentId': instance.hierarchyParentId,
      'childrenIds': instance.childrenIds,
      'subCollections': instance.subCollections,
      'ancestorMetadata': instance.ancestorMetadata,
      'parentName': instance.parentName,
      'searchablePath': instance.searchablePath,
      'hierarchyLevel': instance.hierarchyLevel,
      'hierarchyVersion': instance.hierarchyVersion,
      'lastHierarchyUpdate': instance.lastHierarchyUpdate?.toIso8601String(),
      'owner': instance.owner,
      'createdBy': instance.createdBy,
      'lastModifiedBy': instance.lastModifiedBy,
      'accessLastBy': instance.accessLastBy,
      'lockedBy': instance.lockedBy,
      'lockExpiresAt': instance.lockExpiresAt?.toIso8601String(),
      'deletedBy': instance.deletedBy,
      'modificationHistory': instance.modificationHistory,
      'accessHistory': instance.accessHistory,
      'accessIsPublic': instance.accessIsPublic,
      'accessCount': instance.accessCount,
      'tags': instance.tags,
      'labels': instance.labels,
      'priority': _$PriorityEnumMap[instance.priority]!,
      'workflowStage': _$WorkflowStageEnumMap[instance.workflowStage]!,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'syncMetadata': instance.syncMetadata,
      'lastSyncedVersion': instance.lastSyncedVersion,
      'queryIndex': instance.queryIndex,
      'additionalData':
          _$nullableGenericToJson(instance.additionalData, toJsonT),
      'eventVersion': instance.eventVersion,
      'eventPending': instance.eventPending,
      'eventMetadata': instance.eventMetadata,
      'historyLimit': instance.historyLimit,
      'entityVersion': instance.entityVersion,
      'structureVersion': instance.structureVersion,
      'lastKnownVersion': instance.lastKnownVersion,
      'distributedLockId': instance.distributedLockId,
      'distributedLockExpiry':
          instance.distributedLockExpiry?.toIso8601String(),
      'distributedLockNode': instance.distributedLockNode,
      'lockMetadata': instance.lockMetadata,
      'versionVectors': instance.versionVectors,
      'lockTimeout': instance.lockTimeout.inMicroseconds,
      'aiEmbeddings': instance.aiEmbeddings,
      'aiScores': instance.aiScores,
      'aiMetadata': instance.aiMetadata,
      'aiTags': instance.aiTags,
      'aiAnnotations': instance.aiAnnotations,
      'lastAiProcessingTime': instance.lastAiProcessingTime?.toIso8601String(),
      'aiProcessingVersion': instance.aiProcessingVersion,
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
