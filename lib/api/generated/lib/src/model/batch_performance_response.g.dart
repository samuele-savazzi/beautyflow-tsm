// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_performance_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchPerformanceResponse extends BatchPerformanceResponse {
  @override
  final double responseTimeMs;
  @override
  final int requestsCount;
  @override
  final double avgTimePerRequest;

  factory _$BatchPerformanceResponse(
          [void Function(BatchPerformanceResponseBuilder)? updates]) =>
      (BatchPerformanceResponseBuilder()..update(updates))._build();

  _$BatchPerformanceResponse._(
      {required this.responseTimeMs,
      required this.requestsCount,
      required this.avgTimePerRequest})
      : super._();
  @override
  BatchPerformanceResponse rebuild(
          void Function(BatchPerformanceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchPerformanceResponseBuilder toBuilder() =>
      BatchPerformanceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchPerformanceResponse &&
        responseTimeMs == other.responseTimeMs &&
        requestsCount == other.requestsCount &&
        avgTimePerRequest == other.avgTimePerRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responseTimeMs.hashCode);
    _$hash = $jc(_$hash, requestsCount.hashCode);
    _$hash = $jc(_$hash, avgTimePerRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchPerformanceResponse')
          ..add('responseTimeMs', responseTimeMs)
          ..add('requestsCount', requestsCount)
          ..add('avgTimePerRequest', avgTimePerRequest))
        .toString();
  }
}

class BatchPerformanceResponseBuilder
    implements
        Builder<BatchPerformanceResponse, BatchPerformanceResponseBuilder> {
  _$BatchPerformanceResponse? _$v;

  double? _responseTimeMs;
  double? get responseTimeMs => _$this._responseTimeMs;
  set responseTimeMs(double? responseTimeMs) =>
      _$this._responseTimeMs = responseTimeMs;

  int? _requestsCount;
  int? get requestsCount => _$this._requestsCount;
  set requestsCount(int? requestsCount) =>
      _$this._requestsCount = requestsCount;

  double? _avgTimePerRequest;
  double? get avgTimePerRequest => _$this._avgTimePerRequest;
  set avgTimePerRequest(double? avgTimePerRequest) =>
      _$this._avgTimePerRequest = avgTimePerRequest;

  BatchPerformanceResponseBuilder() {
    BatchPerformanceResponse._defaults(this);
  }

  BatchPerformanceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responseTimeMs = $v.responseTimeMs;
      _requestsCount = $v.requestsCount;
      _avgTimePerRequest = $v.avgTimePerRequest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchPerformanceResponse other) {
    _$v = other as _$BatchPerformanceResponse;
  }

  @override
  void update(void Function(BatchPerformanceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchPerformanceResponse build() => _build();

  _$BatchPerformanceResponse _build() {
    final _$result = _$v ??
        _$BatchPerformanceResponse._(
          responseTimeMs: BuiltValueNullFieldError.checkNotNull(
              responseTimeMs, r'BatchPerformanceResponse', 'responseTimeMs'),
          requestsCount: BuiltValueNullFieldError.checkNotNull(
              requestsCount, r'BatchPerformanceResponse', 'requestsCount'),
          avgTimePerRequest: BuiltValueNullFieldError.checkNotNull(
              avgTimePerRequest,
              r'BatchPerformanceResponse',
              'avgTimePerRequest'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
