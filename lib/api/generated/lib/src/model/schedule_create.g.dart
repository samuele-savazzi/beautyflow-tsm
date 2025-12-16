// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduleCreate extends ScheduleCreate {
  @override
  final int dayId;
  @override
  final bool isOpen;
  @override
  final BuiltList<TimeSlotCreate> timeSlots;

  factory _$ScheduleCreate([void Function(ScheduleCreateBuilder)? updates]) =>
      (ScheduleCreateBuilder()..update(updates))._build();

  _$ScheduleCreate._(
      {required this.dayId, required this.isOpen, required this.timeSlots})
      : super._();
  @override
  ScheduleCreate rebuild(void Function(ScheduleCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleCreateBuilder toBuilder() => ScheduleCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleCreate &&
        dayId == other.dayId &&
        isOpen == other.isOpen &&
        timeSlots == other.timeSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dayId.hashCode);
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduleCreate')
          ..add('dayId', dayId)
          ..add('isOpen', isOpen)
          ..add('timeSlots', timeSlots))
        .toString();
  }
}

class ScheduleCreateBuilder
    implements Builder<ScheduleCreate, ScheduleCreateBuilder> {
  _$ScheduleCreate? _$v;

  int? _dayId;
  int? get dayId => _$this._dayId;
  set dayId(int? dayId) => _$this._dayId = dayId;

  bool? _isOpen;
  bool? get isOpen => _$this._isOpen;
  set isOpen(bool? isOpen) => _$this._isOpen = isOpen;

  ListBuilder<TimeSlotCreate>? _timeSlots;
  ListBuilder<TimeSlotCreate> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<TimeSlotCreate>();
  set timeSlots(ListBuilder<TimeSlotCreate>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  ScheduleCreateBuilder() {
    ScheduleCreate._defaults(this);
  }

  ScheduleCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dayId = $v.dayId;
      _isOpen = $v.isOpen;
      _timeSlots = $v.timeSlots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleCreate other) {
    _$v = other as _$ScheduleCreate;
  }

  @override
  void update(void Function(ScheduleCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduleCreate build() => _build();

  _$ScheduleCreate _build() {
    _$ScheduleCreate _$result;
    try {
      _$result = _$v ??
          _$ScheduleCreate._(
            dayId: BuiltValueNullFieldError.checkNotNull(
                dayId, r'ScheduleCreate', 'dayId'),
            isOpen: BuiltValueNullFieldError.checkNotNull(
                isOpen, r'ScheduleCreate', 'isOpen'),
            timeSlots: timeSlots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ScheduleCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
