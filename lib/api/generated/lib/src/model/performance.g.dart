// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Performance extends Performance {
  @override
  final double totalTimeMs;
  @override
  final PerformanceBreakdown breakdown;
  @override
  final int servicesCount;
  @override
  final int operatorsCount;

  factory _$Performance([void Function(PerformanceBuilder)? updates]) =>
      (PerformanceBuilder()..update(updates))._build();

  _$Performance._(
      {required this.totalTimeMs,
      required this.breakdown,
      required this.servicesCount,
      required this.operatorsCount})
      : super._();
  @override
  Performance rebuild(void Function(PerformanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PerformanceBuilder toBuilder() => PerformanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Performance &&
        totalTimeMs == other.totalTimeMs &&
        breakdown == other.breakdown &&
        servicesCount == other.servicesCount &&
        operatorsCount == other.operatorsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalTimeMs.hashCode);
    _$hash = $jc(_$hash, breakdown.hashCode);
    _$hash = $jc(_$hash, servicesCount.hashCode);
    _$hash = $jc(_$hash, operatorsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Performance')
          ..add('totalTimeMs', totalTimeMs)
          ..add('breakdown', breakdown)
          ..add('servicesCount', servicesCount)
          ..add('operatorsCount', operatorsCount))
        .toString();
  }
}

class PerformanceBuilder implements Builder<Performance, PerformanceBuilder> {
  _$Performance? _$v;

  double? _totalTimeMs;
  double? get totalTimeMs => _$this._totalTimeMs;
  set totalTimeMs(double? totalTimeMs) => _$this._totalTimeMs = totalTimeMs;

  PerformanceBreakdownBuilder? _breakdown;
  PerformanceBreakdownBuilder get breakdown =>
      _$this._breakdown ??= PerformanceBreakdownBuilder();
  set breakdown(PerformanceBreakdownBuilder? breakdown) =>
      _$this._breakdown = breakdown;

  int? _servicesCount;
  int? get servicesCount => _$this._servicesCount;
  set servicesCount(int? servicesCount) =>
      _$this._servicesCount = servicesCount;

  int? _operatorsCount;
  int? get operatorsCount => _$this._operatorsCount;
  set operatorsCount(int? operatorsCount) =>
      _$this._operatorsCount = operatorsCount;

  PerformanceBuilder() {
    Performance._defaults(this);
  }

  PerformanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalTimeMs = $v.totalTimeMs;
      _breakdown = $v.breakdown.toBuilder();
      _servicesCount = $v.servicesCount;
      _operatorsCount = $v.operatorsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Performance other) {
    _$v = other as _$Performance;
  }

  @override
  void update(void Function(PerformanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Performance build() => _build();

  _$Performance _build() {
    _$Performance _$result;
    try {
      _$result = _$v ??
          _$Performance._(
            totalTimeMs: BuiltValueNullFieldError.checkNotNull(
                totalTimeMs, r'Performance', 'totalTimeMs'),
            breakdown: breakdown.build(),
            servicesCount: BuiltValueNullFieldError.checkNotNull(
                servicesCount, r'Performance', 'servicesCount'),
            operatorsCount: BuiltValueNullFieldError.checkNotNull(
                operatorsCount, r'Performance', 'operatorsCount'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'breakdown';
        breakdown.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Performance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
