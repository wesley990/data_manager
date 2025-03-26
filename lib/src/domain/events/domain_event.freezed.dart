// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domain_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventSchema {

 String get version; String get eventType; Map<String, String> get fields; Map<String, bool> get required; Map<String, Object>? get defaults; Map<String, String>? get migrations;
/// Create a copy of EventSchema
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventSchemaCopyWith<EventSchema> get copyWith => _$EventSchemaCopyWithImpl<EventSchema>(this as EventSchema, _$identity);

  /// Serializes this EventSchema to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventSchema&&(identical(other.version, version) || other.version == version)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&const DeepCollectionEquality().equals(other.fields, fields)&&const DeepCollectionEquality().equals(other.required, required)&&const DeepCollectionEquality().equals(other.defaults, defaults)&&const DeepCollectionEquality().equals(other.migrations, migrations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,eventType,const DeepCollectionEquality().hash(fields),const DeepCollectionEquality().hash(required),const DeepCollectionEquality().hash(defaults),const DeepCollectionEquality().hash(migrations));

@override
String toString() {
  return 'EventSchema(version: $version, eventType: $eventType, fields: $fields, required: $required, defaults: $defaults, migrations: $migrations)';
}


}

/// @nodoc
abstract mixin class $EventSchemaCopyWith<$Res>  {
  factory $EventSchemaCopyWith(EventSchema value, $Res Function(EventSchema) _then) = _$EventSchemaCopyWithImpl;
@useResult
$Res call({
 String version, String eventType, Map<String, String> fields, Map<String, bool> required, Map<String, Object>? defaults, Map<String, String>? migrations
});




}
/// @nodoc
class _$EventSchemaCopyWithImpl<$Res>
    implements $EventSchemaCopyWith<$Res> {
  _$EventSchemaCopyWithImpl(this._self, this._then);

  final EventSchema _self;
  final $Res Function(EventSchema) _then;

/// Create a copy of EventSchema
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? eventType = null,Object? fields = null,Object? required = null,Object? defaults = freezed,Object? migrations = freezed,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,fields: null == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as Map<String, String>,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,defaults: freezed == defaults ? _self.defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,migrations: freezed == migrations ? _self.migrations : migrations // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EventSchema implements EventSchema {
  const _EventSchema({required this.version, required this.eventType, required final  Map<String, String> fields, required final  Map<String, bool> required, final  Map<String, Object>? defaults, final  Map<String, String>? migrations}): _fields = fields,_required = required,_defaults = defaults,_migrations = migrations;
  factory _EventSchema.fromJson(Map<String, dynamic> json) => _$EventSchemaFromJson(json);

@override final  String version;
@override final  String eventType;
 final  Map<String, String> _fields;
@override Map<String, String> get fields {
  if (_fields is EqualUnmodifiableMapView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_fields);
}

 final  Map<String, bool> _required;
@override Map<String, bool> get required {
  if (_required is EqualUnmodifiableMapView) return _required;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_required);
}

 final  Map<String, Object>? _defaults;
