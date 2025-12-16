// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_day_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkingDayCreate extends WorkingDayCreate {
  @override
  final int dayNumber;
  @override
  final MorningScheduleCreate morning;
  @override
  final AfternoonScheduleCreate afternoon;

  factory _$WorkingDayCreate(
          [void Function(WorkingDayCreateBuilder)? updates]) =>
      (WorkingDayCreateBuilder()..update(updates))._build();

  _$WorkingDayCreate._(
      {required this.dayNumber, required this.morning, required this.afternoon})
      : super._();
  @override
  WorkingDayCreate rebuild(void Function(WorkingDayCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkingDayCreateBuilder toBuilder() =>
      WorkingDayCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkingDayCreate &&
        dayNumber == other.dayNumber &&
        morning == other.morning &&
        afternoon == other.afternoon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dayNumber.hashCode);
    _$hash = $jc(_$hash, morning.hashCode);
    _$hash = $jc(_$hash, afternoon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkingDayCreate')
          ..add('dayNumber', dayNumber)
          ..add('morning', morning)
          ..add('afternoon', afternoon))
        .toString();
  }
}

class WorkingDayCreateBuilder
    implements Builder<WorkingDayCreate, WorkingDayCreateBuilder> {
  _$WorkingDayCreate? _$v;

  int? _dayNumber;
  int? get dayNumber => _$this._dayNumber;
  set dayNumber(int? dayNumber) => _$this._dayNumber = dayNumber;

  MorningScheduleCreateBuilder? _morning;
  MorningScheduleCreateBuilder get morning =>
      _$this._morning ??= MorningScheduleCreateBuilder();
  set morning(MorningScheduleCreateBuilder? morning) =>
      _$this._morning = morning;

  AfternoonScheduleCreateBuilder? _afternoon;
  AfternoonScheduleCreateBuilder get afternoon =>
      _$this._afternoon ??= AfternoonScheduleCreateBuilder();
  set afternoon(AfternoonScheduleCreateBuilder? afternoon) =>
      _$this._afternoon = afternoon;

  WorkingDayCreateBuilder() {
    WorkingDayCreate._defaults(this);
  }

  WorkingDayCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dayNumber = $v.dayNumber;
      _morning = $v.morning.toBuilder();
      _afternoon = $v.afternoon.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkingDayCreate other) {
    _$v = other as _$WorkingDayCreate;
  }

  @override
  void update(void Function(WorkingDayCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkingDayCreate build() => _build();

  _$WorkingDayCreate _build() {
    _$WorkingDayCreate _$result;
    try {
      _$result = _$v ??
          _$WorkingDayCreate._(
            dayNumber: BuiltValueNullFieldError.checkNotNull(
                dayNumber, r'WorkingDayCreate', 'dayNumber'),
            morning: morning.build(),
            afternoon: afternoon.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'morning';
        morning.build();
        _$failedField = 'afternoon';
        afternoon.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkingDayCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
