// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fingerprint_accounts_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FingerprintAccountsResponse extends FingerprintAccountsResponse {
  @override
  final String? deviceName;
  @override
  final BuiltList<AccountInfo> accounts;
  @override
  final BuiltList<ExpiredNotification> expiredNotifications;

  factory _$FingerprintAccountsResponse(
          [void Function(FingerprintAccountsResponseBuilder)? updates]) =>
      (FingerprintAccountsResponseBuilder()..update(updates))._build();

  _$FingerprintAccountsResponse._(
      {this.deviceName,
      required this.accounts,
      required this.expiredNotifications})
      : super._();
  @override
  FingerprintAccountsResponse rebuild(
          void Function(FingerprintAccountsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FingerprintAccountsResponseBuilder toBuilder() =>
      FingerprintAccountsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FingerprintAccountsResponse &&
        deviceName == other.deviceName &&
        accounts == other.accounts &&
        expiredNotifications == other.expiredNotifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, expiredNotifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FingerprintAccountsResponse')
          ..add('deviceName', deviceName)
          ..add('accounts', accounts)
          ..add('expiredNotifications', expiredNotifications))
        .toString();
  }
}

class FingerprintAccountsResponseBuilder
    implements
        Builder<FingerprintAccountsResponse,
            FingerprintAccountsResponseBuilder> {
  _$FingerprintAccountsResponse? _$v;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  ListBuilder<AccountInfo>? _accounts;
  ListBuilder<AccountInfo> get accounts =>
      _$this._accounts ??= ListBuilder<AccountInfo>();
  set accounts(ListBuilder<AccountInfo>? accounts) =>
      _$this._accounts = accounts;

  ListBuilder<ExpiredNotification>? _expiredNotifications;
  ListBuilder<ExpiredNotification> get expiredNotifications =>
      _$this._expiredNotifications ??= ListBuilder<ExpiredNotification>();
  set expiredNotifications(
          ListBuilder<ExpiredNotification>? expiredNotifications) =>
      _$this._expiredNotifications = expiredNotifications;

  FingerprintAccountsResponseBuilder() {
    FingerprintAccountsResponse._defaults(this);
  }

  FingerprintAccountsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceName = $v.deviceName;
      _accounts = $v.accounts.toBuilder();
      _expiredNotifications = $v.expiredNotifications.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FingerprintAccountsResponse other) {
    _$v = other as _$FingerprintAccountsResponse;
  }

  @override
  void update(void Function(FingerprintAccountsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FingerprintAccountsResponse build() => _build();

  _$FingerprintAccountsResponse _build() {
    _$FingerprintAccountsResponse _$result;
    try {
      _$result = _$v ??
          _$FingerprintAccountsResponse._(
            deviceName: deviceName,
            accounts: accounts.build(),
            expiredNotifications: expiredNotifications.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accounts';
        accounts.build();
        _$failedField = 'expiredNotifications';
        expiredNotifications.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FingerprintAccountsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
