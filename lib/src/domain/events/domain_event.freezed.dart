// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domain_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventSchema _$EventSchemaFromJson(Map<String, dynamic> json) {
  return _EventSchema.fromJson(json);
}

/// @nodoc
mixin _$EventSchema {
  String get version => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  Map<String, String> get fields => throw _privateConstructorUsedError;
  Map<String, bool> get required => throw _privateConstructorUsedError;
  Map<String, Object>? get defaults => throw _privateConstructorUsedError;
  Map<String, String>? get migrations => throw _privateConstructorUsedError;

  /// Serializes this EventSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventSchemaCopyWith<EventSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSchemaCopyWith<$Res> {
  factory $EventSchemaCopyWith(
          EventSchema value, $Res Function(EventSchema) then) =
      _$EventSchemaCopyWithImpl<$Res, EventSchema>;
  @useResult
  $Res call(
      {String version,
      String eventType,
      Map<String, String> fields,
      Map<String, bool> required,
      Map<String, Object>? defaults,
      Map<String, String>? migrations});
}

/// @nodoc
class _$EventSchemaCopyWithImpl<$Res, $Val extends EventSchema>
    implements $EventSchemaCopyWith<$Res> {
  _$EventSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? eventType = null,
    Object? fields = null,
    Object? required = null,
    Object? defaults = freezed,
    Object? migrations = freezed,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      defaults: freezed == defaults
          ? _value.defaults
          : defaults // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      migrations: freezed == migrations
          ? _value.migrations
          : migrations // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventSchemaImplCopyWith<$Res>
    implements $EventSchemaCopyWith<$Res> {
  factory _$$EventSchemaImplCopyWith(
          _$EventSchemaImpl value, $Res Function(_$EventSchemaImpl) then) =
      __$$EventSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version,
      String eventType,
      Map<String, String> fields,
      Map<String, bool> required,
      Map<String, Object>? defaults,
      Map<String, String>? migrations});
}

