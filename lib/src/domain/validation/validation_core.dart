import 'package:data_manager/data_manager.dart';

class ValidationContext {
  final Map<String, Object> data;
  final Map<String, BaseEntity> relatedEntities;
  final bool useCache;
  final int maxDepth;
  final Set<EntityId> validationChain;

  ValidationContext({
    this.data = const {},
    this.relatedEntities = const {},
    this.useCache = true,
    this.maxDepth = 5,
    this.validationChain = const {},
  });

  bool hasCircularDependency(EntityId id) => validationChain.contains(id);

  ValidationContext withEntity(EntityId id) {
    if (hasCircularDependency(id)) {
      throw ValidationException('Circular dependency detected');
    }
    return ValidationContext(
      data: data,
      relatedEntities: relatedEntities,
      useCache: useCache,
      maxDepth: maxDepth - 1,
      validationChain: {...validationChain, id},
    );
  }

  bool get canContinueValidation => maxDepth > 0;
}

abstract class IEntityValidator<T extends BaseEntity> {
  Future<ValidationResult> validate(T entity, ValidationContext context);
}

class EntityValidator<T extends BaseEntity> implements IEntityValidator<T> {
  final ValidationCache _cache;
  final List<ValidationRule<T>> rules;

  EntityValidator({
    required this.rules,
    ValidationCache? cache,
  }) : _cache = cache ?? ValidationCache();

  @override
  Future<ValidationResult> validate(T entity, ValidationContext context) async {
    if (!context.canContinueValidation) return ValidationResult.valid();

    final cached = _checkCache(entity);
    if (cached != null) return cached;

    final results = await Future.wait(rules.map((r) => r.validate(entity, context)));
    final result = ValidationResult.merge(results);

    if (context.useCache) {
      _cacheResult(entity, result);
    }

    return result;
  }

  ValidationResult? _checkCache(T entity) {
    return _cache.get(
      '${entity.entityType}-${entity.entityId}',
      entity.entityVersion.toString(),
      const Duration(minutes: 5),
    );
  }

  void _cacheResult(T entity, ValidationResult result) {
    _cache.set(
      '${entity.entityType}-${entity.entityId}',
      result,
      entity.entityVersion.toString(),
    );
  }
}
