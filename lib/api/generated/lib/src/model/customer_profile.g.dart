// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerProfile extends CustomerProfile {
  @override
  final int id;
  @override
  final String fullName;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String birthDate;
  @override
  final String gender;
  @override
  final bool phoneVerified;
  @override
  final String pathologies;
  @override
  final String diseases;
  @override
  final String familyAnamnesis;
  @override
  final String allergies;
  @override
  final DateTime createdAt;

  factory _$CustomerProfile([void Function(CustomerProfileBuilder)? updates]) =>
      (CustomerProfileBuilder()..update(updates))._build();

  _$CustomerProfile._(
      {required this.id,
      required this.fullName,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phoneNumber,
      required this.birthDate,
      required this.gender,
      required this.phoneVerified,
      required this.pathologies,
      required this.diseases,
      required this.familyAnamnesis,
      required this.allergies,
      required this.createdAt})
      : super._();
  @override
  CustomerProfile rebuild(void Function(CustomerProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerProfileBuilder toBuilder() => CustomerProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerProfile &&
        id == other.id &&
        fullName == other.fullName &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        birthDate == other.birthDate &&
        gender == other.gender &&
        phoneVerified == other.phoneVerified &&
        pathologies == other.pathologies &&
        diseases == other.diseases &&
        familyAnamnesis == other.familyAnamnesis &&
        allergies == other.allergies &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, phoneVerified.hashCode);
    _$hash = $jc(_$hash, pathologies.hashCode);
    _$hash = $jc(_$hash, diseases.hashCode);
    _$hash = $jc(_$hash, familyAnamnesis.hashCode);
    _$hash = $jc(_$hash, allergies.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerProfile')
          ..add('id', id)
          ..add('fullName', fullName)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('birthDate', birthDate)
          ..add('gender', gender)
          ..add('phoneVerified', phoneVerified)
          ..add('pathologies', pathologies)
          ..add('diseases', diseases)
          ..add('familyAnamnesis', familyAnamnesis)
          ..add('allergies', allergies)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class CustomerProfileBuilder
    implements Builder<CustomerProfile, CustomerProfileBuilder> {
  _$CustomerProfile? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _birthDate;
  String? get birthDate => _$this._birthDate;
  set birthDate(String? birthDate) => _$this._birthDate = birthDate;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  bool? _phoneVerified;
  bool? get phoneVerified => _$this._phoneVerified;
  set phoneVerified(bool? phoneVerified) =>
      _$this._phoneVerified = phoneVerified;

  String? _pathologies;
  String? get pathologies => _$this._pathologies;
  set pathologies(String? pathologies) => _$this._pathologies = pathologies;

  String? _diseases;
  String? get diseases => _$this._diseases;
  set diseases(String? diseases) => _$this._diseases = diseases;

  String? _familyAnamnesis;
  String? get familyAnamnesis => _$this._familyAnamnesis;
  set familyAnamnesis(String? familyAnamnesis) =>
      _$this._familyAnamnesis = familyAnamnesis;

  String? _allergies;
  String? get allergies => _$this._allergies;
  set allergies(String? allergies) => _$this._allergies = allergies;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  CustomerProfileBuilder() {
    CustomerProfile._defaults(this);
  }

  CustomerProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fullName = $v.fullName;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _birthDate = $v.birthDate;
      _gender = $v.gender;
      _phoneVerified = $v.phoneVerified;
      _pathologies = $v.pathologies;
      _diseases = $v.diseases;
      _familyAnamnesis = $v.familyAnamnesis;
      _allergies = $v.allergies;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerProfile other) {
    _$v = other as _$CustomerProfile;
  }

  @override
  void update(void Function(CustomerProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerProfile build() => _build();

  _$CustomerProfile _build() {
    final _$result = _$v ??
        _$CustomerProfile._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CustomerProfile', 'id'),
          fullName: BuiltValueNullFieldError.checkNotNull(
              fullName, r'CustomerProfile', 'fullName'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'CustomerProfile', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'CustomerProfile', 'lastName'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'CustomerProfile', 'email'),
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
              phoneNumber, r'CustomerProfile', 'phoneNumber'),
          birthDate: BuiltValueNullFieldError.checkNotNull(
              birthDate, r'CustomerProfile', 'birthDate'),
          gender: BuiltValueNullFieldError.checkNotNull(
              gender, r'CustomerProfile', 'gender'),
          phoneVerified: BuiltValueNullFieldError.checkNotNull(
              phoneVerified, r'CustomerProfile', 'phoneVerified'),
          pathologies: BuiltValueNullFieldError.checkNotNull(
              pathologies, r'CustomerProfile', 'pathologies'),
          diseases: BuiltValueNullFieldError.checkNotNull(
              diseases, r'CustomerProfile', 'diseases'),
          familyAnamnesis: BuiltValueNullFieldError.checkNotNull(
              familyAnamnesis, r'CustomerProfile', 'familyAnamnesis'),
          allergies: BuiltValueNullFieldError.checkNotNull(
              allergies, r'CustomerProfile', 'allergies'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'CustomerProfile', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
