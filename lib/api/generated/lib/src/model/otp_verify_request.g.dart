// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OTPVerifyRequest extends OTPVerifyRequest {
  @override
  final String phone;
  @override
  final String otp;

  factory _$OTPVerifyRequest(
          [void Function(OTPVerifyRequestBuilder)? updates]) =>
      (OTPVerifyRequestBuilder()..update(updates))._build();

  _$OTPVerifyRequest._({required this.phone, required this.otp}) : super._();
  @override
  OTPVerifyRequest rebuild(void Function(OTPVerifyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OTPVerifyRequestBuilder toBuilder() =>
      OTPVerifyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OTPVerifyRequest &&
        phone == other.phone &&
        otp == other.otp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OTPVerifyRequest')
          ..add('phone', phone)
          ..add('otp', otp))
        .toString();
  }
}

class OTPVerifyRequestBuilder
    implements Builder<OTPVerifyRequest, OTPVerifyRequestBuilder> {
  _$OTPVerifyRequest? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  OTPVerifyRequestBuilder() {
    OTPVerifyRequest._defaults(this);
  }

  OTPVerifyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OTPVerifyRequest other) {
    _$v = other as _$OTPVerifyRequest;
  }

  @override
  void update(void Function(OTPVerifyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OTPVerifyRequest build() => _build();

  _$OTPVerifyRequest _build() {
    final _$result = _$v ??
        _$OTPVerifyRequest._(
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'OTPVerifyRequest', 'phone'),
          otp: BuiltValueNullFieldError.checkNotNull(
              otp, r'OTPVerifyRequest', 'otp'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
