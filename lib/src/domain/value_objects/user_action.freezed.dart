// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAction _$UserActionFromJson(Map<String, dynamic> json) {
  return _UserAction.fromJson(json);
}

/// @nodoc
mixin _$UserAction {
  /// Core User Information
  String get uid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  /// Action Metadata
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get actionType => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Context Information
  String get entityId => throw _privateConstructorUsedError;
  String get entityType => throw _privateConstructorUsedError;
  String get workflowStage => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;

  /// Action Details
  Map<String, Object> get changes => throw _privateConstructorUsedError;
  Map<String, Object> get metadata => throw _privateConstructorUsedError;
  List<String> get affectedFields => throw _privateConstructorUsedError;

  /// Validation & Security
  bool get isAuthorized => throw _privateConstructorUsedError;
  List<String> get permissions => throw _privateConstructorUsedError;
  String get authenticationMethod => throw _privateConstructorUsedError;

  /// Audit Trail
  String get previousValue => throw _privateConstructorUsedError;
  String get newValue => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Related Actions
  String get parentActionId => throw _privateConstructorUsedError;
  List<String> get relatedActionIds => throw _privateConstructorUsedError;

  /// Event Tracking
  String get eventId => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  String get correlationId => throw _privateConstructorUsedError;
  String get causationId => throw _privateConstructorUsedError;
  List<String> get eventTags => throw _privateConstructorUsedError;
  Map<String, Object> get eventMetadata => throw _privateConstructorUsedError;

  /// Serializes this UserAction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserActionCopyWith<UserAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActionCopyWith<$Res> {
  factory $UserActionCopyWith(
          UserAction value, $Res Function(UserAction) then) =
      _$UserActionCopyWithImpl<$Res, UserAction>;
  @useResult
  $Res call(
      {String uid,
      String displayName,
      DateTime timestamp,
      String actionType,
      String description,
      String entityId,
      String entityType,
      String workflowStage,
      String status,
      bool isAuthenticated,
      Map<String, Object> changes,
      Map<String, Object> metadata,
      List<String> affectedFields,
      bool isAuthorized,
      List<String> permissions,
      String authenticationMethod,
      String previousValue,
      String newValue,
      String reason,
      bool isSuccessful,
      String errorMessage,
      String parentActionId,
      List<String> relatedActionIds,
      String eventId,
      String eventType,
      String correlationId,
      String causationId,
      List<String> eventTags,
      Map<String, Object> eventMetadata});
}

/// @nodoc
class _$UserActionCopyWithImpl<$Res, $Val extends UserAction>
    implements $UserActionCopyWith<$Res> {
  _$UserActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? displayName = null,
    Object? timestamp = null,
    Object? actionType = null,
    Object? description = null,
    Object? entityId = null,
    Object? entityType = null,
    Object? workflowStage = null,
    Object? status = null,
    Object? isAuthenticated = null,
    Object? changes = null,
    Object? metadata = null,
    Object? affectedFields = null,
    Object? isAuthorized = null,
    Object? permissions = null,
    Object? authenticationMethod = null,
    Object? previousValue = null,
    Object? newValue = null,
    Object? reason = null,
    Object? isSuccessful = null,
    Object? errorMessage = null,
    Object? parentActionId = null,
    Object? relatedActionIds = null,
    Object? eventId = null,
    Object? eventType = null,
    Object? correlationId = null,
    Object? causationId = null,
    Object? eventTags = null,
    Object? eventMetadata = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      workflowStage: null == workflowStage
          ? _value.workflowStage
          : workflowStage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      changes: null == changes
          ? _value.changes
          : changes // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      affectedFields: null == affectedFields
          ? _value.affectedFields
          : affectedFields // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAuthorized: null == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authenticationMethod: null == authenticationMethod
          ? _value.authenticationMethod
          : authenticationMethod // ignore: cast_nullable_to_non_nullable
              as String,
      previousValue: null == previousValue
          ? _value.previousValue
          : previousValue // ignore: cast_nullable_to_non_nullable
              as String,
      newValue: null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      parentActionId: null == parentActionId
          ? _value.parentActionId
          : parentActionId // ignore: cast_nullable_to_non_nullable
              as String,
      relatedActionIds: null == relatedActionIds
          ? _value.relatedActionIds
          : relatedActionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      correlationId: null == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as String,
      causationId: null == causationId
          ? _value.causationId
          : causationId // ignore: cast_nullable_to_non_nullable
              as String,
      eventTags: null == eventTags
          ? _value.eventTags
          : eventTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eventMetadata: null == eventMetadata
          ? _value.eventMetadata
          : eventMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserActionImplCopyWith<$Res>
    implements $UserActionCopyWith<$Res> {
  factory _$$UserActionImplCopyWith(
          _$UserActionImpl value, $Res Function(_$UserActionImpl) then) =
      __$$UserActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String displayName,
      DateTime timestamp,
      String actionType,
      String description,
      String entityId,
      String entityType,
      String workflowStage,
      String status,
      bool isAuthenticated,
      Map<String, Object> changes,
      Map<String, Object> metadata,
      List<String> affectedFields,
      bool isAuthorized,
      List<String> permissions,
      String authenticationMethod,
      String previousValue,
      String newValue,
      String reason,
      bool isSuccessful,
      String errorMessage,
      String parentActionId,
      List<String> relatedActionIds,
      String eventId,
      String eventType,
      String correlationId,
      String causationId,
      List<String> eventTags,
      Map<String, Object> eventMetadata});
}

