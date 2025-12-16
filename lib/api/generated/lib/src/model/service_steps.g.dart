// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_steps.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceSteps extends ServiceSteps {
  @override
  final int stepId;
  @override
  final String stepName;
  @override
  final String stepType;
  @override
  final int? stepTime;
  @override
  final BuiltList<CategoryOption> categories;

  factory _$ServiceSteps([void Function(ServiceStepsBuilder)? updates]) =>
      (ServiceStepsBuilder()..update(updates))._build();

  _$ServiceSteps._(
      {required this.stepId,
      required this.stepName,
      required this.stepType,
      this.stepTime,
      required this.categories})
      : super._();
  @override
  ServiceSteps rebuild(void Function(ServiceStepsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceStepsBuilder toBuilder() => ServiceStepsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceSteps &&
        stepId == other.stepId &&
        stepName == other.stepName &&
        stepType == other.stepType &&
        stepTime == other.stepTime &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stepId.hashCode);
    _$hash = $jc(_$hash, stepName.hashCode);
    _$hash = $jc(_$hash, stepType.hashCode);
    _$hash = $jc(_$hash, stepTime.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceSteps')
          ..add('stepId', stepId)
          ..add('stepName', stepName)
          ..add('stepType', stepType)
          ..add('stepTime', stepTime)
          ..add('categories', categories))
        .toString();
  }
}

class ServiceStepsBuilder
    implements Builder<ServiceSteps, ServiceStepsBuilder> {
  _$ServiceSteps? _$v;

  int? _stepId;
  int? get stepId => _$this._stepId;
  set stepId(int? stepId) => _$this._stepId = stepId;

  String? _stepName;
  String? get stepName => _$this._stepName;
  set stepName(String? stepName) => _$this._stepName = stepName;

  String? _stepType;
  String? get stepType => _$this._stepType;
  set stepType(String? stepType) => _$this._stepType = stepType;

  int? _stepTime;
  int? get stepTime => _$this._stepTime;
  set stepTime(int? stepTime) => _$this._stepTime = stepTime;

  ListBuilder<CategoryOption>? _categories;
  ListBuilder<CategoryOption> get categories =>
      _$this._categories ??= ListBuilder<CategoryOption>();
  set categories(ListBuilder<CategoryOption>? categories) =>
      _$this._categories = categories;

  ServiceStepsBuilder() {
    ServiceSteps._defaults(this);
  }

  ServiceStepsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stepId = $v.stepId;
      _stepName = $v.stepName;
      _stepType = $v.stepType;
      _stepTime = $v.stepTime;
      _categories = $v.categories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceSteps other) {
    _$v = other as _$ServiceSteps;
  }

  @override
  void update(void Function(ServiceStepsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceSteps build() => _build();

  _$ServiceSteps _build() {
    _$ServiceSteps _$result;
    try {
      _$result = _$v ??
          _$ServiceSteps._(
            stepId: BuiltValueNullFieldError.checkNotNull(
                stepId, r'ServiceSteps', 'stepId'),
            stepName: BuiltValueNullFieldError.checkNotNull(
                stepName, r'ServiceSteps', 'stepName'),
            stepType: BuiltValueNullFieldError.checkNotNull(
                stepType, r'ServiceSteps', 'stepType'),
            stepTime: stepTime,
            categories: categories.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceSteps', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
