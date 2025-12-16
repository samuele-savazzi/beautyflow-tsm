// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updated_customer_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatedCustomerProfile extends UpdatedCustomerProfile {
  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String birthDate;
  @override
  final String gender;
  @override
  final String? pathologies;
  @override
  final String? diseases;
  @override
  final String? familyAnamnesis;
  @override
  final String? allergies;
  @override
  final DateTime updatedAt;

  factory _$UpdatedCustomerProfile(
          [void Function(UpdatedCustomerProfileBuilder)? updates]) =>
      (UpdatedCustomerProfileBuilder()..update(updates))._build();

  _$UpdatedCustomerProfile._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.fullName,
      required this.email,
      required this.phoneNumber,
      required this.birthDate,
      required this.gender,
      this.pathologies,
      this.diseases,
      this.familyAnamnesis,
      this.allergies,
      required this.updatedAt})
      : super._();
  @override
  UpdatedCustomerProfile rebuild(
          void Function(UpdatedCustomerProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatedCustomerProfileBuilder toBuilder() =>
      UpdatedCustomerProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatedCustomerProfile &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        fullName == other.fullName &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        birthDate == other.birthDate &&
        gender == other.gender &&
        pathologies == other.pathologies &&
        diseases == other.diseases &&
        familyAnamnesis == other.familyAnamnesis &&
        allergies == other.allergies &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, pathologies.hashCode);
    _$hash = $jc(_$hash, diseases.hashCode);
    _$hash = $jc(_$hash, familyAnamnesis.hashCode);
    _$hash = $jc(_$hash, allergies.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdatedCustomerProfile')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('fullName', fullName)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('birthDate', birthDate)
          ..add('gender', gender)
          ..add('pathologies', pathologies)
          ..add('diseases', diseases)
          ..add('familyAnamnesis', familyAnamnesis)
          ..add('allergies', allergies)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class UpdatedCustomerProfileBuilder
    implements Builder<UpdatedCustomerProfile, UpdatedCustomerProfileBuilder> {
  _$UpdatedCustomerProfile? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

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

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  UpdatedCustomerProfileBuilder() {
    UpdatedCustomerProfile._defaults(this);
  }

  UpdatedCustomerProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _fullName = $v.fullName;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _birthDate = $v.birthDate;
      _gender = $v.gender;
      _pathologies = $v.pathologies;
      _diseases = $v.diseases;
      _familyAnamnesis = $v.familyAnamnesis;
      _allergies = $v.allergies;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatedCustomerProfile other) {
    _$v = other as _$UpdatedCustomerProfile;
  }

  @override
  void update(void Function(UpdatedCustomerProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatedCustomerProfile build() => _build();

  _$UpdatedCustomerProfile _build() {
    final _$result = _$v ??
        _$UpdatedCustomerProfile._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'UpdatedCustomerProfile', 'id'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'UpdatedCustomerProfile', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'UpdatedCustomerProfile', 'lastName'),
          fullName: BuiltValueNullFieldError.checkNotNull(
              fullName, r'UpdatedCustomerProfile', 'fullName'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'UpdatedCustomerProfile', 'email'),
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
              phoneNumber, r'UpdatedCustomerProfile', 'phoneNumber'),
          birthDate: BuiltValueNullFieldError.checkNotNull(
              birthDate, r'UpdatedCustomerProfile', 'birthDate'),
          gender: BuiltValueNullFieldError.checkNotNull(
              gender, r'UpdatedCustomerProfile', 'gender'),
          pathologies: pathologies,
          diseases: diseases,
          familyAnamnesis: familyAnamnesis,
          allergies: allergies,
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'UpdatedCustomerProfile', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
