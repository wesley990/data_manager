/// Defines workflow stages for entities in the data manager.
enum EntityStage {
  /// Initial draft stage.
  draft('draft'),

  /// Review stage where entity is being evaluated.
  review('review'),

  /// Approved stage ready for publication or deployment.
  approved('approved'),

  /// Published stage where entity is publicly available.
  published('published'),

  /// Archived stage for inactive entities.
  archived('archived');

  /// Creates a new entity stage with the given string representation.
  const EntityStage(this.value);

  /// The string representation of this workflow stage.
  final String value;

  /// Converts a string to the corresponding EntityStage.
  ///
  /// Returns [EntityStage.draft] if the string doesn't match any stage.
  static EntityStage fromString(String value) {
    return EntityStage.values.firstWhere(
      (stage) => stage.value == value.toLowerCase(),
      orElse: () => EntityStage.draft,
    );
  }
}
