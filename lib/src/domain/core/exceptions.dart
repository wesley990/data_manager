/// Base exception class for all data manager errors
abstract class DataManagerException implements Exception {
  final String message;
  final String? details;
  final Map<String, dynamic>? context;

  const DataManagerException({
    required this.message,
    this.details,
    this.context,
  });

  @override
  String toString() {
    final buffer = StringBuffer(message);
    if (details != null) buffer.write('\nDetails: $details');
    if (context != null) buffer.write('\nContext: $context');
    return buffer.toString();
  }
}

/// Validation related exceptions
abstract class ValidationException extends DataManagerException {
  final String field;
  final dynamic invalidValue;

  const ValidationException({
    required super.message,
    required this.field,
    this.invalidValue,
    super.details,
    super.context,
  });
}

/// Field validation exceptions
class FieldValidationException extends ValidationException {
  const FieldValidationException({
    required super.message,
    required super.field,
    super.invalidValue,
    super.details,
    super.context,
  });
}

/// Path related exceptions
class PathValidationException extends ValidationException {
  const PathValidationException({
    required super.message,
    String? path,
    super.details,
    super.context,
  }) : super(
          field: 'path',
          invalidValue: path,
        );
}

/// Tree/hierarchy validation exceptions
class HierarchyValidationException extends ValidationException {
  final int depth;
  final List<String> path;

  const HierarchyValidationException({
    required super.message,
    required this.depth,
    required this.path,
    required super.field,
    super.details,
    super.context,
  });
}

/// Tree/hierarchy operation exceptions
class HierarchyException extends DataManagerException {
  const HierarchyException({
    required super.message,
    super.details,
    super.context,
  });
}

/// Version control related exceptions
class VersionConflictException extends DataManagerException {
  final String currentVersion;
  final String conflictingVersion;

  const VersionConflictException({
    required super.message,
    required this.currentVersion,
    required this.conflictingVersion,
    super.details,
    super.context,
  });
}

/// Lock related exceptions
class LockException extends DataManagerException {
  final String? lockOwner;
  final DateTime? expiryTime;

  const LockException({
    required super.message,
    this.lockOwner,
    this.expiryTime,
    super.details,
    super.context,
  });
}

/// Access control related exceptions
class AccessException extends DataManagerException {
  final String resource;
  final String action;
  final String? user;

  const AccessException({
    required super.message,
    required this.resource,
    required this.action,
    this.user,
    super.details,
    super.context,
  });
}

/// Data integrity related exceptions
class IntegrityException extends DataManagerException {
  final String entity;
  final String operation;

  const IntegrityException({
    required super.message,
    required this.entity,
    required this.operation,
    super.details,
    super.context,
  });
}

/// Operation related exceptions
class OperationException extends DataManagerException {
  final String operation;
  final Map<String, dynamic> params;

  const OperationException({
    required super.message,
    required this.operation,
    required this.params,
    super.details,
    super.context,
  });
}

/// AI processing related exceptions
class AIProcessingException extends DataManagerException {
  final String modelId;
  final String operation;

  const AIProcessingException({
    required super.message,
    required this.modelId,
    required this.operation,
    super.details,
    super.context,
  });
}
