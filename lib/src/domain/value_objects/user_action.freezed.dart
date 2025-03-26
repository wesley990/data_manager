// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAction {

/// Core User Information
 String get uid; String get displayName;/// Action Metadata
 DateTime get timestamp; String get actionType; String get description;/// Context Information
 String get entityId; String get entityType; String get workflowStage; String get status; bool get isAuthenticated;/// Action Details
 Map<String, Object> get changes; Map<String, Object> get metadata; List<String> get affectedFields;/// Validation & Security
 bool get isAuthorized; List<String> get permissions; String get authenticationMethod;/// Audit Trail
 String get previousValue; String get newValue; String get reason; bool get isSuccessful; String get errorMessage;/// Related Actions
 String get parentActionId; List<String> get relatedActionIds;/// Event Tracking
 String get eventId; String get eventType; String get correlationId; String get causationId; List<String> get eventTags; Map<String, Object> get eventMetadata;
/// Create a copy of UserAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserActionCopyWith<UserAction> get copyWith => _$UserActionCopyWithImpl<UserAction>(this as UserAction, _$identity);

  /// Serializes this UserAction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAction&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.description, description) || other.description == description)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.workflowStage, workflowStage) || other.workflowStage == workflowStage)&&(identical(other.status, status) || other.status == status)&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated)&&const DeepCollectionEquality().equals(other.changes, changes)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.affectedFields, affectedFields)&&(identical(other.isAuthorized, isAuthorized) || other.isAuthorized == isAuthorized)&&const DeepCollectionEquality().equals(other.permissions, permissions)&&(identical(other.authenticationMethod, authenticationMethod) || other.authenticationMethod == authenticationMethod)&&(identical(other.previousValue, previousValue) || other.previousValue == previousValue)&&(identical(other.newValue, newValue) || other.newValue == newValue)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.isSuccessful, isSuccessful) || other.isSuccessful == isSuccessful)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.parentActionId, parentActionId) || other.parentActionId == parentActionId)&&const DeepCollectionEquality().equals(other.relatedActionIds, relatedActionIds)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.correlationId, correlationId) || other.correlationId == correlationId)&&(identical(other.causationId, causationId) || other.causationId == causationId)&&const DeepCollectionEquality().equals(other.eventTags, eventTags)&&const DeepCollectionEquality().equals(other.eventMetadata, eventMetadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,uid,displayName,timestamp,actionType,description,entityId,entityType,workflowStage,status,isAuthenticated,const DeepCollectionEquality().hash(changes),const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(affectedFields),isAuthorized,const DeepCollectionEquality().hash(permissions),authenticationMethod,previousValue,newValue,reason,isSuccessful,errorMessage,parentActionId,const DeepCollectionEquality().hash(relatedActionIds),eventId,eventType,correlationId,causationId,const DeepCollectionEquality().hash(eventTags),const DeepCollectionEquality().hash(eventMetadata)]);

@override
String toString() {
  return 'UserAction(uid: $uid, displayName: $displayName, timestamp: $timestamp, actionType: $actionType, description: $description, entityId: $entityId, entityType: $entityType, workflowStage: $workflowStage, status: $status, isAuthenticated: $isAuthenticated, changes: $changes, metadata: $metadata, affectedFields: $affectedFields, isAuthorized: $isAuthorized, permissions: $permissions, authenticationMethod: $authenticationMethod, previousValue: $previousValue, newValue: $newValue, reason: $reason, isSuccessful: $isSuccessful, errorMessage: $errorMessage, parentActionId: $parentActionId, relatedActionIds: $relatedActionIds, eventId: $eventId, eventType: $eventType, correlationId: $correlationId, causationId: $causationId, eventTags: $eventTags, eventMetadata: $eventMetadata)';
}


}

