// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_step.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceStep extends ServiceStep {
  @override
  final int stepId;
  @override
  final String stepName;
  @override
  final String stepType;
  @override
  final int time;
  @override
  final bool hasCategories;
  @override
  final bool active;
  @override
  final BuiltMap<String, CategoryGroup>? categories;

  factory _$ServiceStep([void Function(ServiceStepBuilder)? updates]) =>
      (ServiceStepBuilder()..update(updates))._build();

  _$ServiceStep._(
      {required this.stepId,
      required this.stepName,
      required this.stepType,
      required this.time,
      required this.hasCategories,
      required this.active,
      this.categories})
      : super._();
  @override
  ServiceStep rebuild(void Function(ServiceStepBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceStepBuilder toBuilder() => ServiceStepBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceStep &&
        stepId == other.stepId &&
        stepName == other.stepName &&
        stepType == other.stepType &&
        time == other.time &&
        hasCategories == other.hasCategories &&
        active == other.active &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stepId.hashCode);
    _$hash = $jc(_$hash, stepName.hashCode);
    _$hash = $jc(_$hash, stepType.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, hasCategories.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceStep')
          ..add('stepId', stepId)
          ..add('stepName', stepName)
          ..add('stepType', stepType)
          ..add('time', time)
          ..add('hasCategories', hasCategories)
          ..add('active', active)
          ..add('categories', categories))
        .toString();
  }
}

class ServiceStepBuilder implements Builder<ServiceStep, ServiceStepBuilder> {
  _$ServiceStep? _$v;

  int? _stepId;
  int? get stepId => _$this._stepId;
  set stepId(int? stepId) => _$this._stepId = stepId;

  String? _stepName;
  String? get stepName => _$this._stepName;
  set stepName(String? stepName) => _$this._stepName = stepName;

  String? _stepType;
  String? get stepType => _$this._stepType;
  set stepType(String? stepType) => _$this._stepType = stepType;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  bool? _hasCategories;
  bool? get hasCategories => _$this._hasCategories;
  set hasCategories(bool? hasCategories) =>
      _$this._hasCategories = hasCategories;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  MapBuilder<String, CategoryGroup>? _categories;
  MapBuilder<String, CategoryGroup> get categories =>
      _$this._categories ??= MapBuilder<String, CategoryGroup>();
  set categories(MapBuilder<String, CategoryGroup>? categories) =>
      _$this._categories = categories;

  ServiceStepBuilder() {
    ServiceStep._defaults(this);
  }

  ServiceStepBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stepId = $v.stepId;
      _stepName = $v.stepName;
      _stepType = $v.stepType;
      _time = $v.time;
      _hasCategories = $v.hasCategories;
      _active = $v.active;
      _categories = $v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceStep other) {
    _$v = other as _$ServiceStep;
  }

  @override
  void update(void Function(ServiceStepBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceStep build() => _build();

  _$ServiceStep _build() {
    _$ServiceStep _$result;
    try {
      _$result = _$v ??
          _$ServiceStep._(
            stepId: BuiltValueNullFieldError.checkNotNull(
                stepId, r'ServiceStep', 'stepId'),
            stepName: BuiltValueNullFieldError.checkNotNull(
                stepName, r'ServiceStep', 'stepName'),
            stepType: BuiltValueNullFieldError.checkNotNull(
                stepType, r'ServiceStep', 'stepType'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'ServiceStep', 'time'),
            hasCategories: BuiltValueNullFieldError.checkNotNull(
                hasCategories, r'ServiceStep', 'hasCategories'),
            active: BuiltValueNullFieldError.checkNotNull(
                active, r'ServiceStep', 'active'),
            categories: _categories?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceStep', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
