// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateProfileResponse extends UpdateProfileResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final UpdatedCustomerProfile customer;

  factory _$UpdateProfileResponse(
          [void Function(UpdateProfileResponseBuilder)? updates]) =>
      (UpdateProfileResponseBuilder()..update(updates))._build();

  _$UpdateProfileResponse._(
      {required this.success, required this.message, required this.customer})
      : super._();
  @override
  UpdateProfileResponse rebuild(
          void Function(UpdateProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateProfileResponseBuilder toBuilder() =>
      UpdateProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateProfileResponse &&
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
    return (newBuiltValueToStringHelper(r'UpdateProfileResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('customer', customer))
        .toString();
  }
}

class UpdateProfileResponseBuilder
    implements Builder<UpdateProfileResponse, UpdateProfileResponseBuilder> {
  _$UpdateProfileResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  UpdatedCustomerProfileBuilder? _customer;
  UpdatedCustomerProfileBuilder get customer =>
      _$this._customer ??= UpdatedCustomerProfileBuilder();
  set customer(UpdatedCustomerProfileBuilder? customer) =>
      _$this._customer = customer;

  UpdateProfileResponseBuilder() {
    UpdateProfileResponse._defaults(this);
  }

  UpdateProfileResponseBuilder get _$this {
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
  void replace(UpdateProfileResponse other) {
    _$v = other as _$UpdateProfileResponse;
  }

  @override
  void update(void Function(UpdateProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateProfileResponse build() => _build();

  _$UpdateProfileResponse _build() {
    _$UpdateProfileResponse _$result;
    try {
      _$result = _$v ??
          _$UpdateProfileResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'UpdateProfileResponse', 'success'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'UpdateProfileResponse', 'message'),
            customer: customer.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customer';
        customer.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