@override Map<String, Object>? get defaults {
  final value = _defaults;
  if (value == null) return null;
  if (_defaults is EqualUnmodifiableMapView) return _defaults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, String>? _migrations;
@override Map<String, String>? get migrations {
  final value = _migrations;
  if (value == null) return null;
  if (_migrations is EqualUnmodifiableMapView) return _migrations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of EventSchema
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventSchemaCopyWith<_EventSchema> get copyWith => __$EventSchemaCopyWithImpl<_EventSchema>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventSchemaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventSchema&&(identical(other.version, version) || other.version == version)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&const DeepCollectionEquality().equals(other._fields, _fields)&&const DeepCollectionEquality().equals(other._required, _required)&&const DeepCollectionEquality().equals(other._defaults, _defaults)&&const DeepCollectionEquality().equals(other._migrations, _migrations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,eventType,const DeepCollectionEquality().hash(_fields),const DeepCollectionEquality().hash(_required),const DeepCollectionEquality().hash(_defaults),const DeepCollectionEquality().hash(_migrations));

@override
String toString() {
  return 'EventSchema(version: $version, eventType: $eventType, fields: $fields, required: $required, defaults: $defaults, migrations: $migrations)';
}


}

/// @nodoc
abstract mixin class _$EventSchemaCopyWith<$Res> implements $EventSchemaCopyWith<$Res> {
  factory _$EventSchemaCopyWith(_EventSchema value, $Res Function(_EventSchema) _then) = __$EventSchemaCopyWithImpl;
@override @useResult
$Res call({
 String version, String eventType, Map<String, String> fields, Map<String, bool> required, Map<String, Object>? defaults, Map<String, String>? migrations
});




}
/// @nodoc
class __$EventSchemaCopyWithImpl<$Res>
    implements _$EventSchemaCopyWith<$Res> {
  __$EventSchemaCopyWithImpl(this._self, this._then);

  final _EventSchema _self;
  final $Res Function(_EventSchema) _then;

/// Create a copy of EventSchema
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? eventType = null,Object? fields = null,Object? required = null,Object? defaults = freezed,Object? migrations = freezed,}) {
  return _then(_EventSchema(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,fields: null == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as Map<String, String>,required: null == required ? _self._required : required // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,defaults: freezed == defaults ? _self._defaults : defaults // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,migrations: freezed == migrations ? _self._migrations : migrations // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}


/// @nodoc
mixin _$DomainEventModel {

// Core event data
 EventId get id; EntityId get entityId; String get eventType; DateTime get timestamp; UserAction get initiator; Map<String, Object> get changes;// Entity context
 String? get entityType; EntityId? get aggregateId;// Metadata
 Map<String, Object>? get metadata; bool get isAsync; List<String> get tags;// Event chain
 EventId? get correlationId; EventId? get causationId; int get version;// Status
 String? get status;// Schema versioning
 String get schemaVersion; Map<String, Object>? get schemaChanges; String? get previousSchemaVersion;// Version vectors for distributed events
 Map<String, int> get schemaVectors;
/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DomainEventModelCopyWith<DomainEventModel> get copyWith => _$DomainEventModelCopyWithImpl<DomainEventModel>(this as DomainEventModel, _$identity);

  /// Serializes this DomainEventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DomainEventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.initiator, initiator) || other.initiator == initiator)&&const DeepCollectionEquality().equals(other.changes, changes)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.aggregateId, aggregateId) || other.aggregateId == aggregateId)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.isAsync, isAsync) || other.isAsync == isAsync)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.correlationId, correlationId) || other.correlationId == correlationId)&&(identical(other.causationId, causationId) || other.causationId == causationId)&&(identical(other.version, version) || other.version == version)&&(identical(other.status, status) || other.status == status)&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&const DeepCollectionEquality().equals(other.schemaChanges, schemaChanges)&&(identical(other.previousSchemaVersion, previousSchemaVersion) || other.previousSchemaVersion == previousSchemaVersion)&&const DeepCollectionEquality().equals(other.schemaVectors, schemaVectors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,entityId,eventType,timestamp,initiator,const DeepCollectionEquality().hash(changes),entityType,aggregateId,const DeepCollectionEquality().hash(metadata),isAsync,const DeepCollectionEquality().hash(tags),correlationId,causationId,version,status,schemaVersion,const DeepCollectionEquality().hash(schemaChanges),previousSchemaVersion,const DeepCollectionEquality().hash(schemaVectors)]);

@override
String toString() {
  return 'DomainEventModel(id: $id, entityId: $entityId, eventType: $eventType, timestamp: $timestamp, initiator: $initiator, changes: $changes, entityType: $entityType, aggregateId: $aggregateId, metadata: $metadata, isAsync: $isAsync, tags: $tags, correlationId: $correlationId, causationId: $causationId, version: $version, status: $status, schemaVersion: $schemaVersion, schemaChanges: $schemaChanges, previousSchemaVersion: $previousSchemaVersion, schemaVectors: $schemaVectors)';
}


}

/// @nodoc
abstract mixin class $DomainEventModelCopyWith<$Res>  {
  factory $DomainEventModelCopyWith(DomainEventModel value, $Res Function(DomainEventModel) _then) = _$DomainEventModelCopyWithImpl;
@useResult
$Res call({
 EventId id, EntityId entityId, String eventType, DateTime timestamp, UserAction initiator, Map<String, Object> changes, String? entityType, EntityId? aggregateId, Map<String, Object>? metadata, bool isAsync, List<String> tags, EventId? correlationId, EventId? causationId, int version, String? status, String schemaVersion, Map<String, Object>? schemaChanges, String? previousSchemaVersion, Map<String, int> schemaVectors
});


$EventIdCopyWith<$Res> get id;$EntityIdCopyWith<$Res> get entityId;$UserActionCopyWith<$Res> get initiator;$EntityIdCopyWith<$Res>? get aggregateId;$EventIdCopyWith<$Res>? get correlationId;$EventIdCopyWith<$Res>? get causationId;

}
/// @nodoc
class _$DomainEventModelCopyWithImpl<$Res>
    implements $DomainEventModelCopyWith<$Res> {
  _$DomainEventModelCopyWithImpl(this._self, this._then);

  final DomainEventModel _self;
  final $Res Function(DomainEventModel) _then;

/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? entityId = null,Object? eventType = null,Object? timestamp = null,Object? initiator = null,Object? changes = null,Object? entityType = freezed,Object? aggregateId = freezed,Object? metadata = freezed,Object? isAsync = null,Object? tags = null,Object? correlationId = freezed,Object? causationId = freezed,Object? version = null,Object? status = freezed,Object? schemaVersion = null,Object? schemaChanges = freezed,Object? previousSchemaVersion = freezed,Object? schemaVectors = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as EventId,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as EntityId,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,initiator: null == initiator ? _self.initiator : initiator // ignore: cast_nullable_to_non_nullable
as UserAction,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String?,aggregateId: freezed == aggregateId ? _self.aggregateId : aggregateId // ignore: cast_nullable_to_non_nullable
as EntityId?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,isAsync: null == isAsync ? _self.isAsync : isAsync // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,correlationId: freezed == correlationId ? _self.correlationId : correlationId // ignore: cast_nullable_to_non_nullable
as EventId?,causationId: freezed == causationId ? _self.causationId : causationId // ignore: cast_nullable_to_non_nullable
as EventId?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as String,schemaChanges: freezed == schemaChanges ? _self.schemaChanges : schemaChanges // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,previousSchemaVersion: freezed == previousSchemaVersion ? _self.previousSchemaVersion : previousSchemaVersion // ignore: cast_nullable_to_non_nullable
as String?,schemaVectors: null == schemaVectors ? _self.schemaVectors : schemaVectors // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}
/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventIdCopyWith<$Res> get id {
  
  return $EventIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get entityId {
  
  return $EntityIdCopyWith<$Res>(_self.entityId, (value) {
    return _then(_self.copyWith(entityId: value));
  });
}/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserActionCopyWith<$Res> get initiator {
  
  return $UserActionCopyWith<$Res>(_self.initiator, (value) {
    return _then(_self.copyWith(initiator: value));
  });
}/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res>? get aggregateId {
    if (_self.aggregateId == null) {
    return null;
  }

  return $EntityIdCopyWith<$Res>(_self.aggregateId!, (value) {
    return _then(_self.copyWith(aggregateId: value));
  });
}/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventIdCopyWith<$Res>? get correlationId {
    if (_self.correlationId == null) {
    return null;
  }

  return $EventIdCopyWith<$Res>(_self.correlationId!, (value) {
    return _then(_self.copyWith(correlationId: value));
  });
}/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventIdCopyWith<$Res>? get causationId {
    if (_self.causationId == null) {
    return null;
  }

  return $EventIdCopyWith<$Res>(_self.causationId!, (value) {
    return _then(_self.copyWith(causationId: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _DomainEventModel extends DomainEventModel {
  const _DomainEventModel({required this.id, required this.entityId, required this.eventType, required this.timestamp, required this.initiator, required final  Map<String, Object> changes, this.entityType, this.aggregateId, final  Map<String, Object>? metadata, this.isAsync = EventDefaults.isAsync, final  List<String> tags = EventDefaults.tags, this.correlationId, this.causationId, this.version = EventDefaults.version, this.status, this.schemaVersion = EventSchemaConfig.currentVersion, final  Map<String, Object>? schemaChanges, this.previousSchemaVersion, final  Map<String, int> schemaVectors = const {}}): _changes = changes,_metadata = metadata,_tags = tags,_schemaChanges = schemaChanges,_schemaVectors = schemaVectors,super._();
  factory _DomainEventModel.fromJson(Map<String, dynamic> json) => _$DomainEventModelFromJson(json);

// Core event data
@override final  EventId id;
@override final  EntityId entityId;
@override final  String eventType;
@override final  DateTime timestamp;
@override final  UserAction initiator;
 final  Map<String, Object> _changes;
@override Map<String, Object> get changes {
  if (_changes is EqualUnmodifiableMapView) return _changes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_changes);
}

// Entity context
@override final  String? entityType;
@override final  EntityId? aggregateId;
// Metadata
 final  Map<String, Object>? _metadata;
// Metadata
@override Map<String, Object>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey() final  bool isAsync;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

// Event chain
@override final  EventId? correlationId;
@override final  EventId? causationId;
@override@JsonKey() final  int version;
// Status
@override final  String? status;
// Schema versioning
@override@JsonKey() final  String schemaVersion;
 final  Map<String, Object>? _schemaChanges;
@override Map<String, Object>? get schemaChanges {
  final value = _schemaChanges;
  if (value == null) return null;
  if (_schemaChanges is EqualUnmodifiableMapView) return _schemaChanges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? previousSchemaVersion;
// Version vectors for distributed events
 final  Map<String, int> _schemaVectors;
// Version vectors for distributed events
@override@JsonKey() Map<String, int> get schemaVectors {
  if (_schemaVectors is EqualUnmodifiableMapView) return _schemaVectors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_schemaVectors);
}


/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DomainEventModelCopyWith<_DomainEventModel> get copyWith => __$DomainEventModelCopyWithImpl<_DomainEventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DomainEventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DomainEventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.initiator, initiator) || other.initiator == initiator)&&const DeepCollectionEquality().equals(other._changes, _changes)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.aggregateId, aggregateId) || other.aggregateId == aggregateId)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.isAsync, isAsync) || other.isAsync == isAsync)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.correlationId, correlationId) || other.correlationId == correlationId)&&(identical(other.causationId, causationId) || other.causationId == causationId)&&(identical(other.version, version) || other.version == version)&&(identical(other.status, status) || other.status == status)&&(identical(other.schemaVersion, schemaVersion) || other.schemaVersion == schemaVersion)&&const DeepCollectionEquality().equals(other._schemaChanges, _schemaChanges)&&(identical(other.previousSchemaVersion, previousSchemaVersion) || other.previousSchemaVersion == previousSchemaVersion)&&const DeepCollectionEquality().equals(other._schemaVectors, _schemaVectors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,entityId,eventType,timestamp,initiator,const DeepCollectionEquality().hash(_changes),entityType,aggregateId,const DeepCollectionEquality().hash(_metadata),isAsync,const DeepCollectionEquality().hash(_tags),correlationId,causationId,version,status,schemaVersion,const DeepCollectionEquality().hash(_schemaChanges),previousSchemaVersion,const DeepCollectionEquality().hash(_schemaVectors)]);

@override
String toString() {
  return 'DomainEventModel(id: $id, entityId: $entityId, eventType: $eventType, timestamp: $timestamp, initiator: $initiator, changes: $changes, entityType: $entityType, aggregateId: $aggregateId, metadata: $metadata, isAsync: $isAsync, tags: $tags, correlationId: $correlationId, causationId: $causationId, version: $version, status: $status, schemaVersion: $schemaVersion, schemaChanges: $schemaChanges, previousSchemaVersion: $previousSchemaVersion, schemaVectors: $schemaVectors)';
}


}

