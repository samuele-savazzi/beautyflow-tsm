// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_account_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ManageAccountRequest extends ManageAccountRequest {
  @override
  final String deviceFingerprint;
  @override
  final int userId;
  @override
  final ManageAccountRequestActionEnum action;

  factory _$ManageAccountRequest(
          [void Function(ManageAccountRequestBuilder)? updates]) =>
      (ManageAccountRequestBuilder()..update(updates))._build();

  _$ManageAccountRequest._(
      {required this.deviceFingerprint,
      required this.userId,
      required this.action})
      : super._();
  @override
  ManageAccountRequest rebuild(
          void Function(ManageAccountRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ManageAccountRequestBuilder toBuilder() =>
      ManageAccountRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManageAccountRequest &&
        deviceFingerprint == other.deviceFingerprint &&
        userId == other.userId &&
        action == other.action;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceFingerprint.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ManageAccountRequest')
          ..add('deviceFingerprint', deviceFingerprint)
          ..add('userId', userId)
          ..add('action', action))
        .toString();
  }
}

class ManageAccountRequestBuilder
    implements Builder<ManageAccountRequest, ManageAccountRequestBuilder> {
  _$ManageAccountRequest? _$v;

  String? _deviceFingerprint;
  String? get deviceFingerprint => _$this._deviceFingerprint;
  set deviceFingerprint(String? deviceFingerprint) =>
      _$this._deviceFingerprint = deviceFingerprint;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  ManageAccountRequestActionEnum? _action;
  ManageAccountRequestActionEnum? get action => _$this._action;
  set action(ManageAccountRequestActionEnum? action) => _$this._action = action;

  ManageAccountRequestBuilder() {
    ManageAccountRequest._defaults(this);
  }

  ManageAccountRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceFingerprint = $v.deviceFingerprint;
      _userId = $v.userId;
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ManageAccountRequest other) {
    _$v = other as _$ManageAccountRequest;
  }

  @override
  void update(void Function(ManageAccountRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ManageAccountRequest build() => _build();

  _$ManageAccountRequest _build() {
    final _$result = _$v ??
        _$ManageAccountRequest._(
          deviceFingerprint: BuiltValueNullFieldError.checkNotNull(
              deviceFingerprint, r'ManageAccountRequest', 'deviceFingerprint'),
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'ManageAccountRequest', 'userId'),
          action: BuiltValueNullFieldError.checkNotNull(
              action, r'ManageAccountRequest', 'action'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
