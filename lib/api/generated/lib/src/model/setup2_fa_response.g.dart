// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setup2_fa_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Setup2FAResponse extends Setup2FAResponse {
  @override
  final String secret;
  @override
  final String qrCode;
  @override
  final String message;

  factory _$Setup2FAResponse(
          [void Function(Setup2FAResponseBuilder)? updates]) =>
      (Setup2FAResponseBuilder()..update(updates))._build();

  _$Setup2FAResponse._(
      {required this.secret, required this.qrCode, required this.message})
      : super._();
  @override
  Setup2FAResponse rebuild(void Function(Setup2FAResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Setup2FAResponseBuilder toBuilder() =>
      Setup2FAResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Setup2FAResponse &&
        secret == other.secret &&
        qrCode == other.qrCode &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, secret.hashCode);
    _$hash = $jc(_$hash, qrCode.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Setup2FAResponse')
          ..add('secret', secret)
          ..add('qrCode', qrCode)
          ..add('message', message))
        .toString();
  }
}

class Setup2FAResponseBuilder
    implements Builder<Setup2FAResponse, Setup2FAResponseBuilder> {
  _$Setup2FAResponse? _$v;

  String? _secret;
  String? get secret => _$this._secret;
  set secret(String? secret) => _$this._secret = secret;

  String? _qrCode;
  String? get qrCode => _$this._qrCode;
  set qrCode(String? qrCode) => _$this._qrCode = qrCode;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Setup2FAResponseBuilder() {
    Setup2FAResponse._defaults(this);
  }

  Setup2FAResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _secret = $v.secret;
      _qrCode = $v.qrCode;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Setup2FAResponse other) {
    _$v = other as _$Setup2FAResponse;
  }

  @override
  void update(void Function(Setup2FAResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Setup2FAResponse build() => _build();

  _$Setup2FAResponse _build() {
    final _$result = _$v ??
        _$Setup2FAResponse._(
          secret: BuiltValueNullFieldError.checkNotNull(
              secret, r'Setup2FAResponse', 'secret'),
          qrCode: BuiltValueNullFieldError.checkNotNull(
              qrCode, r'Setup2FAResponse', 'qrCode'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'Setup2FAResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
