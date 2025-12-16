// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_sale.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductSale extends ProductSale {
  @override
  final int productId;
  @override
  final String productName;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final double unitCost;
  @override
  final double salePricePerUnit;
  @override
  final double discountPercentage;
  @override
  final double discountAmount;
  @override
  final double totalBeforeDiscount;
  @override
  final double totalAfterDiscount;
  @override
  final double cashAmount;
  @override
  final double cardAmount;
  @override
  final int? soldByOperatorId;
  @override
  final String? soldByOperatorName;

  factory _$ProductSale([void Function(ProductSaleBuilder)? updates]) =>
      (ProductSaleBuilder()..update(updates))._build();

  _$ProductSale._(
      {required this.productId,
      required this.productName,
      required this.quantity,
      required this.unit,
      required this.unitCost,
      required this.salePricePerUnit,
      required this.discountPercentage,
      required this.discountAmount,
      required this.totalBeforeDiscount,
      required this.totalAfterDiscount,
      required this.cashAmount,
      required this.cardAmount,
      this.soldByOperatorId,
      this.soldByOperatorName})
      : super._();
  @override
  ProductSale rebuild(void Function(ProductSaleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductSaleBuilder toBuilder() => ProductSaleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductSale &&
        productId == other.productId &&
        productName == other.productName &&
        quantity == other.quantity &&
        unit == other.unit &&
        unitCost == other.unitCost &&
        salePricePerUnit == other.salePricePerUnit &&
        discountPercentage == other.discountPercentage &&
        discountAmount == other.discountAmount &&
        totalBeforeDiscount == other.totalBeforeDiscount &&
        totalAfterDiscount == other.totalAfterDiscount &&
        cashAmount == other.cashAmount &&
        cardAmount == other.cardAmount &&
        soldByOperatorId == other.soldByOperatorId &&
        soldByOperatorName == other.soldByOperatorName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, unitCost.hashCode);
    _$hash = $jc(_$hash, salePricePerUnit.hashCode);
    _$hash = $jc(_$hash, discountPercentage.hashCode);
    _$hash = $jc(_$hash, discountAmount.hashCode);
    _$hash = $jc(_$hash, totalBeforeDiscount.hashCode);
    _$hash = $jc(_$hash, totalAfterDiscount.hashCode);
    _$hash = $jc(_$hash, cashAmount.hashCode);
    _$hash = $jc(_$hash, cardAmount.hashCode);
    _$hash = $jc(_$hash, soldByOperatorId.hashCode);
    _$hash = $jc(_$hash, soldByOperatorName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductSale')
          ..add('productId', productId)
          ..add('productName', productName)
          ..add('quantity', quantity)
          ..add('unit', unit)
          ..add('unitCost', unitCost)
          ..add('salePricePerUnit', salePricePerUnit)
          ..add('discountPercentage', discountPercentage)
          ..add('discountAmount', discountAmount)
          ..add('totalBeforeDiscount', totalBeforeDiscount)
          ..add('totalAfterDiscount', totalAfterDiscount)
          ..add('cashAmount', cashAmount)
          ..add('cardAmount', cardAmount)
          ..add('soldByOperatorId', soldByOperatorId)
          ..add('soldByOperatorName', soldByOperatorName))
        .toString();
  }
}

class ProductSaleBuilder implements Builder<ProductSale, ProductSaleBuilder> {
  _$ProductSale? _$v;

  int? _productId;
  int? get productId => _$this._productId;
  set productId(int? productId) => _$this._productId = productId;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  double? _quantity;
  double? get quantity => _$this._quantity;
  set quantity(double? quantity) => _$this._quantity = quantity;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  double? _unitCost;
  double? get unitCost => _$this._unitCost;
  set unitCost(double? unitCost) => _$this._unitCost = unitCost;

  double? _salePricePerUnit;
  double? get salePricePerUnit => _$this._salePricePerUnit;
  set salePricePerUnit(double? salePricePerUnit) =>
      _$this._salePricePerUnit = salePricePerUnit;

  double? _discountPercentage;
  double? get discountPercentage => _$this._discountPercentage;
  set discountPercentage(double? discountPercentage) =>
      _$this._discountPercentage = discountPercentage;

