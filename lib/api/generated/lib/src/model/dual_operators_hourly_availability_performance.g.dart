// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dual_operators_hourly_availability_performance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DualOperatorsHourlyAvailabilityPerformance
    extends DualOperatorsHourlyAvailabilityPerformance {
  @override
  final double responseTimeMs;
  @override
  final bool cythonEnabled;
  @override
  final int targetMs;
  @override
  final int combinationsFound;

  factory _$DualOperatorsHourlyAvailabilityPerformance(
          [void Function(DualOperatorsHourlyAvailabilityPerformanceBuilder)?
              updates]) =>
      (DualOperatorsHourlyAvailabilityPerformanceBuilder()..update(updates))
          ._build();

  _$DualOperatorsHourlyAvailabilityPerformance._(
      {required this.responseTimeMs,
      required this.cythonEnabled,
      required this.targetMs,
      required this.combinationsFound})
      : super._();
  @override
  DualOperatorsHourlyAvailabilityPerformance rebuild(
          void Function(DualOperatorsHourlyAvailabilityPerformanceBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DualOperatorsHourlyAvailabilityPerformanceBuilder toBuilder() =>
      DualOperatorsHourlyAvailabilityPerformanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DualOperatorsHourlyAvailabilityPerformance &&
        responseTimeMs == other.responseTimeMs &&
        cythonEnabled == other.cythonEnabled &&
        targetMs == other.targetMs &&
        combinationsFound == other.combinationsFound;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseTimeMs.hashCode);
    _$hash = $jc(_$hash, cythonEnabled.hashCode);
    _$hash = $jc(_$hash, targetMs.hashCode);
    _$hash = $jc(_$hash, combinationsFound.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'DualOperatorsHourlyAvailabilityPerformance')
          ..add('responseTimeMs', responseTimeMs)
          ..add('cythonEnabled', cythonEnabled)
          ..add('targetMs', targetMs)
          ..add('combinationsFound', combinationsFound))
        .toString();
  }
}

class DualOperatorsHourlyAvailabilityPerformanceBuilder
    implements
        Builder<DualOperatorsHourlyAvailabilityPerformance,
            DualOperatorsHourlyAvailabilityPerformanceBuilder> {
  _$DualOperatorsHourlyAvailabilityPerformance? _$v;

  double? _responseTimeMs;
  double? get responseTimeMs => _$this._responseTimeMs;
  set responseTimeMs(double? responseTimeMs) =>
      _$this._responseTimeMs = responseTimeMs;

  bool? _cythonEnabled;
  bool? get cythonEnabled => _$this._cythonEnabled;
  set cythonEnabled(bool? cythonEnabled) =>
      _$this._cythonEnabled = cythonEnabled;

  int? _targetMs;
  int? get targetMs => _$this._targetMs;
  set targetMs(int? targetMs) => _$this._targetMs = targetMs;

  int? _combinationsFound;
  int? get combinationsFound => _$this._combinationsFound;
  set combinationsFound(int? combinationsFound) =>
      _$this._combinationsFound = combinationsFound;

  DualOperatorsHourlyAvailabilityPerformanceBuilder() {
    DualOperatorsHourlyAvailabilityPerformance._defaults(this);
  }

  DualOperatorsHourlyAvailabilityPerformanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseTimeMs = $v.responseTimeMs;
      _cythonEnabled = $v.cythonEnabled;
      _targetMs = $v.targetMs;
      _combinationsFound = $v.combinationsFound;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DualOperatorsHourlyAvailabilityPerformance other) {
    _$v = other as _$DualOperatorsHourlyAvailabilityPerformance;
  }

  @override
  void update(
      void Function(DualOperatorsHourlyAvailabilityPerformanceBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DualOperatorsHourlyAvailabilityPerformance build() => _build();

  _$DualOperatorsHourlyAvailabilityPerformance _build() {
    final _$result = _$v ??
        _$DualOperatorsHourlyAvailabilityPerformance._(
          responseTimeMs: BuiltValueNullFieldError.checkNotNull(responseTimeMs,
              r'DualOperatorsHourlyAvailabilityPerformance', 'responseTimeMs'),
          cythonEnabled: BuiltValueNullFieldError.checkNotNull(cythonEnabled,
              r'DualOperatorsHourlyAvailabilityPerformance', 'cythonEnabled'),
          targetMs: BuiltValueNullFieldError.checkNotNull(targetMs,
              r'DualOperatorsHourlyAvailabilityPerformance', 'targetMs'),
          combinationsFound: BuiltValueNullFieldError.checkNotNull(
              combinationsFound,
              r'DualOperatorsHourlyAvailabilityPerformance',
              'combinationsFound'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
