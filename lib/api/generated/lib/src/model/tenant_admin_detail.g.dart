// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_admin_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantAdminDetail extends TenantAdminDetail {
  @override
  final int id;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final Role3daEnum role;
  @override
  final String roleDisplay;
  @override
  final bool totpEnabled;
  @override
  final bool isActive;
  @override
  final bool mustChangePassword;
  @override
  final DateTime? lastLoginAt;
  @override
  final int failedLoginAttempts;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? createdByEmail;

  factory _$TenantAdminDetail(
          [void Function(TenantAdminDetailBuilder)? updates]) =>
      (TenantAdminDetailBuilder()..update(updates))._build();

  _$TenantAdminDetail._(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.role,
      required this.roleDisplay,
      required this.totpEnabled,
      required this.isActive,
      required this.mustChangePassword,
      this.lastLoginAt,
      required this.failedLoginAttempts,
      required this.createdAt,
      required this.updatedAt,
      this.createdByEmail})
      : super._();
  @override
  TenantAdminDetail rebuild(void Function(TenantAdminDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantAdminDetailBuilder toBuilder() =>
      TenantAdminDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantAdminDetail &&
        id == other.id &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        phoneNumber == other.phoneNumber &&
        role == other.role &&
        roleDisplay == other.roleDisplay &&
        totpEnabled == other.totpEnabled &&
        isActive == other.isActive &&
        mustChangePassword == other.mustChangePassword &&
        lastLoginAt == other.lastLoginAt &&
        failedLoginAttempts == other.failedLoginAttempts &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        createdByEmail == other.createdByEmail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, roleDisplay.hashCode);
    _$hash = $jc(_$hash, totpEnabled.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, mustChangePassword.hashCode);
    _$hash = $jc(_$hash, lastLoginAt.hashCode);
    _$hash = $jc(_$hash, failedLoginAttempts.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, createdByEmail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TenantAdminDetail')
          ..add('id', id)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('phoneNumber', phoneNumber)
          ..add('role', role)
          ..add('roleDisplay', roleDisplay)
          ..add('totpEnabled', totpEnabled)
          ..add('isActive', isActive)
          ..add('mustChangePassword', mustChangePassword)
          ..add('lastLoginAt', lastLoginAt)
          ..add('failedLoginAttempts', failedLoginAttempts)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('createdByEmail', createdByEmail))
        .toString();
  }
}

class TenantAdminDetailBuilder
    implements Builder<TenantAdminDetail, TenantAdminDetailBuilder> {
  _$TenantAdminDetail? _$v;

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

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  Role3daEnum? _role;
  Role3daEnum? get role => _$this._role;
  set role(Role3daEnum? role) => _$this._role = role;

  String? _roleDisplay;
  String? get roleDisplay => _$this._roleDisplay;
  set roleDisplay(String? roleDisplay) => _$this._roleDisplay = roleDisplay;

  bool? _totpEnabled;
  bool? get totpEnabled => _$this._totpEnabled;
  set totpEnabled(bool? totpEnabled) => _$this._totpEnabled = totpEnabled;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _mustChangePassword;
  bool? get mustChangePassword => _$this._mustChangePassword;
  set mustChangePassword(bool? mustChangePassword) =>
      _$this._mustChangePassword = mustChangePassword;

  DateTime? _lastLoginAt;
  DateTime? get lastLoginAt => _$this._lastLoginAt;
  set lastLoginAt(DateTime? lastLoginAt) => _$this._lastLoginAt = lastLoginAt;

  int? _failedLoginAttempts;
  int? get failedLoginAttempts => _$this._failedLoginAttempts;
  set failedLoginAttempts(int? failedLoginAttempts) =>
      _$this._failedLoginAttempts = failedLoginAttempts;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _createdByEmail;
  String? get createdByEmail => _$this._createdByEmail;
  set createdByEmail(String? createdByEmail) =>
      _$this._createdByEmail = createdByEmail;

  TenantAdminDetailBuilder() {
    TenantAdminDetail._defaults(this);
  }

  TenantAdminDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _phoneNumber = $v.phoneNumber;
      _role = $v.role;
      _roleDisplay = $v.roleDisplay;
      _totpEnabled = $v.totpEnabled;
      _isActive = $v.isActive;
      _mustChangePassword = $v.mustChangePassword;
      _lastLoginAt = $v.lastLoginAt;
      _failedLoginAttempts = $v.failedLoginAttempts;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _createdByEmail = $v.createdByEmail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TenantAdminDetail other) {
    _$v = other as _$TenantAdminDetail;
  }

  @override
  void update(void Function(TenantAdminDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantAdminDetail build() => _build();

  _$TenantAdminDetail _build() {
    final _$result = _$v ??
        _$TenantAdminDetail._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'TenantAdminDetail', 'id'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'TenantAdminDetail', 'email'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'TenantAdminDetail', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'TenantAdminDetail', 'lastName'),
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
              phoneNumber, r'TenantAdminDetail', 'phoneNumber'),
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'TenantAdminDetail', 'role'),
          roleDisplay: BuiltValueNullFieldError.checkNotNull(
              roleDisplay, r'TenantAdminDetail', 'roleDisplay'),
          totpEnabled: BuiltValueNullFieldError.checkNotNull(
              totpEnabled, r'TenantAdminDetail', 'totpEnabled'),
          isActive: BuiltValueNullFieldError.checkNotNull(
              isActive, r'TenantAdminDetail', 'isActive'),
          mustChangePassword: BuiltValueNullFieldError.checkNotNull(
              mustChangePassword, r'TenantAdminDetail', 'mustChangePassword'),
          lastLoginAt: lastLoginAt,
          failedLoginAttempts: BuiltValueNullFieldError.checkNotNull(
              failedLoginAttempts, r'TenantAdminDetail', 'failedLoginAttempts'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'TenantAdminDetail', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'TenantAdminDetail', 'updatedAt'),
          createdByEmail: createdByEmail,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
