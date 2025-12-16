// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OTPResponse extends OTPResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final int expiresInSeconds;

  factory _$OTPResponse([void Function(OTPResponseBuilder)? updates]) =>
      (OTPResponseBuilder()..update(updates))._build();

  _$OTPResponse._(
      {required this.success,
      required this.message,
      required this.expiresInSeconds})
      : super._();
  @override
  OTPResponse rebuild(void Function(OTPResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OTPResponseBuilder toBuilder() => OTPResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OTPResponse &&
        success == other.success &&
        message == other.message &&
        expiresInSeconds == other.expiresInSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, expiresInSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OTPResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('expiresInSeconds', expiresInSeconds))
        .toString();
  }
}

class OTPResponseBuilder implements Builder<OTPResponse, OTPResponseBuilder> {
  _$OTPResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _expiresInSeconds;
  int? get expiresInSeconds => _$this._expiresInSeconds;
  set expiresInSeconds(int? expiresInSeconds) =>
      _$this._expiresInSeconds = expiresInSeconds;

  OTPResponseBuilder() {
    OTPResponse._defaults(this);
  }

  OTPResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _expiresInSeconds = $v.expiresInSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OTPResponse other) {
    _$v = other as _$OTPResponse;
  }

  @override
  void update(void Function(OTPResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OTPResponse build() => _build();

  _$OTPResponse _build() {
    final _$result = _$v ??
        _$OTPResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'OTPResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'OTPResponse', 'message'),
          expiresInSeconds: BuiltValueNullFieldError.checkNotNull(
              expiresInSeconds, r'OTPResponse', 'expiresInSeconds'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
