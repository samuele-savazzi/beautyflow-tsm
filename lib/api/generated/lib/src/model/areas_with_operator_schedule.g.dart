// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'areas_with_operator_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreasWithOperatorSchedule extends AreasWithOperatorSchedule {
  @override
  final BuiltList<AreaSchedule> areas;
  @override
  final PerformanceInfo performance;

  factory _$AreasWithOperatorSchedule(
          [void Function(AreasWithOperatorScheduleBuilder)? updates]) =>
      (AreasWithOperatorScheduleBuilder()..update(updates))._build();

  _$AreasWithOperatorSchedule._(
      {required this.areas, required this.performance})
      : super._();
  @override
  AreasWithOperatorSchedule rebuild(
          void Function(AreasWithOperatorScheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreasWithOperatorScheduleBuilder toBuilder() =>
      AreasWithOperatorScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreasWithOperatorSchedule &&
        areas == other.areas &&
        performance == other.performance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areas.hashCode);
    _$hash = $jc(_$hash, performance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreasWithOperatorSchedule')
          ..add('areas', areas)
          ..add('performance', performance))
        .toString();
  }
}

class AreasWithOperatorScheduleBuilder
    implements
        Builder<AreasWithOperatorSchedule, AreasWithOperatorScheduleBuilder> {
  _$AreasWithOperatorSchedule? _$v;

  ListBuilder<AreaSchedule>? _areas;
  ListBuilder<AreaSchedule> get areas =>
      _$this._areas ??= ListBuilder<AreaSchedule>();
  set areas(ListBuilder<AreaSchedule>? areas) => _$this._areas = areas;

  PerformanceInfoBuilder? _performance;
  PerformanceInfoBuilder get performance =>
      _$this._performance ??= PerformanceInfoBuilder();
  set performance(PerformanceInfoBuilder? performance) =>
      _$this._performance = performance;

  AreasWithOperatorScheduleBuilder() {
    AreasWithOperatorSchedule._defaults(this);
  }

  AreasWithOperatorScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areas = $v.areas.toBuilder();
      _performance = $v.performance.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreasWithOperatorSchedule other) {
    _$v = other as _$AreasWithOperatorSchedule;
  }

  @override
  void update(void Function(AreasWithOperatorScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreasWithOperatorSchedule build() => _build();

  _$AreasWithOperatorSchedule _build() {
    _$AreasWithOperatorSchedule _$result;
    try {
      _$result = _$v ??
          _$AreasWithOperatorSchedule._(
            areas: areas.build(),
            performance: performance.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'areas';
        areas.build();
        _$failedField = 'performance';
        performance.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AreasWithOperatorSchedule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
