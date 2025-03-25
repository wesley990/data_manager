/// Defines priority levels for entities in the data manager.
enum EntityPriority {
  /// Low priority entities.
  low('low'),

  /// Medium priority entities (default).
  medium('medium'),

  /// High priority entities.
  high('high'),

  /// Critical priority entities requiring immediate attention.
  critical('critical');

  /// Creates a new entity priority with the given string representation.
  const EntityPriority(this.value);

  /// The string representation of this priority level.
  final String value;

  /// Converts a string to the corresponding EntityPriority.
  ///
  /// Returns [EntityPriority.medium] if the string doesn't match any priority.
  static EntityPriority fromString(String value) {
    return EntityPriority.values.firstWhere(
      (priority) => priority.value == value.toLowerCase(),
      orElse: () => EntityPriority.medium,
    );
  }
}
