// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountInfo extends AccountInfo {
  @override
  final int userId;
  @override
  final String email;
  @override
  final String accountNickname;
  @override
  final String avatarColor;
  @override
  final DateTime? lastAccess;
  @override
  final bool isActive;
  @override
  final bool isExpired;
  @override
  final DateTime? expiredAt;
  @override
  final int? daysSinceAccess;
  @override
  final int deviceId;

  factory _$AccountInfo([void Function(AccountInfoBuilder)? updates]) =>
      (AccountInfoBuilder()..update(updates))._build();

  _$AccountInfo._(
      {required this.userId,
      required this.email,
      required this.accountNickname,
      required this.avatarColor,
      this.lastAccess,
      required this.isActive,
      required this.isExpired,
      this.expiredAt,
      this.daysSinceAccess,
      required this.deviceId})
      : super._();
  @override
  AccountInfo rebuild(void Function(AccountInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountInfoBuilder toBuilder() => AccountInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountInfo &&
        userId == other.userId &&
        email == other.email &&
        accountNickname == other.accountNickname &&
        avatarColor == other.avatarColor &&
        lastAccess == other.lastAccess &&
        isActive == other.isActive &&
        isExpired == other.isExpired &&
        expiredAt == other.expiredAt &&
        daysSinceAccess == other.daysSinceAccess &&
        deviceId == other.deviceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, accountNickname.hashCode);
    _$hash = $jc(_$hash, avatarColor.hashCode);
    _$hash = $jc(_$hash, lastAccess.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, isExpired.hashCode);
    _$hash = $jc(_$hash, expiredAt.hashCode);
    _$hash = $jc(_$hash, daysSinceAccess.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountInfo')
          ..add('userId', userId)
          ..add('email', email)
          ..add('accountNickname', accountNickname)
          ..add('avatarColor', avatarColor)
          ..add('lastAccess', lastAccess)
          ..add('isActive', isActive)
          ..add('isExpired', isExpired)
          ..add('expiredAt', expiredAt)
          ..add('daysSinceAccess', daysSinceAccess)
          ..add('deviceId', deviceId))
        .toString();
  }
}

class AccountInfoBuilder implements Builder<AccountInfo, AccountInfoBuilder> {
  _$AccountInfo? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _accountNickname;
  String? get accountNickname => _$this._accountNickname;
  set accountNickname(String? accountNickname) =>
      _$this._accountNickname = accountNickname;

  String? _avatarColor;
  String? get avatarColor => _$this._avatarColor;
  set avatarColor(String? avatarColor) => _$this._avatarColor = avatarColor;

  DateTime? _lastAccess;
  DateTime? get lastAccess => _$this._lastAccess;
  set lastAccess(DateTime? lastAccess) => _$this._lastAccess = lastAccess;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isExpired;
  bool? get isExpired => _$this._isExpired;
  set isExpired(bool? isExpired) => _$this._isExpired = isExpired;

  DateTime? _expiredAt;
  DateTime? get expiredAt => _$this._expiredAt;
  set expiredAt(DateTime? expiredAt) => _$this._expiredAt = expiredAt;

  int? _daysSinceAccess;
  int? get daysSinceAccess => _$this._daysSinceAccess;
  set daysSinceAccess(int? daysSinceAccess) =>
      _$this._daysSinceAccess = daysSinceAccess;

  int? _deviceId;
  int? get deviceId => _$this._deviceId;
  set deviceId(int? deviceId) => _$this._deviceId = deviceId;

  AccountInfoBuilder() {
    AccountInfo._defaults(this);
  }

  AccountInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _email = $v.email;
      _accountNickname = $v.accountNickname;
      _avatarColor = $v.avatarColor;
      _lastAccess = $v.lastAccess;
      _isActive = $v.isActive;
      _isExpired = $v.isExpired;
      _expiredAt = $v.expiredAt;
      _daysSinceAccess = $v.daysSinceAccess;
      _deviceId = $v.deviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountInfo other) {
    _$v = other as _$AccountInfo;
  }

  @override
  void update(void Function(AccountInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountInfo build() => _build();

  _$AccountInfo _build() {
    final _$result = _$v ??
        _$AccountInfo._(
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'AccountInfo', 'userId'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'AccountInfo', 'email'),
          accountNickname: BuiltValueNullFieldError.checkNotNull(
              accountNickname, r'AccountInfo', 'accountNickname'),
          avatarColor: BuiltValueNullFieldError.checkNotNull(
              avatarColor, r'AccountInfo', 'avatarColor'),
          lastAccess: lastAccess,
          isActive: BuiltValueNullFieldError.checkNotNull(
              isActive, r'AccountInfo', 'isActive'),
          isExpired: BuiltValueNullFieldError.checkNotNull(
              isExpired, r'AccountInfo', 'isExpired'),
          expiredAt: expiredAt,
          daysSinceAccess: daysSinceAccess,
          deviceId: BuiltValueNullFieldError.checkNotNull(
              deviceId, r'AccountInfo', 'deviceId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
