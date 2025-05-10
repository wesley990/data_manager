// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EntityHierarchy {

/// Full path in the entity tree
///
/// Format: '/parent_id/grandparent_id/entity_id'
/// Paths use forward slashes as separators and start with a leading slash
/// Path segments are entity IDs in reverse ancestry order
 String? get treePath;/// Depth level in the hierarchy (0 = root)
 int get treeDepth;/// List of ancestor entity IDs in order from root to parent
 List<EntityId> get ancestors;/// Direct parent entity ID
 EntityId? get parentId;/// List of direct child entity IDs
 List<EntityId> get childIds;/// Indicates if this entity is a root node in a hierarchy
 bool get isHierarchyRoot;/// Indicates if this entity is a leaf node (has no children)
 bool get isHierarchyLeaf;/// Additional hierarchy-related metadata
 HierarchyMetadata get hierarchyMeta;
/// Create a copy of EntityHierarchy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityHierarchyCopyWith<EntityHierarchy> get copyWith => _$EntityHierarchyCopyWithImpl<EntityHierarchy>(this as EntityHierarchy, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityHierarchy&&(identical(other.treePath, treePath) || other.treePath == treePath)&&(identical(other.treeDepth, treeDepth) || other.treeDepth == treeDepth)&&const DeepCollectionEquality().equals(other.ancestors, ancestors)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other.childIds, childIds)&&(identical(other.isHierarchyRoot, isHierarchyRoot) || other.isHierarchyRoot == isHierarchyRoot)&&(identical(other.isHierarchyLeaf, isHierarchyLeaf) || other.isHierarchyLeaf == isHierarchyLeaf)&&const DeepCollectionEquality().equals(other.hierarchyMeta, hierarchyMeta));
}


@override
int get hashCode => Object.hash(runtimeType,treePath,treeDepth,const DeepCollectionEquality().hash(ancestors),parentId,const DeepCollectionEquality().hash(childIds),isHierarchyRoot,isHierarchyLeaf,const DeepCollectionEquality().hash(hierarchyMeta));

@override
String toString() {
  return 'EntityHierarchy(treePath: $treePath, treeDepth: $treeDepth, ancestors: $ancestors, parentId: $parentId, childIds: $childIds, isHierarchyRoot: $isHierarchyRoot, isHierarchyLeaf: $isHierarchyLeaf, hierarchyMeta: $hierarchyMeta)';
}


}

/// @nodoc
abstract mixin class $EntityHierarchyCopyWith<$Res>  {
  factory $EntityHierarchyCopyWith(EntityHierarchy value, $Res Function(EntityHierarchy) _then) = _$EntityHierarchyCopyWithImpl;
@useResult
$Res call({
 String? treePath, int treeDepth, List<EntityId> ancestors, EntityId? parentId, List<EntityId> childIds, bool isHierarchyRoot, bool isHierarchyLeaf, HierarchyMetadata hierarchyMeta
});


$EntityIdCopyWith<$Res>? get parentId;

}
/// @nodoc
class _$EntityHierarchyCopyWithImpl<$Res>
    implements $EntityHierarchyCopyWith<$Res> {
  _$EntityHierarchyCopyWithImpl(this._self, this._then);

  final EntityHierarchy _self;
  final $Res Function(EntityHierarchy) _then;

/// Create a copy of EntityHierarchy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? treePath = freezed,Object? treeDepth = null,Object? ancestors = null,Object? parentId = freezed,Object? childIds = null,Object? isHierarchyRoot = null,Object? isHierarchyLeaf = null,Object? hierarchyMeta = null,}) {
  return _then(_self.copyWith(
treePath: freezed == treePath ? _self.treePath : treePath // ignore: cast_nullable_to_non_nullable
as String?,treeDepth: null == treeDepth ? _self.treeDepth : treeDepth // ignore: cast_nullable_to_non_nullable
as int,ancestors: null == ancestors ? _self.ancestors : ancestors // ignore: cast_nullable_to_non_nullable
as List<EntityId>,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as EntityId?,childIds: null == childIds ? _self.childIds : childIds // ignore: cast_nullable_to_non_nullable
as List<EntityId>,isHierarchyRoot: null == isHierarchyRoot ? _self.isHierarchyRoot : isHierarchyRoot // ignore: cast_nullable_to_non_nullable
as bool,isHierarchyLeaf: null == isHierarchyLeaf ? _self.isHierarchyLeaf : isHierarchyLeaf // ignore: cast_nullable_to_non_nullable
as bool,hierarchyMeta: null == hierarchyMeta ? _self.hierarchyMeta : hierarchyMeta // ignore: cast_nullable_to_non_nullable
as HierarchyMetadata,
  ));
}
/// Create a copy of EntityHierarchy
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res>? get parentId {
    if (_self.parentId == null) {
    return null;
  }

  return $EntityIdCopyWith<$Res>(_self.parentId!, (value) {
    return _then(_self.copyWith(parentId: value));
  });
}
}


/// @nodoc


class _EntityHierarchy extends EntityHierarchy {
  const _EntityHierarchy({this.treePath, this.treeDepth = 0, final  List<EntityId> ancestors = const <EntityId>[], this.parentId, final  List<EntityId> childIds = const <EntityId>[], this.isHierarchyRoot = true, this.isHierarchyLeaf = true, final  HierarchyMetadata hierarchyMeta = const {}}): _ancestors = ancestors,_childIds = childIds,_hierarchyMeta = hierarchyMeta,super._();
  

/// Full path in the entity tree
///
/// Format: '/parent_id/grandparent_id/entity_id'
/// Paths use forward slashes as separators and start with a leading slash
/// Path segments are entity IDs in reverse ancestry order
@override final  String? treePath;
/// Depth level in the hierarchy (0 = root)
@override@JsonKey() final  int treeDepth;
/// List of ancestor entity IDs in order from root to parent
 final  List<EntityId> _ancestors;
/// List of ancestor entity IDs in order from root to parent
@override@JsonKey() List<EntityId> get ancestors {
  if (_ancestors is EqualUnmodifiableListView) return _ancestors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ancestors);
}

/// Direct parent entity ID
@override final  EntityId? parentId;
/// List of direct child entity IDs
 final  List<EntityId> _childIds;