/// @nodoc
class __$$UserActionImplCopyWithImpl<$Res>
    extends _$UserActionCopyWithImpl<$Res, _$UserActionImpl>
    implements _$$UserActionImplCopyWith<$Res> {
  __$$UserActionImplCopyWithImpl(
      _$UserActionImpl _value, $Res Function(_$UserActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? displayName = null,
    Object? timestamp = null,
    Object? actionType = null,
    Object? description = null,
    Object? entityId = null,
    Object? entityType = null,
    Object? workflowStage = null,
    Object? status = null,
    Object? isAuthenticated = null,
    Object? changes = null,
    Object? metadata = null,
    Object? affectedFields = null,
    Object? isAuthorized = null,
    Object? permissions = null,
    Object? authenticationMethod = null,
    Object? previousValue = null,
    Object? newValue = null,
    Object? reason = null,
    Object? isSuccessful = null,
    Object? errorMessage = null,
    Object? parentActionId = null,
    Object? relatedActionIds = null,
    Object? eventId = null,
    Object? eventType = null,
    Object? correlationId = null,
    Object? causationId = null,
    Object? eventTags = null,
    Object? eventMetadata = null,
  }) {
    return _then(_$UserActionImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actionType: null == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      workflowStage: null == workflowStage
          ? _value.workflowStage
          : workflowStage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      changes: null == changes
          ? _value._changes
          : changes // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
      affectedFields: null == affectedFields
          ? _value._affectedFields
          : affectedFields // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAuthorized: null == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authenticationMethod: null == authenticationMethod
          ? _value.authenticationMethod
          : authenticationMethod // ignore: cast_nullable_to_non_nullable
              as String,
      previousValue: null == previousValue
          ? _value.previousValue
          : previousValue // ignore: cast_nullable_to_non_nullable
              as String,
      newValue: null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      parentActionId: null == parentActionId
          ? _value.parentActionId
          : parentActionId // ignore: cast_nullable_to_non_nullable
              as String,
      relatedActionIds: null == relatedActionIds
          ? _value._relatedActionIds
          : relatedActionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      correlationId: null == correlationId
          ? _value.correlationId
          : correlationId // ignore: cast_nullable_to_non_nullable
              as String,
      causationId: null == causationId
          ? _value.causationId
          : causationId // ignore: cast_nullable_to_non_nullable
              as String,
      eventTags: null == eventTags
          ? _value._eventTags
          : eventTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eventMetadata: null == eventMetadata
          ? _value._eventMetadata
          : eventMetadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserActionImpl implements _UserAction {
  const _$UserActionImpl(
      {required this.uid,
      this.displayName = '',
      required this.timestamp,
      this.actionType = '',
      this.description = '',
      this.entityId = '',
      this.entityType = '',
      this.workflowStage = '',
      this.status = '',
      this.isAuthenticated = false,
      final Map<String, Object> changes = const {},
      final Map<String, Object> metadata = const {},
      final List<String> affectedFields = const [],
      this.isAuthorized = false,
      final List<String> permissions = const [],
      this.authenticationMethod = '',
      this.previousValue = '',
      this.newValue = '',
      this.reason = '',
      this.isSuccessful = false,
      this.errorMessage = '',
      this.parentActionId = '',
      final List<String> relatedActionIds = const [],
      this.eventId = '',
      this.eventType = '',
      this.correlationId = '',
      this.causationId = '',
      final List<String> eventTags = const [],
      final Map<String, Object> eventMetadata = const {}})
      : _changes = changes,
        _metadata = metadata,
        _affectedFields = affectedFields,
        _permissions = permissions,
        _relatedActionIds = relatedActionIds,
        _eventTags = eventTags,
        _eventMetadata = eventMetadata;

  factory _$UserActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserActionImplFromJson(json);

  /// Core User Information
  @override
  final String uid;
  @override
  @JsonKey()
  final String displayName;

  /// Action Metadata
  @override
  final DateTime timestamp;
  @override
  @JsonKey()
  final String actionType;
  @override
  @JsonKey()
  final String description;

  /// Context Information
  @override
  @JsonKey()
  final String entityId;
  @override
  @JsonKey()
  final String entityType;
  @override
  @JsonKey()
  final String workflowStage;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final bool isAuthenticated;

  /// Action Details
  final Map<String, Object> _changes;

  /// Action Details
  @override
  @JsonKey()
  Map<String, Object> get changes {
    if (_changes is EqualUnmodifiableMapView) return _changes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_changes);
  }

  final Map<String, Object> _metadata;
  @override
  @JsonKey()
  Map<String, Object> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  final List<String> _affectedFields;
  @override
  @JsonKey()
  List<String> get affectedFields {
    if (_affectedFields is EqualUnmodifiableListView) return _affectedFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_affectedFields);
  }

  /// Validation & Security
  @override
  @JsonKey()
  final bool isAuthorized;
  final List<String> _permissions;
  @override
  @JsonKey()
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  @JsonKey()
  final String authenticationMethod;

  /// Audit Trail
  @override
  @JsonKey()
  final String previousValue;
  @override
  @JsonKey()
  final String newValue;
  @override
  @JsonKey()
  final String reason;
  @override
  @JsonKey()
  final bool isSuccessful;
  @override
  @JsonKey()
  final String errorMessage;

  /// Related Actions
  @override
  @JsonKey()
  final String parentActionId;
  final List<String> _relatedActionIds;
  @override
  @JsonKey()
  List<String> get relatedActionIds {
    if (_relatedActionIds is EqualUnmodifiableListView)
      return _relatedActionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedActionIds);
  }

  /// Event Tracking
  @override
  @JsonKey()
  final String eventId;
  @override
  @JsonKey()
  final String eventType;
  @override
  @JsonKey()
  final String correlationId;
  @override
  @JsonKey()
  final String causationId;
  final List<String> _eventTags;
  @override
  @JsonKey()
  List<String> get eventTags {
    if (_eventTags is EqualUnmodifiableListView) return _eventTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventTags);
  }

  final Map<String, Object> _eventMetadata;
  @override
  @JsonKey()
  Map<String, Object> get eventMetadata {
    if (_eventMetadata is EqualUnmodifiableMapView) return _eventMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_eventMetadata);
  }

  @override
  String toString() {
    return 'UserAction(uid: $uid, displayName: $displayName, timestamp: $timestamp, actionType: $actionType, description: $description, entityId: $entityId, entityType: $entityType, workflowStage: $workflowStage, status: $status, isAuthenticated: $isAuthenticated, changes: $changes, metadata: $metadata, affectedFields: $affectedFields, isAuthorized: $isAuthorized, permissions: $permissions, authenticationMethod: $authenticationMethod, previousValue: $previousValue, newValue: $newValue, reason: $reason, isSuccessful: $isSuccessful, errorMessage: $errorMessage, parentActionId: $parentActionId, relatedActionIds: $relatedActionIds, eventId: $eventId, eventType: $eventType, correlationId: $correlationId, causationId: $causationId, eventTags: $eventTags, eventMetadata: $eventMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserActionImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.workflowStage, workflowStage) ||
                other.workflowStage == workflowStage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            const DeepCollectionEquality().equals(other._changes, _changes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._affectedFields, _affectedFields) &&
            (identical(other.isAuthorized, isAuthorized) ||
                other.isAuthorized == isAuthorized) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.authenticationMethod, authenticationMethod) ||
                other.authenticationMethod == authenticationMethod) &&
            (identical(other.previousValue, previousValue) ||
                other.previousValue == previousValue) &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.isSuccessful, isSuccessful) ||
                other.isSuccessful == isSuccessful) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.parentActionId, parentActionId) ||
                other.parentActionId == parentActionId) &&
            const DeepCollectionEquality()
                .equals(other._relatedActionIds, _relatedActionIds) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.correlationId, correlationId) ||
                other.correlationId == correlationId) &&
            (identical(other.causationId, causationId) ||
                other.causationId == causationId) &&
            const DeepCollectionEquality()
                .equals(other._eventTags, _eventTags) &&
            const DeepCollectionEquality()
                .equals(other._eventMetadata, _eventMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uid,
        displayName,
        timestamp,
        actionType,
        description,
        entityId,
        entityType,
        workflowStage,
        status,
        isAuthenticated,
        const DeepCollectionEquality().hash(_changes),
        const DeepCollectionEquality().hash(_metadata),
        const DeepCollectionEquality().hash(_affectedFields),
        isAuthorized,
        const DeepCollectionEquality().hash(_permissions),
        authenticationMethod,
        previousValue,
        newValue,
        reason,
        isSuccessful,
        errorMessage,
        parentActionId,
        const DeepCollectionEquality().hash(_relatedActionIds),
        eventId,
        eventType,
        correlationId,
        causationId,
        const DeepCollectionEquality().hash(_eventTags),
        const DeepCollectionEquality().hash(_eventMetadata)
      ]);

  /// Create a copy of UserAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserActionImplCopyWith<_$UserActionImpl> get copyWith =>
      __$$UserActionImplCopyWithImpl<_$UserActionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserActionImplToJson(
      this,
    );
  }
}

