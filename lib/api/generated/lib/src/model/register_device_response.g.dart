// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_device_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterDeviceResponse extends RegisterDeviceResponse {
  @override
  final int id;
  @override
  final String deviceName;
  @override
  final String deviceType;
  @override
  final String accountNickname;
  @override
  final String message;

  factory _$RegisterDeviceResponse(
          [void Function(RegisterDeviceResponseBuilder)? updates]) =>
      (RegisterDeviceResponseBuilder()..update(updates))._build();

  _$RegisterDeviceResponse._(
      {required this.id,
      required this.deviceName,
      required this.deviceType,
      required this.accountNickname,
      required this.message})
      : super._();
  @override
  RegisterDeviceResponse rebuild(
          void Function(RegisterDeviceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterDeviceResponseBuilder toBuilder() =>
      RegisterDeviceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterDeviceResponse &&
        id == other.id &&
        deviceName == other.deviceName &&
        deviceType == other.deviceType &&
        accountNickname == other.accountNickname &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, deviceType.hashCode);
    _$hash = $jc(_$hash, accountNickname.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegisterDeviceResponse')
          ..add('id', id)
          ..add('deviceName', deviceName)
          ..add('deviceType', deviceType)
          ..add('accountNickname', accountNickname)
          ..add('message', message))
        .toString();
  }
}

class RegisterDeviceResponseBuilder
    implements Builder<RegisterDeviceResponse, RegisterDeviceResponseBuilder> {
  _$RegisterDeviceResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  String? _deviceType;
  String? get deviceType => _$this._deviceType;
  set deviceType(String? deviceType) => _$this._deviceType = deviceType;

  String? _accountNickname;
  String? get accountNickname => _$this._accountNickname;
  set accountNickname(String? accountNickname) =>
      _$this._accountNickname = accountNickname;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  RegisterDeviceResponseBuilder() {
    RegisterDeviceResponse._defaults(this);
  }

  RegisterDeviceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _deviceName = $v.deviceName;
      _deviceType = $v.deviceType;
      _accountNickname = $v.accountNickname;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterDeviceResponse other) {
    _$v = other as _$RegisterDeviceResponse;
  }

  @override
  void update(void Function(RegisterDeviceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterDeviceResponse build() => _build();

  _$RegisterDeviceResponse _build() {
    final _$result = _$v ??
        _$RegisterDeviceResponse._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'RegisterDeviceResponse', 'id'),
          deviceName: BuiltValueNullFieldError.checkNotNull(
              deviceName, r'RegisterDeviceResponse', 'deviceName'),
          deviceType: BuiltValueNullFieldError.checkNotNull(
              deviceType, r'RegisterDeviceResponse', 'deviceType'),
          accountNickname: BuiltValueNullFieldError.checkNotNull(
              accountNickname, r'RegisterDeviceResponse', 'accountNickname'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'RegisterDeviceResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
