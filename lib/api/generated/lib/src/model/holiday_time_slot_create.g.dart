// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_time_slot_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HolidayTimeSlotCreate extends HolidayTimeSlotCreate {
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

  factory _$HolidayTimeSlotCreate(
          [void Function(HolidayTimeSlotCreateBuilder)? updates]) =>
      (HolidayTimeSlotCreateBuilder()..update(updates))._build();

  _$HolidayTimeSlotCreate._(
      {required this.period,
      required this.fromTime,
      required this.toTime,
      required this.isClosed,
      this.reason})
      : super._();
  @override
  HolidayTimeSlotCreate rebuild(
          void Function(HolidayTimeSlotCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HolidayTimeSlotCreateBuilder toBuilder() =>
      HolidayTimeSlotCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HolidayTimeSlotCreate &&
        period == other.period &&
        fromTime == other.fromTime &&
        toTime == other.toTime &&
        isClosed == other.isClosed &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    return (newBuiltValueToStringHelper(r'HolidayTimeSlotCreate')
          ..add('period', period)
          ..add('fromTime', fromTime)
          ..add('toTime', toTime)
          ..add('isClosed', isClosed)
          ..add('reason', reason))
        .toString();
  }
}

class HolidayTimeSlotCreateBuilder
    implements Builder<HolidayTimeSlotCreate, HolidayTimeSlotCreateBuilder> {
  _$HolidayTimeSlotCreate? _$v;

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

  HolidayTimeSlotCreateBuilder() {
    HolidayTimeSlotCreate._defaults(this);
  }

  HolidayTimeSlotCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(HolidayTimeSlotCreate other) {
    _$v = other as _$HolidayTimeSlotCreate;
  }

  @override
  void update(void Function(HolidayTimeSlotCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HolidayTimeSlotCreate build() => _build();

  _$HolidayTimeSlotCreate _build() {
    final _$result = _$v ??
        _$HolidayTimeSlotCreate._(
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'HolidayTimeSlotCreate', 'period'),
          fromTime: BuiltValueNullFieldError.checkNotNull(
              fromTime, r'HolidayTimeSlotCreate', 'fromTime'),
          toTime: BuiltValueNullFieldError.checkNotNull(
              toTime, r'HolidayTimeSlotCreate', 'toTime'),
          isClosed: BuiltValueNullFieldError.checkNotNull(
              isClosed, r'HolidayTimeSlotCreate', 'isClosed'),
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
