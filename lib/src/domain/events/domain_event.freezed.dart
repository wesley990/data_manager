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

DomainEvent _$DomainEventFromJson(Map<String, dynamic> json) {
  return _DomainEvent.fromJson(json);
}

/// @nodoc
mixin _$DomainEvent {
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
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this DomainEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DomainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DomainEventCopyWith<DomainEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomainEventCopyWith<$Res> {
  factory $DomainEventCopyWith(
          DomainEvent value, $Res Function(DomainEvent) then) =
      _$DomainEventCopyWithImpl<$Res, DomainEvent>;
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
      String? status});

  $EventIdCopyWith<$Res> get id;
  $EntityIdCopyWith<$Res> get entityId;
  $UserActionCopyWith<$Res> get initiator;
  $EntityIdCopyWith<$Res>? get aggregateId;
  $EventIdCopyWith<$Res>? get correlationId;
  $EventIdCopyWith<$Res>? get causationId;
}

/// @nodoc
class _$DomainEventCopyWithImpl<$Res, $Val extends DomainEvent>
    implements $DomainEventCopyWith<$Res> {
  _$DomainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DomainEvent
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
    ) as $Val);
  }

  /// Create a copy of DomainEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventIdCopyWith<$Res> get id {
    return $EventIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  /// Create a copy of DomainEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntityIdCopyWith<$Res> get entityId {
    return $EntityIdCopyWith<$Res>(_value.entityId, (value) {
      return _then(_value.copyWith(entityId: value) as $Val);
    });
  }

  /// Create a copy of DomainEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserActionCopyWith<$Res> get initiator {
    return $UserActionCopyWith<$Res>(_value.initiator, (value) {
      return _then(_value.copyWith(initiator: value) as $Val);
    });
  }

  /// Create a copy of DomainEvent
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

  /// Create a copy of DomainEvent
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

  /// Create a copy of DomainEvent
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
abstract class _$$DomainEventImplCopyWith<$Res>
    implements $DomainEventCopyWith<$Res> {
  factory _$$DomainEventImplCopyWith(
          _$DomainEventImpl value, $Res Function(_$DomainEventImpl) then) =
      __$$DomainEventImplCopyWithImpl<$Res>;
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
      String? status});

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
class __$$DomainEventImplCopyWithImpl<$Res>
    extends _$DomainEventCopyWithImpl<$Res, _$DomainEventImpl>
    implements _$$DomainEventImplCopyWith<$Res> {
  __$$DomainEventImplCopyWithImpl(
      _$DomainEventImpl _value, $Res Function(_$DomainEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DomainEvent
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
  }) {
    return _then(_$DomainEventImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DomainEventImpl extends _DomainEvent {
  const _$DomainEventImpl(
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
      this.status})
      : _changes = changes,
        _metadata = metadata,
        _tags = tags,
        super._();

  factory _$DomainEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$DomainEventImplFromJson(json);

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

  @override
  String toString() {
    return 'DomainEvent(id: $id, entityId: $entityId, eventType: $eventType, timestamp: $timestamp, initiator: $initiator, changes: $changes, entityType: $entityType, aggregateId: $aggregateId, metadata: $metadata, isAsync: $isAsync, tags: $tags, correlationId: $correlationId, causationId: $causationId, version: $version, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DomainEventImpl &&
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
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
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
      status);

  /// Create a copy of DomainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DomainEventImplCopyWith<_$DomainEventImpl> get copyWith =>
      __$$DomainEventImplCopyWithImpl<_$DomainEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DomainEventImplToJson(
      this,
    );
  }
}

abstract class _DomainEvent extends DomainEvent {
  const factory _DomainEvent(
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
      final String? status}) = _$DomainEventImpl;
  const _DomainEvent._() : super._();

  factory _DomainEvent.fromJson(Map<String, dynamic> json) =
      _$DomainEventImpl.fromJson;

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
  String? get status;

  /// Create a copy of DomainEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DomainEventImplCopyWith<_$DomainEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