  double? _discountAmount;
  double? get discountAmount => _$this._discountAmount;
  set discountAmount(double? discountAmount) =>
      _$this._discountAmount = discountAmount;

  double? _totalBeforeDiscount;
  double? get totalBeforeDiscount => _$this._totalBeforeDiscount;
  set totalBeforeDiscount(double? totalBeforeDiscount) =>
      _$this._totalBeforeDiscount = totalBeforeDiscount;

  double? _totalAfterDiscount;
  double? get totalAfterDiscount => _$this._totalAfterDiscount;
  set totalAfterDiscount(double? totalAfterDiscount) =>
      _$this._totalAfterDiscount = totalAfterDiscount;

  double? _cashAmount;
  double? get cashAmount => _$this._cashAmount;
  set cashAmount(double? cashAmount) => _$this._cashAmount = cashAmount;

  double? _cardAmount;
  double? get cardAmount => _$this._cardAmount;
  set cardAmount(double? cardAmount) => _$this._cardAmount = cardAmount;

  int? _soldByOperatorId;
  int? get soldByOperatorId => _$this._soldByOperatorId;
  set soldByOperatorId(int? soldByOperatorId) =>
      _$this._soldByOperatorId = soldByOperatorId;

  String? _soldByOperatorName;
  String? get soldByOperatorName => _$this._soldByOperatorName;
  set soldByOperatorName(String? soldByOperatorName) =>
      _$this._soldByOperatorName = soldByOperatorName;

  ProductSaleBuilder() {
    ProductSale._defaults(this);
  }

  ProductSaleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _productName = $v.productName;
      _quantity = $v.quantity;
      _unit = $v.unit;
      _unitCost = $v.unitCost;
      _salePricePerUnit = $v.salePricePerUnit;
      _discountPercentage = $v.discountPercentage;
      _discountAmount = $v.discountAmount;
      _totalBeforeDiscount = $v.totalBeforeDiscount;
      _totalAfterDiscount = $v.totalAfterDiscount;
      _cashAmount = $v.cashAmount;
      _cardAmount = $v.cardAmount;
      _soldByOperatorId = $v.soldByOperatorId;
      _soldByOperatorName = $v.soldByOperatorName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductSale other) {
    _$v = other as _$ProductSale;
  }

  @override
  void update(void Function(ProductSaleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductSale build() => _build();

  _$ProductSale _build() {
    final _$result = _$v ??
        _$ProductSale._(
          productId: BuiltValueNullFieldError.checkNotNull(
              productId, r'ProductSale', 'productId'),
          productName: BuiltValueNullFieldError.checkNotNull(
              productName, r'ProductSale', 'productName'),
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'ProductSale', 'quantity'),
          unit: BuiltValueNullFieldError.checkNotNull(
              unit, r'ProductSale', 'unit'),
          unitCost: BuiltValueNullFieldError.checkNotNull(
              unitCost, r'ProductSale', 'unitCost'),
          salePricePerUnit: BuiltValueNullFieldError.checkNotNull(
              salePricePerUnit, r'ProductSale', 'salePricePerUnit'),
          discountPercentage: BuiltValueNullFieldError.checkNotNull(
              discountPercentage, r'ProductSale', 'discountPercentage'),
          discountAmount: BuiltValueNullFieldError.checkNotNull(
              discountAmount, r'ProductSale', 'discountAmount'),
          totalBeforeDiscount: BuiltValueNullFieldError.checkNotNull(
              totalBeforeDiscount, r'ProductSale', 'totalBeforeDiscount'),
          totalAfterDiscount: BuiltValueNullFieldError.checkNotNull(
              totalAfterDiscount, r'ProductSale', 'totalAfterDiscount'),
          cashAmount: BuiltValueNullFieldError.checkNotNull(
              cashAmount, r'ProductSale', 'cashAmount'),
          cardAmount: BuiltValueNullFieldError.checkNotNull(
              cardAmount, r'ProductSale', 'cardAmount'),
          soldByOperatorId: soldByOperatorId,
          soldByOperatorName: soldByOperatorName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
