import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'validation_types.freezed.dart';
part 'validation_types.g.dart';

enum ValidationSeverity {
  error(priority: 0),
  warning(priority: 1),
  info(priority: 2);

  final int priority;
  const ValidationSeverity({required this.priority});

  bool operator >(ValidationSeverity other) => priority > other.priority;
  bool operator <(ValidationSeverity other) => priority < other.priority;
  bool operator >=(ValidationSeverity other) => priority >= other.priority;
  bool operator <=(ValidationSeverity other) => priority <= other.priority;
}

enum ValidationStrategy {
  complete,   // Full validation
  quick,      // Basic validation
  partial,    // Validate specific fields
  relations   // Only validate relations
}

// Instead of repeating properties in the map, create a class:
class ValidationSeverityProperties {
  final String label;
  final Color color;
  final IconData icon;

  const ValidationSeverityProperties({
    required this.label,
    required this.color,
    required this.icon,
  });
}

// Then use it:
extension ValidationSeverityX on ValidationSeverity {
  static const _properties = {
    ValidationSeverity.error: ValidationSeverityProperties(
      label: 'Error',
      color: Colors.red,
      icon: Icons.error,
    ),
    ValidationSeverity.warning: ValidationSeverityProperties(
      label: 'Warning',
      color: Colors.orange,
      icon: Icons.warning,
    ),
    ValidationSeverity.info: ValidationSeverityProperties(
      label: 'Info',
      color: Colors.blue,
      icon: Icons.info,
    ),
  };

  static const _defaultProps = ValidationSeverityProperties(
    label: 'Unknown',
    color: Colors.grey,
    icon: Icons.help_outline,
  );

  String get label => _properties[this]?.label ?? _defaultProps.label;
  Color get color => _properties[this]?.color ?? _defaultProps.color;
  IconData get icon => _properties[this]?.icon ?? _defaultProps.icon;

  bool get isError => this == ValidationSeverity.error;
  bool get isWarning => this == ValidationSeverity.warning;
  bool get isInfo => this == ValidationSeverity.info;

  // Add comparison methods
  int compareTo(ValidationSeverity other) => priority.compareTo(other.priority);
}

@freezed
class ValidationIssue with _$ValidationIssue {
  const factory ValidationIssue({
    required String message,
    @Default(ValidationSeverity.error) ValidationSeverity severity,
    String? fieldName,
    String? code,
    Map<String, Object>? context,
    String? source,
  }) = _ValidationIssue;

  // Update helper constructors to include new parameters
  factory ValidationIssue.error(
    String message, {
    String? fieldName,
    String? code,
    Map<String, Object>? context,
    String? source,
  }) =>
      ValidationIssue(
        message: message,
        severity: ValidationSeverity.error,
        fieldName: fieldName,
        code: code,
        context: context,
        source: source,
      );

  // Update other constructors similarly
  factory ValidationIssue.warning(
    String message, {
    String? source,
  }) =>
      ValidationIssue(
        message: message,
        severity: ValidationSeverity.warning,
        source: source,
      );

  factory ValidationIssue.info(
    String message, {
    String? source,
  }) =>
      ValidationIssue(
        message: message,
        severity: ValidationSeverity.info,
        source: source,
      );

  factory ValidationIssue.fromJson(Map<String, Object> json) =>
      _$ValidationIssueFromJson(json);
}

@freezed
class ValidationResult with _$ValidationResult {
  const factory ValidationResult({
    @Default(true) bool isValid,
    @Default([]) List<ValidationIssue> issues,
    @Default({}) Map<String, List<ValidationIssue>> fieldIssues,
    Map<String, Object>? metadata,
  }) = _ValidationResult;

  const ValidationResult._();

  bool get hasErrors => _hasSeverity(ValidationSeverity.error);
  bool get hasWarnings => _hasSeverity(ValidationSeverity.warning);

  bool _hasSeverity(ValidationSeverity severity) =>
      issues.any((i) => i.severity == severity) ||
      fieldIssues.values
          .any((issues) => issues.any((i) => i.severity == severity));

  List<ValidationIssue> get allIssues => [
        ...issues,
        ...fieldIssues.values.expand((i) => i),
      ];

  ValidationSeverity? get highestSeverity {
    final allIssuesList = allIssues;
    if (allIssuesList.isEmpty) return null;
    try {
      return allIssuesList
          .map((i) => i.severity)
          .reduce((a, b) => a < b ? a : b);
    } catch (e) {
      return allIssuesList.first.severity;
    }
  }

  // Factory constructors
  factory ValidationResult.valid() => const ValidationResult();

  factory ValidationResult.invalid(List<ValidationIssue> issues) =>
      ValidationResult(isValid: false, issues: issues);

  factory ValidationResult.fieldIssues(
          Map<String, List<ValidationIssue>> fieldIssues) =>
      ValidationResult(isValid: false, fieldIssues: fieldIssues);

  // Helper methods for adding issues
  ValidationResult addIssue(ValidationIssue issue) =>
      copyWith(isValid: false, issues: [...issues, issue]);

  ValidationResult addFieldIssue(String field, ValidationIssue issue) {
    final existingIssues = fieldIssues[field] ?? [];
    return copyWith(
      isValid: false,
      fieldIssues: {
        ...fieldIssues,
        field: [...existingIssues, issue],
      },
    );
  }

  // Add method to merge multiple validation results
  static ValidationResult merge(List<ValidationResult> results) {
    if (results.isEmpty) return ValidationResult.valid();

    return ValidationResult(
      isValid: results.every((r) => r.isValid),
      issues: results.expand((r) => r.issues).toList(),
      fieldIssues: results.fold<Map<String, List<ValidationIssue>>>(
        {},
        (map, result) {
          result.fieldIssues.forEach((key, value) {
            map[key] = [...(map[key] ?? []), ...value];
          });
          return map;
        },
      ),
      metadata: results.fold<Map<String, Object>>(
        {},
        (map, result) => {...map, ...(result.metadata ?? {})},
      ),
    );
  }

  // Add helper method to get issues for specific field
  List<ValidationIssue> getFieldIssues(String fieldName) =>
      fieldIssues[fieldName] ?? [];

  // Add method to check if specific field has errors
  bool hasFieldError(String fieldName) =>
      getFieldIssues(fieldName).any((i) => i.severity.isError);

  // Add method for safe copying with field issues
  ValidationResult addFieldIssues(
      String field, List<ValidationIssue> newIssues) {
    if (newIssues.isEmpty) return this;
    final existingIssues = fieldIssues[field] ?? [];
    return copyWith(
      isValid: false,
      fieldIssues: {
        ...fieldIssues,
        field: [...existingIssues, ...newIssues],
      },
    );
  }

  // Add method to get formatted error message
  String getErrorMessage() {
    if (isValid) return '';

    final messages = allIssues
        .where((i) => i.severity.isError)
        .map((i) =>
            i.fieldName != null ? '${i.fieldName}: ${i.message}' : i.message)
        .toList();

    return messages.join('\n');
  }

  factory ValidationResult.fromJson(Map<String, Object> json) =>
      _$ValidationResultFromJson(json);
}
