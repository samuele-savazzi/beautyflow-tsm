// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_with_role_biometric.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserInfoWithRoleBiometric extends UserInfoWithRoleBiometric {
  @override
  final bool trusted;
  @override
  final int id;
  @override
  final String email;
  @override
  final String username;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? role;
  @override
  final BuiltList<WorkspaceInfoBiometric> workspaces;

  factory _$UserInfoWithRoleBiometric(
          [void Function(UserInfoWithRoleBiometricBuilder)? updates]) =>
      (UserInfoWithRoleBiometricBuilder()..update(updates))._build();

  _$UserInfoWithRoleBiometric._(
      {required this.trusted,
      required this.id,
      required this.email,
      required this.username,
      required this.firstName,
      required this.lastName,
      this.role,
      required this.workspaces})
      : super._();
  @override
  UserInfoWithRoleBiometric rebuild(
          void Function(UserInfoWithRoleBiometricBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoWithRoleBiometricBuilder toBuilder() =>
      UserInfoWithRoleBiometricBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoWithRoleBiometric &&
        trusted == other.trusted &&
        id == other.id &&
        email == other.email &&
        username == other.username &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        role == other.role &&
        workspaces == other.workspaces;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trusted.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, workspaces.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserInfoWithRoleBiometric')
          ..add('trusted', trusted)
          ..add('id', id)
          ..add('email', email)
          ..add('username', username)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('role', role)
          ..add('workspaces', workspaces))
        .toString();
  }
}

class UserInfoWithRoleBiometricBuilder
    implements
        Builder<UserInfoWithRoleBiometric, UserInfoWithRoleBiometricBuilder> {
  _$UserInfoWithRoleBiometric? _$v;

  bool? _trusted;
  bool? get trusted => _$this._trusted;
  set trusted(bool? trusted) => _$this._trusted = trusted;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  ListBuilder<WorkspaceInfoBiometric>? _workspaces;
  ListBuilder<WorkspaceInfoBiometric> get workspaces =>
      _$this._workspaces ??= ListBuilder<WorkspaceInfoBiometric>();
  set workspaces(ListBuilder<WorkspaceInfoBiometric>? workspaces) =>
      _$this._workspaces = workspaces;

  UserInfoWithRoleBiometricBuilder() {
    UserInfoWithRoleBiometric._defaults(this);
  }

  UserInfoWithRoleBiometricBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trusted = $v.trusted;
      _id = $v.id;
      _email = $v.email;
      _username = $v.username;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _role = $v.role;
      _workspaces = $v.workspaces.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfoWithRoleBiometric other) {
    _$v = other as _$UserInfoWithRoleBiometric;
  }

  @override
  void update(void Function(UserInfoWithRoleBiometricBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInfoWithRoleBiometric build() => _build();

  _$UserInfoWithRoleBiometric _build() {
    _$UserInfoWithRoleBiometric _$result;
    try {
      _$result = _$v ??
          _$UserInfoWithRoleBiometric._(
            trusted: BuiltValueNullFieldError.checkNotNull(
                trusted, r'UserInfoWithRoleBiometric', 'trusted'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'UserInfoWithRoleBiometric', 'id'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'UserInfoWithRoleBiometric', 'email'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'UserInfoWithRoleBiometric', 'username'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'UserInfoWithRoleBiometric', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'UserInfoWithRoleBiometric', 'lastName'),
            role: role,
            workspaces: workspaces.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workspaces';
        workspaces.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserInfoWithRoleBiometric', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
