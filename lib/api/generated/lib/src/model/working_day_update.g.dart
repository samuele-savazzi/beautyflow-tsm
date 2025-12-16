// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_day_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkingDayUpdate extends WorkingDayUpdate {
  @override
  final int dayNumber;
  @override
  final MorningScheduleUpdate morning;
  @override
  final AfternoonScheduleUpdate afternoon;

  factory _$WorkingDayUpdate(
          [void Function(WorkingDayUpdateBuilder)? updates]) =>
      (WorkingDayUpdateBuilder()..update(updates))._build();

  _$WorkingDayUpdate._(
      {required this.dayNumber, required this.morning, required this.afternoon})
      : super._();
  @override
  WorkingDayUpdate rebuild(void Function(WorkingDayUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkingDayUpdateBuilder toBuilder() =>
      WorkingDayUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkingDayUpdate &&
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
    return (newBuiltValueToStringHelper(r'WorkingDayUpdate')
          ..add('dayNumber', dayNumber)
          ..add('morning', morning)
          ..add('afternoon', afternoon))
        .toString();
  }
}

class WorkingDayUpdateBuilder
    implements Builder<WorkingDayUpdate, WorkingDayUpdateBuilder> {
  _$WorkingDayUpdate? _$v;

  int? _dayNumber;
  int? get dayNumber => _$this._dayNumber;
  set dayNumber(int? dayNumber) => _$this._dayNumber = dayNumber;

  MorningScheduleUpdateBuilder? _morning;
  MorningScheduleUpdateBuilder get morning =>
      _$this._morning ??= MorningScheduleUpdateBuilder();
  set morning(MorningScheduleUpdateBuilder? morning) =>
      _$this._morning = morning;

  AfternoonScheduleUpdateBuilder? _afternoon;
  AfternoonScheduleUpdateBuilder get afternoon =>
      _$this._afternoon ??= AfternoonScheduleUpdateBuilder();
  set afternoon(AfternoonScheduleUpdateBuilder? afternoon) =>
      _$this._afternoon = afternoon;

  WorkingDayUpdateBuilder() {
    WorkingDayUpdate._defaults(this);
  }

  WorkingDayUpdateBuilder get _$this {
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
  void replace(WorkingDayUpdate other) {
    _$v = other as _$WorkingDayUpdate;
  }

  @override
  void update(void Function(WorkingDayUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkingDayUpdate build() => _build();

  _$WorkingDayUpdate _build() {
    _$WorkingDayUpdate _$result;
    try {
      _$result = _$v ??
          _$WorkingDayUpdate._(
            dayNumber: BuiltValueNullFieldError.checkNotNull(
                dayNumber, r'WorkingDayUpdate', 'dayNumber'),
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
            r'WorkingDayUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
