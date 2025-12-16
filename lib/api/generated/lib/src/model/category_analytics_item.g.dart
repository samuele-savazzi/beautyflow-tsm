// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_analytics_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryAnalyticsItem extends CategoryAnalyticsItem {
  @override
  final int categoryId;
  @override
  final String categoryName;
  @override
  final int totalProducts;
  @override
  final double totalStockValue;
  @override
  final int lowStockProducts;
  @override
  final int reorderNeededProducts;

  factory _$CategoryAnalyticsItem(
          [void Function(CategoryAnalyticsItemBuilder)? updates]) =>
      (CategoryAnalyticsItemBuilder()..update(updates))._build();

  _$CategoryAnalyticsItem._(
      {required this.categoryId,
      required this.categoryName,
      required this.totalProducts,
      required this.totalStockValue,
      required this.lowStockProducts,
      required this.reorderNeededProducts})
      : super._();
  @override
  CategoryAnalyticsItem rebuild(
          void Function(CategoryAnalyticsItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryAnalyticsItemBuilder toBuilder() =>
      CategoryAnalyticsItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryAnalyticsItem &&
        categoryId == other.categoryId &&
        categoryName == other.categoryName &&
        totalProducts == other.totalProducts &&
        totalStockValue == other.totalStockValue &&
        lowStockProducts == other.lowStockProducts &&
        reorderNeededProducts == other.reorderNeededProducts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categoryId.hashCode);
    _$hash = $jc(_$hash, categoryName.hashCode);
    _$hash = $jc(_$hash, totalProducts.hashCode);
    _$hash = $jc(_$hash, totalStockValue.hashCode);
    _$hash = $jc(_$hash, lowStockProducts.hashCode);
    _$hash = $jc(_$hash, reorderNeededProducts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryAnalyticsItem')
          ..add('categoryId', categoryId)
          ..add('categoryName', categoryName)
          ..add('totalProducts', totalProducts)
          ..add('totalStockValue', totalStockValue)
          ..add('lowStockProducts', lowStockProducts)
          ..add('reorderNeededProducts', reorderNeededProducts))
        .toString();
  }
}

class CategoryAnalyticsItemBuilder
    implements Builder<CategoryAnalyticsItem, CategoryAnalyticsItemBuilder> {
  _$CategoryAnalyticsItem? _$v;

  int? _categoryId;
  int? get categoryId => _$this._categoryId;
  set categoryId(int? categoryId) => _$this._categoryId = categoryId;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  int? _totalProducts;
  int? get totalProducts => _$this._totalProducts;
  set totalProducts(int? totalProducts) =>
      _$this._totalProducts = totalProducts;

  double? _totalStockValue;
  double? get totalStockValue => _$this._totalStockValue;
  set totalStockValue(double? totalStockValue) =>
      _$this._totalStockValue = totalStockValue;

  int? _lowStockProducts;
  int? get lowStockProducts => _$this._lowStockProducts;
  set lowStockProducts(int? lowStockProducts) =>
      _$this._lowStockProducts = lowStockProducts;

  int? _reorderNeededProducts;
  int? get reorderNeededProducts => _$this._reorderNeededProducts;
  set reorderNeededProducts(int? reorderNeededProducts) =>
      _$this._reorderNeededProducts = reorderNeededProducts;

  CategoryAnalyticsItemBuilder() {
    CategoryAnalyticsItem._defaults(this);
  }

  CategoryAnalyticsItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryId = $v.categoryId;
      _categoryName = $v.categoryName;
      _totalProducts = $v.totalProducts;
      _totalStockValue = $v.totalStockValue;
      _lowStockProducts = $v.lowStockProducts;
      _reorderNeededProducts = $v.reorderNeededProducts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryAnalyticsItem other) {
    _$v = other as _$CategoryAnalyticsItem;
  }

  @override
  void update(void Function(CategoryAnalyticsItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryAnalyticsItem build() => _build();

  _$CategoryAnalyticsItem _build() {
    final _$result = _$v ??
        _$CategoryAnalyticsItem._(
          categoryId: BuiltValueNullFieldError.checkNotNull(
              categoryId, r'CategoryAnalyticsItem', 'categoryId'),
          categoryName: BuiltValueNullFieldError.checkNotNull(
              categoryName, r'CategoryAnalyticsItem', 'categoryName'),
          totalProducts: BuiltValueNullFieldError.checkNotNull(
              totalProducts, r'CategoryAnalyticsItem', 'totalProducts'),
          totalStockValue: BuiltValueNullFieldError.checkNotNull(
              totalStockValue, r'CategoryAnalyticsItem', 'totalStockValue'),
          lowStockProducts: BuiltValueNullFieldError.checkNotNull(
              lowStockProducts, r'CategoryAnalyticsItem', 'lowStockProducts'),
          reorderNeededProducts: BuiltValueNullFieldError.checkNotNull(
              reorderNeededProducts,
              r'CategoryAnalyticsItem',
              'reorderNeededProducts'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
