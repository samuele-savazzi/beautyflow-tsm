// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_device_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterDeviceRequest extends RegisterDeviceRequest {
  @override
  final String deviceFingerprint;
  @override
  final String deviceName;
  @override
  final DeviceTypeEnum? deviceType;
  @override
  final String? accountNickname;
  @override
  final String? avatarColor;

  factory _$RegisterDeviceRequest(
          [void Function(RegisterDeviceRequestBuilder)? updates]) =>
      (RegisterDeviceRequestBuilder()..update(updates))._build();

  _$RegisterDeviceRequest._(
      {required this.deviceFingerprint,
      required this.deviceName,
      this.deviceType,
      this.accountNickname,
      this.avatarColor})
      : super._();
  @override
  RegisterDeviceRequest rebuild(
          void Function(RegisterDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterDeviceRequestBuilder toBuilder() =>
      RegisterDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterDeviceRequest &&
        deviceFingerprint == other.deviceFingerprint &&
        deviceName == other.deviceName &&
        deviceType == other.deviceType &&
        accountNickname == other.accountNickname &&
        avatarColor == other.avatarColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceFingerprint.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, deviceType.hashCode);
    _$hash = $jc(_$hash, accountNickname.hashCode);
    _$hash = $jc(_$hash, avatarColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegisterDeviceRequest')
          ..add('deviceFingerprint', deviceFingerprint)
          ..add('deviceName', deviceName)
          ..add('deviceType', deviceType)
          ..add('accountNickname', accountNickname)
          ..add('avatarColor', avatarColor))
        .toString();
  }
}

class RegisterDeviceRequestBuilder
    implements Builder<RegisterDeviceRequest, RegisterDeviceRequestBuilder> {
  _$RegisterDeviceRequest? _$v;

  String? _deviceFingerprint;
  String? get deviceFingerprint => _$this._deviceFingerprint;
  set deviceFingerprint(String? deviceFingerprint) =>
      _$this._deviceFingerprint = deviceFingerprint;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  DeviceTypeEnum? _deviceType;
  DeviceTypeEnum? get deviceType => _$this._deviceType;
  set deviceType(DeviceTypeEnum? deviceType) => _$this._deviceType = deviceType;

  String? _accountNickname;
  String? get accountNickname => _$this._accountNickname;
  set accountNickname(String? accountNickname) =>
      _$this._accountNickname = accountNickname;

  String? _avatarColor;
  String? get avatarColor => _$this._avatarColor;
  set avatarColor(String? avatarColor) => _$this._avatarColor = avatarColor;

  RegisterDeviceRequestBuilder() {
    RegisterDeviceRequest._defaults(this);
  }

  RegisterDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceFingerprint = $v.deviceFingerprint;
      _deviceName = $v.deviceName;
      _deviceType = $v.deviceType;
      _accountNickname = $v.accountNickname;
      _avatarColor = $v.avatarColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterDeviceRequest other) {
    _$v = other as _$RegisterDeviceRequest;
  }

  @override
  void update(void Function(RegisterDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterDeviceRequest build() => _build();

  _$RegisterDeviceRequest _build() {
    final _$result = _$v ??
        _$RegisterDeviceRequest._(
          deviceFingerprint: BuiltValueNullFieldError.checkNotNull(
              deviceFingerprint, r'RegisterDeviceRequest', 'deviceFingerprint'),
          deviceName: BuiltValueNullFieldError.checkNotNull(
              deviceName, r'RegisterDeviceRequest', 'deviceName'),
          deviceType: deviceType,
          accountNickname: accountNickname,
          avatarColor: avatarColor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
