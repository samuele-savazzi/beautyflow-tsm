// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OTPRequest extends OTPRequest {
  @override
  final String phone;

  factory _$OTPRequest([void Function(OTPRequestBuilder)? updates]) =>
      (OTPRequestBuilder()..update(updates))._build();

  _$OTPRequest._({required this.phone}) : super._();
  @override
  OTPRequest rebuild(void Function(OTPRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OTPRequestBuilder toBuilder() => OTPRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OTPRequest && phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OTPRequest')..add('phone', phone))
        .toString();
  }
}

class OTPRequestBuilder implements Builder<OTPRequest, OTPRequestBuilder> {
  _$OTPRequest? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  OTPRequestBuilder() {
    OTPRequest._defaults(this);
  }

  OTPRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OTPRequest other) {
    _$v = other as _$OTPRequest;
  }

  @override
  void update(void Function(OTPRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OTPRequest build() => _build();

  _$OTPRequest _build() {
    final _$result = _$v ??
        _$OTPRequest._(
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'OTPRequest', 'phone'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
