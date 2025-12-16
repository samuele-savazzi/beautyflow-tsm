// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PerformanceInfo extends PerformanceInfo {
  @override
  final double queryExecutionTimeMs;
  @override
  final double totalExecutionTimeMs;
  @override
  final double processingTimeMs;
  @override
  final int rowsProcessed;

  factory _$PerformanceInfo([void Function(PerformanceInfoBuilder)? updates]) =>
      (PerformanceInfoBuilder()..update(updates))._build();

  _$PerformanceInfo._(
      {required this.queryExecutionTimeMs,
      required this.totalExecutionTimeMs,
      required this.processingTimeMs,
      required this.rowsProcessed})
      : super._();
  @override
  PerformanceInfo rebuild(void Function(PerformanceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PerformanceInfoBuilder toBuilder() => PerformanceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PerformanceInfo &&
        queryExecutionTimeMs == other.queryExecutionTimeMs &&
        totalExecutionTimeMs == other.totalExecutionTimeMs &&
        processingTimeMs == other.processingTimeMs &&
        rowsProcessed == other.rowsProcessed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queryExecutionTimeMs.hashCode);
    _$hash = $jc(_$hash, totalExecutionTimeMs.hashCode);
    _$hash = $jc(_$hash, processingTimeMs.hashCode);
    _$hash = $jc(_$hash, rowsProcessed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PerformanceInfo')
          ..add('queryExecutionTimeMs', queryExecutionTimeMs)
          ..add('totalExecutionTimeMs', totalExecutionTimeMs)
          ..add('processingTimeMs', processingTimeMs)
          ..add('rowsProcessed', rowsProcessed))
        .toString();
  }
}

class PerformanceInfoBuilder
    implements Builder<PerformanceInfo, PerformanceInfoBuilder> {
  _$PerformanceInfo? _$v;

  double? _queryExecutionTimeMs;
  double? get queryExecutionTimeMs => _$this._queryExecutionTimeMs;
  set queryExecutionTimeMs(double? queryExecutionTimeMs) =>
      _$this._queryExecutionTimeMs = queryExecutionTimeMs;

  double? _totalExecutionTimeMs;
  double? get totalExecutionTimeMs => _$this._totalExecutionTimeMs;
  set totalExecutionTimeMs(double? totalExecutionTimeMs) =>
      _$this._totalExecutionTimeMs = totalExecutionTimeMs;

  double? _processingTimeMs;
  double? get processingTimeMs => _$this._processingTimeMs;
  set processingTimeMs(double? processingTimeMs) =>
      _$this._processingTimeMs = processingTimeMs;

  int? _rowsProcessed;
  int? get rowsProcessed => _$this._rowsProcessed;
  set rowsProcessed(int? rowsProcessed) =>
      _$this._rowsProcessed = rowsProcessed;

  PerformanceInfoBuilder() {
    PerformanceInfo._defaults(this);
  }

  PerformanceInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryExecutionTimeMs = $v.queryExecutionTimeMs;
      _totalExecutionTimeMs = $v.totalExecutionTimeMs;
      _processingTimeMs = $v.processingTimeMs;
      _rowsProcessed = $v.rowsProcessed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PerformanceInfo other) {
    _$v = other as _$PerformanceInfo;
  }

  @override
  void update(void Function(PerformanceInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PerformanceInfo build() => _build();

  _$PerformanceInfo _build() {
    final _$result = _$v ??
        _$PerformanceInfo._(
          queryExecutionTimeMs: BuiltValueNullFieldError.checkNotNull(
              queryExecutionTimeMs, r'PerformanceInfo', 'queryExecutionTimeMs'),
          totalExecutionTimeMs: BuiltValueNullFieldError.checkNotNull(
              totalExecutionTimeMs, r'PerformanceInfo', 'totalExecutionTimeMs'),
          processingTimeMs: BuiltValueNullFieldError.checkNotNull(
              processingTimeMs, r'PerformanceInfo', 'processingTimeMs'),
          rowsProcessed: BuiltValueNullFieldError.checkNotNull(
              rowsProcessed, r'PerformanceInfo', 'rowsProcessed'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