/// List of direct child entity IDs
@override@JsonKey() List<EntityId> get childIds {
  if (_childIds is EqualUnmodifiableListView) return _childIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_childIds);
}

/// Indicates if this entity is a root node in a hierarchy
@override@JsonKey() final  bool isHierarchyRoot;
/// Indicates if this entity is a leaf node (has no children)
@override@JsonKey() final  bool isHierarchyLeaf;
/// Additional hierarchy-related metadata
 final  HierarchyMetadata _hierarchyMeta;
/// Additional hierarchy-related metadata
@override@JsonKey() HierarchyMetadata get hierarchyMeta {
  if (_hierarchyMeta is EqualUnmodifiableMapView) return _hierarchyMeta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_hierarchyMeta);
}


/// Create a copy of EntityHierarchy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityHierarchyCopyWith<_EntityHierarchy> get copyWith => __$EntityHierarchyCopyWithImpl<_EntityHierarchy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityHierarchy&&(identical(other.treePath, treePath) || other.treePath == treePath)&&(identical(other.treeDepth, treeDepth) || other.treeDepth == treeDepth)&&const DeepCollectionEquality().equals(other._ancestors, _ancestors)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other._childIds, _childIds)&&(identical(other.isHierarchyRoot, isHierarchyRoot) || other.isHierarchyRoot == isHierarchyRoot)&&(identical(other.isHierarchyLeaf, isHierarchyLeaf) || other.isHierarchyLeaf == isHierarchyLeaf)&&const DeepCollectionEquality().equals(other._hierarchyMeta, _hierarchyMeta));
}


@override
int get hashCode => Object.hash(runtimeType,treePath,treeDepth,const DeepCollectionEquality().hash(_ancestors),parentId,const DeepCollectionEquality().hash(_childIds),isHierarchyRoot,isHierarchyLeaf,const DeepCollectionEquality().hash(_hierarchyMeta));

@override
String toString() {
  return 'EntityHierarchy(treePath: $treePath, treeDepth: $treeDepth, ancestors: $ancestors, parentId: $parentId, childIds: $childIds, isHierarchyRoot: $isHierarchyRoot, isHierarchyLeaf: $isHierarchyLeaf, hierarchyMeta: $hierarchyMeta)';
}


}

/// @nodoc
abstract mixin class _$EntityHierarchyCopyWith<$Res> implements $EntityHierarchyCopyWith<$Res> {
  factory _$EntityHierarchyCopyWith(_EntityHierarchy value, $Res Function(_EntityHierarchy) _then) = __$EntityHierarchyCopyWithImpl;
@override @useResult
$Res call({
 String? treePath, int treeDepth, List<EntityId> ancestors, EntityId? parentId, List<EntityId> childIds, bool isHierarchyRoot, bool isHierarchyLeaf, HierarchyMetadata hierarchyMeta
});


@override $EntityIdCopyWith<$Res>? get parentId;

}
/// @nodoc
class __$EntityHierarchyCopyWithImpl<$Res>
    implements _$EntityHierarchyCopyWith<$Res> {
  __$EntityHierarchyCopyWithImpl(this._self, this._then);

  final _EntityHierarchy _self;
  final $Res Function(_EntityHierarchy) _then;

/// Create a copy of EntityHierarchy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? treePath = freezed,Object? treeDepth = null,Object? ancestors = null,Object? parentId = freezed,Object? childIds = null,Object? isHierarchyRoot = null,Object? isHierarchyLeaf = null,Object? hierarchyMeta = null,}) {
  return _then(_EntityHierarchy(
treePath: freezed == treePath ? _self.treePath : treePath // ignore: cast_nullable_to_non_nullable
as String?,treeDepth: null == treeDepth ? _self.treeDepth : treeDepth // ignore: cast_nullable_to_non_nullable
as int,ancestors: null == ancestors ? _self._ancestors : ancestors // ignore: cast_nullable_to_non_nullable
as List<EntityId>,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as EntityId?,childIds: null == childIds ? _self._childIds : childIds // ignore: cast_nullable_to_non_nullable
as List<EntityId>,isHierarchyRoot: null == isHierarchyRoot ? _self.isHierarchyRoot : isHierarchyRoot // ignore: cast_nullable_to_non_nullable
as bool,isHierarchyLeaf: null == isHierarchyLeaf ? _self.isHierarchyLeaf : isHierarchyLeaf // ignore: cast_nullable_to_non_nullable
as bool,hierarchyMeta: null == hierarchyMeta ? _self._hierarchyMeta : hierarchyMeta // ignore: cast_nullable_to_non_nullable
as HierarchyMetadata,
  ));
}

/// Create a copy of EntityHierarchy
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityIdCopyWith<$Res>? get parentId {
    if (_self.parentId == null) {
    return null;
  }

  return $EntityIdCopyWith<$Res>(_self.parentId!, (value) {
    return _then(_self.copyWith(parentId: value));
  });
}
}

/// @nodoc
mixin _$EntitySecurity {

/// User who last accessed the entity
 UserAction? get lastAccessor;/// History of entity modifications
 List<UserAction> get modHistory;/// Log of entity access events
 List<UserAction> get accessLog;/// Whether the entity is publicly accessible
 bool get isPublic;/// Number of times the entity has been accessed
 int get accessCount;
/// Create a copy of EntitySecurity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntitySecurityCopyWith<EntitySecurity> get copyWith => _$EntitySecurityCopyWithImpl<EntitySecurity>(this as EntitySecurity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntitySecurity&&(identical(other.lastAccessor, lastAccessor) || other.lastAccessor == lastAccessor)&&const DeepCollectionEquality().equals(other.modHistory, modHistory)&&const DeepCollectionEquality().equals(other.accessLog, accessLog)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.accessCount, accessCount) || other.accessCount == accessCount));
}


@override
int get hashCode => Object.hash(runtimeType,lastAccessor,const DeepCollectionEquality().hash(modHistory),const DeepCollectionEquality().hash(accessLog),isPublic,accessCount);

@override
String toString() {
  return 'EntitySecurity(lastAccessor: $lastAccessor, modHistory: $modHistory, accessLog: $accessLog, isPublic: $isPublic, accessCount: $accessCount)';
}


}

