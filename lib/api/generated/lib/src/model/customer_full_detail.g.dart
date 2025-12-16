// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_full_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerFullDetail extends CustomerFullDetail {
  @override
  final int id;
  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final String birthDate;
  @override
  final String gender;
  @override
  final bool valid;
  @override
  final bool blocked;
  @override
  final String? blockedMotivation;
  @override
  final String? pathologies;
  @override
  final String? diseases;
  @override
  final String? familyAnamnesis;
  @override
  final String? allergies;
  @override
  final String createdAt;

  factory _$CustomerFullDetail(
          [void Function(CustomerFullDetailBuilder)? updates]) =>
      (CustomerFullDetailBuilder()..update(updates))._build();

  _$CustomerFullDetail._(
      {required this.id,
      required this.fullName,
      required this.phoneNumber,
      required this.birthDate,
      required this.gender,
      required this.valid,
      required this.blocked,
      this.blockedMotivation,
      this.pathologies,
      this.diseases,
      this.familyAnamnesis,
      this.allergies,
      required this.createdAt})
      : super._();
  @override
  CustomerFullDetail rebuild(
          void Function(CustomerFullDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerFullDetailBuilder toBuilder() =>
      CustomerFullDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerFullDetail &&
        id == other.id &&
        fullName == other.fullName &&
        phoneNumber == other.phoneNumber &&
        birthDate == other.birthDate &&
        gender == other.gender &&
        valid == other.valid &&
        blocked == other.blocked &&
        blockedMotivation == other.blockedMotivation &&
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
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jc(_$hash, blocked.hashCode);
    _$hash = $jc(_$hash, blockedMotivation.hashCode);
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
    return (newBuiltValueToStringHelper(r'CustomerFullDetail')
          ..add('id', id)
          ..add('fullName', fullName)
          ..add('phoneNumber', phoneNumber)
          ..add('birthDate', birthDate)
          ..add('gender', gender)
          ..add('valid', valid)
          ..add('blocked', blocked)
          ..add('blockedMotivation', blockedMotivation)
          ..add('pathologies', pathologies)
          ..add('diseases', diseases)
          ..add('familyAnamnesis', familyAnamnesis)
          ..add('allergies', allergies)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class CustomerFullDetailBuilder
    implements Builder<CustomerFullDetail, CustomerFullDetailBuilder> {
  _$CustomerFullDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _birthDate;
  String? get birthDate => _$this._birthDate;
  set birthDate(String? birthDate) => _$this._birthDate = birthDate;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  bool? _blocked;
  bool? get blocked => _$this._blocked;
  set blocked(bool? blocked) => _$this._blocked = blocked;

  String? _blockedMotivation;
  String? get blockedMotivation => _$this._blockedMotivation;
  set blockedMotivation(String? blockedMotivation) =>
      _$this._blockedMotivation = blockedMotivation;

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

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  CustomerFullDetailBuilder() {
    CustomerFullDetail._defaults(this);
  }

  CustomerFullDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fullName = $v.fullName;
      _phoneNumber = $v.phoneNumber;
      _birthDate = $v.birthDate;
      _gender = $v.gender;
      _valid = $v.valid;
      _blocked = $v.blocked;
      _blockedMotivation = $v.blockedMotivation;
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
  void replace(CustomerFullDetail other) {
    _$v = other as _$CustomerFullDetail;
  }

  @override
  void update(void Function(CustomerFullDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerFullDetail build() => _build();

  _$CustomerFullDetail _build() {
    final _$result = _$v ??
        _$CustomerFullDetail._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CustomerFullDetail', 'id'),
          fullName: BuiltValueNullFieldError.checkNotNull(
              fullName, r'CustomerFullDetail', 'fullName'),
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
              phoneNumber, r'CustomerFullDetail', 'phoneNumber'),
          birthDate: BuiltValueNullFieldError.checkNotNull(
              birthDate, r'CustomerFullDetail', 'birthDate'),
          gender: BuiltValueNullFieldError.checkNotNull(
              gender, r'CustomerFullDetail', 'gender'),
          valid: BuiltValueNullFieldError.checkNotNull(
              valid, r'CustomerFullDetail', 'valid'),
          blocked: BuiltValueNullFieldError.checkNotNull(
              blocked, r'CustomerFullDetail', 'blocked'),
          blockedMotivation: blockedMotivation,
          pathologies: pathologies,
          diseases: diseases,
          familyAnamnesis: familyAnamnesis,
          allergies: allergies,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'CustomerFullDetail', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