/// @nodoc
class __$$EventSchemaImplCopyWithImpl<$Res>
    extends _$EventSchemaCopyWithImpl<$Res, _$EventSchemaImpl>
    implements _$$EventSchemaImplCopyWith<$Res> {
  __$$EventSchemaImplCopyWithImpl(
      _$EventSchemaImpl _value, $Res Function(_$EventSchemaImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? eventType = null,
    Object? fields = null,
    Object? required = null,
    Object? defaults = freezed,
    Object? migrations = freezed,
  }) {
    return _then(_$EventSchemaImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      required: null == required
          ? _value._required
          : required // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      defaults: freezed == defaults
          ? _value._defaults
          : defaults // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      migrations: freezed == migrations
          ? _value._migrations
          : migrations // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventSchemaImpl implements _EventSchema {
  const _$EventSchemaImpl(
      {required this.version,
      required this.eventType,
      required final Map<String, String> fields,
      required final Map<String, bool> required,
      final Map<String, Object>? defaults,
      final Map<String, String>? migrations})
      : _fields = fields,
        _required = required,
        _defaults = defaults,
        _migrations = migrations;

  factory _$EventSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventSchemaImplFromJson(json);

  @override
  final String version;
  @override
  final String eventType;
  final Map<String, String> _fields;
  @override
  Map<String, String> get fields {
    if (_fields is EqualUnmodifiableMapView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fields);
  }

  final Map<String, bool> _required;
  @override
  Map<String, bool> get required {
    if (_required is EqualUnmodifiableMapView) return _required;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_required);
  }

  final Map<String, Object>? _defaults;
  @override
  Map<String, Object>? get defaults {
    final value = _defaults;
    if (value == null) return null;
    if (_defaults is EqualUnmodifiableMapView) return _defaults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _migrations;
  @override
  Map<String, String>? get migrations {
    final value = _migrations;
    if (value == null) return null;
    if (_migrations is EqualUnmodifiableMapView) return _migrations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'EventSchema(version: $version, eventType: $eventType, fields: $fields, required: $required, defaults: $defaults, migrations: $migrations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventSchemaImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            const DeepCollectionEquality().equals(other._required, _required) &&
            const DeepCollectionEquality().equals(other._defaults, _defaults) &&
            const DeepCollectionEquality()
                .equals(other._migrations, _migrations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      eventType,
      const DeepCollectionEquality().hash(_fields),
      const DeepCollectionEquality().hash(_required),
      const DeepCollectionEquality().hash(_defaults),
      const DeepCollectionEquality().hash(_migrations));

  /// Create a copy of EventSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventSchemaImplCopyWith<_$EventSchemaImpl> get copyWith =>
      __$$EventSchemaImplCopyWithImpl<_$EventSchemaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventSchemaImplToJson(
      this,
    );
  }
}

abstract class _EventSchema implements EventSchema {
  const factory _EventSchema(
      {required final String version,
      required final String eventType,
      required final Map<String, String> fields,
      required final Map<String, bool> required,
      final Map<String, Object>? defaults,
      final Map<String, String>? migrations}) = _$EventSchemaImpl;

  factory _EventSchema.fromJson(Map<String, dynamic> json) =
      _$EventSchemaImpl.fromJson;

  @override
  String get version;
  @override
  String get eventType;
  @override
  Map<String, String> get fields;
  @override
  Map<String, bool> get required;
  @override
  Map<String, Object>? get defaults;
  @override
  Map<String, String>? get migrations;

  /// Create a copy of EventSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventSchemaImplCopyWith<_$EventSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DomainEventModel _$DomainEventModelFromJson(Map<String, dynamic> json) {
  return _DomainEventModel.fromJson(json);
}

/// @nodoc
mixin _$DomainEventModel {
// Core event data
  EventId get id => throw _privateConstructorUsedError;
  EntityId get entityId => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  UserAction get initiator => throw _privateConstructorUsedError;
  Map<String, Object> get changes =>
      throw _privateConstructorUsedError; // Entity context
  String? get entityType => throw _privateConstructorUsedError;
  EntityId? get aggregateId => throw _privateConstructorUsedError; // Metadata
  Map<String, Object>? get metadata => throw _privateConstructorUsedError;
  bool get isAsync => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError; // Event chain
  EventId? get correlationId => throw _privateConstructorUsedError;
  EventId? get causationId => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError; // Status
  String? get status => throw _privateConstructorUsedError; // Schema versioning
  String get schemaVersion => throw _privateConstructorUsedError;
  Map<String, Object>? get schemaChanges => throw _privateConstructorUsedError;
  String? get previousSchemaVersion =>
      throw _privateConstructorUsedError; // Version vectors for distributed events
  Map<String, int> get schemaVectors => throw _privateConstructorUsedError;

  /// Serializes this DomainEventModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DomainEventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DomainEventModelCopyWith<DomainEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainEventModelCopyWith<$Res> {
  factory $DomainEventModelCopyWith(
          DomainEventModel value, $Res Function(DomainEventModel) then) =
      _$DomainEventModelCopyWithImpl<$Res, DomainEventModel>;
  @useResult
  $Res call(
      {EventId id,
      EntityId entityId,
      String eventType,
      DateTime timestamp,
      UserAction initiator,
      Map<String, Object> changes,
      String? entityType,
      EntityId? aggregateId,
      Map<String, Object>? metadata,
      bool isAsync,
      List<String> tags,
      EventId? correlationId,
      EventId? causationId,
      int version,
      String? status,
      String schemaVersion,
      Map<String, Object>? schemaChanges,
      String? previousSchemaVersion,
      Map<String, int> schemaVectors});

  $EventIdCopyWith<$Res> get id;
  $EntityIdCopyWith<$Res> get entityId;
  $UserActionCopyWith<$Res> get initiator;
  $EntityIdCopyWith<$Res>? get aggregateId;
  $EventIdCopyWith<$Res>? get correlationId;
  $EventIdCopyWith<$Res>? get causationId;
}

/// @nodoc
class _$DomainEventModelCopyWithImpl<$Res, $Val extends DomainEventModel>
    implements $DomainEventModelCopyWith<$Res> {
  _$DomainEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DomainEventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entityId = null,
    Object? eventType = null,
    Object? timestamp = null,
    Object? initiator = null,
    Object? changes = null,
    Object? entityType = freezed,
    Object? aggregateId = freezed,
    Object? metadata = freezed,
    Object? isAsync = null,
    Object? tags = null,
    Object? correlationId = freezed,
    Object? causationId = freezed,
    Object? version = null,
    Object? status = freezed,
    Object? schemaVersion = null,
    Object? schemaChanges = freezed,
    Object? previousSchemaVersion = freezed,
    Object? schemaVectors = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as EventId,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as EntityId,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      initiator: null == initiator
          ? _value.initiator
          : initiator // ignore: cast_nullable_to_non_nullable
              as UserAction,
      changes: null == changes
          ? _value.changes
          : changes // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      entityType: freezed == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String?,
      aggregateId: freezed == aggregateId
          ? _value.aggregateId
          : aggregateId // ignore: cast_nullable_to_non_nullable
              as EntityId?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      isAsync: null == isAsync
          ? _value.isAsync
          : isAsync // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correlationId: freezed == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as EventId?,
      causationId: freezed == causationId
          ? _value.causationId
          : causationId // ignore: cast_nullable_to_non_nullable
              as EventId?,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      schemaVersion: null == schemaVersion
          ? _value.schemaVersion
          : schemaVersion // ignore: cast_nullable_to_non_nullable
              as String,
      schemaChanges: freezed == schemaChanges
          ? _value.schemaChanges
          : schemaChanges // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      previousSchemaVersion: freezed == previousSchemaVersion
          ? _value.previousSchemaVersion
          : previousSchemaVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      schemaVectors: null == schemaVectors
          ? _value.schemaVectors
          : schemaVectors // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }

  /// Create a copy of DomainEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventIdCopyWith<$Res> get id {
    return $EventIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of DomainEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityIdCopyWith<$Res> get entityId {
    return $EntityIdCopyWith<$Res>(_value.entityId, (value) {
      return _then(_value.copyWith(entityId: value) as $Val);
    });
  }

  /// Create a copy of DomainEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res> get initiator {
    return $UserActionCopyWith<$Res>(_value.initiator, (value) {
      return _then(_value.copyWith(initiator: value) as $Val);
    });
  }

  /// Create a copy of DomainEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityIdCopyWith<$Res>? get aggregateId {
    if (_value.aggregateId == null) {
      return null;
    }

    return $EntityIdCopyWith<$Res>(_value.aggregateId!, (value) {
      return _then(_value.copyWith(aggregateId: value) as $Val);
    });
  }

  /// Create a copy of DomainEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventIdCopyWith<$Res>? get correlationId {
    if (_value.correlationId == null) {
      return null;
    }

    return $EventIdCopyWith<$Res>(_value.correlationId!, (value) {
      return _then(_value.copyWith(correlationId: value) as $Val);
    });
  }

  /// Create a copy of DomainEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventIdCopyWith<$Res>? get causationId {
    if (_value.causationId == null) {
      return null;
    }

    return $EventIdCopyWith<$Res>(_value.causationId!, (value) {
      return _then(_value.copyWith(causationId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DomainEventModelImplCopyWith<$Res>
    implements $DomainEventModelCopyWith<$Res> {
  factory _$$DomainEventModelImplCopyWith(_$DomainEventModelImpl value,
          $Res Function(_$DomainEventModelImpl) then) =
      __$$DomainEventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventId id,
      EntityId entityId,
      String eventType,
      DateTime timestamp,
      UserAction initiator,
      Map<String, Object> changes,
      String? entityType,
      EntityId? aggregateId,
      Map<String, Object>? metadata,
      bool isAsync,
      List<String> tags,
      EventId? correlationId,
      EventId? causationId,
      int version,
      String? status,
      String schemaVersion,
      Map<String, Object>? schemaChanges,
      String? previousSchemaVersion,
      Map<String, int> schemaVectors});

  @override
  $EventIdCopyWith<$Res> get id;
  @override
  $EntityIdCopyWith<$Res> get entityId;
  @override
  $UserActionCopyWith<$Res> get initiator;
  @override
  $EntityIdCopyWith<$Res>? get aggregateId;
  @override
  $EventIdCopyWith<$Res>? get correlationId;
  @override
  $EventIdCopyWith<$Res>? get causationId;
}

/// @nodoc
class __$$DomainEventModelImplCopyWithImpl<$Res>
    extends _$DomainEventModelCopyWithImpl<$Res, _$DomainEventModelImpl>
    implements _$$DomainEventModelImplCopyWith<$Res> {
  __$$DomainEventModelImplCopyWithImpl(_$DomainEventModelImpl _value,
      $Res Function(_$DomainEventModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DomainEventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entityId = null,
    Object? eventType = null,
    Object? timestamp = null,
    Object? initiator = null,
    Object? changes = null,
    Object? entityType = freezed,
    Object? aggregateId = freezed,
    Object? metadata = freezed,
    Object? isAsync = null,
    Object? tags = null,
    Object? correlationId = freezed,
    Object? causationId = freezed,
    Object? version = null,
    Object? status = freezed,
    Object? schemaVersion = null,
    Object? schemaChanges = freezed,
    Object? previousSchemaVersion = freezed,
    Object? schemaVectors = null,
  }) {
    return _then(_$DomainEventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as EventId,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as EntityId,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      initiator: null == initiator
          ? _value.initiator
          : initiator // ignore: cast_nullable_to_non_nullable
              as UserAction,
      changes: null == changes
          ? _value._changes
          : changes // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      entityType: freezed == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String?,
      aggregateId: freezed == aggregateId
          ? _value.aggregateId
          : aggregateId // ignore: cast_nullable_to_non_nullable
              as EntityId?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      isAsync: null == isAsync
          ? _value.isAsync
          : isAsync // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correlationId: freezed == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as EventId?,
      causationId: freezed == causationId
          ? _value.causationId
          : causationId // ignore: cast_nullable_to_non_nullable
              as EventId?,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      schemaVersion: null == schemaVersion
          ? _value.schemaVersion
          : schemaVersion // ignore: cast_nullable_to_non_nullable
              as String,
      schemaChanges: freezed == schemaChanges
          ? _value._schemaChanges
          : schemaChanges // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>?,
      previousSchemaVersion: freezed == previousSchemaVersion
          ? _value.previousSchemaVersion
          : previousSchemaVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      schemaVectors: null == schemaVectors
          ? _value._schemaVectors
          : schemaVectors // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DomainEventModelImpl extends _DomainEventModel {
  const _$DomainEventModelImpl(
      {required this.id,
      required this.entityId,
      required this.eventType,
      required this.timestamp,
      required this.initiator,
      required final Map<String, Object> changes,
      this.entityType,
      this.aggregateId,
      final Map<String, Object>? metadata,
      this.isAsync = EventDefaults.isAsync,
      final List<String> tags = EventDefaults.tags,
      this.correlationId,
      this.causationId,
      this.version = EventDefaults.version,
      this.status,
      this.schemaVersion = EventSchemaConfig.currentVersion,
      final Map<String, Object>? schemaChanges,
      this.previousSchemaVersion,
      final Map<String, int> schemaVectors = const {}})
      : _changes = changes,
        _metadata = metadata,
        _tags = tags,
        _schemaChanges = schemaChanges,
        _schemaVectors = schemaVectors,
        super._();

  factory _$DomainEventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DomainEventModelImplFromJson(json);

// Core event data
  @override
  final EventId id;
  @override
  final EntityId entityId;
  @override
  final String eventType;
  @override
  final DateTime timestamp;
  @override
  final UserAction initiator;
  final Map<String, Object> _changes;
  @override
  Map<String, Object> get changes {
    if (_changes is EqualUnmodifiableMapView) return _changes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_changes);
  }

// Entity context
  @override
  final String? entityType;
  @override
  final EntityId? aggregateId;
// Metadata
  final Map<String, Object>? _metadata;
// Metadata
  @override
  Map<String, Object>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool isAsync;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

// Event chain
  @override
  final EventId? correlationId;
  @override
  final EventId? causationId;
  @override
  @JsonKey()
  final int version;
// Status
  @override
  final String? status;
// Schema versioning
  @override
  @JsonKey()
  final String schemaVersion;
  final Map<String, Object>? _schemaChanges;
  @override
  Map<String, Object>? get schemaChanges {
    final value = _schemaChanges;
    if (value == null) return null;
    if (_schemaChanges is EqualUnmodifiableMapView) return _schemaChanges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? previousSchemaVersion;
// Version vectors for distributed events
  final Map<String, int> _schemaVectors;
// Version vectors for distributed events
  @override
  @JsonKey()
  Map<String, int> get schemaVectors {
    if (_schemaVectors is EqualUnmodifiableMapView) return _schemaVectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_schemaVectors);
  }

  @override
  String toString() {
    return 'DomainEventModel(id: $id, entityId: $entityId, eventType: $eventType, timestamp: $timestamp, initiator: $initiator, changes: $changes, entityType: $entityType, aggregateId: $aggregateId, metadata: $metadata, isAsync: $isAsync, tags: $tags, correlationId: $correlationId, causationId: $causationId, version: $version, status: $status, schemaVersion: $schemaVersion, schemaChanges: $schemaChanges, previousSchemaVersion: $previousSchemaVersion, schemaVectors: $schemaVectors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DomainEventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.initiator, initiator) ||
                other.initiator == initiator) &&
            const DeepCollectionEquality().equals(other._changes, _changes) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.aggregateId, aggregateId) ||
                other.aggregateId == aggregateId) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.isAsync, isAsync) || other.isAsync == isAsync) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.correlationId, correlationId) ||
                other.correlationId == correlationId) &&
            (identical(other.causationId, causationId) ||
                other.causationId == causationId) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.schemaVersion, schemaVersion) ||
                other.schemaVersion == schemaVersion) &&
            const DeepCollectionEquality()
                .equals(other._schemaChanges, _schemaChanges) &&
            (identical(other.previousSchemaVersion, previousSchemaVersion) ||
                other.previousSchemaVersion == previousSchemaVersion) &&
            const DeepCollectionEquality()
                .equals(other._schemaVectors, _schemaVectors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        entityId,
        eventType,
        timestamp,
        initiator,
        const DeepCollectionEquality().hash(_changes),
        entityType,
        aggregateId,
        const DeepCollectionEquality().hash(_metadata),
        isAsync,
        const DeepCollectionEquality().hash(_tags),
        correlationId,
        causationId,
        version,
        status,
        schemaVersion,
        const DeepCollectionEquality().hash(_schemaChanges),
        previousSchemaVersion,
        const DeepCollectionEquality().hash(_schemaVectors)
      ]);

  /// Create a copy of DomainEventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DomainEventModelImplCopyWith<_$DomainEventModelImpl> get copyWith =>
      __$$DomainEventModelImplCopyWithImpl<_$DomainEventModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DomainEventModelImplToJson(
      this,
    );
  }
}