/// @nodoc
abstract mixin class _$DomainEventModelCopyWith<$Res> implements $DomainEventModelCopyWith<$Res> {
  factory _$DomainEventModelCopyWith(_DomainEventModel value, $Res Function(_DomainEventModel) _then) = __$DomainEventModelCopyWithImpl;
@override @useResult
$Res call({
 EventId id, EntityId entityId, String eventType, DateTime timestamp, UserAction initiator, Map<String, Object> changes, String? entityType, EntityId? aggregateId, Map<String, Object>? metadata, bool isAsync, List<String> tags, EventId? correlationId, EventId? causationId, int version, String? status, String schemaVersion, Map<String, Object>? schemaChanges, String? previousSchemaVersion, Map<String, int> schemaVectors
});


@override $EventIdCopyWith<$Res> get id;@override $EntityIdCopyWith<$Res> get entityId;@override $UserActionCopyWith<$Res> get initiator;@override $EntityIdCopyWith<$Res>? get aggregateId;@override $EventIdCopyWith<$Res>? get correlationId;@override $EventIdCopyWith<$Res>? get causationId;

}
/// @nodoc
class __$DomainEventModelCopyWithImpl<$Res>
    implements _$DomainEventModelCopyWith<$Res> {
  __$DomainEventModelCopyWithImpl(this._self, this._then);

  final _DomainEventModel _self;
  final $Res Function(_DomainEventModel) _then;

/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? entityId = null,Object? eventType = null,Object? timestamp = null,Object? initiator = null,Object? changes = null,Object? entityType = freezed,Object? aggregateId = freezed,Object? metadata = freezed,Object? isAsync = null,Object? tags = null,Object? correlationId = freezed,Object? causationId = freezed,Object? version = null,Object? status = freezed,Object? schemaVersion = null,Object? schemaChanges = freezed,Object? previousSchemaVersion = freezed,Object? schemaVectors = null,}) {
  return _then(_DomainEventModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as EventId,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as EntityId,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,initiator: null == initiator ? _self.initiator : initiator // ignore: cast_nullable_to_non_nullable
as UserAction,changes: null == changes ? _self._changes : changes // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String?,aggregateId: freezed == aggregateId ? _self.aggregateId : aggregateId // ignore: cast_nullable_to_non_nullable
as EntityId?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,isAsync: null == isAsync ? _self.isAsync : isAsync // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,correlationId: freezed == correlationId ? _self.correlationId : correlationId // ignore: cast_nullable_to_non_nullable
as EventId?,causationId: freezed == causationId ? _self.causationId : causationId // ignore: cast_nullable_to_non_nullable
as EventId?,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,schemaVersion: null == schemaVersion ? _self.schemaVersion : schemaVersion // ignore: cast_nullable_to_non_nullable
as String,schemaChanges: freezed == schemaChanges ? _self._schemaChanges : schemaChanges // ignore: cast_nullable_to_non_nullable
as Map<String, Object>?,previousSchemaVersion: freezed == previousSchemaVersion ? _self.previousSchemaVersion : previousSchemaVersion // ignore: cast_nullable_to_non_nullable
as String?,schemaVectors: null == schemaVectors ? _self._schemaVectors : schemaVectors // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventIdCopyWith<$Res> get id {
  
  return $EventIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res> get entityId {
  
  return $EntityIdCopyWith<$Res>(_self.entityId, (value) {
    return _then(_self.copyWith(entityId: value));
  });
}/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserActionCopyWith<$Res> get initiator {
  
  return $UserActionCopyWith<$Res>(_self.initiator, (value) {
    return _then(_self.copyWith(initiator: value));
  });
}/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res>? get aggregateId {
    if (_self.aggregateId == null) {
    return null;
  }

  return $EntityIdCopyWith<$Res>(_self.aggregateId!, (value) {
    return _then(_self.copyWith(aggregateId: value));
  });
}/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventIdCopyWith<$Res>? get correlationId {
    if (_self.correlationId == null) {
    return null;
  }

  return $EventIdCopyWith<$Res>(_self.correlationId!, (value) {
    return _then(_self.copyWith(correlationId: value));
  });
}/// Create a copy of DomainEventModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventIdCopyWith<$Res>? get causationId {
    if (_self.causationId == null) {
    return null;
  }

  return $EventIdCopyWith<$Res>(_self.causationId!, (value) {
    return _then(_self.copyWith(causationId: value));
  });
}
}

// dart format on
