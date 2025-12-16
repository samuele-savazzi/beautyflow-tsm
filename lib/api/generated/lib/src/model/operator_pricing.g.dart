// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_pricing.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorPricing extends OperatorPricing {
  @override
  final int operatorId;
  @override
  final double price;

  factory _$OperatorPricing([void Function(OperatorPricingBuilder)? updates]) =>
      (OperatorPricingBuilder()..update(updates))._build();

  _$OperatorPricing._({required this.operatorId, required this.price})
      : super._();
  @override
  OperatorPricing rebuild(void Function(OperatorPricingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorPricingBuilder toBuilder() => OperatorPricingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorPricing &&
        operatorId == other.operatorId &&
        price == other.price;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorPricing')
          ..add('operatorId', operatorId)
          ..add('price', price))
        .toString();
  }
}

class OperatorPricingBuilder
    implements Builder<OperatorPricing, OperatorPricingBuilder> {
  _$OperatorPricing? _$v;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  OperatorPricingBuilder() {
    OperatorPricing._defaults(this);
  }

  OperatorPricingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatorId = $v.operatorId;
      _price = $v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorPricing other) {
    _$v = other as _$OperatorPricing;
  }

  @override
  void update(void Function(OperatorPricingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorPricing build() => _build();

  _$OperatorPricing _build() {
    final _$result = _$v ??
        _$OperatorPricing._(
          operatorId: BuiltValueNullFieldError.checkNotNull(
              operatorId, r'OperatorPricing', 'operatorId'),
          price: BuiltValueNullFieldError.checkNotNull(
              price, r'OperatorPricing', 'price'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
