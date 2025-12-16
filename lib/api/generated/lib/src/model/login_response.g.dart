// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginResponse extends LoginResponse {
  @override
  final String message;
  @override
  final bool requires2fa;
  @override
  final TokensResponse tokens;
  @override
  final TenantAdminInfo admin;

  factory _$LoginResponse([void Function(LoginResponseBuilder)? updates]) =>
      (LoginResponseBuilder()..update(updates))._build();

  _$LoginResponse._(
      {required this.message,
      required this.requires2fa,
      required this.tokens,
      required this.admin})
      : super._();
  @override
  LoginResponse rebuild(void Function(LoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseBuilder toBuilder() => LoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponse &&
        message == other.message &&
        requires2fa == other.requires2fa &&
        tokens == other.tokens &&
        admin == other.admin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, requires2fa.hashCode);
    _$hash = $jc(_$hash, tokens.hashCode);
    _$hash = $jc(_$hash, admin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginResponse')
          ..add('message', message)
          ..add('requires2fa', requires2fa)
          ..add('tokens', tokens)
          ..add('admin', admin))
        .toString();
  }
}

class LoginResponseBuilder
    implements Builder<LoginResponse, LoginResponseBuilder> {
  _$LoginResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _requires2fa;
  bool? get requires2fa => _$this._requires2fa;
  set requires2fa(bool? requires2fa) => _$this._requires2fa = requires2fa;

  TokensResponseBuilder? _tokens;
  TokensResponseBuilder get tokens =>
      _$this._tokens ??= TokensResponseBuilder();
  set tokens(TokensResponseBuilder? tokens) => _$this._tokens = tokens;

  TenantAdminInfoBuilder? _admin;
  TenantAdminInfoBuilder get admin =>
      _$this._admin ??= TenantAdminInfoBuilder();
  set admin(TenantAdminInfoBuilder? admin) => _$this._admin = admin;

  LoginResponseBuilder() {
    LoginResponse._defaults(this);
  }

  LoginResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _requires2fa = $v.requires2fa;
      _tokens = $v.tokens.toBuilder();
      _admin = $v.admin.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponse other) {
    _$v = other as _$LoginResponse;
  }

  @override
  void update(void Function(LoginResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginResponse build() => _build();

  _$LoginResponse _build() {
    _$LoginResponse _$result;
    try {
      _$result = _$v ??
          _$LoginResponse._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'LoginResponse', 'message'),
            requires2fa: BuiltValueNullFieldError.checkNotNull(
                requires2fa, r'LoginResponse', 'requires2fa'),
            tokens: tokens.build(),
            admin: admin.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tokens';
        tokens.build();
        _$failedField = 'admin';
        admin.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LoginResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
