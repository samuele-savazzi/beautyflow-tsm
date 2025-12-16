// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_sale_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DirectSaleRequest extends DirectSaleRequest {
  @override
  final int? customerId;
  @override
  final int soldByOperatorId;
  @override
  final double? cashAmount;
  @override
  final double? cardAmount;
  @override
  final BuiltList<DirectSaleProduct> products;

  factory _$DirectSaleRequest(
          [void Function(DirectSaleRequestBuilder)? updates]) =>
      (DirectSaleRequestBuilder()..update(updates))._build();

  _$DirectSaleRequest._(
      {this.customerId,
      required this.soldByOperatorId,
      this.cashAmount,
      this.cardAmount,
      required this.products})
      : super._();
  @override
  DirectSaleRequest rebuild(void Function(DirectSaleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DirectSaleRequestBuilder toBuilder() =>
      DirectSaleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DirectSaleRequest &&
        customerId == other.customerId &&
        soldByOperatorId == other.soldByOperatorId &&
        cashAmount == other.cashAmount &&
        cardAmount == other.cardAmount &&
        products == other.products;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, soldByOperatorId.hashCode);
    _$hash = $jc(_$hash, cashAmount.hashCode);
    _$hash = $jc(_$hash, cardAmount.hashCode);
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DirectSaleRequest')
          ..add('customerId', customerId)
          ..add('soldByOperatorId', soldByOperatorId)
          ..add('cashAmount', cashAmount)
          ..add('cardAmount', cardAmount)
          ..add('products', products))
        .toString();
  }
}

class DirectSaleRequestBuilder
    implements Builder<DirectSaleRequest, DirectSaleRequestBuilder> {
  _$DirectSaleRequest? _$v;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  int? _soldByOperatorId;
  int? get soldByOperatorId => _$this._soldByOperatorId;
  set soldByOperatorId(int? soldByOperatorId) =>
      _$this._soldByOperatorId = soldByOperatorId;

  double? _cashAmount;
  double? get cashAmount => _$this._cashAmount;
  set cashAmount(double? cashAmount) => _$this._cashAmount = cashAmount;

  double? _cardAmount;
  double? get cardAmount => _$this._cardAmount;
  set cardAmount(double? cardAmount) => _$this._cardAmount = cardAmount;

  ListBuilder<DirectSaleProduct>? _products;
  ListBuilder<DirectSaleProduct> get products =>
      _$this._products ??= ListBuilder<DirectSaleProduct>();
  set products(ListBuilder<DirectSaleProduct>? products) =>
      _$this._products = products;

  DirectSaleRequestBuilder() {
    DirectSaleRequest._defaults(this);
  }

  DirectSaleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _soldByOperatorId = $v.soldByOperatorId;
      _cashAmount = $v.cashAmount;
      _cardAmount = $v.cardAmount;
      _products = $v.products.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DirectSaleRequest other) {
    _$v = other as _$DirectSaleRequest;
  }

  @override
  void update(void Function(DirectSaleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DirectSaleRequest build() => _build();

  _$DirectSaleRequest _build() {
    _$DirectSaleRequest _$result;
    try {
      _$result = _$v ??
          _$DirectSaleRequest._(
            customerId: customerId,
            soldByOperatorId: BuiltValueNullFieldError.checkNotNull(
                soldByOperatorId, r'DirectSaleRequest', 'soldByOperatorId'),
            cashAmount: cashAmount,
            cardAmount: cardAmount,
            products: products.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DirectSaleRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
