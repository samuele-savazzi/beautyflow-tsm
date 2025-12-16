// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_time_slot_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledTimeSlotResponse extends ScheduledTimeSlotResponse {
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
  final bool isOpen;
  @override
  final String? openingTime;
  @override
  final String? closingTime;

  factory _$ScheduledTimeSlotResponse(
          [void Function(ScheduledTimeSlotResponseBuilder)? updates]) =>
      (ScheduledTimeSlotResponseBuilder()..update(updates))._build();

  _$ScheduledTimeSlotResponse._(
      {required this.id,
      required this.dayOfWeek,
      required this.dayName,
      required this.period,
      required this.periodDisplay,
      required this.isOpen,
      this.openingTime,
      this.closingTime})
      : super._();
  @override
  ScheduledTimeSlotResponse rebuild(
          void Function(ScheduledTimeSlotResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledTimeSlotResponseBuilder toBuilder() =>
      ScheduledTimeSlotResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledTimeSlotResponse &&
        id == other.id &&
        dayOfWeek == other.dayOfWeek &&
        dayName == other.dayName &&
        period == other.period &&
        periodDisplay == other.periodDisplay &&
        isOpen == other.isOpen &&
        openingTime == other.openingTime &&
        closingTime == other.closingTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jc(_$hash, dayName.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, periodDisplay.hashCode);
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, openingTime.hashCode);
    _$hash = $jc(_$hash, closingTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduledTimeSlotResponse')
          ..add('id', id)
          ..add('dayOfWeek', dayOfWeek)
          ..add('dayName', dayName)
          ..add('period', period)
          ..add('periodDisplay', periodDisplay)
          ..add('isOpen', isOpen)
          ..add('openingTime', openingTime)
          ..add('closingTime', closingTime))
        .toString();
  }
}

class ScheduledTimeSlotResponseBuilder
    implements
        Builder<ScheduledTimeSlotResponse, ScheduledTimeSlotResponseBuilder> {
  _$ScheduledTimeSlotResponse? _$v;

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

  bool? _isOpen;
  bool? get isOpen => _$this._isOpen;
  set isOpen(bool? isOpen) => _$this._isOpen = isOpen;

  String? _openingTime;
  String? get openingTime => _$this._openingTime;
  set openingTime(String? openingTime) => _$this._openingTime = openingTime;

  String? _closingTime;
  String? get closingTime => _$this._closingTime;
  set closingTime(String? closingTime) => _$this._closingTime = closingTime;

  ScheduledTimeSlotResponseBuilder() {
    ScheduledTimeSlotResponse._defaults(this);
  }

  ScheduledTimeSlotResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _dayOfWeek = $v.dayOfWeek;
      _dayName = $v.dayName;
      _period = $v.period;
      _periodDisplay = $v.periodDisplay;
      _isOpen = $v.isOpen;
      _openingTime = $v.openingTime;
      _closingTime = $v.closingTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledTimeSlotResponse other) {
    _$v = other as _$ScheduledTimeSlotResponse;
  }

  @override
  void update(void Function(ScheduledTimeSlotResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledTimeSlotResponse build() => _build();

  _$ScheduledTimeSlotResponse _build() {
    final _$result = _$v ??
        _$ScheduledTimeSlotResponse._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ScheduledTimeSlotResponse', 'id'),
          dayOfWeek: BuiltValueNullFieldError.checkNotNull(
              dayOfWeek, r'ScheduledTimeSlotResponse', 'dayOfWeek'),
          dayName: BuiltValueNullFieldError.checkNotNull(
              dayName, r'ScheduledTimeSlotResponse', 'dayName'),
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'ScheduledTimeSlotResponse', 'period'),
          periodDisplay: BuiltValueNullFieldError.checkNotNull(
              periodDisplay, r'ScheduledTimeSlotResponse', 'periodDisplay'),
          isOpen: BuiltValueNullFieldError.checkNotNull(
              isOpen, r'ScheduledTimeSlotResponse', 'isOpen'),
          openingTime: openingTime,
          closingTime: closingTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