/// @nodoc
abstract mixin class $UserActionCopyWith<$Res>  {
  factory $UserActionCopyWith(UserAction value, $Res Function(UserAction) _then) = _$UserActionCopyWithImpl;
@useResult
$Res call({
 String uid, String displayName, DateTime timestamp, String actionType, String description, String entityId, String entityType, String workflowStage, String status, bool isAuthenticated, Map<String, Object> changes, Map<String, Object> metadata, List<String> affectedFields, bool isAuthorized, List<String> permissions, String authenticationMethod, String previousValue, String newValue, String reason, bool isSuccessful, String errorMessage, String parentActionId, List<String> relatedActionIds, String eventId, String eventType, String correlationId, String causationId, List<String> eventTags, Map<String, Object> eventMetadata
});




}
/// @nodoc
class _$UserActionCopyWithImpl<$Res>
    implements $UserActionCopyWith<$Res> {
  _$UserActionCopyWithImpl(this._self, this._then);

  final UserAction _self;
  final $Res Function(UserAction) _then;

/// Create a copy of UserAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? displayName = null,Object? timestamp = null,Object? actionType = null,Object? description = null,Object? entityId = null,Object? entityType = null,Object? workflowStage = null,Object? status = null,Object? isAuthenticated = null,Object? changes = null,Object? metadata = null,Object? affectedFields = null,Object? isAuthorized = null,Object? permissions = null,Object? authenticationMethod = null,Object? previousValue = null,Object? newValue = null,Object? reason = null,Object? isSuccessful = null,Object? errorMessage = null,Object? parentActionId = null,Object? relatedActionIds = null,Object? eventId = null,Object? eventType = null,Object? correlationId = null,Object? causationId = null,Object? eventTags = null,Object? eventMetadata = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,workflowStage: null == workflowStage ? _self.workflowStage : workflowStage // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,affectedFields: null == affectedFields ? _self.affectedFields : affectedFields // ignore: cast_nullable_to_non_nullable
as List<String>,isAuthorized: null == isAuthorized ? _self.isAuthorized : isAuthorized // ignore: cast_nullable_to_non_nullable
as bool,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>,authenticationMethod: null == authenticationMethod ? _self.authenticationMethod : authenticationMethod // ignore: cast_nullable_to_non_nullable
as String,previousValue: null == previousValue ? _self.previousValue : previousValue // ignore: cast_nullable_to_non_nullable
as String,newValue: null == newValue ? _self.newValue : newValue // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,isSuccessful: null == isSuccessful ? _self.isSuccessful : isSuccessful // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,parentActionId: null == parentActionId ? _self.parentActionId : parentActionId // ignore: cast_nullable_to_non_nullable
as String,relatedActionIds: null == relatedActionIds ? _self.relatedActionIds : relatedActionIds // ignore: cast_nullable_to_non_nullable
as List<String>,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,correlationId: null == correlationId ? _self.correlationId : correlationId // ignore: cast_nullable_to_non_nullable
as String,causationId: null == causationId ? _self.causationId : causationId // ignore: cast_nullable_to_non_nullable
as String,eventTags: null == eventTags ? _self.eventTags : eventTags // ignore: cast_nullable_to_non_nullable
as List<String>,eventMetadata: null == eventMetadata ? _self.eventMetadata : eventMetadata // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserAction implements UserAction {
  const _UserAction({required this.uid, this.displayName = '', required this.timestamp, this.actionType = '', this.description = '', this.entityId = '', this.entityType = '', this.workflowStage = '', this.status = '', this.isAuthenticated = false, final  Map<String, Object> changes = const {}, final  Map<String, Object> metadata = const {}, final  List<String> affectedFields = const [], this.isAuthorized = false, final  List<String> permissions = const [], this.authenticationMethod = '', this.previousValue = '', this.newValue = '', this.reason = '', this.isSuccessful = false, this.errorMessage = '', this.parentActionId = '', final  List<String> relatedActionIds = const [], this.eventId = '', this.eventType = '', this.correlationId = '', this.causationId = '', final  List<String> eventTags = const [], final  Map<String, Object> eventMetadata = const {}}): _changes = changes,_metadata = metadata,_affectedFields = affectedFields,_permissions = permissions,_relatedActionIds = relatedActionIds,_eventTags = eventTags,_eventMetadata = eventMetadata;
  factory _UserAction.fromJson(Map<String, dynamic> json) => _$UserActionFromJson(json);

/// Core User Information
@override final  String uid;
@override@JsonKey() final  String displayName;
/// Action Metadata
@override final  DateTime timestamp;
@override@JsonKey() final  String actionType;
@override@JsonKey() final  String description;
/// Context Information
@override@JsonKey() final  String entityId;
@override@JsonKey() final  String entityType;
@override@JsonKey() final  String workflowStage;
@override@JsonKey() final  String status;
@override@JsonKey() final  bool isAuthenticated;
/// Action Details
 final  Map<String, Object> _changes;
/// Action Details
@override@JsonKey() Map<String, Object> get changes {
  if (_changes is EqualUnmodifiableMapView) return _changes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_changes);
}

 final  Map<String, Object> _metadata;
