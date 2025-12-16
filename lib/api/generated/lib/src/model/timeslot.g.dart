// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeslot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Timeslot extends Timeslot {
  @override
  final PeriodEnum period;
  @override
  final String? startTime;
  @override
  final String? endTime;

  factory _$Timeslot([void Function(TimeslotBuilder)? updates]) =>
      (TimeslotBuilder()..update(updates))._build();

  _$Timeslot._({required this.period, this.startTime, this.endTime})
      : super._();
  @override
  Timeslot rebuild(void Function(TimeslotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeslotBuilder toBuilder() => TimeslotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Timeslot &&
        period == other.period &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Timeslot')
          ..add('period', period)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class TimeslotBuilder implements Builder<Timeslot, TimeslotBuilder> {
  _$Timeslot? _$v;

  PeriodEnum? _period;
  PeriodEnum? get period => _$this._period;
  set period(PeriodEnum? period) => _$this._period = period;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  TimeslotBuilder() {
    Timeslot._defaults(this);
  }

  TimeslotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _period = $v.period;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Timeslot other) {
    _$v = other as _$Timeslot;
  }

  @override
  void update(void Function(TimeslotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Timeslot build() => _build();

  _$Timeslot _build() {
    final _$result = _$v ??
        _$Timeslot._(
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'Timeslot', 'period'),
          startTime: startTime,
          endTime: endTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
