import 'package:data_manager/data_manager.dart';

abstract class ValidationRule<T extends BaseEntity> {
  Future<ValidationResult> validate(T entity, ValidationContext context);
}

class RequiredFieldRule<T extends BaseEntity> extends ValidationRule<T> {
  final String fieldName;

  RequiredFieldRule(this.fieldName);

  @override
  Future<ValidationResult> validate(T entity, ValidationContext context) async {
    final value = entity[fieldName];
    if (value == null || (value is String && value.isEmpty)) {
      return ValidationResult.invalid([
        ValidationIssue.error('$fieldName is required', fieldName: fieldName)
      ]);
    }
    return ValidationResult.valid();
  }
}

class RelationRule<T extends BaseEntity> extends ValidationRule<T> {
  final String relationType;
  final bool required;
  final int? maxRelations;

  RelationRule({
    required this.relationType,
    this.required = false,
    this.maxRelations,
  });

  @override
  Future<ValidationResult> validate(T entity, ValidationContext context) async {
    final relations = entity.relations[relationType] ?? [];

    if (required && relations.isEmpty) {
      return ValidationResult.invalid([
        ValidationIssue.error(
          '$relationType relation is required',
          fieldName: 'relations',
        )
      ]);
    }

    if (maxRelations != null && relations.length > maxRelations!) {
      return ValidationResult.invalid([
        ValidationIssue.error(
          '$relationType relations exceed maximum of $maxRelations',
          fieldName: 'relations',
        )
      ]);
    }

    return ValidationResult.valid();
  }
}

class WorkflowRule<T extends BaseEntity> extends ValidationRule<T> {
  final Map<WorkflowStage, List<WorkflowStage>> allowedTransitions;

  WorkflowRule(this.allowedTransitions);

  @override
  Future<ValidationResult> validate(T entity, ValidationContext context) async {
    final currentStage = entity.workflowStage;
    final previousStage = context.data['previousStage'] as WorkflowStage?;

    if (previousStage != null) {
      final allowed = allowedTransitions[previousStage] ?? [];
      if (!allowed.contains(currentStage)) {
        return ValidationResult.invalid([
          ValidationIssue.error(
            'Invalid workflow transition from $previousStage to $currentStage',
            fieldName: 'workflowStage',
          )
        ]);
      }
    }

    return ValidationResult.valid();
  }
}
