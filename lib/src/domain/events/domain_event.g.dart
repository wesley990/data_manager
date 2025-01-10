// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DomainEventImpl _$$DomainEventImplFromJson(Map<String, dynamic> json) =>
    _$DomainEventImpl(
      id: EventId.fromJson((json['id'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      entityId:
          EntityId.fromJson((json['entityId'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      eventType: json['eventType'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      initiator:
          UserAction.fromJson((json['initiator'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      changes: (json['changes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      ),
      entityType: json['entityType'] as String?,
      aggregateId: json['aggregateId'] == null
          ? null
          : EntityId.fromJson((json['aggregateId'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      isAsync: json['isAsync'] as bool? ?? EventDefaults.isAsync,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              EventDefaults.tags,
      correlationId: json['correlationId'] == null
          ? null
          : EventId.fromJson(
              (json['correlationId'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      causationId: json['causationId'] == null
          ? null
          : EventId.fromJson((json['causationId'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            )),
      version: (json['version'] as num?)?.toInt() ?? EventDefaults.version,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$DomainEventImplToJson(_$DomainEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entityId': instance.entityId,
      'eventType': instance.eventType,
      'timestamp': instance.timestamp.toIso8601String(),
      'initiator': instance.initiator,
      'changes': instance.changes,
      'entityType': instance.entityType,
      'aggregateId': instance.aggregateId,
      'metadata': instance.metadata,
      'isAsync': instance.isAsync,
      'tags': instance.tags,
      'correlationId': instance.correlationId,
      'causationId': instance.causationId,
      'version': instance.version,
      'status': instance.status,
    };
