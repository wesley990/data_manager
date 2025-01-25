// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventSchemaImpl _$$EventSchemaImplFromJson(Map<String, dynamic> json) =>
    _$EventSchemaImpl(
      version: json['version'] as String,
      eventType: json['eventType'] as String,
      fields: Map<String, String>.from(json['fields'] as Map),
      required: Map<String, bool>.from(json['required'] as Map),
      defaults: (json['defaults'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      migrations: (json['migrations'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$EventSchemaImplToJson(_$EventSchemaImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'eventType': instance.eventType,
      'fields': instance.fields,
      'required': instance.required,
      'defaults': instance.defaults,
      'migrations': instance.migrations,
    };

_$DomainEventModelImpl _$$DomainEventModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DomainEventModelImpl(
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
      schemaVersion:
          json['schemaVersion'] as String? ?? EventSchemaConfig.currentVersion,
      schemaChanges: (json['schemaChanges'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      previousSchemaVersion: json['previousSchemaVersion'] as String?,
      schemaVectors: (json['schemaVectors'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
    );

Map<String, dynamic> _$$DomainEventModelImplToJson(
        _$DomainEventModelImpl instance) =>
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
      'schemaVersion': instance.schemaVersion,
      'schemaChanges': instance.schemaChanges,
      'previousSchemaVersion': instance.previousSchemaVersion,
      'schemaVectors': instance.schemaVectors,
    };
