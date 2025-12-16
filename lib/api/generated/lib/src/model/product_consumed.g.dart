// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_consumed.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductConsumed extends ProductConsumed {
  @override
  final int productId;
  @override
  final double quantity;
  @override
  final double? unitCost;
  @override
  final double? salePricePerUnit;
  @override
  final double? discountPercentage;
  @override
  final double? discountAmount;
  @override
  final double? cashAmount;
  @override
  final double? cardAmount;
  @override
  final int? soldByOperatorId;

  factory _$ProductConsumed([void Function(ProductConsumedBuilder)? updates]) =>
      (ProductConsumedBuilder()..update(updates))._build();

  _$ProductConsumed._(
      {required this.productId,
      required this.quantity,
      this.unitCost,
      this.salePricePerUnit,
      this.discountPercentage,
      this.discountAmount,
      this.cashAmount,
      this.cardAmount,
      this.soldByOperatorId})
      : super._();
  @override
  ProductConsumed rebuild(void Function(ProductConsumedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductConsumedBuilder toBuilder() => ProductConsumedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductConsumed &&
        productId == other.productId &&
        quantity == other.quantity &&
        unitCost == other.unitCost &&
        salePricePerUnit == other.salePricePerUnit &&
        discountPercentage == other.discountPercentage &&
        discountAmount == other.discountAmount &&
        cashAmount == other.cashAmount &&
        cardAmount == other.cardAmount &&
        soldByOperatorId == other.soldByOperatorId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unitCost.hashCode);
    _$hash = $jc(_$hash, salePricePerUnit.hashCode);
    _$hash = $jc(_$hash, discountPercentage.hashCode);
    _$hash = $jc(_$hash, discountAmount.hashCode);
    _$hash = $jc(_$hash, cashAmount.hashCode);
    _$hash = $jc(_$hash, cardAmount.hashCode);
    _$hash = $jc(_$hash, soldByOperatorId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductConsumed')
          ..add('productId', productId)
          ..add('quantity', quantity)
          ..add('unitCost', unitCost)
          ..add('salePricePerUnit', salePricePerUnit)
          ..add('discountPercentage', discountPercentage)
          ..add('discountAmount', discountAmount)
          ..add('cashAmount', cashAmount)
          ..add('cardAmount', cardAmount)
          ..add('soldByOperatorId', soldByOperatorId))
        .toString();
  }
}

class ProductConsumedBuilder
    implements Builder<ProductConsumed, ProductConsumedBuilder> {
  _$ProductConsumed? _$v;

  int? _productId;
  int? get productId => _$this._productId;
  set productId(int? productId) => _$this._productId = productId;

  double? _quantity;
  double? get quantity => _$this._quantity;
  set quantity(double? quantity) => _$this._quantity = quantity;

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

  ProductConsumedBuilder() {
    ProductConsumed._defaults(this);
  }

  ProductConsumedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _quantity = $v.quantity;
      _unitCost = $v.unitCost;
      _salePricePerUnit = $v.salePricePerUnit;
      _discountPercentage = $v.discountPercentage;
      _discountAmount = $v.discountAmount;
      _cashAmount = $v.cashAmount;
      _cardAmount = $v.cardAmount;
      _soldByOperatorId = $v.soldByOperatorId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductConsumed other) {
    _$v = other as _$ProductConsumed;
  }

  @override
  void update(void Function(ProductConsumedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductConsumed build() => _build();

  _$ProductConsumed _build() {
    final _$result = _$v ??
        _$ProductConsumed._(
          productId: BuiltValueNullFieldError.checkNotNull(
              productId, r'ProductConsumed', 'productId'),
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'ProductConsumed', 'quantity'),
          unitCost: unitCost,
          salePricePerUnit: salePricePerUnit,
          discountPercentage: discountPercentage,
          discountAmount: discountAmount,
          cashAmount: cashAmount,
          cardAmount: cardAmount,
          soldByOperatorId: soldByOperatorId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
