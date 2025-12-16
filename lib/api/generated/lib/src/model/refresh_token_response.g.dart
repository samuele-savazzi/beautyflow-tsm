// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefreshTokenResponse extends RefreshTokenResponse {
  @override
  final String access;
  @override
  final String refresh;
  @override
  final String message;

  factory _$RefreshTokenResponse(
          [void Function(RefreshTokenResponseBuilder)? updates]) =>
      (RefreshTokenResponseBuilder()..update(updates))._build();

  _$RefreshTokenResponse._(
      {required this.access, required this.refresh, required this.message})
      : super._();
  @override
  RefreshTokenResponse rebuild(
          void Function(RefreshTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshTokenResponseBuilder toBuilder() =>
      RefreshTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshTokenResponse &&
        access == other.access &&
        refresh == other.refresh &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RefreshTokenResponse')
          ..add('access', access)
          ..add('refresh', refresh)
          ..add('message', message))
        .toString();
  }
}

class RefreshTokenResponseBuilder
    implements Builder<RefreshTokenResponse, RefreshTokenResponseBuilder> {
  _$RefreshTokenResponse? _$v;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  RefreshTokenResponseBuilder() {
    RefreshTokenResponse._defaults(this);
  }

  RefreshTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _access = $v.access;
      _refresh = $v.refresh;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshTokenResponse other) {
    _$v = other as _$RefreshTokenResponse;
  }

  @override
  void update(void Function(RefreshTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshTokenResponse build() => _build();

  _$RefreshTokenResponse _build() {
    final _$result = _$v ??
        _$RefreshTokenResponse._(
          access: BuiltValueNullFieldError.checkNotNull(
              access, r'RefreshTokenResponse', 'access'),
          refresh: BuiltValueNullFieldError.checkNotNull(
              refresh, r'RefreshTokenResponse', 'refresh'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'RefreshTokenResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
