// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchResponse extends BatchResponse {
  @override
  final bool success;
  @override
  final BuiltList<BatchResult> results;
  @override
  final BatchPerformanceResponse performance;

  factory _$BatchResponse([void Function(BatchResponseBuilder)? updates]) =>
      (BatchResponseBuilder()..update(updates))._build();

  _$BatchResponse._(
      {required this.success, required this.results, required this.performance})
      : super._();
  @override
  BatchResponse rebuild(void Function(BatchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchResponseBuilder toBuilder() => BatchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchResponse &&
        success == other.success &&
        results == other.results &&
        performance == other.performance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, performance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchResponse')
          ..add('success', success)
          ..add('results', results)
          ..add('performance', performance))
        .toString();
  }
}

class BatchResponseBuilder
    implements Builder<BatchResponse, BatchResponseBuilder> {
  _$BatchResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<BatchResult>? _results;
  ListBuilder<BatchResult> get results =>
      _$this._results ??= ListBuilder<BatchResult>();
  set results(ListBuilder<BatchResult>? results) => _$this._results = results;

  BatchPerformanceResponseBuilder? _performance;
  BatchPerformanceResponseBuilder get performance =>
      _$this._performance ??= BatchPerformanceResponseBuilder();
  set performance(BatchPerformanceResponseBuilder? performance) =>
      _$this._performance = performance;

  BatchResponseBuilder() {
    BatchResponse._defaults(this);
  }

  BatchResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _results = $v.results.toBuilder();
      _performance = $v.performance.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchResponse other) {
    _$v = other as _$BatchResponse;
  }

  @override
  void update(void Function(BatchResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchResponse build() => _build();

  _$BatchResponse _build() {
    _$BatchResponse _$result;
    try {
      _$result = _$v ??
          _$BatchResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'BatchResponse', 'success'),
            results: results.build(),
            performance: performance.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
        _$failedField = 'performance';
        performance.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BatchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
