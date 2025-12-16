// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_phone_change_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompletePhoneChangeResponse extends CompletePhoneChangeResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final CustomerPhoneUpdated customer;

  factory _$CompletePhoneChangeResponse(
          [void Function(CompletePhoneChangeResponseBuilder)? updates]) =>
      (CompletePhoneChangeResponseBuilder()..update(updates))._build();

  _$CompletePhoneChangeResponse._(
      {required this.success, required this.message, required this.customer})
      : super._();
  @override
  CompletePhoneChangeResponse rebuild(
          void Function(CompletePhoneChangeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompletePhoneChangeResponseBuilder toBuilder() =>
      CompletePhoneChangeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompletePhoneChangeResponse &&
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
    return (newBuiltValueToStringHelper(r'CompletePhoneChangeResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('customer', customer))
        .toString();
  }
}

class CompletePhoneChangeResponseBuilder
    implements
        Builder<CompletePhoneChangeResponse,
            CompletePhoneChangeResponseBuilder> {
  _$CompletePhoneChangeResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CustomerPhoneUpdatedBuilder? _customer;
  CustomerPhoneUpdatedBuilder get customer =>
      _$this._customer ??= CustomerPhoneUpdatedBuilder();
  set customer(CustomerPhoneUpdatedBuilder? customer) =>
      _$this._customer = customer;

  CompletePhoneChangeResponseBuilder() {
    CompletePhoneChangeResponse._defaults(this);
  }

  CompletePhoneChangeResponseBuilder get _$this {
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
  void replace(CompletePhoneChangeResponse other) {
    _$v = other as _$CompletePhoneChangeResponse;
  }

  @override
  void update(void Function(CompletePhoneChangeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompletePhoneChangeResponse build() => _build();

  _$CompletePhoneChangeResponse _build() {
    _$CompletePhoneChangeResponse _$result;
    try {
      _$result = _$v ??
          _$CompletePhoneChangeResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'CompletePhoneChangeResponse', 'success'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'CompletePhoneChangeResponse', 'message'),
            customer: customer.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customer';
        customer.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CompletePhoneChangeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
