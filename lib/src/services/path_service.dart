import 'package:data_manager/data_manager.dart';

/// Service class for handling path operations
class PathService {
  final EntityConfig config;
  
  // Cache for parsed paths
  final Map<String, List<String>> _segmentCache = {};
  final Map<String, String> _canonicalCache = {};

  PathService({required this.config});

  String sanitizePath(String? rawPath) {
    if (rawPath == null || rawPath.isEmpty) return '';

    try {
      final decodedPath = Uri.decodeFull(rawPath);

      // Length validation
      if (decodedPath.length > config.maxPathLength) {
        throw FieldValidationException(
          message: 'Path exceeds maximum length',
          field: 'path',
          invalidValue: decodedPath,
          details: 'Max length: ${config.maxPathLength}, Actual: ${decodedPath.length}',
        );
      }

      // Get or compute segments
      final segments = _getSegments(decodedPath);
      
      // Validate segments
      if (segments.any((s) => s.length > config.maxPathSegment)) {
        throw FieldValidationException(
          message: 'Path segment exceeds maximum length', 
          field: 'path',
          invalidValue: segments.firstWhere((s) => s.length > config.maxPathSegment),
          details: 'Max segment length: ${config.maxPathSegment}',
        );
      }

      return _buildPath(segments);

    } catch (e) {
      throw PathValidationException(
        message: 'Invalid path format',
        path: rawPath,
        details: e.toString(),
      );
    }
  }

  List<String> _getSegments(String path) {
    // Check cache first
    if (_segmentCache.containsKey(path)) {
      return List.from(_segmentCache[path]!);
    }

    // Parse and cache segments
    final segments = path
        .split(config.pathSeparator)
        .where((s) => s.isNotEmpty)
        .map((s) => _sanitizePathSegment(s))
        .where((s) => s.isNotEmpty)
        .toList();

    _segmentCache[path] = segments;
    return List.from(segments);
  }

  String _sanitizePathSegment(String segment) {
    final cleaned = segment.replaceAll(RegExp(config.invalidPathChars), '');
    final trimmed = cleaned.trim().replaceAll(RegExp(r'^\.+|\.+$'), '');
    return Uri.encodeComponent(trimmed);
  }

  String _buildPath(List<String> segments) {
    if (segments.isEmpty) return '';
    
    final buffer = StringBuffer()
      ..write(config.pathSeparator)
      ..writeAll(segments, config.pathSeparator)
      ..write(config.pathSeparator);
      
    return buffer.toString();
  }

  List<String> splitPath(String? path) {
    return _getSegments(sanitizePath(path));
  }

  String joinPath(List<String> segments) {
    return _buildPath(segments.map(_sanitizePathSegment).toList());
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
    if (path == null) return fallback;
    
    // Check cache
    if (_canonicalCache.containsKey(path)) {
      return _canonicalCache[path]!;
    }

    // Compute and cache canonical form
    final canonical = path.toLowerCase();
    _canonicalCache[path] = canonical;
    return canonical;
  }

  String getAbsolutePath(String? basePath, String entityId) {
    final base = basePath ?? '';
    return sanitizePath('$base${config.pathSeparator}$entityId');
  }

  List<String> buildAncestorPaths(String path) {
    final segments = splitPath(path);
    final paths = <String>[];
    final buffer = StringBuffer();

    for (final segment in segments) {
      if (buffer.isNotEmpty) buffer.write(config.pathSeparator);
      buffer.write(segment);
      paths.add(buffer.toString());
    }

    return paths;
  }

  // Cache management
  void clearPathCache() {
    _segmentCache.clear();
    _canonicalCache.clear();
  }
}
