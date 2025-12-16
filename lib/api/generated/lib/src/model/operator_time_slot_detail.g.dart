// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_time_slot_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorTimeSlotDetail extends OperatorTimeSlotDetail {
  @override
  final int id;
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

  factory _$OperatorTimeSlotDetail(
          [void Function(OperatorTimeSlotDetailBuilder)? updates]) =>
      (OperatorTimeSlotDetailBuilder()..update(updates))._build();

  _$OperatorTimeSlotDetail._(
      {required this.id,
      required this.period,
      required this.periodDisplay,
      required this.isWorking,
      this.startTime,
      this.endTime})
      : super._();
  @override
  OperatorTimeSlotDetail rebuild(
          void Function(OperatorTimeSlotDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorTimeSlotDetailBuilder toBuilder() =>
      OperatorTimeSlotDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorTimeSlotDetail &&
        id == other.id &&
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
    return (newBuiltValueToStringHelper(r'OperatorTimeSlotDetail')
          ..add('id', id)
          ..add('period', period)
          ..add('periodDisplay', periodDisplay)
          ..add('isWorking', isWorking)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class OperatorTimeSlotDetailBuilder
    implements Builder<OperatorTimeSlotDetail, OperatorTimeSlotDetailBuilder> {
  _$OperatorTimeSlotDetail? _$v;

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

  bool? _isWorking;
  bool? get isWorking => _$this._isWorking;
  set isWorking(bool? isWorking) => _$this._isWorking = isWorking;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  OperatorTimeSlotDetailBuilder() {
    OperatorTimeSlotDetail._defaults(this);
  }

  OperatorTimeSlotDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
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
  void replace(OperatorTimeSlotDetail other) {
    _$v = other as _$OperatorTimeSlotDetail;
  }

  @override
  void update(void Function(OperatorTimeSlotDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorTimeSlotDetail build() => _build();

  _$OperatorTimeSlotDetail _build() {
    final _$result = _$v ??
        _$OperatorTimeSlotDetail._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'OperatorTimeSlotDetail', 'id'),
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'OperatorTimeSlotDetail', 'period'),
          periodDisplay: BuiltValueNullFieldError.checkNotNull(
              periodDisplay, r'OperatorTimeSlotDetail', 'periodDisplay'),
          isWorking: BuiltValueNullFieldError.checkNotNull(
              isWorking, r'OperatorTimeSlotDetail', 'isWorking'),
          startTime: startTime,
          endTime: endTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
