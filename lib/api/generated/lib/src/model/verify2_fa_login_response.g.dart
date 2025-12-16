// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify2_fa_login_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Verify2FALoginResponse extends Verify2FALoginResponse {
  @override
  final String message;
  @override
  final TokensResponse tokens;
  @override
  final TenantAdminInfo admin;

  factory _$Verify2FALoginResponse(
          [void Function(Verify2FALoginResponseBuilder)? updates]) =>
      (Verify2FALoginResponseBuilder()..update(updates))._build();

  _$Verify2FALoginResponse._(
      {required this.message, required this.tokens, required this.admin})
      : super._();
  @override
  Verify2FALoginResponse rebuild(
          void Function(Verify2FALoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Verify2FALoginResponseBuilder toBuilder() =>
      Verify2FALoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Verify2FALoginResponse &&
        message == other.message &&
        tokens == other.tokens &&
        admin == other.admin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, tokens.hashCode);
    _$hash = $jc(_$hash, admin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Verify2FALoginResponse')
          ..add('message', message)
          ..add('tokens', tokens)
          ..add('admin', admin))
        .toString();
  }
}

class Verify2FALoginResponseBuilder
    implements Builder<Verify2FALoginResponse, Verify2FALoginResponseBuilder> {
  _$Verify2FALoginResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  TokensResponseBuilder? _tokens;
  TokensResponseBuilder get tokens =>
      _$this._tokens ??= TokensResponseBuilder();
  set tokens(TokensResponseBuilder? tokens) => _$this._tokens = tokens;

  TenantAdminInfoBuilder? _admin;
  TenantAdminInfoBuilder get admin =>
      _$this._admin ??= TenantAdminInfoBuilder();
  set admin(TenantAdminInfoBuilder? admin) => _$this._admin = admin;

  Verify2FALoginResponseBuilder() {
    Verify2FALoginResponse._defaults(this);
  }

  Verify2FALoginResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _tokens = $v.tokens.toBuilder();
      _admin = $v.admin.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Verify2FALoginResponse other) {
    _$v = other as _$Verify2FALoginResponse;
  }

  @override
  void update(void Function(Verify2FALoginResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Verify2FALoginResponse build() => _build();

  _$Verify2FALoginResponse _build() {
    _$Verify2FALoginResponse _$result;
    try {
      _$result = _$v ??
          _$Verify2FALoginResponse._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'Verify2FALoginResponse', 'message'),
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
            r'Verify2FALoginResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
