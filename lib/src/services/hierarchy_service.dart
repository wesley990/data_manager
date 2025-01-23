import 'package:data_manager/data_manager.dart';

/// Service for managing entity hierarchies and tree structures
class HierarchyService {
  final EntityConfig config;

  const HierarchyService({required this.config});
  
  // Navigation methods
  bool isAncestorOf(List<EntityId> ancestors, EntityId id) {
    return ancestors.contains(id);
  }

  bool isDescendantOf(EntityId id, List<EntityId> ancestors) {  
    return ancestors.contains(id);
  }

  int getDepthTo(List<EntityId> ancestors, EntityId ancestorId) {
    final index = ancestors.indexOf(ancestorId);
    if (index == -1) return -1;
    return ancestors.length - index;
  }

  // Validation methods
  bool hasCircularReference(EntityId id, EntityId? parentId, List<EntityId> ancestors) {
    if (parentId == null) return false;
    return ancestors.contains(id);
  }

  void validateHierarchyDepth(List<EntityId> ancestors) {
    if (ancestors.length >= config.maxHierarchyDepth) {
      throw HierarchyValidationException(
        message: 'New hierarchy would exceed maximum depth',
        field: 'hierarchy',
        depth: ancestors.length,
        path: ancestors.map((a) => a.value).toList(),
      );
    }
  }

  // Management methods
  Map<String, Object> getUpdatedHierarchyMeta(
    Map<String, Object> currentMeta,
    EntityId? parentId,
  ) {
    final existingHistory = currentMeta['parent_history'] as List<String>? ?? [];
    
    return {
      ...currentMeta,
      'last_hierarchy_update': DateTime.now().toIso8601String(),
      'parent_history': [...existingHistory, parentId?.value ?? 'root'],
    };
  }

  List<EntityId> addChild(List<EntityId> currentChildren, EntityId childId) {
    if (currentChildren.contains(childId)) return currentChildren;
    return [...currentChildren, childId];
  }

  List<EntityId> removeChild(List<EntityId> currentChildren, EntityId childId) {
    return currentChildren.where((id) => id != childId).toList();
  }

  // Indexing methods
  Map<String, Object> buildHierarchyIndex({
    required int depth,
    required EntityId? parentId,
    required List<EntityId> ancestors,
    required List<EntityId> children,
    required bool isLeaf,
    required bool isRoot,
    required Map<String, Object> meta,
  }) {
    return {
      'depth_level': depth,
      'parent_type': parentId?.value ?? 'root',
      'ancestry_path': ancestors.map((a) => a.value).join('|'),
      'child_count': children.length,
      'is_leaf': isLeaf,
      'is_root': isRoot,
      ...meta,
    };
  }
}
