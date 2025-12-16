// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_login_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileLoginRequest extends MobileLoginRequest {
  @override
  final String? email;
  @override
  final String? username;
  @override
  final String password;
  @override
  final String deviceFingerprint;

  factory _$MobileLoginRequest(
          [void Function(MobileLoginRequestBuilder)? updates]) =>
      (MobileLoginRequestBuilder()..update(updates))._build();

  _$MobileLoginRequest._(
      {this.email,
      this.username,
      required this.password,
      required this.deviceFingerprint})
      : super._();
  @override
  MobileLoginRequest rebuild(
          void Function(MobileLoginRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MobileLoginRequestBuilder toBuilder() =>
      MobileLoginRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileLoginRequest &&
        email == other.email &&
        username == other.username &&
        password == other.password &&
        deviceFingerprint == other.deviceFingerprint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, deviceFingerprint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MobileLoginRequest')
          ..add('email', email)
          ..add('username', username)
          ..add('password', password)
          ..add('deviceFingerprint', deviceFingerprint))
        .toString();
  }
}

class MobileLoginRequestBuilder
    implements Builder<MobileLoginRequest, MobileLoginRequestBuilder> {
  _$MobileLoginRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _deviceFingerprint;
  String? get deviceFingerprint => _$this._deviceFingerprint;
  set deviceFingerprint(String? deviceFingerprint) =>
      _$this._deviceFingerprint = deviceFingerprint;

  MobileLoginRequestBuilder() {
    MobileLoginRequest._defaults(this);
  }

  MobileLoginRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _username = $v.username;
      _password = $v.password;
      _deviceFingerprint = $v.deviceFingerprint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MobileLoginRequest other) {
    _$v = other as _$MobileLoginRequest;
  }

  @override
  void update(void Function(MobileLoginRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MobileLoginRequest build() => _build();

  _$MobileLoginRequest _build() {
    final _$result = _$v ??
        _$MobileLoginRequest._(
          email: email,
          username: username,
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'MobileLoginRequest', 'password'),
          deviceFingerprint: BuiltValueNullFieldError.checkNotNull(
              deviceFingerprint, r'MobileLoginRequest', 'deviceFingerprint'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
