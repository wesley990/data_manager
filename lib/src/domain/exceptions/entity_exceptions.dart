abstract class EntityException implements Exception {
  final String message;
  final String? code;
  final Map<String, dynamic>? context;

  const EntityException(this.message, {this.code, this.context});

  @override
  String toString() => 'EntityException: $message';
}

class ValidationException extends EntityException {
  const ValidationException(
    super.message, {
    super.code,
    super.context,
  });
}

class PathValidationException extends ValidationException {
  const PathValidationException(
    super.message, {
    super.code,
    super.context,
  });
}

class LockException extends EntityException {
  const LockException(
    super.message, {
    super.code,
    super.context,
  });
}

class VersionConflictException extends EntityException {
  const VersionConflictException(
    String message, {
    String? code,
    Map<String, dynamic>? context,
  }) : super(message, code: code, context: context);
}
