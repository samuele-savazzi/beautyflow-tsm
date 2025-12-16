// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerUpdateRequest extends CustomerUpdateRequest {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final Date? birthDate;
  @override
  final GenderC3cEnum? gender;
  @override
  final String? pathologies;
  @override
  final String? diseases;
  @override
  final String? familyAnamnesis;
  @override
  final String? allergies;
  @override
  final bool? blocked;
  @override
  final String? blockedMotivation;
  @override
  final bool? valid;

  factory _$CustomerUpdateRequest(
          [void Function(CustomerUpdateRequestBuilder)? updates]) =>
      (CustomerUpdateRequestBuilder()..update(updates))._build();

  _$CustomerUpdateRequest._(
      {this.firstName,
      this.lastName,
      this.birthDate,
      this.gender,
      this.pathologies,
      this.diseases,
      this.familyAnamnesis,
      this.allergies,
      this.blocked,
      this.blockedMotivation,
      this.valid})
      : super._();
  @override
  CustomerUpdateRequest rebuild(
          void Function(CustomerUpdateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerUpdateRequestBuilder toBuilder() =>
      CustomerUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerUpdateRequest &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        birthDate == other.birthDate &&
        gender == other.gender &&
        pathologies == other.pathologies &&
        diseases == other.diseases &&
        familyAnamnesis == other.familyAnamnesis &&
        allergies == other.allergies &&
        blocked == other.blocked &&
        blockedMotivation == other.blockedMotivation &&
        valid == other.valid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, pathologies.hashCode);
    _$hash = $jc(_$hash, diseases.hashCode);
    _$hash = $jc(_$hash, familyAnamnesis.hashCode);
    _$hash = $jc(_$hash, allergies.hashCode);
    _$hash = $jc(_$hash, blocked.hashCode);
    _$hash = $jc(_$hash, blockedMotivation.hashCode);
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerUpdateRequest')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('birthDate', birthDate)
          ..add('gender', gender)
          ..add('pathologies', pathologies)
          ..add('diseases', diseases)
          ..add('familyAnamnesis', familyAnamnesis)
          ..add('allergies', allergies)
          ..add('blocked', blocked)
          ..add('blockedMotivation', blockedMotivation)
          ..add('valid', valid))
        .toString();
  }
}

class CustomerUpdateRequestBuilder
    implements Builder<CustomerUpdateRequest, CustomerUpdateRequestBuilder> {
  _$CustomerUpdateRequest? _$v;

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

  CustomerUpdateRequestBuilder() {
    CustomerUpdateRequest._defaults(this);
  }

  CustomerUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _birthDate = $v.birthDate;
      _gender = $v.gender;
      _pathologies = $v.pathologies;
      _diseases = $v.diseases;
      _familyAnamnesis = $v.familyAnamnesis;
      _allergies = $v.allergies;
      _blocked = $v.blocked;
      _blockedMotivation = $v.blockedMotivation;
      _valid = $v.valid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerUpdateRequest other) {
    _$v = other as _$CustomerUpdateRequest;
  }

  @override
  void update(void Function(CustomerUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerUpdateRequest build() => _build();

  _$CustomerUpdateRequest _build() {
    final _$result = _$v ??
        _$CustomerUpdateRequest._(
          firstName: firstName,
          lastName: lastName,
          birthDate: birthDate,
          gender: gender,
          pathologies: pathologies,
          diseases: diseases,
          familyAnamnesis: familyAnamnesis,
          allergies: allergies,
          blocked: blocked,
          blockedMotivation: blockedMotivation,
          valid: valid,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
