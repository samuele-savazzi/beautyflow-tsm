// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_time_slot_correction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorTimeSlotCorrection extends OperatorTimeSlotCorrection {
  @override
  final int id;
  @override
  final int dayOfWeek;
  @override
  final String dayName;
  @override
  final PeriodEnum period;
  @override
  final String periodDisplay;
  @override
  final bool isWorking;
  @override
  final String? startTime;
  @override
  final String? endTime;

  factory _$OperatorTimeSlotCorrection(
          [void Function(OperatorTimeSlotCorrectionBuilder)? updates]) =>
      (OperatorTimeSlotCorrectionBuilder()..update(updates))._build();

  _$OperatorTimeSlotCorrection._(
      {required this.id,
      required this.dayOfWeek,
      required this.dayName,
      required this.period,
      required this.periodDisplay,
      required this.isWorking,
      this.startTime,
      this.endTime})
      : super._();
  @override
  OperatorTimeSlotCorrection rebuild(
          void Function(OperatorTimeSlotCorrectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorTimeSlotCorrectionBuilder toBuilder() =>
      OperatorTimeSlotCorrectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorTimeSlotCorrection &&
        id == other.id &&
        dayOfWeek == other.dayOfWeek &&
        dayName == other.dayName &&
        period == other.period &&
        periodDisplay == other.periodDisplay &&
        isWorking == other.isWorking &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jc(_$hash, dayName.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, periodDisplay.hashCode);
    _$hash = $jc(_$hash, isWorking.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorTimeSlotCorrection')
          ..add('id', id)
          ..add('dayOfWeek', dayOfWeek)
          ..add('dayName', dayName)
          ..add('period', period)
          ..add('periodDisplay', periodDisplay)
          ..add('isWorking', isWorking)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class OperatorTimeSlotCorrectionBuilder
    implements
        Builder<OperatorTimeSlotCorrection, OperatorTimeSlotCorrectionBuilder> {
  _$OperatorTimeSlotCorrection? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _dayOfWeek;
  int? get dayOfWeek => _$this._dayOfWeek;
  set dayOfWeek(int? dayOfWeek) => _$this._dayOfWeek = dayOfWeek;

  String? _dayName;
  String? get dayName => _$this._dayName;
  set dayName(String? dayName) => _$this._dayName = dayName;

  PeriodEnum? _period;
  PeriodEnum? get period => _$this._period;
  set period(PeriodEnum? period) => _$this._period = period;

  String? _periodDisplay;
  String? get periodDisplay => _$this._periodDisplay;
  set periodDisplay(String? periodDisplay) =>
      _$this._periodDisplay = periodDisplay;

  bool? _isWorking;
  bool? get isWorking => _$this._isWorking;
  set isWorking(bool? isWorking) => _$this._isWorking = isWorking;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  OperatorTimeSlotCorrectionBuilder() {
    OperatorTimeSlotCorrection._defaults(this);
  }

  OperatorTimeSlotCorrectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _dayOfWeek = $v.dayOfWeek;
      _dayName = $v.dayName;
      _period = $v.period;
      _periodDisplay = $v.periodDisplay;
      _isWorking = $v.isWorking;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorTimeSlotCorrection other) {
    _$v = other as _$OperatorTimeSlotCorrection;
  }

  @override
  void update(void Function(OperatorTimeSlotCorrectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorTimeSlotCorrection build() => _build();

  _$OperatorTimeSlotCorrection _build() {
    final _$result = _$v ??
        _$OperatorTimeSlotCorrection._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'OperatorTimeSlotCorrection', 'id'),
          dayOfWeek: BuiltValueNullFieldError.checkNotNull(
              dayOfWeek, r'OperatorTimeSlotCorrection', 'dayOfWeek'),
          dayName: BuiltValueNullFieldError.checkNotNull(
              dayName, r'OperatorTimeSlotCorrection', 'dayName'),
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'OperatorTimeSlotCorrection', 'period'),
          periodDisplay: BuiltValueNullFieldError.checkNotNull(
              periodDisplay, r'OperatorTimeSlotCorrection', 'periodDisplay'),
          isWorking: BuiltValueNullFieldError.checkNotNull(
              isWorking, r'OperatorTimeSlotCorrection', 'isWorking'),
          startTime: startTime,
          endTime: endTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
