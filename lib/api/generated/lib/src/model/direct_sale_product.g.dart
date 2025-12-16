// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_sale_product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DirectSaleProduct extends DirectSaleProduct {
  @override
  final int productId;
  @override
  final double quantity;
  @override
  final double salePricePerUnit;
  @override
  final double? discountPercentage;
  @override
  final double? discountAmount;

  factory _$DirectSaleProduct(
          [void Function(DirectSaleProductBuilder)? updates]) =>
      (DirectSaleProductBuilder()..update(updates))._build();

  _$DirectSaleProduct._(
      {required this.productId,
      required this.quantity,
      required this.salePricePerUnit,
      this.discountPercentage,
      this.discountAmount})
      : super._();
  @override
  DirectSaleProduct rebuild(void Function(DirectSaleProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DirectSaleProductBuilder toBuilder() =>
      DirectSaleProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DirectSaleProduct &&
        productId == other.productId &&
        quantity == other.quantity &&
        salePricePerUnit == other.salePricePerUnit &&
        discountPercentage == other.discountPercentage &&
        discountAmount == other.discountAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, salePricePerUnit.hashCode);
    _$hash = $jc(_$hash, discountPercentage.hashCode);
    _$hash = $jc(_$hash, discountAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DirectSaleProduct')
          ..add('productId', productId)
          ..add('quantity', quantity)
          ..add('salePricePerUnit', salePricePerUnit)
          ..add('discountPercentage', discountPercentage)
          ..add('discountAmount', discountAmount))
        .toString();
  }
}

class DirectSaleProductBuilder
    implements Builder<DirectSaleProduct, DirectSaleProductBuilder> {
  _$DirectSaleProduct? _$v;

  int? _productId;
  int? get productId => _$this._productId;
  set productId(int? productId) => _$this._productId = productId;

  double? _quantity;
  double? get quantity => _$this._quantity;
  set quantity(double? quantity) => _$this._quantity = quantity;

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

  DirectSaleProductBuilder() {
    DirectSaleProduct._defaults(this);
  }

  DirectSaleProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _quantity = $v.quantity;
      _salePricePerUnit = $v.salePricePerUnit;
      _discountPercentage = $v.discountPercentage;
      _discountAmount = $v.discountAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DirectSaleProduct other) {
    _$v = other as _$DirectSaleProduct;
  }

  @override
  void update(void Function(DirectSaleProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DirectSaleProduct build() => _build();

  _$DirectSaleProduct _build() {
    final _$result = _$v ??
        _$DirectSaleProduct._(
          productId: BuiltValueNullFieldError.checkNotNull(
              productId, r'DirectSaleProduct', 'productId'),
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'DirectSaleProduct', 'quantity'),
          salePricePerUnit: BuiltValueNullFieldError.checkNotNull(
              salePricePerUnit, r'DirectSaleProduct', 'salePricePerUnit'),
          discountPercentage: discountPercentage,
          discountAmount: discountAmount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
