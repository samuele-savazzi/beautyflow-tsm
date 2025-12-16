// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biometric_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BiometricTokenResponse extends BiometricTokenResponse {
  @override
  final String access;
  @override
  final String refresh;
  @override
  final UserInfoWithRoleBiometric user;

  factory _$BiometricTokenResponse(
          [void Function(BiometricTokenResponseBuilder)? updates]) =>
      (BiometricTokenResponseBuilder()..update(updates))._build();

  _$BiometricTokenResponse._(
      {required this.access, required this.refresh, required this.user})
      : super._();
  @override
  BiometricTokenResponse rebuild(
          void Function(BiometricTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BiometricTokenResponseBuilder toBuilder() =>
      BiometricTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BiometricTokenResponse &&
        access == other.access &&
        refresh == other.refresh &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BiometricTokenResponse')
          ..add('access', access)
          ..add('refresh', refresh)
          ..add('user', user))
        .toString();
  }
}

class BiometricTokenResponseBuilder
    implements Builder<BiometricTokenResponse, BiometricTokenResponseBuilder> {
  _$BiometricTokenResponse? _$v;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  UserInfoWithRoleBiometricBuilder? _user;
  UserInfoWithRoleBiometricBuilder get user =>
      _$this._user ??= UserInfoWithRoleBiometricBuilder();
  set user(UserInfoWithRoleBiometricBuilder? user) => _$this._user = user;

  BiometricTokenResponseBuilder() {
    BiometricTokenResponse._defaults(this);
  }

  BiometricTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _access = $v.access;
      _refresh = $v.refresh;
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BiometricTokenResponse other) {
    _$v = other as _$BiometricTokenResponse;
  }

  @override
  void update(void Function(BiometricTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BiometricTokenResponse build() => _build();

  _$BiometricTokenResponse _build() {
    _$BiometricTokenResponse _$result;
    try {
      _$result = _$v ??
          _$BiometricTokenResponse._(
            access: BuiltValueNullFieldError.checkNotNull(
                access, r'BiometricTokenResponse', 'access'),
            refresh: BuiltValueNullFieldError.checkNotNull(
                refresh, r'BiometricTokenResponse', 'refresh'),
            user: user.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BiometricTokenResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
