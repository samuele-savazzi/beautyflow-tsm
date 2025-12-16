// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_login_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileLoginResponse extends MobileLoginResponse {
  @override
  final String access;
  @override
  final String refresh;
  @override
  final UserInfoWithRole user;

  factory _$MobileLoginResponse(
          [void Function(MobileLoginResponseBuilder)? updates]) =>
      (MobileLoginResponseBuilder()..update(updates))._build();

  _$MobileLoginResponse._(
      {required this.access, required this.refresh, required this.user})
      : super._();
  @override
  MobileLoginResponse rebuild(
          void Function(MobileLoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MobileLoginResponseBuilder toBuilder() =>
      MobileLoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileLoginResponse &&
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
    return (newBuiltValueToStringHelper(r'MobileLoginResponse')
          ..add('access', access)
          ..add('refresh', refresh)
          ..add('user', user))
        .toString();
  }
}

class MobileLoginResponseBuilder
    implements Builder<MobileLoginResponse, MobileLoginResponseBuilder> {
  _$MobileLoginResponse? _$v;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  UserInfoWithRoleBuilder? _user;
  UserInfoWithRoleBuilder get user =>
      _$this._user ??= UserInfoWithRoleBuilder();
  set user(UserInfoWithRoleBuilder? user) => _$this._user = user;

  MobileLoginResponseBuilder() {
    MobileLoginResponse._defaults(this);
  }

  MobileLoginResponseBuilder get _$this {
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
  void replace(MobileLoginResponse other) {
    _$v = other as _$MobileLoginResponse;
  }

  @override
  void update(void Function(MobileLoginResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MobileLoginResponse build() => _build();

  _$MobileLoginResponse _build() {
    _$MobileLoginResponse _$result;
    try {
      _$result = _$v ??
          _$MobileLoginResponse._(
            access: BuiltValueNullFieldError.checkNotNull(
                access, r'MobileLoginResponse', 'access'),
            refresh: BuiltValueNullFieldError.checkNotNull(
                refresh, r'MobileLoginResponse', 'refresh'),
            user: user.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MobileLoginResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
