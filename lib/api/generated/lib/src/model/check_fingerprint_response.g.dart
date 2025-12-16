// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_fingerprint_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckFingerprintResponse extends CheckFingerprintResponse {
  @override
  final bool hasAccounts;
  @override
  final int accountsCount;
  @override
  final bool biometricEnabled;
  @override
  final String? deviceName;

  factory _$CheckFingerprintResponse(
          [void Function(CheckFingerprintResponseBuilder)? updates]) =>
      (CheckFingerprintResponseBuilder()..update(updates))._build();

  _$CheckFingerprintResponse._(
      {required this.hasAccounts,
      required this.accountsCount,
      required this.biometricEnabled,
      this.deviceName})
      : super._();
  @override
  CheckFingerprintResponse rebuild(
          void Function(CheckFingerprintResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckFingerprintResponseBuilder toBuilder() =>
      CheckFingerprintResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckFingerprintResponse &&
        hasAccounts == other.hasAccounts &&
        accountsCount == other.accountsCount &&
        biometricEnabled == other.biometricEnabled &&
        deviceName == other.deviceName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hasAccounts.hashCode);
    _$hash = $jc(_$hash, accountsCount.hashCode);
    _$hash = $jc(_$hash, biometricEnabled.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckFingerprintResponse')
          ..add('hasAccounts', hasAccounts)
          ..add('accountsCount', accountsCount)
          ..add('biometricEnabled', biometricEnabled)
          ..add('deviceName', deviceName))
        .toString();
  }
}

class CheckFingerprintResponseBuilder
    implements
        Builder<CheckFingerprintResponse, CheckFingerprintResponseBuilder> {
  _$CheckFingerprintResponse? _$v;

  bool? _hasAccounts;
  bool? get hasAccounts => _$this._hasAccounts;
  set hasAccounts(bool? hasAccounts) => _$this._hasAccounts = hasAccounts;

  int? _accountsCount;
  int? get accountsCount => _$this._accountsCount;
  set accountsCount(int? accountsCount) =>
      _$this._accountsCount = accountsCount;

  bool? _biometricEnabled;
  bool? get biometricEnabled => _$this._biometricEnabled;
  set biometricEnabled(bool? biometricEnabled) =>
      _$this._biometricEnabled = biometricEnabled;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  CheckFingerprintResponseBuilder() {
    CheckFingerprintResponse._defaults(this);
  }

  CheckFingerprintResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hasAccounts = $v.hasAccounts;
      _accountsCount = $v.accountsCount;
      _biometricEnabled = $v.biometricEnabled;
      _deviceName = $v.deviceName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckFingerprintResponse other) {
    _$v = other as _$CheckFingerprintResponse;
  }

  @override
  void update(void Function(CheckFingerprintResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckFingerprintResponse build() => _build();

  _$CheckFingerprintResponse _build() {
    final _$result = _$v ??
        _$CheckFingerprintResponse._(
          hasAccounts: BuiltValueNullFieldError.checkNotNull(
              hasAccounts, r'CheckFingerprintResponse', 'hasAccounts'),
          accountsCount: BuiltValueNullFieldError.checkNotNull(
              accountsCount, r'CheckFingerprintResponse', 'accountsCount'),
          biometricEnabled: BuiltValueNullFieldError.checkNotNull(
              biometricEnabled,
              r'CheckFingerprintResponse',
              'biometricEnabled'),
          deviceName: deviceName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
