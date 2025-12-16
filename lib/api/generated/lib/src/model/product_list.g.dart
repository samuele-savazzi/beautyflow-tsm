// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductList extends ProductList {
  @override
  final int id;
  @override
  final String name;
  @override
  final String? brand;
  @override
  final String? sku;
  @override
  final String? barcode;
  @override
  final BuiltMap<String, Map<String, dynamic>?> category;
  @override
  final double currentStock;
  @override
  final double minimumStock;
  @override
  final String unitOfMeasure;
  @override
  final String unitOfMeasureDisplay;
  @override
  final double costPrice;
  @override
  final double effectiveCostPrice;
  @override
  final double? bulkPurchaseCost;
  @override
  final double? bulkPurchaseQuantity;
  @override
  final double? sellingPrice;
  @override
  final String stockStatus;
  @override
  final bool isLowStock;
  @override
  final bool needsReorder;
  @override
  final double stockValue;
  @override
  final bool isActive;
  @override
  final String? imageUrl;

  factory _$ProductList([void Function(ProductListBuilder)? updates]) =>
      (ProductListBuilder()..update(updates))._build();

  _$ProductList._(
      {required this.id,
      required this.name,
      this.brand,
      this.sku,
      this.barcode,
      required this.category,
      required this.currentStock,
      required this.minimumStock,
      required this.unitOfMeasure,
      required this.unitOfMeasureDisplay,
      required this.costPrice,
      required this.effectiveCostPrice,
      this.bulkPurchaseCost,
      this.bulkPurchaseQuantity,
      this.sellingPrice,
      required this.stockStatus,
      required this.isLowStock,
      required this.needsReorder,
      required this.stockValue,
      required this.isActive,
      this.imageUrl})
      : super._();
  @override
  ProductList rebuild(void Function(ProductListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductListBuilder toBuilder() => ProductListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductList &&
        id == other.id &&
        name == other.name &&
        brand == other.brand &&
        sku == other.sku &&
        barcode == other.barcode &&
        category == other.category &&
        currentStock == other.currentStock &&
        minimumStock == other.minimumStock &&
        unitOfMeasure == other.unitOfMeasure &&
        unitOfMeasureDisplay == other.unitOfMeasureDisplay &&
        costPrice == other.costPrice &&
        effectiveCostPrice == other.effectiveCostPrice &&
        bulkPurchaseCost == other.bulkPurchaseCost &&
        bulkPurchaseQuantity == other.bulkPurchaseQuantity &&
        sellingPrice == other.sellingPrice &&
        stockStatus == other.stockStatus &&
        isLowStock == other.isLowStock &&
        needsReorder == other.needsReorder &&
        stockValue == other.stockValue &&
        isActive == other.isActive &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, brand.hashCode);
    _$hash = $jc(_$hash, sku.hashCode);
    _$hash = $jc(_$hash, barcode.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, currentStock.hashCode);
    _$hash = $jc(_$hash, minimumStock.hashCode);
    _$hash = $jc(_$hash, unitOfMeasure.hashCode);
    _$hash = $jc(_$hash, unitOfMeasureDisplay.hashCode);
    _$hash = $jc(_$hash, costPrice.hashCode);
    _$hash = $jc(_$hash, effectiveCostPrice.hashCode);
    _$hash = $jc(_$hash, bulkPurchaseCost.hashCode);
    _$hash = $jc(_$hash, bulkPurchaseQuantity.hashCode);
    _$hash = $jc(_$hash, sellingPrice.hashCode);
    _$hash = $jc(_$hash, stockStatus.hashCode);
    _$hash = $jc(_$hash, isLowStock.hashCode);
    _$hash = $jc(_$hash, needsReorder.hashCode);
    _$hash = $jc(_$hash, stockValue.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductList')
          ..add('id', id)
          ..add('name', name)
          ..add('brand', brand)
          ..add('sku', sku)
          ..add('barcode', barcode)
          ..add('category', category)
          ..add('currentStock', currentStock)
          ..add('minimumStock', minimumStock)
          ..add('unitOfMeasure', unitOfMeasure)
          ..add('unitOfMeasureDisplay', unitOfMeasureDisplay)
          ..add('costPrice', costPrice)
          ..add('effectiveCostPrice', effectiveCostPrice)
          ..add('bulkPurchaseCost', bulkPurchaseCost)
          ..add('bulkPurchaseQuantity', bulkPurchaseQuantity)
          ..add('sellingPrice', sellingPrice)
          ..add('stockStatus', stockStatus)
          ..add('isLowStock', isLowStock)
          ..add('needsReorder', needsReorder)
          ..add('stockValue', stockValue)
          ..add('isActive', isActive)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class ProductListBuilder implements Builder<ProductList, ProductListBuilder> {
  _$ProductList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _brand;
  String? get brand => _$this._brand;
  set brand(String? brand) => _$this._brand = brand;

  String? _sku;
  String? get sku => _$this._sku;
  set sku(String? sku) => _$this._sku = sku;

  String? _barcode;
  String? get barcode => _$this._barcode;
  set barcode(String? barcode) => _$this._barcode = barcode;

  MapBuilder<String, Map<String, dynamic>?>? _category;
  MapBuilder<String, Map<String, dynamic>?> get category =>
      _$this._category ??= MapBuilder<String, Map<String, dynamic>?>();
  set category(MapBuilder<String, Map<String, dynamic>?>? category) =>
      _$this._category = category;

  double? _currentStock;
  double? get currentStock => _$this._currentStock;
  set currentStock(double? currentStock) => _$this._currentStock = currentStock;

  double? _minimumStock;
  double? get minimumStock => _$this._minimumStock;
  set minimumStock(double? minimumStock) => _$this._minimumStock = minimumStock;

  String? _unitOfMeasure;
  String? get unitOfMeasure => _$this._unitOfMeasure;
  set unitOfMeasure(String? unitOfMeasure) =>
      _$this._unitOfMeasure = unitOfMeasure;

  String? _unitOfMeasureDisplay;
  String? get unitOfMeasureDisplay => _$this._unitOfMeasureDisplay;
  set unitOfMeasureDisplay(String? unitOfMeasureDisplay) =>
      _$this._unitOfMeasureDisplay = unitOfMeasureDisplay;

  double? _costPrice;
  double? get costPrice => _$this._costPrice;
  set costPrice(double? costPrice) => _$this._costPrice = costPrice;

  double? _effectiveCostPrice;
  double? get effectiveCostPrice => _$this._effectiveCostPrice;
  set effectiveCostPrice(double? effectiveCostPrice) =>
      _$this._effectiveCostPrice = effectiveCostPrice;

  double? _bulkPurchaseCost;
  double? get bulkPurchaseCost => _$this._bulkPurchaseCost;
  set bulkPurchaseCost(double? bulkPurchaseCost) =>
      _$this._bulkPurchaseCost = bulkPurchaseCost;

  double? _bulkPurchaseQuantity;
  double? get bulkPurchaseQuantity => _$this._bulkPurchaseQuantity;
  set bulkPurchaseQuantity(double? bulkPurchaseQuantity) =>
      _$this._bulkPurchaseQuantity = bulkPurchaseQuantity;

  double? _sellingPrice;
  double? get sellingPrice => _$this._sellingPrice;
  set sellingPrice(double? sellingPrice) => _$this._sellingPrice = sellingPrice;

  String? _stockStatus;
  String? get stockStatus => _$this._stockStatus;
  set stockStatus(String? stockStatus) => _$this._stockStatus = stockStatus;

  bool? _isLowStock;
  bool? get isLowStock => _$this._isLowStock;
  set isLowStock(bool? isLowStock) => _$this._isLowStock = isLowStock;

  bool? _needsReorder;
  bool? get needsReorder => _$this._needsReorder;
  set needsReorder(bool? needsReorder) => _$this._needsReorder = needsReorder;

  double? _stockValue;
  double? get stockValue => _$this._stockValue;
  set stockValue(double? stockValue) => _$this._stockValue = stockValue;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  ProductListBuilder() {
    ProductList._defaults(this);
  }

  ProductListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _brand = $v.brand;
      _sku = $v.sku;
      _barcode = $v.barcode;
      _category = $v.category.toBuilder();
      _currentStock = $v.currentStock;
      _minimumStock = $v.minimumStock;
      _unitOfMeasure = $v.unitOfMeasure;
      _unitOfMeasureDisplay = $v.unitOfMeasureDisplay;
      _costPrice = $v.costPrice;
      _effectiveCostPrice = $v.effectiveCostPrice;
      _bulkPurchaseCost = $v.bulkPurchaseCost;
      _bulkPurchaseQuantity = $v.bulkPurchaseQuantity;
      _sellingPrice = $v.sellingPrice;
      _stockStatus = $v.stockStatus;
      _isLowStock = $v.isLowStock;
      _needsReorder = $v.needsReorder;
      _stockValue = $v.stockValue;
      _isActive = $v.isActive;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductList other) {
    _$v = other as _$ProductList;
  }

  @override
  void update(void Function(ProductListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductList build() => _build();

  _$ProductList _build() {
    _$ProductList _$result;
    try {
      _$result = _$v ??
          _$ProductList._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'ProductList', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ProductList', 'name'),
            brand: brand,
            sku: sku,
            barcode: barcode,
            category: category.build(),
            currentStock: BuiltValueNullFieldError.checkNotNull(
                currentStock, r'ProductList', 'currentStock'),
            minimumStock: BuiltValueNullFieldError.checkNotNull(
                minimumStock, r'ProductList', 'minimumStock'),
            unitOfMeasure: BuiltValueNullFieldError.checkNotNull(
                unitOfMeasure, r'ProductList', 'unitOfMeasure'),
            unitOfMeasureDisplay: BuiltValueNullFieldError.checkNotNull(
                unitOfMeasureDisplay, r'ProductList', 'unitOfMeasureDisplay'),
            costPrice: BuiltValueNullFieldError.checkNotNull(
                costPrice, r'ProductList', 'costPrice'),
            effectiveCostPrice: BuiltValueNullFieldError.checkNotNull(
                effectiveCostPrice, r'ProductList', 'effectiveCostPrice'),
            bulkPurchaseCost: bulkPurchaseCost,
            bulkPurchaseQuantity: bulkPurchaseQuantity,
            sellingPrice: sellingPrice,
            stockStatus: BuiltValueNullFieldError.checkNotNull(
                stockStatus, r'ProductList', 'stockStatus'),
            isLowStock: BuiltValueNullFieldError.checkNotNull(
                isLowStock, r'ProductList', 'isLowStock'),
            needsReorder: BuiltValueNullFieldError.checkNotNull(
                needsReorder, r'ProductList', 'needsReorder'),
            stockValue: BuiltValueNullFieldError.checkNotNull(
                stockValue, r'ProductList', 'stockValue'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'ProductList', 'isActive'),
            imageUrl: imageUrl,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        category.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProductList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
