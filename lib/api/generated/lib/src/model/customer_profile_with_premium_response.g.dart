// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_profile_with_premium_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerProfileWithPremiumResponse
    extends CustomerProfileWithPremiumResponse {
  @override
  final bool success;
  @override
  final CustomerProfile customer;
  @override
  final PremiumSubscriptionDetail premiumSubscription;

  factory _$CustomerProfileWithPremiumResponse(
          [void Function(CustomerProfileWithPremiumResponseBuilder)?
              updates]) =>
      (CustomerProfileWithPremiumResponseBuilder()..update(updates))._build();

  _$CustomerProfileWithPremiumResponse._(
      {required this.success,
      required this.customer,
      required this.premiumSubscription})
      : super._();
  @override
  CustomerProfileWithPremiumResponse rebuild(
          void Function(CustomerProfileWithPremiumResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerProfileWithPremiumResponseBuilder toBuilder() =>
      CustomerProfileWithPremiumResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerProfileWithPremiumResponse &&
        success == other.success &&
        customer == other.customer &&
        premiumSubscription == other.premiumSubscription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, premiumSubscription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerProfileWithPremiumResponse')
          ..add('success', success)
          ..add('customer', customer)
          ..add('premiumSubscription', premiumSubscription))
        .toString();
  }
}

class CustomerProfileWithPremiumResponseBuilder
    implements
        Builder<CustomerProfileWithPremiumResponse,
            CustomerProfileWithPremiumResponseBuilder> {
  _$CustomerProfileWithPremiumResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  CustomerProfileBuilder? _customer;
  CustomerProfileBuilder get customer =>
      _$this._customer ??= CustomerProfileBuilder();
  set customer(CustomerProfileBuilder? customer) => _$this._customer = customer;

  PremiumSubscriptionDetailBuilder? _premiumSubscription;
  PremiumSubscriptionDetailBuilder get premiumSubscription =>
      _$this._premiumSubscription ??= PremiumSubscriptionDetailBuilder();
  set premiumSubscription(
          PremiumSubscriptionDetailBuilder? premiumSubscription) =>
      _$this._premiumSubscription = premiumSubscription;

  CustomerProfileWithPremiumResponseBuilder() {
    CustomerProfileWithPremiumResponse._defaults(this);
  }

  CustomerProfileWithPremiumResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _customer = $v.customer.toBuilder();
      _premiumSubscription = $v.premiumSubscription.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerProfileWithPremiumResponse other) {
    _$v = other as _$CustomerProfileWithPremiumResponse;
  }

  @override
  void update(
      void Function(CustomerProfileWithPremiumResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerProfileWithPremiumResponse build() => _build();

  _$CustomerProfileWithPremiumResponse _build() {
    _$CustomerProfileWithPremiumResponse _$result;
    try {
      _$result = _$v ??
          _$CustomerProfileWithPremiumResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'CustomerProfileWithPremiumResponse', 'success'),
            customer: customer.build(),
            premiumSubscription: premiumSubscription.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customer';
        customer.build();
        _$failedField = 'premiumSubscription';
        premiumSubscription.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerProfileWithPremiumResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
