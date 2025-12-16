// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduleItem extends ScheduleItem {
  @override
  final int id;
  @override
  final String effectiveFrom;
  @override
  final int day;
  @override
  final String dayName;
  @override
  final bool isOpen;
  @override
  final BuiltList<Timeslotsschedule> timeSlots;

  factory _$ScheduleItem([void Function(ScheduleItemBuilder)? updates]) =>
      (ScheduleItemBuilder()..update(updates))._build();

  _$ScheduleItem._(
      {required this.id,
      required this.effectiveFrom,
      required this.day,
      required this.dayName,
      required this.isOpen,
      required this.timeSlots})
      : super._();
  @override
  ScheduleItem rebuild(void Function(ScheduleItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleItemBuilder toBuilder() => ScheduleItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleItem &&
        id == other.id &&
        effectiveFrom == other.effectiveFrom &&
        day == other.day &&
        dayName == other.dayName &&
        isOpen == other.isOpen &&
        timeSlots == other.timeSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, effectiveFrom.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, dayName.hashCode);
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduleItem')
          ..add('id', id)
          ..add('effectiveFrom', effectiveFrom)
          ..add('day', day)
          ..add('dayName', dayName)
          ..add('isOpen', isOpen)
          ..add('timeSlots', timeSlots))
        .toString();
  }
}

class ScheduleItemBuilder
    implements Builder<ScheduleItem, ScheduleItemBuilder> {
  _$ScheduleItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _effectiveFrom;
  String? get effectiveFrom => _$this._effectiveFrom;
  set effectiveFrom(String? effectiveFrom) =>
      _$this._effectiveFrom = effectiveFrom;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  String? _dayName;
  String? get dayName => _$this._dayName;
  set dayName(String? dayName) => _$this._dayName = dayName;

  bool? _isOpen;
  bool? get isOpen => _$this._isOpen;
  set isOpen(bool? isOpen) => _$this._isOpen = isOpen;

  ListBuilder<Timeslotsschedule>? _timeSlots;
  ListBuilder<Timeslotsschedule> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<Timeslotsschedule>();
  set timeSlots(ListBuilder<Timeslotsschedule>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  ScheduleItemBuilder() {
    ScheduleItem._defaults(this);
  }

  ScheduleItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _effectiveFrom = $v.effectiveFrom;
      _day = $v.day;
      _dayName = $v.dayName;
      _isOpen = $v.isOpen;
      _timeSlots = $v.timeSlots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleItem other) {
    _$v = other as _$ScheduleItem;
  }

  @override
  void update(void Function(ScheduleItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduleItem build() => _build();

  _$ScheduleItem _build() {
    _$ScheduleItem _$result;
    try {
      _$result = _$v ??
          _$ScheduleItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ScheduleItem', 'id'),
            effectiveFrom: BuiltValueNullFieldError.checkNotNull(
                effectiveFrom, r'ScheduleItem', 'effectiveFrom'),
            day: BuiltValueNullFieldError.checkNotNull(
                day, r'ScheduleItem', 'day'),
            dayName: BuiltValueNullFieldError.checkNotNull(
                dayName, r'ScheduleItem', 'dayName'),
            isOpen: BuiltValueNullFieldError.checkNotNull(
                isOpen, r'ScheduleItem', 'isOpen'),
            timeSlots: timeSlots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ScheduleItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
