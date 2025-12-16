// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_admin_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantAdminInfo extends TenantAdminInfo {
  @override
  final int id;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final Role3daEnum role;
  @override
  final bool totpEnabled;
  @override
  final bool isActive;
  @override
  final DateTime? lastLoginAt;

  factory _$TenantAdminInfo([void Function(TenantAdminInfoBuilder)? updates]) =>
      (TenantAdminInfoBuilder()..update(updates))._build();

  _$TenantAdminInfo._(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.role,
      required this.totpEnabled,
      required this.isActive,
      this.lastLoginAt})
      : super._();
  @override
  TenantAdminInfo rebuild(void Function(TenantAdminInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantAdminInfoBuilder toBuilder() => TenantAdminInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantAdminInfo &&
        id == other.id &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        role == other.role &&
        totpEnabled == other.totpEnabled &&
        isActive == other.isActive &&
        lastLoginAt == other.lastLoginAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, totpEnabled.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, lastLoginAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TenantAdminInfo')
          ..add('id', id)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('role', role)
          ..add('totpEnabled', totpEnabled)
          ..add('isActive', isActive)
          ..add('lastLoginAt', lastLoginAt))
        .toString();
  }
}

class TenantAdminInfoBuilder
    implements Builder<TenantAdminInfo, TenantAdminInfoBuilder> {
  _$TenantAdminInfo? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  Role3daEnum? _role;
  Role3daEnum? get role => _$this._role;
  set role(Role3daEnum? role) => _$this._role = role;

  bool? _totpEnabled;
  bool? get totpEnabled => _$this._totpEnabled;
  set totpEnabled(bool? totpEnabled) => _$this._totpEnabled = totpEnabled;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  DateTime? _lastLoginAt;
  DateTime? get lastLoginAt => _$this._lastLoginAt;
  set lastLoginAt(DateTime? lastLoginAt) => _$this._lastLoginAt = lastLoginAt;

  TenantAdminInfoBuilder() {
    TenantAdminInfo._defaults(this);
  }

  TenantAdminInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _role = $v.role;
      _totpEnabled = $v.totpEnabled;
      _isActive = $v.isActive;
      _lastLoginAt = $v.lastLoginAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TenantAdminInfo other) {
    _$v = other as _$TenantAdminInfo;
  }

  @override
  void update(void Function(TenantAdminInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantAdminInfo build() => _build();

  _$TenantAdminInfo _build() {
    final _$result = _$v ??
        _$TenantAdminInfo._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'TenantAdminInfo', 'id'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'TenantAdminInfo', 'email'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'TenantAdminInfo', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'TenantAdminInfo', 'lastName'),
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'TenantAdminInfo', 'role'),
          totpEnabled: BuiltValueNullFieldError.checkNotNull(
              totpEnabled, r'TenantAdminInfo', 'totpEnabled'),
          isActive: BuiltValueNullFieldError.checkNotNull(
              isActive, r'TenantAdminInfo', 'isActive'),
          lastLoginAt: lastLoginAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
