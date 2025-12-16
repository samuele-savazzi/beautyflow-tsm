// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_registration_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerRegistrationResponse extends CustomerRegistrationResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final int userId;
  @override
  final int customerId;

  factory _$CustomerRegistrationResponse(
          [void Function(CustomerRegistrationResponseBuilder)? updates]) =>
      (CustomerRegistrationResponseBuilder()..update(updates))._build();

  _$CustomerRegistrationResponse._(
      {required this.success,
      required this.message,
      required this.userId,
      required this.customerId})
      : super._();
  @override
  CustomerRegistrationResponse rebuild(
          void Function(CustomerRegistrationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerRegistrationResponseBuilder toBuilder() =>
      CustomerRegistrationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerRegistrationResponse &&
        success == other.success &&
        message == other.message &&
        userId == other.userId &&
        customerId == other.customerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerRegistrationResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('userId', userId)
          ..add('customerId', customerId))
        .toString();
  }
}

class CustomerRegistrationResponseBuilder
    implements
        Builder<CustomerRegistrationResponse,
            CustomerRegistrationResponseBuilder> {
  _$CustomerRegistrationResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  CustomerRegistrationResponseBuilder() {
    CustomerRegistrationResponse._defaults(this);
  }

  CustomerRegistrationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _userId = $v.userId;
      _customerId = $v.customerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerRegistrationResponse other) {
    _$v = other as _$CustomerRegistrationResponse;
  }

  @override
  void update(void Function(CustomerRegistrationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerRegistrationResponse build() => _build();

  _$CustomerRegistrationResponse _build() {
    final _$result = _$v ??
        _$CustomerRegistrationResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'CustomerRegistrationResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'CustomerRegistrationResponse', 'message'),
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'CustomerRegistrationResponse', 'userId'),
          customerId: BuiltValueNullFieldError.checkNotNull(
              customerId, r'CustomerRegistrationResponse', 'customerId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
