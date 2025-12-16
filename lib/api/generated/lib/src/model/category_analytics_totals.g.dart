// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_analytics_totals.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryAnalyticsTotals extends CategoryAnalyticsTotals {
  @override
  final int totalProducts;
  @override
  final double totalStockValue;
  @override
  final int totalLowStock;
  @override
  final int totalReorderNeeded;

  factory _$CategoryAnalyticsTotals(
          [void Function(CategoryAnalyticsTotalsBuilder)? updates]) =>
      (CategoryAnalyticsTotalsBuilder()..update(updates))._build();

  _$CategoryAnalyticsTotals._(
      {required this.totalProducts,
      required this.totalStockValue,
      required this.totalLowStock,
      required this.totalReorderNeeded})
      : super._();
  @override
  CategoryAnalyticsTotals rebuild(
          void Function(CategoryAnalyticsTotalsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryAnalyticsTotalsBuilder toBuilder() =>
      CategoryAnalyticsTotalsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryAnalyticsTotals &&
        totalProducts == other.totalProducts &&
        totalStockValue == other.totalStockValue &&
        totalLowStock == other.totalLowStock &&
        totalReorderNeeded == other.totalReorderNeeded;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalProducts.hashCode);
    _$hash = $jc(_$hash, totalStockValue.hashCode);
    _$hash = $jc(_$hash, totalLowStock.hashCode);
    _$hash = $jc(_$hash, totalReorderNeeded.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryAnalyticsTotals')
          ..add('totalProducts', totalProducts)
          ..add('totalStockValue', totalStockValue)
          ..add('totalLowStock', totalLowStock)
          ..add('totalReorderNeeded', totalReorderNeeded))
        .toString();
  }
}

class CategoryAnalyticsTotalsBuilder
    implements
        Builder<CategoryAnalyticsTotals, CategoryAnalyticsTotalsBuilder> {
  _$CategoryAnalyticsTotals? _$v;

  int? _totalProducts;
  int? get totalProducts => _$this._totalProducts;
  set totalProducts(int? totalProducts) =>
      _$this._totalProducts = totalProducts;

  double? _totalStockValue;
  double? get totalStockValue => _$this._totalStockValue;
  set totalStockValue(double? totalStockValue) =>
      _$this._totalStockValue = totalStockValue;

  int? _totalLowStock;
  int? get totalLowStock => _$this._totalLowStock;
  set totalLowStock(int? totalLowStock) =>
      _$this._totalLowStock = totalLowStock;

  int? _totalReorderNeeded;
  int? get totalReorderNeeded => _$this._totalReorderNeeded;
  set totalReorderNeeded(int? totalReorderNeeded) =>
      _$this._totalReorderNeeded = totalReorderNeeded;

  CategoryAnalyticsTotalsBuilder() {
    CategoryAnalyticsTotals._defaults(this);
  }

  CategoryAnalyticsTotalsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalProducts = $v.totalProducts;
      _totalStockValue = $v.totalStockValue;
      _totalLowStock = $v.totalLowStock;
      _totalReorderNeeded = $v.totalReorderNeeded;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryAnalyticsTotals other) {
    _$v = other as _$CategoryAnalyticsTotals;
  }

  @override
  void update(void Function(CategoryAnalyticsTotalsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryAnalyticsTotals build() => _build();

  _$CategoryAnalyticsTotals _build() {
    final _$result = _$v ??
        _$CategoryAnalyticsTotals._(
          totalProducts: BuiltValueNullFieldError.checkNotNull(
              totalProducts, r'CategoryAnalyticsTotals', 'totalProducts'),
          totalStockValue: BuiltValueNullFieldError.checkNotNull(
              totalStockValue, r'CategoryAnalyticsTotals', 'totalStockValue'),
          totalLowStock: BuiltValueNullFieldError.checkNotNull(
              totalLowStock, r'CategoryAnalyticsTotals', 'totalLowStock'),
          totalReorderNeeded: BuiltValueNullFieldError.checkNotNull(
              totalReorderNeeded,
              r'CategoryAnalyticsTotals',
              'totalReorderNeeded'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
