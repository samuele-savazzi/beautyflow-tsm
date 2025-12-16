// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OTPVerifyResponse extends OTPVerifyResponse {
  @override
  final bool valid;
  @override
  final String message;

  factory _$OTPVerifyResponse(
          [void Function(OTPVerifyResponseBuilder)? updates]) =>
      (OTPVerifyResponseBuilder()..update(updates))._build();

  _$OTPVerifyResponse._({required this.valid, required this.message})
      : super._();
  @override
  OTPVerifyResponse rebuild(void Function(OTPVerifyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OTPVerifyResponseBuilder toBuilder() =>
      OTPVerifyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OTPVerifyResponse &&
        valid == other.valid &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OTPVerifyResponse')
          ..add('valid', valid)
          ..add('message', message))
        .toString();
  }
}

class OTPVerifyResponseBuilder
    implements Builder<OTPVerifyResponse, OTPVerifyResponseBuilder> {
  _$OTPVerifyResponse? _$v;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  OTPVerifyResponseBuilder() {
    OTPVerifyResponse._defaults(this);
  }

  OTPVerifyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _valid = $v.valid;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OTPVerifyResponse other) {
    _$v = other as _$OTPVerifyResponse;
  }

  @override
  void update(void Function(OTPVerifyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OTPVerifyResponse build() => _build();

  _$OTPVerifyResponse _build() {
    final _$result = _$v ??
        _$OTPVerifyResponse._(
          valid: BuiltValueNullFieldError.checkNotNull(
              valid, r'OTPVerifyResponse', 'valid'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'OTPVerifyResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
