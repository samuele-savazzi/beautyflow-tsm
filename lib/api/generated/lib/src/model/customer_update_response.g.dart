// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_update_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerUpdateResponse extends CustomerUpdateResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final CustomerUpdated customer;

  factory _$CustomerUpdateResponse(
          [void Function(CustomerUpdateResponseBuilder)? updates]) =>
      (CustomerUpdateResponseBuilder()..update(updates))._build();

  _$CustomerUpdateResponse._(
      {required this.success, required this.message, required this.customer})
      : super._();
  @override
  CustomerUpdateResponse rebuild(
          void Function(CustomerUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerUpdateResponseBuilder toBuilder() =>
      CustomerUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerUpdateResponse &&
        success == other.success &&
        message == other.message &&
        customer == other.customer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerUpdateResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('customer', customer))
        .toString();
  }
}

class CustomerUpdateResponseBuilder
    implements Builder<CustomerUpdateResponse, CustomerUpdateResponseBuilder> {
  _$CustomerUpdateResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CustomerUpdatedBuilder? _customer;
  CustomerUpdatedBuilder get customer =>
      _$this._customer ??= CustomerUpdatedBuilder();
  set customer(CustomerUpdatedBuilder? customer) => _$this._customer = customer;

  CustomerUpdateResponseBuilder() {
    CustomerUpdateResponse._defaults(this);
  }

  CustomerUpdateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _customer = $v.customer.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerUpdateResponse other) {
    _$v = other as _$CustomerUpdateResponse;
  }

  @override
  void update(void Function(CustomerUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerUpdateResponse build() => _build();

  _$CustomerUpdateResponse _build() {
    _$CustomerUpdateResponse _$result;
    try {
      _$result = _$v ??
          _$CustomerUpdateResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'CustomerUpdateResponse', 'success'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'CustomerUpdateResponse', 'message'),
            customer: customer.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customer';
        customer.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerUpdateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
