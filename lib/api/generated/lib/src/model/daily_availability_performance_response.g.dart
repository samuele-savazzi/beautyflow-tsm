// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_availability_performance_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyAvailabilityPerformanceResponse
    extends DailyAvailabilityPerformanceResponse {
  @override
  final double responseTimeMs;
  @override
  final bool cythonEnabled;
  @override
  final int targetMs;
  @override
  final int daysProcessed;

  factory _$DailyAvailabilityPerformanceResponse(
          [void Function(DailyAvailabilityPerformanceResponseBuilder)?
              updates]) =>
      (DailyAvailabilityPerformanceResponseBuilder()..update(updates))._build();

  _$DailyAvailabilityPerformanceResponse._(
      {required this.responseTimeMs,
      required this.cythonEnabled,
      required this.targetMs,
      required this.daysProcessed})
      : super._();
  @override
  DailyAvailabilityPerformanceResponse rebuild(
          void Function(DailyAvailabilityPerformanceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyAvailabilityPerformanceResponseBuilder toBuilder() =>
      DailyAvailabilityPerformanceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyAvailabilityPerformanceResponse &&
        responseTimeMs == other.responseTimeMs &&
        cythonEnabled == other.cythonEnabled &&
        targetMs == other.targetMs &&
        daysProcessed == other.daysProcessed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseTimeMs.hashCode);
    _$hash = $jc(_$hash, cythonEnabled.hashCode);
    _$hash = $jc(_$hash, targetMs.hashCode);
    _$hash = $jc(_$hash, daysProcessed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyAvailabilityPerformanceResponse')
          ..add('responseTimeMs', responseTimeMs)
          ..add('cythonEnabled', cythonEnabled)
          ..add('targetMs', targetMs)
          ..add('daysProcessed', daysProcessed))
        .toString();
  }
}

class DailyAvailabilityPerformanceResponseBuilder
    implements
        Builder<DailyAvailabilityPerformanceResponse,
            DailyAvailabilityPerformanceResponseBuilder> {
  _$DailyAvailabilityPerformanceResponse? _$v;

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

  int? _daysProcessed;
  int? get daysProcessed => _$this._daysProcessed;
  set daysProcessed(int? daysProcessed) =>
      _$this._daysProcessed = daysProcessed;

  DailyAvailabilityPerformanceResponseBuilder() {
    DailyAvailabilityPerformanceResponse._defaults(this);
  }

  DailyAvailabilityPerformanceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseTimeMs = $v.responseTimeMs;
      _cythonEnabled = $v.cythonEnabled;
      _targetMs = $v.targetMs;
      _daysProcessed = $v.daysProcessed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyAvailabilityPerformanceResponse other) {
    _$v = other as _$DailyAvailabilityPerformanceResponse;
  }

  @override
  void update(
      void Function(DailyAvailabilityPerformanceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyAvailabilityPerformanceResponse build() => _build();

  _$DailyAvailabilityPerformanceResponse _build() {
    final _$result = _$v ??
        _$DailyAvailabilityPerformanceResponse._(
          responseTimeMs: BuiltValueNullFieldError.checkNotNull(responseTimeMs,
              r'DailyAvailabilityPerformanceResponse', 'responseTimeMs'),
          cythonEnabled: BuiltValueNullFieldError.checkNotNull(cythonEnabled,
              r'DailyAvailabilityPerformanceResponse', 'cythonEnabled'),
          targetMs: BuiltValueNullFieldError.checkNotNull(
              targetMs, r'DailyAvailabilityPerformanceResponse', 'targetMs'),
          daysProcessed: BuiltValueNullFieldError.checkNotNull(daysProcessed,
              r'DailyAvailabilityPerformanceResponse', 'daysProcessed'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
