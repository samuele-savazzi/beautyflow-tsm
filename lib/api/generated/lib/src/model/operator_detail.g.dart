// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorDetail extends OperatorDetail {
  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String role;
  @override
  final String recoveryEmail;
  @override
  final String birthDate;
  @override
  final bool isActive;
  @override
  final bool isDisabled;
  @override
  final String? attachment;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? currentDisability;
  @override
  final BuiltList<int> workstations;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> services;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> workingAreas;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> schedules;

  factory _$OperatorDetail([void Function(OperatorDetailBuilder)? updates]) =>
      (OperatorDetailBuilder()..update(updates))._build();

  _$OperatorDetail._(
      {required this.id,
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
      required this.workingAreas,
      required this.schedules})
      : super._();
  @override
  OperatorDetail rebuild(void Function(OperatorDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorDetailBuilder toBuilder() => OperatorDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorDetail &&
        id == other.id &&
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
        workingAreas == other.workingAreas &&
        schedules == other.schedules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
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
    _$hash = $jc(_$hash, schedules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorDetail')
          ..add('id', id)
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
          ..add('workingAreas', workingAreas)
          ..add('schedules', schedules))
        .toString();
  }
}

class OperatorDetailBuilder
    implements Builder<OperatorDetail, OperatorDetailBuilder> {
  _$OperatorDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  String? _birthDate;
  String? get birthDate => _$this._birthDate;
  set birthDate(String? birthDate) => _$this._birthDate = birthDate;

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

  ListBuilder<int>? _workstations;
  ListBuilder<int> get workstations =>
      _$this._workstations ??= ListBuilder<int>();
  set workstations(ListBuilder<int>? workstations) =>
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

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _schedules;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get schedules =>
      _$this._schedules ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set schedules(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? schedules) =>
      _$this._schedules = schedules;

  OperatorDetailBuilder() {
    OperatorDetail._defaults(this);
  }

  OperatorDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
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
      _schedules = $v.schedules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorDetail other) {
    _$v = other as _$OperatorDetail;
  }

  @override
  void update(void Function(OperatorDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorDetail build() => _build();

  _$OperatorDetail _build() {
    _$OperatorDetail _$result;
    try {
      _$result = _$v ??
          _$OperatorDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'OperatorDetail', 'id'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'OperatorDetail', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'OperatorDetail', 'lastName'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, r'OperatorDetail', 'role'),
            recoveryEmail: BuiltValueNullFieldError.checkNotNull(
                recoveryEmail, r'OperatorDetail', 'recoveryEmail'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'OperatorDetail', 'birthDate'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'OperatorDetail', 'isActive'),
            isDisabled: BuiltValueNullFieldError.checkNotNull(
                isDisabled, r'OperatorDetail', 'isDisabled'),
            attachment: attachment,
            currentDisability: _currentDisability?.build(),
            workstations: workstations.build(),
            services: services.build(),
            workingAreas: workingAreas.build(),
            schedules: schedules.build(),
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
        _$failedField = 'schedules';
        schedules.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
