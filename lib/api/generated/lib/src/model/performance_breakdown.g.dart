// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_breakdown.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PerformanceBreakdown extends PerformanceBreakdown {
  @override
  final double unifiedQueryMs;
  @override
  final double dataProcessingMs;
  @override
  final double batchWorkstationsMs;
  @override
  final double batchCategoriesMs;

  factory _$PerformanceBreakdown(
          [void Function(PerformanceBreakdownBuilder)? updates]) =>
      (PerformanceBreakdownBuilder()..update(updates))._build();

  _$PerformanceBreakdown._(
      {required this.unifiedQueryMs,
      required this.dataProcessingMs,
      required this.batchWorkstationsMs,
      required this.batchCategoriesMs})
      : super._();
  @override
  PerformanceBreakdown rebuild(
          void Function(PerformanceBreakdownBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PerformanceBreakdownBuilder toBuilder() =>
      PerformanceBreakdownBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PerformanceBreakdown &&
        unifiedQueryMs == other.unifiedQueryMs &&
        dataProcessingMs == other.dataProcessingMs &&
        batchWorkstationsMs == other.batchWorkstationsMs &&
        batchCategoriesMs == other.batchCategoriesMs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unifiedQueryMs.hashCode);
    _$hash = $jc(_$hash, dataProcessingMs.hashCode);
    _$hash = $jc(_$hash, batchWorkstationsMs.hashCode);
    _$hash = $jc(_$hash, batchCategoriesMs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PerformanceBreakdown')
          ..add('unifiedQueryMs', unifiedQueryMs)
          ..add('dataProcessingMs', dataProcessingMs)
          ..add('batchWorkstationsMs', batchWorkstationsMs)
          ..add('batchCategoriesMs', batchCategoriesMs))
        .toString();
  }
}

class PerformanceBreakdownBuilder
    implements Builder<PerformanceBreakdown, PerformanceBreakdownBuilder> {
  _$PerformanceBreakdown? _$v;

  double? _unifiedQueryMs;
  double? get unifiedQueryMs => _$this._unifiedQueryMs;
  set unifiedQueryMs(double? unifiedQueryMs) =>
      _$this._unifiedQueryMs = unifiedQueryMs;

  double? _dataProcessingMs;
  double? get dataProcessingMs => _$this._dataProcessingMs;
  set dataProcessingMs(double? dataProcessingMs) =>
      _$this._dataProcessingMs = dataProcessingMs;

  double? _batchWorkstationsMs;
  double? get batchWorkstationsMs => _$this._batchWorkstationsMs;
  set batchWorkstationsMs(double? batchWorkstationsMs) =>
      _$this._batchWorkstationsMs = batchWorkstationsMs;

  double? _batchCategoriesMs;
  double? get batchCategoriesMs => _$this._batchCategoriesMs;
  set batchCategoriesMs(double? batchCategoriesMs) =>
      _$this._batchCategoriesMs = batchCategoriesMs;

  PerformanceBreakdownBuilder() {
    PerformanceBreakdown._defaults(this);
  }

  PerformanceBreakdownBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unifiedQueryMs = $v.unifiedQueryMs;
      _dataProcessingMs = $v.dataProcessingMs;
      _batchWorkstationsMs = $v.batchWorkstationsMs;
      _batchCategoriesMs = $v.batchCategoriesMs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PerformanceBreakdown other) {
    _$v = other as _$PerformanceBreakdown;
  }

  @override
  void update(void Function(PerformanceBreakdownBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PerformanceBreakdown build() => _build();

  _$PerformanceBreakdown _build() {
    final _$result = _$v ??
        _$PerformanceBreakdown._(
          unifiedQueryMs: BuiltValueNullFieldError.checkNotNull(
              unifiedQueryMs, r'PerformanceBreakdown', 'unifiedQueryMs'),
          dataProcessingMs: BuiltValueNullFieldError.checkNotNull(
              dataProcessingMs, r'PerformanceBreakdown', 'dataProcessingMs'),
          batchWorkstationsMs: BuiltValueNullFieldError.checkNotNull(
              batchWorkstationsMs,
              r'PerformanceBreakdown',
              'batchWorkstationsMs'),
          batchCategoriesMs: BuiltValueNullFieldError.checkNotNull(
              batchCategoriesMs, r'PerformanceBreakdown', 'batchCategoriesMs'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
