// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorCreate extends OperatorCreate {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final int role;
  @override
  final String mansion;
  @override
  final String recoveryEmail;
  @override
  final Date birthDate;
  @override
  final bool? isActive;
  @override
  final String? attachment;
  @override
  final BuiltList<WorkstationOperatorList>? workstations;
  @override
  final BuiltList<OperatorServiceWithSteps>? services;
  @override
  final BuiltList<OperatorAreaWorkingDay>? workingAreas;

  factory _$OperatorCreate([void Function(OperatorCreateBuilder)? updates]) =>
      (OperatorCreateBuilder()..update(updates))._build();

  _$OperatorCreate._(
      {required this.firstName,
      required this.lastName,
      required this.role,
      required this.mansion,
      required this.recoveryEmail,
      required this.birthDate,
      this.isActive,
      this.attachment,
      this.workstations,
      this.services,
      this.workingAreas})
      : super._();
  @override
  OperatorCreate rebuild(void Function(OperatorCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorCreateBuilder toBuilder() => OperatorCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorCreate &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        role == other.role &&
        mansion == other.mansion &&
        recoveryEmail == other.recoveryEmail &&
        birthDate == other.birthDate &&
        isActive == other.isActive &&
        attachment == other.attachment &&
        workstations == other.workstations &&
        services == other.services &&
        workingAreas == other.workingAreas;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, mansion.hashCode);
    _$hash = $jc(_$hash, recoveryEmail.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, attachment.hashCode);
    _$hash = $jc(_$hash, workstations.hashCode);
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jc(_$hash, workingAreas.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorCreate')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('role', role)
          ..add('mansion', mansion)
          ..add('recoveryEmail', recoveryEmail)
          ..add('birthDate', birthDate)
          ..add('isActive', isActive)
          ..add('attachment', attachment)
          ..add('workstations', workstations)
          ..add('services', services)
          ..add('workingAreas', workingAreas))
        .toString();
  }
}

class OperatorCreateBuilder
    implements Builder<OperatorCreate, OperatorCreateBuilder> {
  _$OperatorCreate? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  int? _role;
  int? get role => _$this._role;
  set role(int? role) => _$this._role = role;

  String? _mansion;
  String? get mansion => _$this._mansion;
  set mansion(String? mansion) => _$this._mansion = mansion;

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

  String? _attachment;
  String? get attachment => _$this._attachment;
  set attachment(String? attachment) => _$this._attachment = attachment;

  ListBuilder<WorkstationOperatorList>? _workstations;
  ListBuilder<WorkstationOperatorList> get workstations =>
      _$this._workstations ??= ListBuilder<WorkstationOperatorList>();
  set workstations(ListBuilder<WorkstationOperatorList>? workstations) =>
      _$this._workstations = workstations;

  ListBuilder<OperatorServiceWithSteps>? _services;
  ListBuilder<OperatorServiceWithSteps> get services =>
      _$this._services ??= ListBuilder<OperatorServiceWithSteps>();
  set services(ListBuilder<OperatorServiceWithSteps>? services) =>
      _$this._services = services;

  ListBuilder<OperatorAreaWorkingDay>? _workingAreas;
  ListBuilder<OperatorAreaWorkingDay> get workingAreas =>
      _$this._workingAreas ??= ListBuilder<OperatorAreaWorkingDay>();
  set workingAreas(ListBuilder<OperatorAreaWorkingDay>? workingAreas) =>
      _$this._workingAreas = workingAreas;

  OperatorCreateBuilder() {
    OperatorCreate._defaults(this);
  }

  OperatorCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _role = $v.role;
      _mansion = $v.mansion;
      _recoveryEmail = $v.recoveryEmail;
      _birthDate = $v.birthDate;
      _isActive = $v.isActive;
      _attachment = $v.attachment;
      _workstations = $v.workstations?.toBuilder();
      _services = $v.services?.toBuilder();
      _workingAreas = $v.workingAreas?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorCreate other) {
    _$v = other as _$OperatorCreate;
  }

  @override
  void update(void Function(OperatorCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorCreate build() => _build();

  _$OperatorCreate _build() {
    _$OperatorCreate _$result;
    try {
      _$result = _$v ??
          _$OperatorCreate._(
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'OperatorCreate', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'OperatorCreate', 'lastName'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, r'OperatorCreate', 'role'),
            mansion: BuiltValueNullFieldError.checkNotNull(
                mansion, r'OperatorCreate', 'mansion'),
            recoveryEmail: BuiltValueNullFieldError.checkNotNull(
                recoveryEmail, r'OperatorCreate', 'recoveryEmail'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'OperatorCreate', 'birthDate'),
            isActive: isActive,
            attachment: attachment,
            workstations: _workstations?.build(),
            services: _services?.build(),
            workingAreas: _workingAreas?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workstations';
        _workstations?.build();
        _$failedField = 'services';
        _services?.build();
        _$failedField = 'workingAreas';
        _workingAreas?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