/// @nodoc
abstract mixin class $EntitySecurityCopyWith<$Res>  {
  factory $EntitySecurityCopyWith(EntitySecurity value, $Res Function(EntitySecurity) _then) = _$EntitySecurityCopyWithImpl;
@useResult
$Res call({
 UserAction? lastAccessor, List<UserAction> modHistory, List<UserAction> accessLog, bool isPublic, int accessCount
});


$UserActionCopyWith<$Res>? get lastAccessor;

}
/// @nodoc
class _$EntitySecurityCopyWithImpl<$Res>
    implements $EntitySecurityCopyWith<$Res> {
  _$EntitySecurityCopyWithImpl(this._self, this._then);

  final EntitySecurity _self;
  final $Res Function(EntitySecurity) _then;

/// Create a copy of EntitySecurity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lastAccessor = freezed,Object? modHistory = null,Object? accessLog = null,Object? isPublic = null,Object? accessCount = null,}) {
  return _then(_self.copyWith(
lastAccessor: freezed == lastAccessor ? _self.lastAccessor : lastAccessor // ignore: cast_nullable_to_non_nullable
as UserAction?,modHistory: null == modHistory ? _self.modHistory : modHistory // ignore: cast_nullable_to_non_nullable
as List<UserAction>,accessLog: null == accessLog ? _self.accessLog : accessLog // ignore: cast_nullable_to_non_nullable
as List<UserAction>,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,accessCount: null == accessCount ? _self.accessCount : accessCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of EntitySecurity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserActionCopyWith<$Res>? get lastAccessor {
    if (_self.lastAccessor == null) {
    return null;
  }

  return $UserActionCopyWith<$Res>(_self.lastAccessor!, (value) {
    return _then(_self.copyWith(lastAccessor: value));
  });
}
}


/// @nodoc


class _EntitySecurity extends EntitySecurity {
  const _EntitySecurity({this.lastAccessor, final  List<UserAction> modHistory = const [], final  List<UserAction> accessLog = const [], this.isPublic = EntityDefaults.isPublic, this.accessCount = EntityDefaults.accessCount}): _modHistory = modHistory,_accessLog = accessLog,super._();
  

/// User who last accessed the entity
@override final  UserAction? lastAccessor;
/// History of entity modifications
 final  List<UserAction> _modHistory;
/// History of entity modifications
@override@JsonKey() List<UserAction> get modHistory {
  if (_modHistory is EqualUnmodifiableListView) return _modHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modHistory);
}

/// Log of entity access events
 final  List<UserAction> _accessLog;
/// Log of entity access events
@override@JsonKey() List<UserAction> get accessLog {
  if (_accessLog is EqualUnmodifiableListView) return _accessLog;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accessLog);
}

/// Whether the entity is publicly accessible
@override@JsonKey() final  bool isPublic;
/// Number of times the entity has been accessed
@override@JsonKey() final  int accessCount;

/// Create a copy of EntitySecurity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntitySecurityCopyWith<_EntitySecurity> get copyWith => __$EntitySecurityCopyWithImpl<_EntitySecurity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntitySecurity&&(identical(other.lastAccessor, lastAccessor) || other.lastAccessor == lastAccessor)&&const DeepCollectionEquality().equals(other._modHistory, _modHistory)&&const DeepCollectionEquality().equals(other._accessLog, _accessLog)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.accessCount, accessCount) || other.accessCount == accessCount));
}


@override
int get hashCode => Object.hash(runtimeType,lastAccessor,const DeepCollectionEquality().hash(_modHistory),const DeepCollectionEquality().hash(_accessLog),isPublic,accessCount);

@override
String toString() {
  return 'EntitySecurity(lastAccessor: $lastAccessor, modHistory: $modHistory, accessLog: $accessLog, isPublic: $isPublic, accessCount: $accessCount)';
}


}

