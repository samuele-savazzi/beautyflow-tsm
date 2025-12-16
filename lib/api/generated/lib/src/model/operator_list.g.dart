// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorList extends OperatorList {
  @override
  final int id;
  @override
  final int userId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String role;
  @override
  final String recoveryEmail;
  @override
  final Date birthDate;
  @override
  final bool isActive;
  @override
  final bool isDisabled;
  @override
  final String? attachment;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? currentDisability;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> workstations;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> services;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> workingAreas;

  factory _$OperatorList([void Function(OperatorListBuilder)? updates]) =>
      (OperatorListBuilder()..update(updates))._build();

  _$OperatorList._(
      {required this.id,
      required this.userId,
      required this.firstName,
      required this.lastName,
      required this.role,
      required this.recoveryEmail,
      required this.birthDate,
      required this.isActive,
      required this.isDisabled,
      this.attachment,
      this.currentDisability,
      required this.workstations,
      required this.services,
      required this.workingAreas})
      : super._();
  @override
  OperatorList rebuild(void Function(OperatorListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorListBuilder toBuilder() => OperatorListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorList &&
        id == other.id &&
        userId == other.userId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        role == other.role &&
        recoveryEmail == other.recoveryEmail &&
        birthDate == other.birthDate &&
        isActive == other.isActive &&
        isDisabled == other.isDisabled &&
        attachment == other.attachment &&
        currentDisability == other.currentDisability &&
        workstations == other.workstations &&
        services == other.services &&
        workingAreas == other.workingAreas;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, recoveryEmail.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, isDisabled.hashCode);
    _$hash = $jc(_$hash, attachment.hashCode);
    _$hash = $jc(_$hash, currentDisability.hashCode);
    _$hash = $jc(_$hash, workstations.hashCode);
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jc(_$hash, workingAreas.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorList')
          ..add('id', id)
          ..add('userId', userId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('role', role)
          ..add('recoveryEmail', recoveryEmail)
          ..add('birthDate', birthDate)
          ..add('isActive', isActive)
          ..add('isDisabled', isDisabled)
          ..add('attachment', attachment)
          ..add('currentDisability', currentDisability)
          ..add('workstations', workstations)
          ..add('services', services)
          ..add('workingAreas', workingAreas))
        .toString();
  }
}

class OperatorListBuilder
    implements Builder<OperatorList, OperatorListBuilder> {
  _$OperatorList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _recoveryEmail;
  String? get recoveryEmail => _$this._recoveryEmail;
  set recoveryEmail(String? recoveryEmail) =>
      _$this._recoveryEmail = recoveryEmail;

  Date? _birthDate;
  Date? get birthDate => _$this._birthDate;
  set birthDate(Date? birthDate) => _$this._birthDate = birthDate;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isDisabled;
  bool? get isDisabled => _$this._isDisabled;
  set isDisabled(bool? isDisabled) => _$this._isDisabled = isDisabled;

  String? _attachment;
  String? get attachment => _$this._attachment;
  set attachment(String? attachment) => _$this._attachment = attachment;

  MapBuilder<String, Map<String, dynamic>?>? _currentDisability;
  MapBuilder<String, Map<String, dynamic>?> get currentDisability =>
      _$this._currentDisability ??= MapBuilder<String, Map<String, dynamic>?>();
  set currentDisability(
          MapBuilder<String, Map<String, dynamic>?>? currentDisability) =>
      _$this._currentDisability = currentDisability;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _workstations;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get workstations =>
      _$this._workstations ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set workstations(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? workstations) =>
      _$this._workstations = workstations;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _services;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get services =>
      _$this._services ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set services(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? services) =>
      _$this._services = services;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _workingAreas;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get workingAreas =>
      _$this._workingAreas ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set workingAreas(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? workingAreas) =>
      _$this._workingAreas = workingAreas;

  OperatorListBuilder() {
    OperatorList._defaults(this);
  }

  OperatorListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _role = $v.role;
      _recoveryEmail = $v.recoveryEmail;
      _birthDate = $v.birthDate;
      _isActive = $v.isActive;
      _isDisabled = $v.isDisabled;
      _attachment = $v.attachment;
      _currentDisability = $v.currentDisability?.toBuilder();
      _workstations = $v.workstations.toBuilder();
      _services = $v.services.toBuilder();
      _workingAreas = $v.workingAreas.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorList other) {
    _$v = other as _$OperatorList;
  }

  @override
  void update(void Function(OperatorListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorList build() => _build();

  _$OperatorList _build() {
    _$OperatorList _$result;
    try {
      _$result = _$v ??
          _$OperatorList._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'OperatorList', 'id'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'OperatorList', 'userId'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'OperatorList', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'OperatorList', 'lastName'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, r'OperatorList', 'role'),
            recoveryEmail: BuiltValueNullFieldError.checkNotNull(
                recoveryEmail, r'OperatorList', 'recoveryEmail'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'OperatorList', 'birthDate'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'OperatorList', 'isActive'),
            isDisabled: BuiltValueNullFieldError.checkNotNull(
                isDisabled, r'OperatorList', 'isDisabled'),
            attachment: attachment,
            currentDisability: _currentDisability?.build(),
            workstations: workstations.build(),
            services: services.build(),
            workingAreas: workingAreas.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentDisability';
        _currentDisability?.build();
        _$failedField = 'workstations';
        workstations.build();
        _$failedField = 'services';
        services.build();
        _$failedField = 'workingAreas';
        workingAreas.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
