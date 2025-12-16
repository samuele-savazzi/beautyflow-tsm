// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tenant_admin_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTenantAdminRequest extends CreateTenantAdminRequest {
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final CreateTenantAdminRequestRoleEnum? role;

  factory _$CreateTenantAdminRequest(
          [void Function(CreateTenantAdminRequestBuilder)? updates]) =>
      (CreateTenantAdminRequestBuilder()..update(updates))._build();

  _$CreateTenantAdminRequest._(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      this.role})
      : super._();
  @override
  CreateTenantAdminRequest rebuild(
          void Function(CreateTenantAdminRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTenantAdminRequestBuilder toBuilder() =>
      CreateTenantAdminRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTenantAdminRequest &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        phoneNumber == other.phoneNumber &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTenantAdminRequest')
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('phoneNumber', phoneNumber)
          ..add('role', role))
        .toString();
  }
}

class CreateTenantAdminRequestBuilder
    implements
        Builder<CreateTenantAdminRequest, CreateTenantAdminRequestBuilder> {
  _$CreateTenantAdminRequest? _$v;

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

  CreateTenantAdminRequestRoleEnum? _role;
  CreateTenantAdminRequestRoleEnum? get role => _$this._role;
  set role(CreateTenantAdminRequestRoleEnum? role) => _$this._role = role;

  CreateTenantAdminRequestBuilder() {
    CreateTenantAdminRequest._defaults(this);
  }

  CreateTenantAdminRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _phoneNumber = $v.phoneNumber;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTenantAdminRequest other) {
    _$v = other as _$CreateTenantAdminRequest;
  }

  @override
  void update(void Function(CreateTenantAdminRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTenantAdminRequest build() => _build();

  _$CreateTenantAdminRequest _build() {
    final _$result = _$v ??
        _$CreateTenantAdminRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'CreateTenantAdminRequest', 'email'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'CreateTenantAdminRequest', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'CreateTenantAdminRequest', 'lastName'),
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
              phoneNumber, r'CreateTenantAdminRequest', 'phoneNumber'),
          role: role,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