/// @nodoc
abstract mixin class _$EntitySecurityCopyWith<$Res> implements $EntitySecurityCopyWith<$Res> {
  factory _$EntitySecurityCopyWith(_EntitySecurity value, $Res Function(_EntitySecurity) _then) = __$EntitySecurityCopyWithImpl;
@override @useResult
$Res call({
 UserAction? lastAccessor, List<UserAction> modHistory, List<UserAction> accessLog, bool isPublic, int accessCount
});


@override $UserActionCopyWith<$Res>? get lastAccessor;

}
/// @nodoc
class __$EntitySecurityCopyWithImpl<$Res>
    implements _$EntitySecurityCopyWith<$Res> {
  __$EntitySecurityCopyWithImpl(this._self, this._then);

  final _EntitySecurity _self;
  final $Res Function(_EntitySecurity) _then;

/// Create a copy of EntitySecurity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lastAccessor = freezed,Object? modHistory = null,Object? accessLog = null,Object? isPublic = null,Object? accessCount = null,}) {
  return _then(_EntitySecurity(
lastAccessor: freezed == lastAccessor ? _self.lastAccessor : lastAccessor // ignore: cast_nullable_to_non_nullable
as UserAction?,modHistory: null == modHistory ? _self._modHistory : modHistory // ignore: cast_nullable_to_non_nullable
as List<UserAction>,accessLog: null == accessLog ? _self._accessLog : accessLog // ignore: cast_nullable_to_non_nullable
as List<UserAction>,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,accessCount: null == accessCount ? _self.accessCount : accessCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of EntitySecurity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserActionCopyWith<$Res>? get lastAccessor {
    if (_self.lastAccessor == null) {
    return null;
  }

  return $UserActionCopyWith<$Res>(_self.lastAccessor!, (value) {
    return _then(_self.copyWith(lastAccessor: value));
  });
}
}

/// @nodoc
mixin _$EntityClassification {

/// List of searchable tags associated with the entity
 List<String> get tags;/// Key-value pairs of labels for categorization
 Map<String, String> get labels;/// Priority level of the entity
 EntityPriority get priority;/// Current workflow stage of the entity
 EntityStage get stage;/// Date when the entity expires/becomes inactive
 DateTime? get expiryDate;
/// Create a copy of EntityClassification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityClassificationCopyWith<EntityClassification> get copyWith => _$EntityClassificationCopyWithImpl<EntityClassification>(this as EntityClassification, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityClassification&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.labels, labels)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(labels),priority,stage,expiryDate);

@override
String toString() {
  return 'EntityClassification(tags: $tags, labels: $labels, priority: $priority, stage: $stage, expiryDate: $expiryDate)';
}


}

/// @nodoc
abstract mixin class $EntityClassificationCopyWith<$Res>  {
  factory $EntityClassificationCopyWith(EntityClassification value, $Res Function(EntityClassification) _then) = _$EntityClassificationCopyWithImpl;
@useResult
$Res call({
 List<String> tags, Map<String, String> labels, EntityPriority priority, EntityStage stage, DateTime? expiryDate
});




}
/// @nodoc
class _$EntityClassificationCopyWithImpl<$Res>
    implements $EntityClassificationCopyWith<$Res> {
  _$EntityClassificationCopyWithImpl(this._self, this._then);

  final EntityClassification _self;
  final $Res Function(EntityClassification) _then;

/// Create a copy of EntityClassification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tags = null,Object? labels = null,Object? priority = null,Object? stage = null,Object? expiryDate = freezed,}) {
  return _then(_self.copyWith(
tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,labels: null == labels ? _self.labels : labels // ignore: cast_nullable_to_non_nullable
as Map<String, String>,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as EntityPriority,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as EntityStage,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc


class _EntityClassification extends EntityClassification {
  const _EntityClassification({final  List<String> tags = const [], final  Map<String, String> labels = const {}, this.priority = EntityDefaults.priority, this.stage = EntityDefaults.stage, this.expiryDate}): _tags = tags,_labels = labels,super._();
  

/// List of searchable tags associated with the entity
 final  List<String> _tags;
/// List of searchable tags associated with the entity
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

/// Key-value pairs of labels for categorization
 final  Map<String, String> _labels;
/// Key-value pairs of labels for categorization
@override@JsonKey() Map<String, String> get labels {
  if (_labels is EqualUnmodifiableMapView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_labels);
}

/// Priority level of the entity
@override@JsonKey() final  EntityPriority priority;
/// Current workflow stage of the entity
@override@JsonKey() final  EntityStage stage;
/// Date when the entity expires/becomes inactive
@override final  DateTime? expiryDate;

/// Create a copy of EntityClassification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityClassificationCopyWith<_EntityClassification> get copyWith => __$EntityClassificationCopyWithImpl<_EntityClassification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityClassification&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._labels, _labels)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_labels),priority,stage,expiryDate);

@override
String toString() {
  return 'EntityClassification(tags: $tags, labels: $labels, priority: $priority, stage: $stage, expiryDate: $expiryDate)';
}


}

/// @nodoc
abstract mixin class _$EntityClassificationCopyWith<$Res> implements $EntityClassificationCopyWith<$Res> {
  factory _$EntityClassificationCopyWith(_EntityClassification value, $Res Function(_EntityClassification) _then) = __$EntityClassificationCopyWithImpl;
@override @useResult
$Res call({
 List<String> tags, Map<String, String> labels, EntityPriority priority, EntityStage stage, DateTime? expiryDate
});




}
/// @nodoc
class __$EntityClassificationCopyWithImpl<$Res>
    implements _$EntityClassificationCopyWith<$Res> {
  __$EntityClassificationCopyWithImpl(this._self, this._then);

  final _EntityClassification _self;
  final $Res Function(_EntityClassification) _then;

/// Create a copy of EntityClassification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tags = null,Object? labels = null,Object? priority = null,Object? stage = null,Object? expiryDate = freezed,}) {
  return _then(_EntityClassification(
tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,labels: null == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as Map<String, String>,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as EntityPriority,stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as EntityStage,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$EntityVersioning {

/// Metadata for synchronization purposes
///
/// Expected keys:
///   - 'lastSync': DateTime or String (ISO8601)
///   - 'syncSource': String
///   - Add more as needed for your application
 EntityMeta get syncMeta;/// Synchronization version identifier
 String? get syncVer;/// Search index for efficient queries
///
/// Expected keys:
///   - 'keywords': `List<String>`
///   - 'category': String
///   - Add more as needed for your application
 Map<String, Object> get searchIndex;/// Event version counter
 int get eventVer;/// List of event IDs that haven't been processed
 List<String> get pendingEvents;/// Additional event-related metadata
///
/// Expected keys:
///   - 'eventType': String
///   - 'eventSource': String
///   - Add more as needed for your application
 Map<String, Object> get eventMeta;/// Maximum number of history entries to maintain
 int get historyLimit;/// Data format version
 int get dataVer;/// Structure version
 int get structVer;/// Last version identifier
 String? get lastVer;/// Schema version of the entity
 String get schemaVer;/// Version vectors for distributed version control
 Map<String, int> get verVectors;
/// Create a copy of EntityVersioning
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityVersioningCopyWith<EntityVersioning> get copyWith => _$EntityVersioningCopyWithImpl<EntityVersioning>(this as EntityVersioning, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityVersioning&&const DeepCollectionEquality().equals(other.syncMeta, syncMeta)&&(identical(other.syncVer, syncVer) || other.syncVer == syncVer)&&const DeepCollectionEquality().equals(other.searchIndex, searchIndex)&&(identical(other.eventVer, eventVer) || other.eventVer == eventVer)&&const DeepCollectionEquality().equals(other.pendingEvents, pendingEvents)&&const DeepCollectionEquality().equals(other.eventMeta, eventMeta)&&(identical(other.historyLimit, historyLimit) || other.historyLimit == historyLimit)&&(identical(other.dataVer, dataVer) || other.dataVer == dataVer)&&(identical(other.structVer, structVer) || other.structVer == structVer)&&(identical(other.lastVer, lastVer) || other.lastVer == lastVer)&&(identical(other.schemaVer, schemaVer) || other.schemaVer == schemaVer)&&const DeepCollectionEquality().equals(other.verVectors, verVectors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(syncMeta),syncVer,const DeepCollectionEquality().hash(searchIndex),eventVer,const DeepCollectionEquality().hash(pendingEvents),const DeepCollectionEquality().hash(eventMeta),historyLimit,dataVer,structVer,lastVer,schemaVer,const DeepCollectionEquality().hash(verVectors));

@override
String toString() {
  return 'EntityVersioning(syncMeta: $syncMeta, syncVer: $syncVer, searchIndex: $searchIndex, eventVer: $eventVer, pendingEvents: $pendingEvents, eventMeta: $eventMeta, historyLimit: $historyLimit, dataVer: $dataVer, structVer: $structVer, lastVer: $lastVer, schemaVer: $schemaVer, verVectors: $verVectors)';
}


}

/// @nodoc
abstract mixin class $EntityVersioningCopyWith<$Res>  {
  factory $EntityVersioningCopyWith(EntityVersioning value, $Res Function(EntityVersioning) _then) = _$EntityVersioningCopyWithImpl;
@useResult
$Res call({
 EntityMeta syncMeta, String? syncVer, Map<String, Object> searchIndex, int eventVer, List<String> pendingEvents, Map<String, Object> eventMeta, int historyLimit, int dataVer, int structVer, String? lastVer, String schemaVer, Map<String, int> verVectors
});




}
/// @nodoc
class _$EntityVersioningCopyWithImpl<$Res>
    implements $EntityVersioningCopyWith<$Res> {
  _$EntityVersioningCopyWithImpl(this._self, this._then);

  final EntityVersioning _self;
  final $Res Function(EntityVersioning) _then;

/// Create a copy of EntityVersioning
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? syncMeta = null,Object? syncVer = freezed,Object? searchIndex = null,Object? eventVer = null,Object? pendingEvents = null,Object? eventMeta = null,Object? historyLimit = null,Object? dataVer = null,Object? structVer = null,Object? lastVer = freezed,Object? schemaVer = null,Object? verVectors = null,}) {
  return _then(_self.copyWith(
syncMeta: null == syncMeta ? _self.syncMeta : syncMeta // ignore: cast_nullable_to_non_nullable
as EntityMeta,syncVer: freezed == syncVer ? _self.syncVer : syncVer // ignore: cast_nullable_to_non_nullable
as String?,searchIndex: null == searchIndex ? _self.searchIndex : searchIndex // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,eventVer: null == eventVer ? _self.eventVer : eventVer // ignore: cast_nullable_to_non_nullable
as int,pendingEvents: null == pendingEvents ? _self.pendingEvents : pendingEvents // ignore: cast_nullable_to_non_nullable
as List<String>,eventMeta: null == eventMeta ? _self.eventMeta : eventMeta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,historyLimit: null == historyLimit ? _self.historyLimit : historyLimit // ignore: cast_nullable_to_non_nullable
as int,dataVer: null == dataVer ? _self.dataVer : dataVer // ignore: cast_nullable_to_non_nullable
as int,structVer: null == structVer ? _self.structVer : structVer // ignore: cast_nullable_to_non_nullable
as int,lastVer: freezed == lastVer ? _self.lastVer : lastVer // ignore: cast_nullable_to_non_nullable
as String?,schemaVer: null == schemaVer ? _self.schemaVer : schemaVer // ignore: cast_nullable_to_non_nullable
as String,verVectors: null == verVectors ? _self.verVectors : verVectors // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// @nodoc


class _EntityVersioning extends EntityVersioning {
  const _EntityVersioning({final  EntityMeta syncMeta = const {}, this.syncVer, final  Map<String, Object> searchIndex = const {}, this.eventVer = 0, final  List<String> pendingEvents = const [], final  Map<String, Object> eventMeta = const {}, this.historyLimit = EntityLimits.historyDefault, this.dataVer = 1, this.structVer = 1, this.lastVer, this.schemaVer = EntityDefaults.version, final  Map<String, int> verVectors = const {}}): _syncMeta = syncMeta,_searchIndex = searchIndex,_pendingEvents = pendingEvents,_eventMeta = eventMeta,_verVectors = verVectors,super._();
  

/// Metadata for synchronization purposes
///
/// Expected keys:
///   - 'lastSync': DateTime or String (ISO8601)
///   - 'syncSource': String
///   - Add more as needed for your application
 final  EntityMeta _syncMeta;
/// Metadata for synchronization purposes
///
/// Expected keys:
///   - 'lastSync': DateTime or String (ISO8601)
///   - 'syncSource': String
///   - Add more as needed for your application
@override@JsonKey() EntityMeta get syncMeta {
  if (_syncMeta is EqualUnmodifiableMapView) return _syncMeta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_syncMeta);
}

/// Synchronization version identifier
@override final  String? syncVer;
/// Search index for efficient queries
///
/// Expected keys:
///   - 'keywords': `List<String>`
///   - 'category': String
///   - Add more as needed for your application
 final  Map<String, Object> _searchIndex;
/// Search index for efficient queries
///
/// Expected keys:
///   - 'keywords': `List<String>`
///   - 'category': String
///   - Add more as needed for your application
@override@JsonKey() Map<String, Object> get searchIndex {
  if (_searchIndex is EqualUnmodifiableMapView) return _searchIndex;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_searchIndex);
}

/// Event version counter
@override@JsonKey() final  int eventVer;
/// List of event IDs that haven't been processed
 final  List<String> _pendingEvents;
/// List of event IDs that haven't been processed
@override@JsonKey() List<String> get pendingEvents {
  if (_pendingEvents is EqualUnmodifiableListView) return _pendingEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pendingEvents);
}

/// Additional event-related metadata
///
/// Expected keys:
///   - 'eventType': String
///   - 'eventSource': String
///   - Add more as needed for your application
 final  Map<String, Object> _eventMeta;
/// Additional event-related metadata
///
/// Expected keys:
///   - 'eventType': String
///   - 'eventSource': String
///   - Add more as needed for your application
@override@JsonKey() Map<String, Object> get eventMeta {
  if (_eventMeta is EqualUnmodifiableMapView) return _eventMeta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_eventMeta);
}

/// Maximum number of history entries to maintain
@override@JsonKey() final  int historyLimit;
/// Data format version
@override@JsonKey() final  int dataVer;
/// Structure version
@override@JsonKey() final  int structVer;
/// Last version identifier
@override final  String? lastVer;
/// Schema version of the entity
@override@JsonKey() final  String schemaVer;
/// Version vectors for distributed version control
 final  Map<String, int> _verVectors;
/// Version vectors for distributed version control
@override@JsonKey() Map<String, int> get verVectors {
  if (_verVectors is EqualUnmodifiableMapView) return _verVectors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_verVectors);
}


/// Create a copy of EntityVersioning
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityVersioningCopyWith<_EntityVersioning> get copyWith => __$EntityVersioningCopyWithImpl<_EntityVersioning>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityVersioning&&const DeepCollectionEquality().equals(other._syncMeta, _syncMeta)&&(identical(other.syncVer, syncVer) || other.syncVer == syncVer)&&const DeepCollectionEquality().equals(other._searchIndex, _searchIndex)&&(identical(other.eventVer, eventVer) || other.eventVer == eventVer)&&const DeepCollectionEquality().equals(other._pendingEvents, _pendingEvents)&&const DeepCollectionEquality().equals(other._eventMeta, _eventMeta)&&(identical(other.historyLimit, historyLimit) || other.historyLimit == historyLimit)&&(identical(other.dataVer, dataVer) || other.dataVer == dataVer)&&(identical(other.structVer, structVer) || other.structVer == structVer)&&(identical(other.lastVer, lastVer) || other.lastVer == lastVer)&&(identical(other.schemaVer, schemaVer) || other.schemaVer == schemaVer)&&const DeepCollectionEquality().equals(other._verVectors, _verVectors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_syncMeta),syncVer,const DeepCollectionEquality().hash(_searchIndex),eventVer,const DeepCollectionEquality().hash(_pendingEvents),const DeepCollectionEquality().hash(_eventMeta),historyLimit,dataVer,structVer,lastVer,schemaVer,const DeepCollectionEquality().hash(_verVectors));

@override
String toString() {
  return 'EntityVersioning(syncMeta: $syncMeta, syncVer: $syncVer, searchIndex: $searchIndex, eventVer: $eventVer, pendingEvents: $pendingEvents, eventMeta: $eventMeta, historyLimit: $historyLimit, dataVer: $dataVer, structVer: $structVer, lastVer: $lastVer, schemaVer: $schemaVer, verVectors: $verVectors)';
}


}

/// @nodoc
abstract mixin class _$EntityVersioningCopyWith<$Res> implements $EntityVersioningCopyWith<$Res> {
  factory _$EntityVersioningCopyWith(_EntityVersioning value, $Res Function(_EntityVersioning) _then) = __$EntityVersioningCopyWithImpl;
@override @useResult
$Res call({
 EntityMeta syncMeta, String? syncVer, Map<String, Object> searchIndex, int eventVer, List<String> pendingEvents, Map<String, Object> eventMeta, int historyLimit, int dataVer, int structVer, String? lastVer, String schemaVer, Map<String, int> verVectors
});




}
/// @nodoc
class __$EntityVersioningCopyWithImpl<$Res>
    implements _$EntityVersioningCopyWith<$Res> {
  __$EntityVersioningCopyWithImpl(this._self, this._then);

  final _EntityVersioning _self;
  final $Res Function(_EntityVersioning) _then;

/// Create a copy of EntityVersioning
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? syncMeta = null,Object? syncVer = freezed,Object? searchIndex = null,Object? eventVer = null,Object? pendingEvents = null,Object? eventMeta = null,Object? historyLimit = null,Object? dataVer = null,Object? structVer = null,Object? lastVer = freezed,Object? schemaVer = null,Object? verVectors = null,}) {
  return _then(_EntityVersioning(
syncMeta: null == syncMeta ? _self._syncMeta : syncMeta // ignore: cast_nullable_to_non_nullable
as EntityMeta,syncVer: freezed == syncVer ? _self.syncVer : syncVer // ignore: cast_nullable_to_non_nullable
as String?,searchIndex: null == searchIndex ? _self._searchIndex : searchIndex // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,eventVer: null == eventVer ? _self.eventVer : eventVer // ignore: cast_nullable_to_non_nullable
as int,pendingEvents: null == pendingEvents ? _self._pendingEvents : pendingEvents // ignore: cast_nullable_to_non_nullable
as List<String>,eventMeta: null == eventMeta ? _self._eventMeta : eventMeta // ignore: cast_nullable_to_non_nullable
as Map<String, Object>,historyLimit: null == historyLimit ? _self.historyLimit : historyLimit // ignore: cast_nullable_to_non_nullable
as int,dataVer: null == dataVer ? _self.dataVer : dataVer // ignore: cast_nullable_to_non_nullable
as int,structVer: null == structVer ? _self.structVer : structVer // ignore: cast_nullable_to_non_nullable
as int,lastVer: freezed == lastVer ? _self.lastVer : lastVer // ignore: cast_nullable_to_non_nullable
as String?,schemaVer: null == schemaVer ? _self.schemaVer : schemaVer // ignore: cast_nullable_to_non_nullable
as String,verVectors: null == verVectors ? _self._verVectors : verVectors // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}

/// @nodoc
mixin _$BaseEntityModel<T extends Object> {

/// Core entity data containing essential properties
 CoreEntity<T> get core;/// Component for hierarchy and tree structure
 EntityHierarchy get hierarchy;/// Component for access control and security
 EntitySecurity get security;/// Component for organization and workflow
 EntityClassification get classification;/// Component for change tracking and history
 EntityVersioning get versioning;/// Optional extra data of type T
 T? get extraData;
/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseEntityModelCopyWith<T, BaseEntityModel<T>> get copyWith => _$BaseEntityModelCopyWithImpl<T, BaseEntityModel<T>>(this as BaseEntityModel<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseEntityModel<T>&&(identical(other.core, core) || other.core == core)&&(identical(other.hierarchy, hierarchy) || other.hierarchy == hierarchy)&&(identical(other.security, security) || other.security == security)&&(identical(other.classification, classification) || other.classification == classification)&&(identical(other.versioning, versioning) || other.versioning == versioning)&&const DeepCollectionEquality().equals(other.extraData, extraData));
}


@override
int get hashCode => Object.hash(runtimeType,core,hierarchy,security,classification,versioning,const DeepCollectionEquality().hash(extraData));

@override
String toString() {
  return 'BaseEntityModel<$T>(core: $core, hierarchy: $hierarchy, security: $security, classification: $classification, versioning: $versioning, extraData: $extraData)';
}


}

/// @nodoc
abstract mixin class $BaseEntityModelCopyWith<T extends Object,$Res>  {
  factory $BaseEntityModelCopyWith(BaseEntityModel<T> value, $Res Function(BaseEntityModel<T>) _then) = _$BaseEntityModelCopyWithImpl;
@useResult
$Res call({
 CoreEntity<T> core, EntityHierarchy hierarchy, EntitySecurity security, EntityClassification classification, EntityVersioning versioning, T? extraData
});


$CoreEntityCopyWith<T, $Res> get core;$EntityHierarchyCopyWith<$Res> get hierarchy;$EntitySecurityCopyWith<$Res> get security;$EntityClassificationCopyWith<$Res> get classification;$EntityVersioningCopyWith<$Res> get versioning;

}
/// @nodoc
class _$BaseEntityModelCopyWithImpl<T extends Object,$Res>
    implements $BaseEntityModelCopyWith<T, $Res> {
  _$BaseEntityModelCopyWithImpl(this._self, this._then);

  final BaseEntityModel<T> _self;
  final $Res Function(BaseEntityModel<T>) _then;

/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? core = null,Object? hierarchy = null,Object? security = null,Object? classification = null,Object? versioning = null,Object? extraData = freezed,}) {
  return _then(_self.copyWith(
core: null == core ? _self.core : core // ignore: cast_nullable_to_non_nullable
as CoreEntity<T>,hierarchy: null == hierarchy ? _self.hierarchy : hierarchy // ignore: cast_nullable_to_non_nullable
as EntityHierarchy,security: null == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as EntitySecurity,classification: null == classification ? _self.classification : classification // ignore: cast_nullable_to_non_nullable
as EntityClassification,versioning: null == versioning ? _self.versioning : versioning // ignore: cast_nullable_to_non_nullable
as EntityVersioning,extraData: freezed == extraData ? _self.extraData : extraData // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}
/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoreEntityCopyWith<T, $Res> get core {
  
  return $CoreEntityCopyWith<T, $Res>(_self.core, (value) {
    return _then(_self.copyWith(core: value));
  });
}/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityHierarchyCopyWith<$Res> get hierarchy {
  
  return $EntityHierarchyCopyWith<$Res>(_self.hierarchy, (value) {
    return _then(_self.copyWith(hierarchy: value));
  });
}/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntitySecurityCopyWith<$Res> get security {
  
  return $EntitySecurityCopyWith<$Res>(_self.security, (value) {
    return _then(_self.copyWith(security: value));
  });
}/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityClassificationCopyWith<$Res> get classification {
  
  return $EntityClassificationCopyWith<$Res>(_self.classification, (value) {
    return _then(_self.copyWith(classification: value));
  });
}/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityVersioningCopyWith<$Res> get versioning {
  
  return $EntityVersioningCopyWith<$Res>(_self.versioning, (value) {
    return _then(_self.copyWith(versioning: value));
  });
}
}


/// @nodoc


class _BaseEntityModel<T extends Object> extends BaseEntityModel<T> {
  const _BaseEntityModel({required this.core, required this.hierarchy, required this.security, required this.classification, required this.versioning, this.extraData}): super._();
  

/// Core entity data containing essential properties
@override final  CoreEntity<T> core;
/// Component for hierarchy and tree structure
@override final  EntityHierarchy hierarchy;
/// Component for access control and security
@override final  EntitySecurity security;
/// Component for organization and workflow
@override final  EntityClassification classification;
/// Component for change tracking and history
@override final  EntityVersioning versioning;
/// Optional extra data of type T
@override final  T? extraData;

/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseEntityModelCopyWith<T, _BaseEntityModel<T>> get copyWith => __$BaseEntityModelCopyWithImpl<T, _BaseEntityModel<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseEntityModel<T>&&(identical(other.core, core) || other.core == core)&&(identical(other.hierarchy, hierarchy) || other.hierarchy == hierarchy)&&(identical(other.security, security) || other.security == security)&&(identical(other.classification, classification) || other.classification == classification)&&(identical(other.versioning, versioning) || other.versioning == versioning)&&const DeepCollectionEquality().equals(other.extraData, extraData));
}


@override
int get hashCode => Object.hash(runtimeType,core,hierarchy,security,classification,versioning,const DeepCollectionEquality().hash(extraData));

@override
String toString() {
  return 'BaseEntityModel<$T>(core: $core, hierarchy: $hierarchy, security: $security, classification: $classification, versioning: $versioning, extraData: $extraData)';
}


}

/// @nodoc
abstract mixin class _$BaseEntityModelCopyWith<T extends Object,$Res> implements $BaseEntityModelCopyWith<T, $Res> {
  factory _$BaseEntityModelCopyWith(_BaseEntityModel<T> value, $Res Function(_BaseEntityModel<T>) _then) = __$BaseEntityModelCopyWithImpl;
@override @useResult
$Res call({
 CoreEntity<T> core, EntityHierarchy hierarchy, EntitySecurity security, EntityClassification classification, EntityVersioning versioning, T? extraData
});


@override $CoreEntityCopyWith<T, $Res> get core;@override $EntityHierarchyCopyWith<$Res> get hierarchy;@override $EntitySecurityCopyWith<$Res> get security;@override $EntityClassificationCopyWith<$Res> get classification;@override $EntityVersioningCopyWith<$Res> get versioning;

}
/// @nodoc
class __$BaseEntityModelCopyWithImpl<T extends Object,$Res>
    implements _$BaseEntityModelCopyWith<T, $Res> {
  __$BaseEntityModelCopyWithImpl(this._self, this._then);

  final _BaseEntityModel<T> _self;
  final $Res Function(_BaseEntityModel<T>) _then;

/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? core = null,Object? hierarchy = null,Object? security = null,Object? classification = null,Object? versioning = null,Object? extraData = freezed,}) {
  return _then(_BaseEntityModel<T>(
core: null == core ? _self.core : core // ignore: cast_nullable_to_non_nullable
as CoreEntity<T>,hierarchy: null == hierarchy ? _self.hierarchy : hierarchy // ignore: cast_nullable_to_non_nullable
as EntityHierarchy,security: null == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as EntitySecurity,classification: null == classification ? _self.classification : classification // ignore: cast_nullable_to_non_nullable
as EntityClassification,versioning: null == versioning ? _self.versioning : versioning // ignore: cast_nullable_to_non_nullable
as EntityVersioning,extraData: freezed == extraData ? _self.extraData : extraData // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}

/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoreEntityCopyWith<T, $Res> get core {
  
  return $CoreEntityCopyWith<T, $Res>(_self.core, (value) {
    return _then(_self.copyWith(core: value));
  });
}/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityHierarchyCopyWith<$Res> get hierarchy {
  
  return $EntityHierarchyCopyWith<$Res>(_self.hierarchy, (value) {
    return _then(_self.copyWith(hierarchy: value));
  });
}/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntitySecurityCopyWith<$Res> get security {
  
  return $EntitySecurityCopyWith<$Res>(_self.security, (value) {
    return _then(_self.copyWith(security: value));
  });
}/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityClassificationCopyWith<$Res> get classification {
  
  return $EntityClassificationCopyWith<$Res>(_self.classification, (value) {
    return _then(_self.copyWith(classification: value));
  });
}/// Create a copy of BaseEntityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityVersioningCopyWith<$Res> get versioning {
  
  return $EntityVersioningCopyWith<$Res>(_self.versioning, (value) {
    return _then(_self.copyWith(versioning: value));
  });
}
}


/// @nodoc
mixin _$EntityMetadata {

 String get displayName; String get entityType; String? get description; DateTime? get lastNameUpdate; Map<String, String> get searchTerms;
/// Create a copy of EntityMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityMetadataCopyWith<EntityMetadata> get copyWith => _$EntityMetadataCopyWithImpl<EntityMetadata>(this as EntityMetadata, _$identity);

  /// Serializes this EntityMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityMetadata&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.description, description) || other.description == description)&&(identical(other.lastNameUpdate, lastNameUpdate) || other.lastNameUpdate == lastNameUpdate)&&const DeepCollectionEquality().equals(other.searchTerms, searchTerms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,entityType,description,lastNameUpdate,const DeepCollectionEquality().hash(searchTerms));

@override
String toString() {
  return 'EntityMetadata(displayName: $displayName, entityType: $entityType, description: $description, lastNameUpdate: $lastNameUpdate, searchTerms: $searchTerms)';
}


}

/// @nodoc
abstract mixin class $EntityMetadataCopyWith<$Res>  {
  factory $EntityMetadataCopyWith(EntityMetadata value, $Res Function(EntityMetadata) _then) = _$EntityMetadataCopyWithImpl;
@useResult
$Res call({
 String displayName, String entityType, String? description, DateTime? lastNameUpdate, Map<String, String> searchTerms
});




}
/// @nodoc
class _$EntityMetadataCopyWithImpl<$Res>
    implements $EntityMetadataCopyWith<$Res> {
  _$EntityMetadataCopyWithImpl(this._self, this._then);

  final EntityMetadata _self;
  final $Res Function(EntityMetadata) _then;

/// Create a copy of EntityMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = null,Object? entityType = null,Object? description = freezed,Object? lastNameUpdate = freezed,Object? searchTerms = null,}) {
  return _then(_self.copyWith(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,lastNameUpdate: freezed == lastNameUpdate ? _self.lastNameUpdate : lastNameUpdate // ignore: cast_nullable_to_non_nullable
as DateTime?,searchTerms: null == searchTerms ? _self.searchTerms : searchTerms // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EntityMetadata extends EntityMetadata {
  const _EntityMetadata({required this.displayName, required this.entityType, this.description, this.lastNameUpdate, final  Map<String, String> searchTerms = const {}}): _searchTerms = searchTerms,super._();
  factory _EntityMetadata.fromJson(Map<String, dynamic> json) => _$EntityMetadataFromJson(json);

@override final  String displayName;
@override final  String entityType;
@override final  String? description;
@override final  DateTime? lastNameUpdate;
 final  Map<String, String> _searchTerms;
@override@JsonKey() Map<String, String> get searchTerms {
  if (_searchTerms is EqualUnmodifiableMapView) return _searchTerms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_searchTerms);
}


/// Create a copy of EntityMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityMetadataCopyWith<_EntityMetadata> get copyWith => __$EntityMetadataCopyWithImpl<_EntityMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntityMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityMetadata&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.description, description) || other.description == description)&&(identical(other.lastNameUpdate, lastNameUpdate) || other.lastNameUpdate == lastNameUpdate)&&const DeepCollectionEquality().equals(other._searchTerms, _searchTerms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,entityType,description,lastNameUpdate,const DeepCollectionEquality().hash(_searchTerms));

@override
String toString() {
  return 'EntityMetadata(displayName: $displayName, entityType: $entityType, description: $description, lastNameUpdate: $lastNameUpdate, searchTerms: $searchTerms)';
}


}

/// @nodoc
abstract mixin class _$EntityMetadataCopyWith<$Res> implements $EntityMetadataCopyWith<$Res> {
  factory _$EntityMetadataCopyWith(_EntityMetadata value, $Res Function(_EntityMetadata) _then) = __$EntityMetadataCopyWithImpl;
@override @useResult
$Res call({
 String displayName, String entityType, String? description, DateTime? lastNameUpdate, Map<String, String> searchTerms
});




}
/// @nodoc
class __$EntityMetadataCopyWithImpl<$Res>
    implements _$EntityMetadataCopyWith<$Res> {
  __$EntityMetadataCopyWithImpl(this._self, this._then);

  final _EntityMetadata _self;
  final $Res Function(_EntityMetadata) _then;

/// Create a copy of EntityMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = null,Object? entityType = null,Object? description = freezed,Object? lastNameUpdate = freezed,Object? searchTerms = null,}) {
  return _then(_EntityMetadata(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,lastNameUpdate: freezed == lastNameUpdate ? _self.lastNameUpdate : lastNameUpdate // ignore: cast_nullable_to_non_nullable
as DateTime?,searchTerms: null == searchTerms ? _self._searchTerms : searchTerms // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
