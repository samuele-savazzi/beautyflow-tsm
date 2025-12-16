// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorUpdate extends OperatorUpdate {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final int? role;
  @override
  final String? mansion;
  @override
  final String? recoveryEmail;
  @override
  final Date? birthDate;
  @override
  final bool? isActive;
  @override
  final String? attachment;
  @override
  final BuiltList<WorkstationOperatorList>? workstations;
  @override
  final BuiltList<ServiceWithStepsUpdate>? services;
  @override
  final BuiltList<WorkingAreaUpdate>? workingAreas;

  factory _$OperatorUpdate([void Function(OperatorUpdateBuilder)? updates]) =>
      (OperatorUpdateBuilder()..update(updates))._build();

  _$OperatorUpdate._(
      {this.firstName,
      this.lastName,
      this.role,
      this.mansion,
      this.recoveryEmail,
      this.birthDate,
      this.isActive,
      this.attachment,
      this.workstations,
      this.services,
      this.workingAreas})
      : super._();
  @override
  OperatorUpdate rebuild(void Function(OperatorUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorUpdateBuilder toBuilder() => OperatorUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorUpdate &&
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
    return (newBuiltValueToStringHelper(r'OperatorUpdate')
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

class OperatorUpdateBuilder
    implements Builder<OperatorUpdate, OperatorUpdateBuilder> {
  _$OperatorUpdate? _$v;

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

  ListBuilder<ServiceWithStepsUpdate>? _services;
  ListBuilder<ServiceWithStepsUpdate> get services =>
      _$this._services ??= ListBuilder<ServiceWithStepsUpdate>();
  set services(ListBuilder<ServiceWithStepsUpdate>? services) =>
      _$this._services = services;

  ListBuilder<WorkingAreaUpdate>? _workingAreas;
  ListBuilder<WorkingAreaUpdate> get workingAreas =>
      _$this._workingAreas ??= ListBuilder<WorkingAreaUpdate>();
  set workingAreas(ListBuilder<WorkingAreaUpdate>? workingAreas) =>
      _$this._workingAreas = workingAreas;

  OperatorUpdateBuilder() {
    OperatorUpdate._defaults(this);
  }

  OperatorUpdateBuilder get _$this {
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
  void replace(OperatorUpdate other) {
    _$v = other as _$OperatorUpdate;
  }

  @override
  void update(void Function(OperatorUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorUpdate build() => _build();

  _$OperatorUpdate _build() {
    _$OperatorUpdate _$result;
    try {
      _$result = _$v ??
          _$OperatorUpdate._(
            firstName: firstName,
            lastName: lastName,
            role: role,
            mansion: mansion,
            recoveryEmail: recoveryEmail,
            birthDate: birthDate,
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
            r'OperatorUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