@override@JsonKey() Map<String, Object> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

 final  List<String> _affectedFields;
@override@JsonKey() List<String> get affectedFields {
  if (_affectedFields is EqualUnmodifiableListView) return _affectedFields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_affectedFields);
}

/// Validation & Security
@override@JsonKey() final  bool isAuthorized;
 final  List<String> _permissions;
@override@JsonKey() List<String> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}

@override@JsonKey() final  String authenticationMethod;
/// Audit Trail
@override@JsonKey() final  String previousValue;
@override@JsonKey() final  String newValue;
@override@JsonKey() final  String reason;
@override@JsonKey() final  bool isSuccessful;
@override@JsonKey() final  String errorMessage;
/// Related Actions
@override@JsonKey() final  String parentActionId;
 final  List<String> _relatedActionIds;
@override@JsonKey() List<String> get relatedActionIds {
  if (_relatedActionIds is EqualUnmodifiableListView) return _relatedActionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedActionIds);
}

/// Event Tracking
@override@JsonKey() final  String eventId;
@override@JsonKey() final  String eventType;
@override@JsonKey() final  String correlationId;
@override@JsonKey() final  String causationId;
 final  List<String> _eventTags;
@override@JsonKey() List<String> get eventTags {
  if (_eventTags is EqualUnmodifiableListView) return _eventTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_eventTags);
}

 final  Map<String, Object> _eventMetadata;
@override@JsonKey() Map<String, Object> get eventMetadata {
  if (_eventMetadata is EqualUnmodifiableMapView) return _eventMetadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_eventMetadata);
}


/// Create a copy of UserAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserActionCopyWith<_UserAction> get copyWith => __$UserActionCopyWithImpl<_UserAction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserActionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAction&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.description, description) || other.description == description)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.workflowStage, workflowStage) || other.workflowStage == workflowStage)&&(identical(other.status, status) || other.status == status)&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated)&&const DeepCollectionEquality().equals(other._changes, _changes)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._affectedFields, _affectedFields)&&(identical(other.isAuthorized, isAuthorized) || other.isAuthorized == isAuthorized)&&const DeepCollectionEquality().equals(other._permissions, _permissions)&&(identical(other.authenticationMethod, authenticationMethod) || other.authenticationMethod == authenticationMethod)&&(identical(other.previousValue, previousValue) || other.previousValue == previousValue)&&(identical(other.newValue, newValue) || other.newValue == newValue)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.isSuccessful, isSuccessful) || other.isSuccessful == isSuccessful)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.parentActionId, parentActionId) || other.parentActionId == parentActionId)&&const DeepCollectionEquality().equals(other._relatedActionIds, _relatedActionIds)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.correlationId, correlationId) || other.correlationId == correlationId)&&(identical(other.causationId, causationId) || other.causationId == causationId)&&const DeepCollectionEquality().equals(other._eventTags, _eventTags)&&const DeepCollectionEquality().equals(other._eventMetadata, _eventMetadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,uid,displayName,timestamp,actionType,description,entityId,entityType,workflowStage,status,isAuthenticated,const DeepCollectionEquality().hash(_changes),const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_affectedFields),isAuthorized,const DeepCollectionEquality().hash(_permissions),authenticationMethod,previousValue,newValue,reason,isSuccessful,errorMessage,parentActionId,const DeepCollectionEquality().hash(_relatedActionIds),eventId,eventType,correlationId,causationId,const DeepCollectionEquality().hash(_eventTags),const DeepCollectionEquality().hash(_eventMetadata)]);

