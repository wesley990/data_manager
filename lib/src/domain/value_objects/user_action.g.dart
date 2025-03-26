// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAction _$UserActionFromJson(Map<String, dynamic> json) => _UserAction(
  uid: json['uid'] as String,
  displayName: json['displayName'] as String? ?? '',
  timestamp: DateTime.parse(json['timestamp'] as String),
  actionType: json['actionType'] as String? ?? '',
  description: json['description'] as String? ?? '',
  entityId: json['entityId'] as String? ?? '',
  entityType: json['entityType'] as String? ?? '',
  workflowStage: json['workflowStage'] as String? ?? '',
  status: json['status'] as String? ?? '',
  isAuthenticated: json['isAuthenticated'] as bool? ?? false,
  changes:
      (json['changes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ) ??
      const {},
  metadata:
      (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ) ??
      const {},
  affectedFields:
      (json['affectedFields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  isAuthorized: json['isAuthorized'] as bool? ?? false,
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  authenticationMethod: json['authenticationMethod'] as String? ?? '',
  previousValue: json['previousValue'] as String? ?? '',
  newValue: json['newValue'] as String? ?? '',
  reason: json['reason'] as String? ?? '',
  isSuccessful: json['isSuccessful'] as bool? ?? false,
  errorMessage: json['errorMessage'] as String? ?? '',
  parentActionId: json['parentActionId'] as String? ?? '',
  relatedActionIds:
      (json['relatedActionIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  eventId: json['eventId'] as String? ?? '',
  eventType: json['eventType'] as String? ?? '',
  correlationId: json['correlationId'] as String? ?? '',
  causationId: json['causationId'] as String? ?? '',
  eventTags:
      (json['eventTags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  eventMetadata:
      (json['eventMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ) ??
      const {},
);

Map<String, dynamic> _$UserActionToJson(_UserAction instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'timestamp': instance.timestamp.toIso8601String(),
      'actionType': instance.actionType,
      'description': instance.description,
      'entityId': instance.entityId,
      'entityType': instance.entityType,
      'workflowStage': instance.workflowStage,
      'status': instance.status,
      'isAuthenticated': instance.isAuthenticated,
      'changes': instance.changes,
      'metadata': instance.metadata,
      'affectedFields': instance.affectedFields,
      'isAuthorized': instance.isAuthorized,
      'permissions': instance.permissions,
      'authenticationMethod': instance.authenticationMethod,
      'previousValue': instance.previousValue,
      'newValue': instance.newValue,
      'reason': instance.reason,
      'isSuccessful': instance.isSuccessful,
      'errorMessage': instance.errorMessage,
      'parentActionId': instance.parentActionId,
      'relatedActionIds': instance.relatedActionIds,
      'eventId': instance.eventId,
      'eventType': instance.eventType,
      'correlationId': instance.correlationId,
      'causationId': instance.causationId,
      'eventTags': instance.eventTags,
      'eventMetadata': instance.eventMetadata,
    };
