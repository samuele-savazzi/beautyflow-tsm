// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_updated.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerUpdated extends CustomerUpdated {
  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String fullName;
  @override
  final Date birthDate;
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
  final bool blocked;
  @override
  final String? blockedMotivation;
  @override
  final bool valid;
  @override
  final DateTime updatedAt;

  factory _$CustomerUpdated([void Function(CustomerUpdatedBuilder)? updates]) =>
      (CustomerUpdatedBuilder()..update(updates))._build();

  _$CustomerUpdated._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.fullName,
      required this.birthDate,
      required this.gender,
      this.pathologies,
      this.diseases,
      this.familyAnamnesis,
      this.allergies,
      required this.blocked,
      this.blockedMotivation,
      required this.valid,
      required this.updatedAt})
      : super._();
  @override
  CustomerUpdated rebuild(void Function(CustomerUpdatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerUpdatedBuilder toBuilder() => CustomerUpdatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerUpdated &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        fullName == other.fullName &&
        birthDate == other.birthDate &&
        gender == other.gender &&
        pathologies == other.pathologies &&
        diseases == other.diseases &&
        familyAnamnesis == other.familyAnamnesis &&
        allergies == other.allergies &&
        blocked == other.blocked &&
        blockedMotivation == other.blockedMotivation &&
        valid == other.valid &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, pathologies.hashCode);
    _$hash = $jc(_$hash, diseases.hashCode);
    _$hash = $jc(_$hash, familyAnamnesis.hashCode);
    _$hash = $jc(_$hash, allergies.hashCode);
    _$hash = $jc(_$hash, blocked.hashCode);
    _$hash = $jc(_$hash, blockedMotivation.hashCode);
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerUpdated')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('fullName', fullName)
          ..add('birthDate', birthDate)
          ..add('gender', gender)
          ..add('pathologies', pathologies)
          ..add('diseases', diseases)
          ..add('familyAnamnesis', familyAnamnesis)
          ..add('allergies', allergies)
          ..add('blocked', blocked)
          ..add('blockedMotivation', blockedMotivation)
          ..add('valid', valid)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CustomerUpdatedBuilder
    implements Builder<CustomerUpdated, CustomerUpdatedBuilder> {
  _$CustomerUpdated? _$v;

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

  Date? _birthDate;
  Date? get birthDate => _$this._birthDate;
  set birthDate(Date? birthDate) => _$this._birthDate = birthDate;

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

  bool? _blocked;
  bool? get blocked => _$this._blocked;
  set blocked(bool? blocked) => _$this._blocked = blocked;

  String? _blockedMotivation;
  String? get blockedMotivation => _$this._blockedMotivation;
  set blockedMotivation(String? blockedMotivation) =>
      _$this._blockedMotivation = blockedMotivation;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  CustomerUpdatedBuilder() {
    CustomerUpdated._defaults(this);
  }

  CustomerUpdatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _fullName = $v.fullName;
      _birthDate = $v.birthDate;
      _gender = $v.gender;
      _pathologies = $v.pathologies;
      _diseases = $v.diseases;
      _familyAnamnesis = $v.familyAnamnesis;
      _allergies = $v.allergies;
      _blocked = $v.blocked;
      _blockedMotivation = $v.blockedMotivation;
      _valid = $v.valid;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerUpdated other) {
    _$v = other as _$CustomerUpdated;
  }

  @override
  void update(void Function(CustomerUpdatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerUpdated build() => _build();

  _$CustomerUpdated _build() {
    final _$result = _$v ??
        _$CustomerUpdated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CustomerUpdated', 'id'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'CustomerUpdated', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'CustomerUpdated', 'lastName'),
          fullName: BuiltValueNullFieldError.checkNotNull(
              fullName, r'CustomerUpdated', 'fullName'),
          birthDate: BuiltValueNullFieldError.checkNotNull(
              birthDate, r'CustomerUpdated', 'birthDate'),
          gender: BuiltValueNullFieldError.checkNotNull(
              gender, r'CustomerUpdated', 'gender'),
          pathologies: pathologies,
          diseases: diseases,
          familyAnamnesis: familyAnamnesis,
          allergies: allergies,
          blocked: BuiltValueNullFieldError.checkNotNull(
              blocked, r'CustomerUpdated', 'blocked'),
          blockedMotivation: blockedMotivation,
          valid: BuiltValueNullFieldError.checkNotNull(
              valid, r'CustomerUpdated', 'valid'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'CustomerUpdated', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
