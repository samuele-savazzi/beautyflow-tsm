// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_time_slot_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HolidayTimeSlotUpdate extends HolidayTimeSlotUpdate {
  @override
  final int? id;
  @override
  final String period;
  @override
  final String fromTime;
  @override
  final String toTime;
  @override
  final bool isClosed;
  @override
  final String? reason;

  factory _$HolidayTimeSlotUpdate(
          [void Function(HolidayTimeSlotUpdateBuilder)? updates]) =>
      (HolidayTimeSlotUpdateBuilder()..update(updates))._build();

  _$HolidayTimeSlotUpdate._(
      {this.id,
      required this.period,
      required this.fromTime,
      required this.toTime,
      required this.isClosed,
      this.reason})
      : super._();
  @override
  HolidayTimeSlotUpdate rebuild(
          void Function(HolidayTimeSlotUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HolidayTimeSlotUpdateBuilder toBuilder() =>
      HolidayTimeSlotUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HolidayTimeSlotUpdate &&
        id == other.id &&
        period == other.period &&
        fromTime == other.fromTime &&
        toTime == other.toTime &&
        isClosed == other.isClosed &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, fromTime.hashCode);
    _$hash = $jc(_$hash, toTime.hashCode);
    _$hash = $jc(_$hash, isClosed.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HolidayTimeSlotUpdate')
          ..add('id', id)
          ..add('period', period)
          ..add('fromTime', fromTime)
          ..add('toTime', toTime)
          ..add('isClosed', isClosed)
          ..add('reason', reason))
        .toString();
  }
}

class HolidayTimeSlotUpdateBuilder
    implements Builder<HolidayTimeSlotUpdate, HolidayTimeSlotUpdateBuilder> {
  _$HolidayTimeSlotUpdate? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  String? _fromTime;
  String? get fromTime => _$this._fromTime;
  set fromTime(String? fromTime) => _$this._fromTime = fromTime;

  String? _toTime;
  String? get toTime => _$this._toTime;
  set toTime(String? toTime) => _$this._toTime = toTime;

  bool? _isClosed;
  bool? get isClosed => _$this._isClosed;
  set isClosed(bool? isClosed) => _$this._isClosed = isClosed;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  HolidayTimeSlotUpdateBuilder() {
    HolidayTimeSlotUpdate._defaults(this);
  }

  HolidayTimeSlotUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _period = $v.period;
      _fromTime = $v.fromTime;
      _toTime = $v.toTime;
      _isClosed = $v.isClosed;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HolidayTimeSlotUpdate other) {
    _$v = other as _$HolidayTimeSlotUpdate;
  }

  @override
  void update(void Function(HolidayTimeSlotUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HolidayTimeSlotUpdate build() => _build();

  _$HolidayTimeSlotUpdate _build() {
    final _$result = _$v ??
        _$HolidayTimeSlotUpdate._(
          id: id,
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'HolidayTimeSlotUpdate', 'period'),
          fromTime: BuiltValueNullFieldError.checkNotNull(
              fromTime, r'HolidayTimeSlotUpdate', 'fromTime'),
          toTime: BuiltValueNullFieldError.checkNotNull(
              toTime, r'HolidayTimeSlotUpdate', 'toTime'),
          isClosed: BuiltValueNullFieldError.checkNotNull(
              isClosed, r'HolidayTimeSlotUpdate', 'isClosed'),
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
