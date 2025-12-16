// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_registration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerRegistrationRequest extends CustomerRegistrationRequest {
  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final Date birthDate;
  @override
  final GenderC3cEnum gender;
  @override
  final String phoneNumber;
  @override
  final String? invitationToken;

  factory _$CustomerRegistrationRequest(
          [void Function(CustomerRegistrationRequestBuilder)? updates]) =>
      (CustomerRegistrationRequestBuilder()..update(updates))._build();

  _$CustomerRegistrationRequest._(
      {required this.email,
      required this.password,
      required this.firstName,
      required this.lastName,
      required this.birthDate,
      required this.gender,
      required this.phoneNumber,
      this.invitationToken})
      : super._();
  @override
  CustomerRegistrationRequest rebuild(
          void Function(CustomerRegistrationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerRegistrationRequestBuilder toBuilder() =>
      CustomerRegistrationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerRegistrationRequest &&
        email == other.email &&
        password == other.password &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        birthDate == other.birthDate &&
        gender == other.gender &&
        phoneNumber == other.phoneNumber &&
        invitationToken == other.invitationToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, invitationToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerRegistrationRequest')
          ..add('email', email)
          ..add('password', password)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('birthDate', birthDate)
          ..add('gender', gender)
          ..add('phoneNumber', phoneNumber)
          ..add('invitationToken', invitationToken))
        .toString();
  }
}

class CustomerRegistrationRequestBuilder
    implements
        Builder<CustomerRegistrationRequest,
            CustomerRegistrationRequestBuilder> {
  _$CustomerRegistrationRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  Date? _birthDate;
  Date? get birthDate => _$this._birthDate;
  set birthDate(Date? birthDate) => _$this._birthDate = birthDate;

  GenderC3cEnum? _gender;
  GenderC3cEnum? get gender => _$this._gender;
  set gender(GenderC3cEnum? gender) => _$this._gender = gender;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _invitationToken;
  String? get invitationToken => _$this._invitationToken;
  set invitationToken(String? invitationToken) =>
      _$this._invitationToken = invitationToken;

  CustomerRegistrationRequestBuilder() {
    CustomerRegistrationRequest._defaults(this);
  }

  CustomerRegistrationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _birthDate = $v.birthDate;
      _gender = $v.gender;
      _phoneNumber = $v.phoneNumber;
      _invitationToken = $v.invitationToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerRegistrationRequest other) {
    _$v = other as _$CustomerRegistrationRequest;
  }

  @override
  void update(void Function(CustomerRegistrationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerRegistrationRequest build() => _build();

  _$CustomerRegistrationRequest _build() {
    final _$result = _$v ??
        _$CustomerRegistrationRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'CustomerRegistrationRequest', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'CustomerRegistrationRequest', 'password'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'CustomerRegistrationRequest', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'CustomerRegistrationRequest', 'lastName'),
          birthDate: BuiltValueNullFieldError.checkNotNull(
              birthDate, r'CustomerRegistrationRequest', 'birthDate'),
          gender: BuiltValueNullFieldError.checkNotNull(
              gender, r'CustomerRegistrationRequest', 'gender'),
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
              phoneNumber, r'CustomerRegistrationRequest', 'phoneNumber'),
          invitationToken: invitationToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
