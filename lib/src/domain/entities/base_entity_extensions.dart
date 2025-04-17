import 'package:data_manager/data_manager.dart';
import 'package:data_manager/src/services/hierarchy_service.dart';
import 'package:data_manager/src/services/path_service.dart';
import 'package:data_manager/src/services/version_service.dart';

/// Shared service instances for BaseEntityModel extensions.
///
/// These service instances handle various aspects of entity management like
/// path handling, hierarchy relationships, and versioning.
final _pathService = PathService(config: EntityConfig());
final _hierarchyService = HierarchyService(config: EntityConfig());
final _versionService = VersionService();

/// Extension for path sanitization and validation operations.
///
/// Provides methods to sanitize and validate paths for entity hierarchies.
extension PathSanitizationExtension<T extends Object> on BaseEntityModel<T> {
  /// Sanitizes a raw path string by removing invalid characters and formatting.
  ///
  /// [rawPath] - The path string that needs to be sanitized.
  /// Returns a sanitized path string that complies with path formatting rules.
  String sanitizePath(String? rawPath) => _pathService.sanitizePath(rawPath);

  /// Checks if a given path string is valid according to path formatting rules.
  ///
  /// [path] - The path string to validate.
  /// Returns true if the path is valid, false otherwise.
  bool isPathValid(String? path) => _pathService.isValidPath(path);

  /// Ensures a tree path conforms to the expected format rules
  ///
  /// - Validates path format (starts with /, uses correct separators)
  /// - Checks path length against [SystemLimits.pathMaxLength]
  /// - Validates each segment against [SystemLimits.pathMaxSegment]
  /// - Verifies path depth doesn't exceed [SystemLimits.hierarchyDepthMax]
  ///
  /// Returns true if the path is valid, false otherwise
  bool isValidTreePath(String? path) {
    if (path == null || path.isEmpty) return false;
    if (path.length > SystemLimits.pathMaxLength) return false;

    // Path must start with slash
    if (!path.startsWith('/')) return false;

    final parts = path.split('/').where((p) => p.isNotEmpty).toList();
    if (parts.length > SystemLimits.hierarchyDepthMax) return false;

    // Validate each segment
    for (final part in parts) {
      if (part.length > SystemLimits.pathMaxSegment) return false;
    }

    return true;
  }
}

/// Extension for path navigation and resolution operations.
///
/// Provides methods and getters to navigate and resolve paths in entity hierarchies.
extension PathNavigationExtension<T extends Object> on BaseEntityModel<T> {
  /// Splits a path string into its component parts.
  ///
  /// [path] - The path string to split.
  /// Returns a list of path components.
  List<String> splitPath(String? path) => _pathService.splitPath(path);

  /// Gets the canonical path for this entity.
  ///
  /// Returns a standardized path string combining the tree path and entity ID.
  String get canonicalPath =>
      _pathService.getCanonicalPath(hierarchy.treePath ?? '', id.value);

  /// Gets the individual components of this entity's tree path.
  ///
  /// Returns a list of path parts from the entity's tree path.
  List<String> get pathParts =>
      _pathService.splitPath(hierarchy.treePath ?? '');

  /// Builds a list of ancestor paths from this entity's tree path.
  ///
  /// Returns a list of paths representing the ancestors of this entity.
  List<String> get pathAncestors =>
      _pathService.buildAncestorPaths(hierarchy.treePath ?? '');

  /// Gets the absolute path for this entity.
  ///
  /// Returns a fully qualified path string.
  String get absolutePath =>
      _pathService.getAbsolutePath(hierarchy.treePath ?? '', id.value);
}

/// Extension methods for safe hierarchy operations
extension EntityHierarchyOperations<T extends Object> on EntityHierarchy {
  /// Adds a child entity ID, automatically updating leaf status
  EntityHierarchy addChild(EntityId childId) {
    if (childIds.contains(childId)) return this;

    final updatedChildIds = List<EntityId>.from(childIds)..add(childId);
    return copyWith(
      childIds: updatedChildIds,
      isHierarchyLeaf: false,
      hierarchyMeta: {
        ...hierarchyMeta,
        'children_count': updatedChildIds.length,
        'last_child_added': DateTime.now().toIso8601String(),
      },
    );
  }

  /// Removes a child entity ID, automatically updating leaf status
  EntityHierarchy removeChild(EntityId childId) {
    if (!childIds.contains(childId)) return this;

    final updatedChildIds = List<EntityId>.from(childIds)
      ..removeWhere((id) => id == childId);

    return copyWith(
      childIds: updatedChildIds,
      isHierarchyLeaf: updatedChildIds.isEmpty,
      hierarchyMeta: {
        ...hierarchyMeta,
        'children_count': updatedChildIds.length,
        'last_child_removed': DateTime.now().toIso8601String(),
      },
    );
  }

