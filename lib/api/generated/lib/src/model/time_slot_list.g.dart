// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSlotList extends TimeSlotList {
  @override
  final int id;
  @override
  final String period;
  @override
  final String startTime;
  @override
  final String endTime;

  factory _$TimeSlotList([void Function(TimeSlotListBuilder)? updates]) =>
      (TimeSlotListBuilder()..update(updates))._build();

  _$TimeSlotList._(
      {required this.id,
      required this.period,
      required this.startTime,
      required this.endTime})
      : super._();
  @override
  TimeSlotList rebuild(void Function(TimeSlotListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeSlotListBuilder toBuilder() => TimeSlotListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSlotList &&
        id == other.id &&
        period == other.period &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSlotList')
          ..add('id', id)
          ..add('period', period)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class TimeSlotListBuilder
    implements Builder<TimeSlotList, TimeSlotListBuilder> {
  _$TimeSlotList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  TimeSlotListBuilder() {
    TimeSlotList._defaults(this);
  }

  TimeSlotListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _period = $v.period;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSlotList other) {
    _$v = other as _$TimeSlotList;
  }

  @override
  void update(void Function(TimeSlotListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSlotList build() => _build();

  _$TimeSlotList _build() {
    final _$result = _$v ??
        _$TimeSlotList._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'TimeSlotList', 'id'),
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'TimeSlotList', 'period'),
          startTime: BuiltValueNullFieldError.checkNotNull(
              startTime, r'TimeSlotList', 'startTime'),
          endTime: BuiltValueNullFieldError.checkNotNull(
              endTime, r'TimeSlotList', 'endTime'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
