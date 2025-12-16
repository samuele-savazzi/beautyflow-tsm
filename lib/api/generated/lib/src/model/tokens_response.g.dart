// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokensResponse extends TokensResponse {
  @override
  final String access;
  @override
  final String refresh;

  factory _$TokensResponse([void Function(TokensResponseBuilder)? updates]) =>
      (TokensResponseBuilder()..update(updates))._build();

  _$TokensResponse._({required this.access, required this.refresh}) : super._();
  @override
  TokensResponse rebuild(void Function(TokensResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokensResponseBuilder toBuilder() => TokensResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokensResponse &&
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
    return (newBuiltValueToStringHelper(r'TokensResponse')
          ..add('access', access)
          ..add('refresh', refresh))
        .toString();
  }
}

class TokensResponseBuilder
    implements Builder<TokensResponse, TokensResponseBuilder> {
  _$TokensResponse? _$v;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  TokensResponseBuilder() {
    TokensResponse._defaults(this);
  }

  TokensResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _access = $v.access;
      _refresh = $v.refresh;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokensResponse other) {
    _$v = other as _$TokensResponse;
  }

  @override
  void update(void Function(TokensResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokensResponse build() => _build();

  _$TokensResponse _build() {
    final _$result = _$v ??
        _$TokensResponse._(
          access: BuiltValueNullFieldError.checkNotNull(
              access, r'TokensResponse', 'access'),
          refresh: BuiltValueNullFieldError.checkNotNull(
              refresh, r'TokensResponse', 'refresh'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