  /// Recalculates and corrects the leaf status based on child IDs
  EntityHierarchy validateLeafStatus() {
    final shouldBeLeaf = childIds.isEmpty;
    if (isHierarchyLeaf == shouldBeLeaf) return this;

    return copyWith(isHierarchyLeaf: shouldBeLeaf);
  }
}

/// Extension for hierarchy navigation and relationship operations.
///
/// Provides methods to navigate and determine relationships between entities in hierarchies.
extension HierarchyNavigationExtension<T extends Object> on BaseEntityModel<T> {
  /// Gets the paths of ancestor entities.
  ///
  /// Returns a list of ancestor entity ID strings.
  List<String> get ancestorPaths =>
      hierarchy.ancestors.map((a) => a.value).toList();

  /// Gets the full path of this entity.
  ///
  /// Returns the tree path if available, otherwise the entity ID.
  String get fullPath => hierarchy.treePath ?? id.value;

  /// Checks if this entity is an ancestor of another entity.
  ///
  /// [other] - The entity to check against.
  /// Returns true if this entity is an ancestor of the other entity.
  bool isAncestorOf(BaseEntityModel<T> other) =>
      _hierarchyService.isAncestorOf(hierarchy.ancestors, other.id);

  /// Checks if this entity is a descendant of another entity.
  ///
  /// [other] - The entity to check against.
  /// Returns true if this entity is a descendant of the other entity.
  bool isDescendantOf(BaseEntityModel<T> other) =>
      _hierarchyService.isDescendantOf(id, other.hierarchy.ancestors);

  /// Gets the depth between this entity and an ancestor.
  ///
  /// [ancestor] - The ancestor entity.
  /// Returns the number of levels between this entity and the ancestor.
  int getDepthTo(BaseEntityModel<T> ancestor) =>
      _hierarchyService.getDepthTo(hierarchy.ancestors, ancestor.id);
}

/// Hierarchy validation extension providing methods to validate and update hierarchy structures.
///
/// Offers functionality to detect circular references and update hierarchy information.
extension HierarchyValidationExtension<T extends Object> on BaseEntityModel<T> {
  /// Checks if there is a circular reference in the entity's hierarchy.
  ///
  /// Returns true if a circular reference is detected.
  bool hasCircularReference() => _hierarchyService.hasCircularReference(
    id,
    hierarchy.parentId,
    hierarchy.ancestors,
  );

  /// Updates the hierarchy information for this entity.
  ///
  /// [newParentId] - The new parent ID to assign to this entity.
  /// [newPath] - Optional new tree path.
  /// [newAncestors] - Optional list of new ancestors.
  /// [validateDepth] - Whether to validate the hierarchy depth (default: true).
  /// Returns an updated entity with the new hierarchy information.
  BaseEntityModel<T> updateHierarchy({
    required EntityId? newParentId,
    String? newPath,
    List<EntityId>? newAncestors,
    bool validateDepth = true,
  }) {
    if (validateDepth && newAncestors != null) {
      _hierarchyService.validateHierarchyDepth(newAncestors);
    }

    final updatedPath = newPath ?? hierarchy.treePath ?? '';
    final updatedAncestors = newAncestors ?? hierarchy.ancestors;
    final updatedMeta = _hierarchyService.getUpdatedHierarchyMeta(
      hierarchy.hierarchyMeta,
      newParentId,
    );

    return copyWith(
      hierarchy: hierarchy.copyWith(
        parentId: newParentId,
        treePath: updatedPath,
        ancestors: updatedAncestors,
        treeDepth: updatedAncestors.length,
        isHierarchyRoot: newParentId == null,
        isHierarchyLeaf: hierarchy.childIds.isEmpty,
        hierarchyMeta: updatedMeta,
      ),
    );
  }
}

/// Hierarchy indexing and search extension
///
/// Provides methods to build search indices for hierarchical data.
extension HierarchyIndexingExtension<T extends Object> on BaseEntityModel<T> {
  /// Builds a search index for this entity's hierarchy information.
  ///
  /// Returns a map containing indexed hierarchy data for efficient searching.
  Map<String, Object> buildHierarchyIndex() {
    return _hierarchyService.buildHierarchyIndex(
      depth: hierarchy.treeDepth,
      parentId: hierarchy.parentId,
      ancestors: hierarchy.ancestors,
      children: hierarchy.childIds,
      isLeaf: hierarchy.isHierarchyLeaf,
      isRoot: hierarchy.isHierarchyRoot,
      meta: hierarchy.hierarchyMeta,
    );
  }
}
