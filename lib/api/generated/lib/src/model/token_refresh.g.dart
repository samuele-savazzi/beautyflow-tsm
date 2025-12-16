// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_refresh.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenRefresh extends TokenRefresh {
  @override
  final String access;
  @override
  final String refresh;

  factory _$TokenRefresh([void Function(TokenRefreshBuilder)? updates]) =>
      (TokenRefreshBuilder()..update(updates))._build();

  _$TokenRefresh._({required this.access, required this.refresh}) : super._();
  @override
  TokenRefresh rebuild(void Function(TokenRefreshBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenRefreshBuilder toBuilder() => TokenRefreshBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenRefresh &&
        access == other.access &&
        refresh == other.refresh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenRefresh')
          ..add('access', access)
          ..add('refresh', refresh))
        .toString();
  }
}

class TokenRefreshBuilder
    implements Builder<TokenRefresh, TokenRefreshBuilder> {
  _$TokenRefresh? _$v;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  TokenRefreshBuilder() {
    TokenRefresh._defaults(this);
  }

  TokenRefreshBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _access = $v.access;
      _refresh = $v.refresh;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenRefresh other) {
    _$v = other as _$TokenRefresh;
  }

  @override
  void update(void Function(TokenRefreshBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenRefresh build() => _build();

  _$TokenRefresh _build() {
    final _$result = _$v ??
        _$TokenRefresh._(
          access: BuiltValueNullFieldError.checkNotNull(
              access, r'TokenRefresh', 'access'),
          refresh: BuiltValueNullFieldError.checkNotNull(
              refresh, r'TokenRefresh', 'refresh'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