@override
String toString() {
  return 'UserAction(uid: $uid, displayName: $displayName, timestamp: $timestamp, actionType: $actionType, description: $description, entityId: $entityId, entityType: $entityType, workflowStage: $workflowStage, status: $status, isAuthenticated: $isAuthenticated, changes: $changes, metadata: $metadata, affectedFields: $affectedFields, isAuthorized: $isAuthorized, permissions: $permissions, authenticationMethod: $authenticationMethod, previousValue: $previousValue, newValue: $newValue, reason: $reason, isSuccessful: $isSuccessful, errorMessage: $errorMessage, parentActionId: $parentActionId, relatedActionIds: $relatedActionIds, eventId: $eventId, eventType: $eventType, correlationId: $correlationId, causationId: $causationId, eventTags: $eventTags, eventMetadata: $eventMetadata)';
}


}

/// @nodoc
abstract mixin class _$UserActionCopyWith<$Res> implements $UserActionCopyWith<$Res> {
  factory _$UserActionCopyWith(_UserAction value, $Res Function(_UserAction) _then) = __$UserActionCopyWithImpl;
@override @useResult
$Res call({
 String uid, String displayName, DateTime timestamp, String actionType, String description, String entityId, String entityType, String workflowStage, String status, bool isAuthenticated, Map<String, Object> changes, Map<String, Object> metadata, List<String> affectedFields, bool isAuthorized, List<String> permissions, String authenticationMethod, String previousValue, String newValue, String reason, bool isSuccessful, String errorMessage, String parentActionId, List<String> relatedActionIds, String eventId, String eventType, String correlationId, String causationId, List<String> eventTags, Map<String, Object> eventMetadata
});




}
/// @nodoc
class __$UserActionCopyWithImpl<$Res>
    implements _$UserActionCopyWith<$Res> {
  __$UserActionCopyWithImpl(this._self, this._then);

  final _UserAction _self;
  final $Res Function(_UserAction) _then;

/// Create a copy of UserAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? displayName = null,Object? timestamp = null,Object? actionType = null,Object? description = null,Object? entityId = null,Object? entityType = null,Object? workflowStage = null,Object? status = null,Object? isAuthenticated = null,Object? changes = null,Object? metadata = null,Object? affectedFields = null,Object? isAuthorized = null,Object? permissions = null,Object? authenticationMethod = null,Object? previousValue = null,Object? newValue = null,Object? reason = null,Object? isSuccessful = null,Object? errorMessage = null,Object? parentActionId = null,Object? relatedActionIds = null,Object? eventId = null,Object? eventType = null,Object? correlationId = null,Object? causationId = null,Object? eventTags = null,Object? eventMetadata = null,}) {
  return _then(_UserAction(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,workflowStage: null == workflowStage ? _self.workflowStage : workflowStage // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,changes: null == changes ? _self._changes : changes // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,affectedFields: null == affectedFields ? _self._affectedFields : affectedFields // ignore: cast_nullable_to_non_nullable
as List<String>,isAuthorized: null == isAuthorized ? _self.isAuthorized : isAuthorized // ignore: cast_nullable_to_non_nullable
as bool,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>,authenticationMethod: null == authenticationMethod ? _self.authenticationMethod : authenticationMethod // ignore: cast_nullable_to_non_nullable
as String,previousValue: null == previousValue ? _self.previousValue : previousValue // ignore: cast_nullable_to_non_nullable
as String,newValue: null == newValue ? _self.newValue : newValue // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,isSuccessful: null == isSuccessful ? _self.isSuccessful : isSuccessful // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,parentActionId: null == parentActionId ? _self.parentActionId : parentActionId // ignore: cast_nullable_to_non_nullable
as String,relatedActionIds: null == relatedActionIds ? _self._relatedActionIds : relatedActionIds // ignore: cast_nullable_to_non_nullable
as List<String>,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,correlationId: null == correlationId ? _self.correlationId : correlationId // ignore: cast_nullable_to_non_nullable
as String,causationId: null == causationId ? _self.causationId : causationId // ignore: cast_nullable_to_non_nullable
as String,eventTags: null == eventTags ? _self._eventTags : eventTags // ignore: cast_nullable_to_non_nullable
as List<String>,eventMetadata: null == eventMetadata ? _self._eventMetadata : eventMetadata // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,
  ));
}


}

// dart format on
