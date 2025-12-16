// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expired_notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExpiredNotification extends ExpiredNotification {
  @override
  final int userId;
  @override
  final String email;
  @override
  final String accountNickname;
  @override
  final DateTime expiredAt;
  @override
  final String message;

  factory _$ExpiredNotification(
          [void Function(ExpiredNotificationBuilder)? updates]) =>
      (ExpiredNotificationBuilder()..update(updates))._build();

  _$ExpiredNotification._(
      {required this.userId,
      required this.email,
      required this.accountNickname,
      required this.expiredAt,
      required this.message})
      : super._();
  @override
  ExpiredNotification rebuild(
          void Function(ExpiredNotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpiredNotificationBuilder toBuilder() =>
      ExpiredNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpiredNotification &&
        userId == other.userId &&
        email == other.email &&
        accountNickname == other.accountNickname &&
        expiredAt == other.expiredAt &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, accountNickname.hashCode);
    _$hash = $jc(_$hash, expiredAt.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExpiredNotification')
          ..add('userId', userId)
          ..add('email', email)
          ..add('accountNickname', accountNickname)
          ..add('expiredAt', expiredAt)
          ..add('message', message))
        .toString();
  }
}

class ExpiredNotificationBuilder
    implements Builder<ExpiredNotification, ExpiredNotificationBuilder> {
  _$ExpiredNotification? _$v;

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

  DateTime? _expiredAt;
  DateTime? get expiredAt => _$this._expiredAt;
  set expiredAt(DateTime? expiredAt) => _$this._expiredAt = expiredAt;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ExpiredNotificationBuilder() {
    ExpiredNotification._defaults(this);
  }

  ExpiredNotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _email = $v.email;
      _accountNickname = $v.accountNickname;
      _expiredAt = $v.expiredAt;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpiredNotification other) {
    _$v = other as _$ExpiredNotification;
  }

  @override
  void update(void Function(ExpiredNotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExpiredNotification build() => _build();

  _$ExpiredNotification _build() {
    final _$result = _$v ??
        _$ExpiredNotification._(
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'ExpiredNotification', 'userId'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'ExpiredNotification', 'email'),
          accountNickname: BuiltValueNullFieldError.checkNotNull(
              accountNickname, r'ExpiredNotification', 'accountNickname'),
          expiredAt: BuiltValueNullFieldError.checkNotNull(
              expiredAt, r'ExpiredNotification', 'expiredAt'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'ExpiredNotification', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
