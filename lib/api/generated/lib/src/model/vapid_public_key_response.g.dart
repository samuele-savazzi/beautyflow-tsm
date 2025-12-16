// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vapid_public_key_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VapidPublicKeyResponse extends VapidPublicKeyResponse {
  @override
  final String vapidPublicKey;

  factory _$VapidPublicKeyResponse(
          [void Function(VapidPublicKeyResponseBuilder)? updates]) =>
      (VapidPublicKeyResponseBuilder()..update(updates))._build();

  _$VapidPublicKeyResponse._({required this.vapidPublicKey}) : super._();
  @override
  VapidPublicKeyResponse rebuild(
          void Function(VapidPublicKeyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VapidPublicKeyResponseBuilder toBuilder() =>
      VapidPublicKeyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VapidPublicKeyResponse &&
        vapidPublicKey == other.vapidPublicKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vapidPublicKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VapidPublicKeyResponse')
          ..add('vapidPublicKey', vapidPublicKey))
        .toString();
  }
}

class VapidPublicKeyResponseBuilder
    implements Builder<VapidPublicKeyResponse, VapidPublicKeyResponseBuilder> {
  _$VapidPublicKeyResponse? _$v;

  String? _vapidPublicKey;
  String? get vapidPublicKey => _$this._vapidPublicKey;
  set vapidPublicKey(String? vapidPublicKey) =>
      _$this._vapidPublicKey = vapidPublicKey;

  VapidPublicKeyResponseBuilder() {
    VapidPublicKeyResponse._defaults(this);
  }

  VapidPublicKeyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vapidPublicKey = $v.vapidPublicKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VapidPublicKeyResponse other) {
    _$v = other as _$VapidPublicKeyResponse;
  }

  @override
  void update(void Function(VapidPublicKeyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VapidPublicKeyResponse build() => _build();

  _$VapidPublicKeyResponse _build() {
    final _$result = _$v ??
        _$VapidPublicKeyResponse._(
          vapidPublicKey: BuiltValueNullFieldError.checkNotNull(
              vapidPublicKey, r'VapidPublicKeyResponse', 'vapidPublicKey'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
