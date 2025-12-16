// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_day.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkingDay extends WorkingDay {
  @override
  final String date;
  @override
  final int dayOfWeek;
  @override
  final String dayName;
  @override
  final String areaStatus;
  @override
  final bool morningOpen;
  @override
  final bool afternoonOpen;
  @override
  final BuiltList<OperatorDayStatus> operators;
  @override
  final BuiltList<DisabledWorkstation> disabledWorkstations;

  factory _$WorkingDay([void Function(WorkingDayBuilder)? updates]) =>
      (WorkingDayBuilder()..update(updates))._build();

  _$WorkingDay._(
      {required this.date,
      required this.dayOfWeek,
      required this.dayName,
      required this.areaStatus,
      required this.morningOpen,
      required this.afternoonOpen,
      required this.operators,
      required this.disabledWorkstations})
      : super._();
  @override
  WorkingDay rebuild(void Function(WorkingDayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkingDayBuilder toBuilder() => WorkingDayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkingDay &&
        date == other.date &&
        dayOfWeek == other.dayOfWeek &&
        dayName == other.dayName &&
        areaStatus == other.areaStatus &&
        morningOpen == other.morningOpen &&
        afternoonOpen == other.afternoonOpen &&
        operators == other.operators &&
        disabledWorkstations == other.disabledWorkstations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jc(_$hash, dayName.hashCode);
    _$hash = $jc(_$hash, areaStatus.hashCode);
    _$hash = $jc(_$hash, morningOpen.hashCode);
    _$hash = $jc(_$hash, afternoonOpen.hashCode);
    _$hash = $jc(_$hash, operators.hashCode);
    _$hash = $jc(_$hash, disabledWorkstations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkingDay')
          ..add('date', date)
          ..add('dayOfWeek', dayOfWeek)
          ..add('dayName', dayName)
          ..add('areaStatus', areaStatus)
          ..add('morningOpen', morningOpen)
          ..add('afternoonOpen', afternoonOpen)
          ..add('operators', operators)
          ..add('disabledWorkstations', disabledWorkstations))
        .toString();
  }
}

class WorkingDayBuilder implements Builder<WorkingDay, WorkingDayBuilder> {
  _$WorkingDay? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  int? _dayOfWeek;
  int? get dayOfWeek => _$this._dayOfWeek;
  set dayOfWeek(int? dayOfWeek) => _$this._dayOfWeek = dayOfWeek;

  String? _dayName;
  String? get dayName => _$this._dayName;
  set dayName(String? dayName) => _$this._dayName = dayName;

  String? _areaStatus;
  String? get areaStatus => _$this._areaStatus;
  set areaStatus(String? areaStatus) => _$this._areaStatus = areaStatus;

  bool? _morningOpen;
  bool? get morningOpen => _$this._morningOpen;
  set morningOpen(bool? morningOpen) => _$this._morningOpen = morningOpen;

  bool? _afternoonOpen;
  bool? get afternoonOpen => _$this._afternoonOpen;
  set afternoonOpen(bool? afternoonOpen) =>
      _$this._afternoonOpen = afternoonOpen;

  ListBuilder<OperatorDayStatus>? _operators;
  ListBuilder<OperatorDayStatus> get operators =>
      _$this._operators ??= ListBuilder<OperatorDayStatus>();
  set operators(ListBuilder<OperatorDayStatus>? operators) =>
      _$this._operators = operators;

  ListBuilder<DisabledWorkstation>? _disabledWorkstations;
  ListBuilder<DisabledWorkstation> get disabledWorkstations =>
      _$this._disabledWorkstations ??= ListBuilder<DisabledWorkstation>();
  set disabledWorkstations(
          ListBuilder<DisabledWorkstation>? disabledWorkstations) =>
      _$this._disabledWorkstations = disabledWorkstations;

  WorkingDayBuilder() {
    WorkingDay._defaults(this);
  }

  WorkingDayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _dayOfWeek = $v.dayOfWeek;
      _dayName = $v.dayName;
      _areaStatus = $v.areaStatus;
      _morningOpen = $v.morningOpen;
      _afternoonOpen = $v.afternoonOpen;
      _operators = $v.operators.toBuilder();
      _disabledWorkstations = $v.disabledWorkstations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkingDay other) {
    _$v = other as _$WorkingDay;
  }

  @override
  void update(void Function(WorkingDayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkingDay build() => _build();

  _$WorkingDay _build() {
    _$WorkingDay _$result;
    try {
      _$result = _$v ??
          _$WorkingDay._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'WorkingDay', 'date'),
            dayOfWeek: BuiltValueNullFieldError.checkNotNull(
                dayOfWeek, r'WorkingDay', 'dayOfWeek'),
            dayName: BuiltValueNullFieldError.checkNotNull(
                dayName, r'WorkingDay', 'dayName'),
            areaStatus: BuiltValueNullFieldError.checkNotNull(
                areaStatus, r'WorkingDay', 'areaStatus'),
            morningOpen: BuiltValueNullFieldError.checkNotNull(
                morningOpen, r'WorkingDay', 'morningOpen'),
            afternoonOpen: BuiltValueNullFieldError.checkNotNull(
                afternoonOpen, r'WorkingDay', 'afternoonOpen'),
            operators: operators.build(),
            disabledWorkstations: disabledWorkstations.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operators';
        operators.build();
        _$failedField = 'disabledWorkstations';
        disabledWorkstations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkingDay', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
