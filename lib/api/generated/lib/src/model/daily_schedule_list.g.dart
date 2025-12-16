// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyScheduleList extends DailyScheduleList {
  @override
  final int id;
  @override
  final int day;
  @override
  final String dayName;
  @override
  final bool isOpen;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> timeSlots;
  @override
  final ScheduleItem? schedule;

  factory _$DailyScheduleList(
          [void Function(DailyScheduleListBuilder)? updates]) =>
      (DailyScheduleListBuilder()..update(updates))._build();

  _$DailyScheduleList._(
      {required this.id,
      required this.day,
      required this.dayName,
      required this.isOpen,
      required this.timeSlots,
      this.schedule})
      : super._();
  @override
  DailyScheduleList rebuild(void Function(DailyScheduleListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyScheduleListBuilder toBuilder() =>
      DailyScheduleListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyScheduleList &&
        id == other.id &&
        day == other.day &&
        dayName == other.dayName &&
        isOpen == other.isOpen &&
        timeSlots == other.timeSlots &&
        schedule == other.schedule;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, dayName.hashCode);
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyScheduleList')
          ..add('id', id)
          ..add('day', day)
          ..add('dayName', dayName)
          ..add('isOpen', isOpen)
          ..add('timeSlots', timeSlots)
          ..add('schedule', schedule))
        .toString();
  }
}

class DailyScheduleListBuilder
    implements Builder<DailyScheduleList, DailyScheduleListBuilder> {
  _$DailyScheduleList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  String? _dayName;
  String? get dayName => _$this._dayName;
  set dayName(String? dayName) => _$this._dayName = dayName;

  bool? _isOpen;
  bool? get isOpen => _$this._isOpen;
  set isOpen(bool? isOpen) => _$this._isOpen = isOpen;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _timeSlots;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get timeSlots =>
      _$this._timeSlots ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set timeSlots(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  ScheduleItemBuilder? _schedule;
  ScheduleItemBuilder get schedule =>
      _$this._schedule ??= ScheduleItemBuilder();
  set schedule(ScheduleItemBuilder? schedule) => _$this._schedule = schedule;

  DailyScheduleListBuilder() {
    DailyScheduleList._defaults(this);
  }

  DailyScheduleListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _day = $v.day;
      _dayName = $v.dayName;
      _isOpen = $v.isOpen;
      _timeSlots = $v.timeSlots.toBuilder();
      _schedule = $v.schedule?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyScheduleList other) {
    _$v = other as _$DailyScheduleList;
  }

  @override
  void update(void Function(DailyScheduleListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyScheduleList build() => _build();

  _$DailyScheduleList _build() {
    _$DailyScheduleList _$result;
    try {
      _$result = _$v ??
          _$DailyScheduleList._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DailyScheduleList', 'id'),
            day: BuiltValueNullFieldError.checkNotNull(
                day, r'DailyScheduleList', 'day'),
            dayName: BuiltValueNullFieldError.checkNotNull(
                dayName, r'DailyScheduleList', 'dayName'),
            isOpen: BuiltValueNullFieldError.checkNotNull(
                isOpen, r'DailyScheduleList', 'isOpen'),
            timeSlots: timeSlots.build(),
            schedule: _schedule?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
        _$failedField = 'schedule';
        _schedule?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DailyScheduleList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
