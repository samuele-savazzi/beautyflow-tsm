// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceToken extends DeviceToken {
  @override
  final int id;
  @override
  final String token;
  @override
  final PlatformEnum platform;
  @override
  final bool? active;
  @override
  final DateTime createdAt;
  @override
  final DateTime? expiresAt;
  @override
  final String? baseTopic;

  factory _$DeviceToken([void Function(DeviceTokenBuilder)? updates]) =>
      (DeviceTokenBuilder()..update(updates))._build();

  _$DeviceToken._(
      {required this.id,
      required this.token,
      required this.platform,
      this.active,
      required this.createdAt,
      this.expiresAt,
      this.baseTopic})
      : super._();
  @override
  DeviceToken rebuild(void Function(DeviceTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceTokenBuilder toBuilder() => DeviceTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceToken &&
        id == other.id &&
        token == other.token &&
        platform == other.platform &&
        active == other.active &&
        createdAt == other.createdAt &&
        expiresAt == other.expiresAt &&
        baseTopic == other.baseTopic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, baseTopic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceToken')
          ..add('id', id)
          ..add('token', token)
          ..add('platform', platform)
          ..add('active', active)
          ..add('createdAt', createdAt)
          ..add('expiresAt', expiresAt)
          ..add('baseTopic', baseTopic))
        .toString();
  }
}

class DeviceTokenBuilder implements Builder<DeviceToken, DeviceTokenBuilder> {
  _$DeviceToken? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  PlatformEnum? _platform;
  PlatformEnum? get platform => _$this._platform;
  set platform(PlatformEnum? platform) => _$this._platform = platform;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  String? _baseTopic;
  String? get baseTopic => _$this._baseTopic;
  set baseTopic(String? baseTopic) => _$this._baseTopic = baseTopic;

  DeviceTokenBuilder() {
    DeviceToken._defaults(this);
  }

  DeviceTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _token = $v.token;
      _platform = $v.platform;
      _active = $v.active;
      _createdAt = $v.createdAt;
      _expiresAt = $v.expiresAt;
      _baseTopic = $v.baseTopic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceToken other) {
    _$v = other as _$DeviceToken;
  }

  @override
  void update(void Function(DeviceTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceToken build() => _build();

  _$DeviceToken _build() {
    final _$result = _$v ??
        _$DeviceToken._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'DeviceToken', 'id'),
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'DeviceToken', 'token'),
          platform: BuiltValueNullFieldError.checkNotNull(
              platform, r'DeviceToken', 'platform'),
          active: active,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'DeviceToken', 'createdAt'),
          expiresAt: expiresAt,
          baseTopic: baseTopic,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
