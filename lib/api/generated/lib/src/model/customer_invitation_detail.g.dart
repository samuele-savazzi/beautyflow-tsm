// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_invitation_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerInvitationDetail extends CustomerInvitationDetail {
  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String? phoneNumber;
  @override
  final Date? birthDate;
  @override
  final String? gender;
  @override
  final String? pathologies;
  @override
  final String? diseases;
  @override
  final String? familyAnamnesis;
  @override
  final String? allergies;
  @override
  final String? notesForCustomer;
  @override
  final BuiltMap<String, Map<String, dynamic>?> suggestedConsents;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime expiresAt;
  @override
  final DateTime? acceptedAt;
  @override
  final bool isValid;
  @override
  final bool isExpired;

  factory _$CustomerInvitationDetail(
          [void Function(CustomerInvitationDetailBuilder)? updates]) =>
      (CustomerInvitationDetailBuilder()..update(updates))._build();

  _$CustomerInvitationDetail._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      this.phoneNumber,
      this.birthDate,
      this.gender,
      this.pathologies,
      this.diseases,
      this.familyAnamnesis,
      this.allergies,
      this.notesForCustomer,
      required this.suggestedConsents,
      required this.status,
      required this.createdAt,
      required this.expiresAt,
      this.acceptedAt,
      required this.isValid,
      required this.isExpired})
      : super._();
  @override
  CustomerInvitationDetail rebuild(
          void Function(CustomerInvitationDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerInvitationDetailBuilder toBuilder() =>
      CustomerInvitationDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerInvitationDetail &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        birthDate == other.birthDate &&
        gender == other.gender &&
        pathologies == other.pathologies &&
        diseases == other.diseases &&
        familyAnamnesis == other.familyAnamnesis &&
        allergies == other.allergies &&
        notesForCustomer == other.notesForCustomer &&
        suggestedConsents == other.suggestedConsents &&
        status == other.status &&
        createdAt == other.createdAt &&
        expiresAt == other.expiresAt &&
        acceptedAt == other.acceptedAt &&
        isValid == other.isValid &&
        isExpired == other.isExpired;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, pathologies.hashCode);
    _$hash = $jc(_$hash, diseases.hashCode);
    _$hash = $jc(_$hash, familyAnamnesis.hashCode);
    _$hash = $jc(_$hash, allergies.hashCode);
    _$hash = $jc(_$hash, notesForCustomer.hashCode);
    _$hash = $jc(_$hash, suggestedConsents.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, acceptedAt.hashCode);
    _$hash = $jc(_$hash, isValid.hashCode);
    _$hash = $jc(_$hash, isExpired.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerInvitationDetail')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('birthDate', birthDate)
          ..add('gender', gender)
          ..add('pathologies', pathologies)
          ..add('diseases', diseases)
          ..add('familyAnamnesis', familyAnamnesis)
          ..add('allergies', allergies)
          ..add('notesForCustomer', notesForCustomer)
          ..add('suggestedConsents', suggestedConsents)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('expiresAt', expiresAt)
          ..add('acceptedAt', acceptedAt)
          ..add('isValid', isValid)
          ..add('isExpired', isExpired))
        .toString();
  }
}

class CustomerInvitationDetailBuilder
    implements
        Builder<CustomerInvitationDetail, CustomerInvitationDetailBuilder> {
  _$CustomerInvitationDetail? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  String? _notesForCustomer;
  String? get notesForCustomer => _$this._notesForCustomer;
  set notesForCustomer(String? notesForCustomer) =>
      _$this._notesForCustomer = notesForCustomer;

  MapBuilder<String, Map<String, dynamic>?>? _suggestedConsents;
  MapBuilder<String, Map<String, dynamic>?> get suggestedConsents =>
      _$this._suggestedConsents ??= MapBuilder<String, Map<String, dynamic>?>();
  set suggestedConsents(
          MapBuilder<String, Map<String, dynamic>?>? suggestedConsents) =>
      _$this._suggestedConsents = suggestedConsents;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  DateTime? _acceptedAt;
  DateTime? get acceptedAt => _$this._acceptedAt;
  set acceptedAt(DateTime? acceptedAt) => _$this._acceptedAt = acceptedAt;

  bool? _isValid;
  bool? get isValid => _$this._isValid;
  set isValid(bool? isValid) => _$this._isValid = isValid;

  bool? _isExpired;
  bool? get isExpired => _$this._isExpired;
  set isExpired(bool? isExpired) => _$this._isExpired = isExpired;

  CustomerInvitationDetailBuilder() {
    CustomerInvitationDetail._defaults(this);
  }

  CustomerInvitationDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _birthDate = $v.birthDate;
      _gender = $v.gender;
      _pathologies = $v.pathologies;
      _diseases = $v.diseases;
      _familyAnamnesis = $v.familyAnamnesis;
      _allergies = $v.allergies;
      _notesForCustomer = $v.notesForCustomer;
      _suggestedConsents = $v.suggestedConsents.toBuilder();
      _status = $v.status;
      _createdAt = $v.createdAt;
      _expiresAt = $v.expiresAt;
      _acceptedAt = $v.acceptedAt;
      _isValid = $v.isValid;
      _isExpired = $v.isExpired;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerInvitationDetail other) {
    _$v = other as _$CustomerInvitationDetail;
  }

  @override
  void update(void Function(CustomerInvitationDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerInvitationDetail build() => _build();

  _$CustomerInvitationDetail _build() {
    _$CustomerInvitationDetail _$result;
    try {
      _$result = _$v ??
          _$CustomerInvitationDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CustomerInvitationDetail', 'id'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'CustomerInvitationDetail', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'CustomerInvitationDetail', 'lastName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'CustomerInvitationDetail', 'email'),
            phoneNumber: phoneNumber,
            birthDate: birthDate,
            gender: gender,
            pathologies: pathologies,
            diseases: diseases,
            familyAnamnesis: familyAnamnesis,
            allergies: allergies,
            notesForCustomer: notesForCustomer,
            suggestedConsents: suggestedConsents.build(),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'CustomerInvitationDetail', 'status'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'CustomerInvitationDetail', 'createdAt'),
            expiresAt: BuiltValueNullFieldError.checkNotNull(
                expiresAt, r'CustomerInvitationDetail', 'expiresAt'),
            acceptedAt: acceptedAt,
            isValid: BuiltValueNullFieldError.checkNotNull(
                isValid, r'CustomerInvitationDetail', 'isValid'),
            isExpired: BuiltValueNullFieldError.checkNotNull(
                isExpired, r'CustomerInvitationDetail', 'isExpired'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suggestedConsents';
        suggestedConsents.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerInvitationDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
