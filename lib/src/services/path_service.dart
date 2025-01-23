import 'package:data_manager/data_manager.dart';

/// Service class for handling path operations
class PathService {
  final EntityConfig config;

  const PathService({required this.config});

  String sanitizePath(String? rawPath) {
    if (rawPath == null || rawPath.isEmpty) return '';

    try {
      final decodedPath = Uri.decodeFull(rawPath);

      if (decodedPath.length > config.maxPathLength) {
        throw FieldValidationException(
          message: 'Path exceeds maximum length',
          field: 'path',
          invalidValue: decodedPath,
          details: 'Max length: ${config.maxPathLength}, Actual: ${decodedPath.length}',
        );
      }

      final segments = decodedPath
          .split(config.pathSeparator)
          .where((s) => s.isNotEmpty)
          .map((s) => _sanitizePathSegment(s, config))
          .where((s) => s.isNotEmpty)
          .toList();

      if (segments.any((s) => s.length > config.maxPathSegment)) {
        throw FieldValidationException(
          message: 'Path segment exceeds maximum length',
          field: 'path',
          invalidValue: segments
              .firstWhere((s) => s.length > config.maxPathSegment),
          details: 'Max segment length: ${config.maxPathSegment}',
        );
      }

      return segments.isEmpty
          ? ''
          : '${config.pathSeparator}${segments.join(config.pathSeparator)}${config.pathSeparator}';
    } catch (e) {
      throw PathValidationException(
        message: 'Invalid path format',
        path: rawPath,
        details: e.toString(),
      );
    }
  }

  String _sanitizePathSegment(String segment, EntityConfig config) {
    final cleaned = segment.replaceAll(RegExp(config.invalidPathChars), '');
    final trimmed = cleaned.trim().replaceAll(RegExp(r'^\.+|\.+$'), '');
    return Uri.encodeComponent(trimmed);
  }

  List<String> splitPath(String? path) {
    return sanitizePath(path)
        .split(config.pathSeparator)
        .where((s) => s.isNotEmpty)
        .toList();
  }

  String joinPath(List<String> segments) {
    return segments.isEmpty
        ? ''
        : '${config.pathSeparator}${segments.join(config.pathSeparator)}${config.pathSeparator}';
  }

  bool isValidPath(String? path) {
    if (path == null) return true;
    try {
      return sanitizePath(path) == path;
    } catch (_) {
      return false;
    }
  }

  String getCanonicalPath(String? path, String fallback) {
    return path?.toLowerCase() ?? fallback;
  }

  String getAbsolutePath(String? basePath, String entityId) {
    final base = basePath ?? '';
    return sanitizePath('$base${config.pathSeparator}$entityId');
  }

  List<String> buildAncestorPaths(String path) {
    final paths = <String>[];
    final parts = path.split(config.pathSeparator);
    String currentPath = '';

    for (final part in parts.where((p) => p.isNotEmpty)) {
      currentPath = currentPath.isEmpty
          ? part
          : '$currentPath${config.pathSeparator}$part';
      paths.add(currentPath);
    }

    return paths;
  }
}
