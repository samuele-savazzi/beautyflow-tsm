// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSlotInfo extends TimeSlotInfo {
  @override
  final int id;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String period;

  factory _$TimeSlotInfo([void Function(TimeSlotInfoBuilder)? updates]) =>
      (TimeSlotInfoBuilder()..update(updates))._build();

  _$TimeSlotInfo._(
      {required this.id,
      required this.startTime,
      required this.endTime,
      required this.period})
      : super._();
  @override
  TimeSlotInfo rebuild(void Function(TimeSlotInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeSlotInfoBuilder toBuilder() => TimeSlotInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSlotInfo &&
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
    return (newBuiltValueToStringHelper(r'TimeSlotInfo')
          ..add('id', id)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('period', period))
        .toString();
  }
}

class TimeSlotInfoBuilder
    implements Builder<TimeSlotInfo, TimeSlotInfoBuilder> {
  _$TimeSlotInfo? _$v;

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

  TimeSlotInfoBuilder() {
    TimeSlotInfo._defaults(this);
  }

  TimeSlotInfoBuilder get _$this {
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
  void replace(TimeSlotInfo other) {
    _$v = other as _$TimeSlotInfo;
  }

  @override
  void update(void Function(TimeSlotInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSlotInfo build() => _build();

  _$TimeSlotInfo _build() {
    final _$result = _$v ??
        _$TimeSlotInfo._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'TimeSlotInfo', 'id'),
          startTime: BuiltValueNullFieldError.checkNotNull(
              startTime, r'TimeSlotInfo', 'startTime'),
          endTime: BuiltValueNullFieldError.checkNotNull(
              endTime, r'TimeSlotInfo', 'endTime'),
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'TimeSlotInfo', 'period'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
