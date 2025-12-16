// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduleUpdate extends ScheduleUpdate {
  @override
  final int? id;
  @override
  final int dayId;
  @override
  final bool isOpen;
  @override
  final BuiltList<TimeSlotUpdate> timeSlots;

  factory _$ScheduleUpdate([void Function(ScheduleUpdateBuilder)? updates]) =>
      (ScheduleUpdateBuilder()..update(updates))._build();

  _$ScheduleUpdate._(
      {this.id,
      required this.dayId,
      required this.isOpen,
      required this.timeSlots})
      : super._();
  @override
  ScheduleUpdate rebuild(void Function(ScheduleUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleUpdateBuilder toBuilder() => ScheduleUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleUpdate &&
        id == other.id &&
        dayId == other.dayId &&
        isOpen == other.isOpen &&
        timeSlots == other.timeSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, dayId.hashCode);
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduleUpdate')
          ..add('id', id)
          ..add('dayId', dayId)
          ..add('isOpen', isOpen)
          ..add('timeSlots', timeSlots))
        .toString();
  }
}

class ScheduleUpdateBuilder
    implements Builder<ScheduleUpdate, ScheduleUpdateBuilder> {
  _$ScheduleUpdate? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _dayId;
  int? get dayId => _$this._dayId;
  set dayId(int? dayId) => _$this._dayId = dayId;

  bool? _isOpen;
  bool? get isOpen => _$this._isOpen;
  set isOpen(bool? isOpen) => _$this._isOpen = isOpen;

  ListBuilder<TimeSlotUpdate>? _timeSlots;
  ListBuilder<TimeSlotUpdate> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<TimeSlotUpdate>();
  set timeSlots(ListBuilder<TimeSlotUpdate>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  ScheduleUpdateBuilder() {
    ScheduleUpdate._defaults(this);
  }

  ScheduleUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _dayId = $v.dayId;
      _isOpen = $v.isOpen;
      _timeSlots = $v.timeSlots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleUpdate other) {
    _$v = other as _$ScheduleUpdate;
  }

  @override
  void update(void Function(ScheduleUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduleUpdate build() => _build();

  _$ScheduleUpdate _build() {
    _$ScheduleUpdate _$result;
    try {
      _$result = _$v ??
          _$ScheduleUpdate._(
            id: id,
            dayId: BuiltValueNullFieldError.checkNotNull(
                dayId, r'ScheduleUpdate', 'dayId'),
            isOpen: BuiltValueNullFieldError.checkNotNull(
                isOpen, r'ScheduleUpdate', 'isOpen'),
            timeSlots: timeSlots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ScheduleUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
