// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorSchedule extends OperatorSchedule {
  @override
  final int operatorId;
  @override
  final bool? morningWorking;
  @override
  final String? morningStartTime;
  @override
  final String? morningEndTime;
  @override
  final bool? afternoonWorking;
  @override
  final String? afternoonStartTime;
  @override
  final String? afternoonEndTime;
  @override
  final bool? ignoreMorning;
  @override
  final bool? ignoreAfternoon;
  @override
  final String? notes;

  factory _$OperatorSchedule(
          [void Function(OperatorScheduleBuilder)? updates]) =>
      (OperatorScheduleBuilder()..update(updates))._build();

  _$OperatorSchedule._(
      {required this.operatorId,
      this.morningWorking,
      this.morningStartTime,
      this.morningEndTime,
      this.afternoonWorking,
      this.afternoonStartTime,
      this.afternoonEndTime,
      this.ignoreMorning,
      this.ignoreAfternoon,
      this.notes})
      : super._();
  @override
  OperatorSchedule rebuild(void Function(OperatorScheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorScheduleBuilder toBuilder() =>
      OperatorScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorSchedule &&
        operatorId == other.operatorId &&
        morningWorking == other.morningWorking &&
        morningStartTime == other.morningStartTime &&
        morningEndTime == other.morningEndTime &&
        afternoonWorking == other.afternoonWorking &&
        afternoonStartTime == other.afternoonStartTime &&
        afternoonEndTime == other.afternoonEndTime &&
        ignoreMorning == other.ignoreMorning &&
        ignoreAfternoon == other.ignoreAfternoon &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, morningWorking.hashCode);
    _$hash = $jc(_$hash, morningStartTime.hashCode);
    _$hash = $jc(_$hash, morningEndTime.hashCode);
    _$hash = $jc(_$hash, afternoonWorking.hashCode);
    _$hash = $jc(_$hash, afternoonStartTime.hashCode);
    _$hash = $jc(_$hash, afternoonEndTime.hashCode);
    _$hash = $jc(_$hash, ignoreMorning.hashCode);
    _$hash = $jc(_$hash, ignoreAfternoon.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorSchedule')
          ..add('operatorId', operatorId)
          ..add('morningWorking', morningWorking)
          ..add('morningStartTime', morningStartTime)
          ..add('morningEndTime', morningEndTime)
          ..add('afternoonWorking', afternoonWorking)
          ..add('afternoonStartTime', afternoonStartTime)
          ..add('afternoonEndTime', afternoonEndTime)
          ..add('ignoreMorning', ignoreMorning)
          ..add('ignoreAfternoon', ignoreAfternoon)
          ..add('notes', notes))
        .toString();
  }
}

class OperatorScheduleBuilder
    implements Builder<OperatorSchedule, OperatorScheduleBuilder> {
  _$OperatorSchedule? _$v;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  bool? _morningWorking;
  bool? get morningWorking => _$this._morningWorking;
  set morningWorking(bool? morningWorking) =>
      _$this._morningWorking = morningWorking;

  String? _morningStartTime;
  String? get morningStartTime => _$this._morningStartTime;
  set morningStartTime(String? morningStartTime) =>
      _$this._morningStartTime = morningStartTime;

  String? _morningEndTime;
  String? get morningEndTime => _$this._morningEndTime;
  set morningEndTime(String? morningEndTime) =>
      _$this._morningEndTime = morningEndTime;

  bool? _afternoonWorking;
  bool? get afternoonWorking => _$this._afternoonWorking;
  set afternoonWorking(bool? afternoonWorking) =>
      _$this._afternoonWorking = afternoonWorking;

  String? _afternoonStartTime;
  String? get afternoonStartTime => _$this._afternoonStartTime;
  set afternoonStartTime(String? afternoonStartTime) =>
      _$this._afternoonStartTime = afternoonStartTime;

  String? _afternoonEndTime;
  String? get afternoonEndTime => _$this._afternoonEndTime;
  set afternoonEndTime(String? afternoonEndTime) =>
      _$this._afternoonEndTime = afternoonEndTime;

  bool? _ignoreMorning;
  bool? get ignoreMorning => _$this._ignoreMorning;
  set ignoreMorning(bool? ignoreMorning) =>
      _$this._ignoreMorning = ignoreMorning;

  bool? _ignoreAfternoon;
  bool? get ignoreAfternoon => _$this._ignoreAfternoon;
  set ignoreAfternoon(bool? ignoreAfternoon) =>
      _$this._ignoreAfternoon = ignoreAfternoon;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  OperatorScheduleBuilder() {
    OperatorSchedule._defaults(this);
  }

  OperatorScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatorId = $v.operatorId;
      _morningWorking = $v.morningWorking;
      _morningStartTime = $v.morningStartTime;
      _morningEndTime = $v.morningEndTime;
      _afternoonWorking = $v.afternoonWorking;
      _afternoonStartTime = $v.afternoonStartTime;
      _afternoonEndTime = $v.afternoonEndTime;
      _ignoreMorning = $v.ignoreMorning;
      _ignoreAfternoon = $v.ignoreAfternoon;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorSchedule other) {
    _$v = other as _$OperatorSchedule;
  }

  @override
  void update(void Function(OperatorScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorSchedule build() => _build();

  _$OperatorSchedule _build() {
    final _$result = _$v ??
        _$OperatorSchedule._(
          operatorId: BuiltValueNullFieldError.checkNotNull(
              operatorId, r'OperatorSchedule', 'operatorId'),
          morningWorking: morningWorking,
          morningStartTime: morningStartTime,
          morningEndTime: morningEndTime,
          afternoonWorking: afternoonWorking,
          afternoonStartTime: afternoonStartTime,
          afternoonEndTime: afternoonEndTime,
          ignoreMorning: ignoreMorning,
          ignoreAfternoon: ignoreAfternoon,
          notes: notes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