abstract class _UserAction implements UserAction {
  const factory _UserAction(
      {required final String uid,
      final String displayName,
      required final DateTime timestamp,
      final String actionType,
      final String description,
      final String entityId,
      final String entityType,
      final String workflowStage,
      final String status,
      final bool isAuthenticated,
      final Map<String, Object> changes,
      final Map<String, Object> metadata,
      final List<String> affectedFields,
      final bool isAuthorized,
      final List<String> permissions,
      final String authenticationMethod,
      final String previousValue,
      final String newValue,
      final String reason,
      final bool isSuccessful,
      final String errorMessage,
      final String parentActionId,
      final List<String> relatedActionIds,
      final String eventId,
      final String eventType,
      final String correlationId,
      final String causationId,
      final List<String> eventTags,
      final Map<String, Object> eventMetadata}) = _$UserActionImpl;

  factory _UserAction.fromJson(Map<String, dynamic> json) =
      _$UserActionImpl.fromJson;

  /// Core User Information
  @override
  String get uid;
  @override
  String get displayName;

  /// Action Metadata
  @override
  DateTime get timestamp;
  @override
  String get actionType;
  @override
  String get description;

  /// Context Information
  @override
  String get entityId;
  @override
  String get entityType;
  @override
  String get workflowStage;
  @override
  String get status;
  @override
  bool get isAuthenticated;

  /// Action Details
  @override
  Map<String, Object> get changes;
  @override
  Map<String, Object> get metadata;
  @override
  List<String> get affectedFields;

  /// Validation & Security
  @override
  bool get isAuthorized;
  @override
  List<String> get permissions;
  @override
  String get authenticationMethod;

  /// Audit Trail
  @override
  String get previousValue;
  @override
  String get newValue;
  @override
  String get reason;
  @override
  bool get isSuccessful;
  @override
  String get errorMessage;

  /// Related Actions
  @override
  String get parentActionId;
  @override
  List<String> get relatedActionIds;

  /// Event Tracking
  @override
  String get eventId;
  @override
  String get eventType;
  @override
  String get correlationId;
  @override
  String get causationId;
  @override
  List<String> get eventTags;
  @override
  Map<String, Object> get eventMetadata;

  /// Create a copy of UserAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserActionImplCopyWith<_$UserActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
