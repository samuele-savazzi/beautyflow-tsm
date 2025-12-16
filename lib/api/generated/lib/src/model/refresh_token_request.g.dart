// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefreshTokenRequest extends RefreshTokenRequest {
  @override
  final String refresh;

  factory _$RefreshTokenRequest(
          [void Function(RefreshTokenRequestBuilder)? updates]) =>
      (RefreshTokenRequestBuilder()..update(updates))._build();

  _$RefreshTokenRequest._({required this.refresh}) : super._();
  @override
  RefreshTokenRequest rebuild(
          void Function(RefreshTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshTokenRequestBuilder toBuilder() =>
      RefreshTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshTokenRequest && refresh == other.refresh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RefreshTokenRequest')
          ..add('refresh', refresh))
        .toString();
  }
}

class RefreshTokenRequestBuilder
    implements Builder<RefreshTokenRequest, RefreshTokenRequestBuilder> {
  _$RefreshTokenRequest? _$v;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  RefreshTokenRequestBuilder() {
    RefreshTokenRequest._defaults(this);
  }

  RefreshTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refresh = $v.refresh;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshTokenRequest other) {
    _$v = other as _$RefreshTokenRequest;
  }

  @override
  void update(void Function(RefreshTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshTokenRequest build() => _build();

  _$RefreshTokenRequest _build() {
    final _$result = _$v ??
        _$RefreshTokenRequest._(
          refresh: BuiltValueNullFieldError.checkNotNull(
              refresh, r'RefreshTokenRequest', 'refresh'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
