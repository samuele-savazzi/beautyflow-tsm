// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_availability_performance_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HourlyAvailabilityPerformanceResponse
    extends HourlyAvailabilityPerformanceResponse {
  @override
  final double responseTimeMs;
  @override
  final bool cythonEnabled;
  @override
  final int targetMs;
  @override
  final int slotsFound;

  factory _$HourlyAvailabilityPerformanceResponse(
          [void Function(HourlyAvailabilityPerformanceResponseBuilder)?
              updates]) =>
      (HourlyAvailabilityPerformanceResponseBuilder()..update(updates))
          ._build();

  _$HourlyAvailabilityPerformanceResponse._(
      {required this.responseTimeMs,
      required this.cythonEnabled,
      required this.targetMs,
      required this.slotsFound})
      : super._();
  @override
  HourlyAvailabilityPerformanceResponse rebuild(
          void Function(HourlyAvailabilityPerformanceResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HourlyAvailabilityPerformanceResponseBuilder toBuilder() =>
      HourlyAvailabilityPerformanceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HourlyAvailabilityPerformanceResponse &&
        responseTimeMs == other.responseTimeMs &&
        cythonEnabled == other.cythonEnabled &&
        targetMs == other.targetMs &&
        slotsFound == other.slotsFound;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseTimeMs.hashCode);
    _$hash = $jc(_$hash, cythonEnabled.hashCode);
    _$hash = $jc(_$hash, targetMs.hashCode);
    _$hash = $jc(_$hash, slotsFound.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'HourlyAvailabilityPerformanceResponse')
          ..add('responseTimeMs', responseTimeMs)
          ..add('cythonEnabled', cythonEnabled)
          ..add('targetMs', targetMs)
          ..add('slotsFound', slotsFound))
        .toString();
  }
}

class HourlyAvailabilityPerformanceResponseBuilder
    implements
        Builder<HourlyAvailabilityPerformanceResponse,
            HourlyAvailabilityPerformanceResponseBuilder> {
  _$HourlyAvailabilityPerformanceResponse? _$v;

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

  int? _slotsFound;
  int? get slotsFound => _$this._slotsFound;
  set slotsFound(int? slotsFound) => _$this._slotsFound = slotsFound;

  HourlyAvailabilityPerformanceResponseBuilder() {
    HourlyAvailabilityPerformanceResponse._defaults(this);
  }

  HourlyAvailabilityPerformanceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseTimeMs = $v.responseTimeMs;
      _cythonEnabled = $v.cythonEnabled;
      _targetMs = $v.targetMs;
      _slotsFound = $v.slotsFound;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HourlyAvailabilityPerformanceResponse other) {
    _$v = other as _$HourlyAvailabilityPerformanceResponse;
  }

  @override
  void update(
      void Function(HourlyAvailabilityPerformanceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HourlyAvailabilityPerformanceResponse build() => _build();

  _$HourlyAvailabilityPerformanceResponse _build() {
    final _$result = _$v ??
        _$HourlyAvailabilityPerformanceResponse._(
          responseTimeMs: BuiltValueNullFieldError.checkNotNull(responseTimeMs,
              r'HourlyAvailabilityPerformanceResponse', 'responseTimeMs'),
          cythonEnabled: BuiltValueNullFieldError.checkNotNull(cythonEnabled,
              r'HourlyAvailabilityPerformanceResponse', 'cythonEnabled'),
          targetMs: BuiltValueNullFieldError.checkNotNull(
              targetMs, r'HourlyAvailabilityPerformanceResponse', 'targetMs'),
          slotsFound: BuiltValueNullFieldError.checkNotNull(slotsFound,
              r'HourlyAvailabilityPerformanceResponse', 'slotsFound'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