abstract class _DomainEventModel extends DomainEventModel {
  const factory _DomainEventModel(
      {required final EventId id,
      required final EntityId entityId,
      required final String eventType,
      required final DateTime timestamp,
      required final UserAction initiator,
      required final Map<String, Object> changes,
      final String? entityType,
      final EntityId? aggregateId,
      final Map<String, Object>? metadata,
      final bool isAsync,
      final List<String> tags,
      final EventId? correlationId,
      final EventId? causationId,
      final int version,
      final String? status,
      final String schemaVersion,
      final Map<String, Object>? schemaChanges,
      final String? previousSchemaVersion,
      final Map<String, int> schemaVectors}) = _$DomainEventModelImpl;
  const _DomainEventModel._() : super._();

  factory _DomainEventModel.fromJson(Map<String, dynamic> json) =
      _$DomainEventModelImpl.fromJson;

// Core event data
  @override
  EventId get id;
  @override
  EntityId get entityId;
  @override
  String get eventType;
  @override
  DateTime get timestamp;
  @override
  UserAction get initiator;
  @override
  Map<String, Object> get changes; // Entity context
  @override
  String? get entityType;
  @override
  EntityId? get aggregateId; // Metadata
  @override
  Map<String, Object>? get metadata;
  @override
  bool get isAsync;
  @override
  List<String> get tags; // Event chain
  @override
  EventId? get correlationId;
  @override
  EventId? get causationId;
  @override
  int get version; // Status
  @override
  String? get status; // Schema versioning
  @override
  String get schemaVersion;
  @override
  Map<String, Object>? get schemaChanges;
  @override
  String? get previousSchemaVersion; // Version vectors for distributed events
  @override
  Map<String, int> get schemaVectors;

  /// Create a copy of DomainEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DomainEventModelImplCopyWith<_$DomainEventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
