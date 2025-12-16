// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PerformanceResponse extends PerformanceResponse {
  @override
  final double responseTimeMs;
  @override
  final bool cythonEnabled;
  @override
  final int targetMs;

  factory _$PerformanceResponse(
          [void Function(PerformanceResponseBuilder)? updates]) =>
      (PerformanceResponseBuilder()..update(updates))._build();

  _$PerformanceResponse._(
      {required this.responseTimeMs,
      required this.cythonEnabled,
      required this.targetMs})
      : super._();
  @override
  PerformanceResponse rebuild(
          void Function(PerformanceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PerformanceResponseBuilder toBuilder() =>
      PerformanceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PerformanceResponse &&
        responseTimeMs == other.responseTimeMs &&
        cythonEnabled == other.cythonEnabled &&
        targetMs == other.targetMs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseTimeMs.hashCode);
    _$hash = $jc(_$hash, cythonEnabled.hashCode);
    _$hash = $jc(_$hash, targetMs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PerformanceResponse')
          ..add('responseTimeMs', responseTimeMs)
          ..add('cythonEnabled', cythonEnabled)
          ..add('targetMs', targetMs))
        .toString();
  }
}

class PerformanceResponseBuilder
    implements Builder<PerformanceResponse, PerformanceResponseBuilder> {
  _$PerformanceResponse? _$v;

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

  PerformanceResponseBuilder() {
    PerformanceResponse._defaults(this);
  }

  PerformanceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseTimeMs = $v.responseTimeMs;
      _cythonEnabled = $v.cythonEnabled;
      _targetMs = $v.targetMs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PerformanceResponse other) {
    _$v = other as _$PerformanceResponse;
  }

  @override
  void update(void Function(PerformanceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PerformanceResponse build() => _build();

  _$PerformanceResponse _build() {
    final _$result = _$v ??
        _$PerformanceResponse._(
          responseTimeMs: BuiltValueNullFieldError.checkNotNull(
              responseTimeMs, r'PerformanceResponse', 'responseTimeMs'),
          cythonEnabled: BuiltValueNullFieldError.checkNotNull(
              cythonEnabled, r'PerformanceResponse', 'cythonEnabled'),
          targetMs: BuiltValueNullFieldError.checkNotNull(
              targetMs, r'PerformanceResponse', 'targetMs'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
