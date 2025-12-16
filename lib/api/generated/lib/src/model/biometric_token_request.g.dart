// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biometric_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BiometricTokenRequest extends BiometricTokenRequest {
  @override
  final String deviceFingerprint;
  @override
  final int userId;
  @override
  final bool biometricVerified;

  factory _$BiometricTokenRequest(
          [void Function(BiometricTokenRequestBuilder)? updates]) =>
      (BiometricTokenRequestBuilder()..update(updates))._build();

  _$BiometricTokenRequest._(
      {required this.deviceFingerprint,
      required this.userId,
      required this.biometricVerified})
      : super._();
  @override
  BiometricTokenRequest rebuild(
          void Function(BiometricTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BiometricTokenRequestBuilder toBuilder() =>
      BiometricTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BiometricTokenRequest &&
        deviceFingerprint == other.deviceFingerprint &&
        userId == other.userId &&
        biometricVerified == other.biometricVerified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceFingerprint.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, biometricVerified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BiometricTokenRequest')
          ..add('deviceFingerprint', deviceFingerprint)
          ..add('userId', userId)
          ..add('biometricVerified', biometricVerified))
        .toString();
  }
}

class BiometricTokenRequestBuilder
    implements Builder<BiometricTokenRequest, BiometricTokenRequestBuilder> {
  _$BiometricTokenRequest? _$v;

  String? _deviceFingerprint;
  String? get deviceFingerprint => _$this._deviceFingerprint;
  set deviceFingerprint(String? deviceFingerprint) =>
      _$this._deviceFingerprint = deviceFingerprint;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  bool? _biometricVerified;
  bool? get biometricVerified => _$this._biometricVerified;
  set biometricVerified(bool? biometricVerified) =>
      _$this._biometricVerified = biometricVerified;

  BiometricTokenRequestBuilder() {
    BiometricTokenRequest._defaults(this);
  }

  BiometricTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceFingerprint = $v.deviceFingerprint;
      _userId = $v.userId;
      _biometricVerified = $v.biometricVerified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BiometricTokenRequest other) {
    _$v = other as _$BiometricTokenRequest;
  }

  @override
  void update(void Function(BiometricTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BiometricTokenRequest build() => _build();

  _$BiometricTokenRequest _build() {
    final _$result = _$v ??
        _$BiometricTokenRequest._(
          deviceFingerprint: BuiltValueNullFieldError.checkNotNull(
              deviceFingerprint, r'BiometricTokenRequest', 'deviceFingerprint'),
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'BiometricTokenRequest', 'userId'),
          biometricVerified: BuiltValueNullFieldError.checkNotNull(
              biometricVerified, r'BiometricTokenRequest', 'biometricVerified'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
