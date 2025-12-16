// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeslotsschedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Timeslotsschedule extends Timeslotsschedule {
  @override
  final int id;
  @override
  final String period;
  @override
  final String periodDisplay;
  @override
  final bool isOpen;
  @override
  final String openingTime;
  @override
  final String closingTime;

  factory _$Timeslotsschedule(
          [void Function(TimeslotsscheduleBuilder)? updates]) =>
      (TimeslotsscheduleBuilder()..update(updates))._build();

  _$Timeslotsschedule._(
      {required this.id,
      required this.period,
      required this.periodDisplay,
      required this.isOpen,
      required this.openingTime,
      required this.closingTime})
      : super._();
  @override
  Timeslotsschedule rebuild(void Function(TimeslotsscheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeslotsscheduleBuilder toBuilder() =>
      TimeslotsscheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Timeslotsschedule &&
        id == other.id &&
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
    return (newBuiltValueToStringHelper(r'Timeslotsschedule')
          ..add('id', id)
          ..add('period', period)
          ..add('periodDisplay', periodDisplay)
          ..add('isOpen', isOpen)
          ..add('openingTime', openingTime)
          ..add('closingTime', closingTime))
        .toString();
  }
}

class TimeslotsscheduleBuilder
    implements Builder<Timeslotsschedule, TimeslotsscheduleBuilder> {
  _$Timeslotsschedule? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

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

  TimeslotsscheduleBuilder() {
    Timeslotsschedule._defaults(this);
  }

  TimeslotsscheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
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
  void replace(Timeslotsschedule other) {
    _$v = other as _$Timeslotsschedule;
  }

  @override
  void update(void Function(TimeslotsscheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Timeslotsschedule build() => _build();

  _$Timeslotsschedule _build() {
    final _$result = _$v ??
        _$Timeslotsschedule._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'Timeslotsschedule', 'id'),
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'Timeslotsschedule', 'period'),
          periodDisplay: BuiltValueNullFieldError.checkNotNull(
              periodDisplay, r'Timeslotsschedule', 'periodDisplay'),
          isOpen: BuiltValueNullFieldError.checkNotNull(
              isOpen, r'Timeslotsschedule', 'isOpen'),
          openingTime: BuiltValueNullFieldError.checkNotNull(
              openingTime, r'Timeslotsschedule', 'openingTime'),
          closingTime: BuiltValueNullFieldError.checkNotNull(
              closingTime, r'Timeslotsschedule', 'closingTime'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
