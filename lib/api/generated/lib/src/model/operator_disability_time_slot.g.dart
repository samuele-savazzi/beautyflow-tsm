// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_disability_time_slot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorDisabilityTimeSlot extends OperatorDisabilityTimeSlot {
  @override
  final int id;
  @override
  final PeriodEnum period;
  @override
  final String periodDisplay;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? previousStartTime;
  @override
  final String? previousEndTime;

  factory _$OperatorDisabilityTimeSlot(
          [void Function(OperatorDisabilityTimeSlotBuilder)? updates]) =>
      (OperatorDisabilityTimeSlotBuilder()..update(updates))._build();

  _$OperatorDisabilityTimeSlot._(
      {required this.id,
      required this.period,
      required this.periodDisplay,
      this.startTime,
      this.endTime,
      this.previousStartTime,
      this.previousEndTime})
      : super._();
  @override
  OperatorDisabilityTimeSlot rebuild(
          void Function(OperatorDisabilityTimeSlotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorDisabilityTimeSlotBuilder toBuilder() =>
      OperatorDisabilityTimeSlotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorDisabilityTimeSlot &&
        id == other.id &&
        period == other.period &&
        periodDisplay == other.periodDisplay &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        previousStartTime == other.previousStartTime &&
        previousEndTime == other.previousEndTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, periodDisplay.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, previousStartTime.hashCode);
    _$hash = $jc(_$hash, previousEndTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorDisabilityTimeSlot')
          ..add('id', id)
          ..add('period', period)
          ..add('periodDisplay', periodDisplay)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('previousStartTime', previousStartTime)
          ..add('previousEndTime', previousEndTime))
        .toString();
  }
}

class OperatorDisabilityTimeSlotBuilder
    implements
        Builder<OperatorDisabilityTimeSlot, OperatorDisabilityTimeSlotBuilder> {
  _$OperatorDisabilityTimeSlot? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  PeriodEnum? _period;
  PeriodEnum? get period => _$this._period;
  set period(PeriodEnum? period) => _$this._period = period;

  String? _periodDisplay;
  String? get periodDisplay => _$this._periodDisplay;
  set periodDisplay(String? periodDisplay) =>
      _$this._periodDisplay = periodDisplay;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  String? _previousStartTime;
  String? get previousStartTime => _$this._previousStartTime;
  set previousStartTime(String? previousStartTime) =>
      _$this._previousStartTime = previousStartTime;

  String? _previousEndTime;
  String? get previousEndTime => _$this._previousEndTime;
  set previousEndTime(String? previousEndTime) =>
      _$this._previousEndTime = previousEndTime;

  OperatorDisabilityTimeSlotBuilder() {
    OperatorDisabilityTimeSlot._defaults(this);
  }

  OperatorDisabilityTimeSlotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _period = $v.period;
      _periodDisplay = $v.periodDisplay;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _previousStartTime = $v.previousStartTime;
      _previousEndTime = $v.previousEndTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorDisabilityTimeSlot other) {
    _$v = other as _$OperatorDisabilityTimeSlot;
  }

  @override
  void update(void Function(OperatorDisabilityTimeSlotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorDisabilityTimeSlot build() => _build();

  _$OperatorDisabilityTimeSlot _build() {
    final _$result = _$v ??
        _$OperatorDisabilityTimeSlot._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'OperatorDisabilityTimeSlot', 'id'),
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'OperatorDisabilityTimeSlot', 'period'),
          periodDisplay: BuiltValueNullFieldError.checkNotNull(
              periodDisplay, r'OperatorDisabilityTimeSlot', 'periodDisplay'),
          startTime: startTime,
          endTime: endTime,
          previousStartTime: previousStartTime,
          previousEndTime: previousEndTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
