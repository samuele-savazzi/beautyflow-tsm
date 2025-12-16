// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_invitation_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerInvitationCreateRequest
    extends CustomerInvitationCreateRequest {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final Date? birthDate;
  @override
  final Gender63eEnum? gender;
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
  final BuiltMap<String, Map<String, dynamic>?>? suggestedConsents;

  factory _$CustomerInvitationCreateRequest(
          [void Function(CustomerInvitationCreateRequestBuilder)? updates]) =>
      (CustomerInvitationCreateRequestBuilder()..update(updates))._build();

  _$CustomerInvitationCreateRequest._(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.phoneNumber,
      this.birthDate,
      this.gender,
      this.pathologies,
      this.diseases,
      this.familyAnamnesis,
      this.allergies,
      this.notesForCustomer,
      this.suggestedConsents})
      : super._();
  @override
  CustomerInvitationCreateRequest rebuild(
          void Function(CustomerInvitationCreateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerInvitationCreateRequestBuilder toBuilder() =>
      CustomerInvitationCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerInvitationCreateRequest &&
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
        suggestedConsents == other.suggestedConsents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerInvitationCreateRequest')
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
          ..add('suggestedConsents', suggestedConsents))
        .toString();
  }
}

class CustomerInvitationCreateRequestBuilder
    implements
        Builder<CustomerInvitationCreateRequest,
            CustomerInvitationCreateRequestBuilder> {
  _$CustomerInvitationCreateRequest? _$v;

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

  Gender63eEnum? _gender;
  Gender63eEnum? get gender => _$this._gender;
  set gender(Gender63eEnum? gender) => _$this._gender = gender;

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

  CustomerInvitationCreateRequestBuilder() {
    CustomerInvitationCreateRequest._defaults(this);
  }

  CustomerInvitationCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
      _suggestedConsents = $v.suggestedConsents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerInvitationCreateRequest other) {
    _$v = other as _$CustomerInvitationCreateRequest;
  }

  @override
  void update(void Function(CustomerInvitationCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerInvitationCreateRequest build() => _build();

  _$CustomerInvitationCreateRequest _build() {
    _$CustomerInvitationCreateRequest _$result;
    try {
      _$result = _$v ??
          _$CustomerInvitationCreateRequest._(
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'CustomerInvitationCreateRequest', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'CustomerInvitationCreateRequest', 'lastName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'CustomerInvitationCreateRequest', 'email'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, r'CustomerInvitationCreateRequest', 'phoneNumber'),
            birthDate: birthDate,
            gender: gender,
            pathologies: pathologies,
            diseases: diseases,
            familyAnamnesis: familyAnamnesis,
            allergies: allergies,
            notesForCustomer: notesForCustomer,
            suggestedConsents: _suggestedConsents?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suggestedConsents';
        _suggestedConsents?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerInvitationCreateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
