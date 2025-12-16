// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_with_role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserInfoWithRole extends UserInfoWithRole {
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
  final BuiltList<WorkspaceInfo> workspaces;

  factory _$UserInfoWithRole(
          [void Function(UserInfoWithRoleBuilder)? updates]) =>
      (UserInfoWithRoleBuilder()..update(updates))._build();

  _$UserInfoWithRole._(
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
  UserInfoWithRole rebuild(void Function(UserInfoWithRoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoWithRoleBuilder toBuilder() =>
      UserInfoWithRoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoWithRole &&
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
    return (newBuiltValueToStringHelper(r'UserInfoWithRole')
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

class UserInfoWithRoleBuilder
    implements Builder<UserInfoWithRole, UserInfoWithRoleBuilder> {
  _$UserInfoWithRole? _$v;

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

  ListBuilder<WorkspaceInfo>? _workspaces;
  ListBuilder<WorkspaceInfo> get workspaces =>
      _$this._workspaces ??= ListBuilder<WorkspaceInfo>();
  set workspaces(ListBuilder<WorkspaceInfo>? workspaces) =>
      _$this._workspaces = workspaces;

  UserInfoWithRoleBuilder() {
    UserInfoWithRole._defaults(this);
  }

  UserInfoWithRoleBuilder get _$this {
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
  void replace(UserInfoWithRole other) {
    _$v = other as _$UserInfoWithRole;
  }

  @override
  void update(void Function(UserInfoWithRoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInfoWithRole build() => _build();

  _$UserInfoWithRole _build() {
    _$UserInfoWithRole _$result;
    try {
      _$result = _$v ??
          _$UserInfoWithRole._(
            trusted: BuiltValueNullFieldError.checkNotNull(
                trusted, r'UserInfoWithRole', 'trusted'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'UserInfoWithRole', 'id'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'UserInfoWithRole', 'email'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'UserInfoWithRole', 'username'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'UserInfoWithRole', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'UserInfoWithRole', 'lastName'),
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
            r'UserInfoWithRole', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
