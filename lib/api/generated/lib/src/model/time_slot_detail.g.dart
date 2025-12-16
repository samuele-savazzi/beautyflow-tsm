// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSlotDetail extends TimeSlotDetail {
  @override
  final int id;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String period;

  factory _$TimeSlotDetail([void Function(TimeSlotDetailBuilder)? updates]) =>
      (TimeSlotDetailBuilder()..update(updates))._build();

  _$TimeSlotDetail._(
      {required this.id,
      required this.startTime,
      required this.endTime,
      required this.period})
      : super._();
  @override
  TimeSlotDetail rebuild(void Function(TimeSlotDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeSlotDetailBuilder toBuilder() => TimeSlotDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSlotDetail &&
        id == other.id &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        period == other.period;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSlotDetail')
          ..add('id', id)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('period', period))
        .toString();
  }
}

class TimeSlotDetailBuilder
    implements Builder<TimeSlotDetail, TimeSlotDetailBuilder> {
  _$TimeSlotDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  TimeSlotDetailBuilder() {
    TimeSlotDetail._defaults(this);
  }

  TimeSlotDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _period = $v.period;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSlotDetail other) {
    _$v = other as _$TimeSlotDetail;
  }

  @override
  void update(void Function(TimeSlotDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSlotDetail build() => _build();

  _$TimeSlotDetail _build() {
    final _$result = _$v ??
        _$TimeSlotDetail._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'TimeSlotDetail', 'id'),
          startTime: BuiltValueNullFieldError.checkNotNull(
              startTime, r'TimeSlotDetail', 'startTime'),
          endTime: BuiltValueNullFieldError.checkNotNull(
              endTime, r'TimeSlotDetail', 'endTime'),
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'TimeSlotDetail', 'period'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
