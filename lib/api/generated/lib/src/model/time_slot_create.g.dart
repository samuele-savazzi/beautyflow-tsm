// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSlotCreate extends TimeSlotCreate {
  @override
  final String period;
  @override
  final bool isOpen;
  @override
  final String? openingTime;
  @override
  final String? closingTime;

  factory _$TimeSlotCreate([void Function(TimeSlotCreateBuilder)? updates]) =>
      (TimeSlotCreateBuilder()..update(updates))._build();

  _$TimeSlotCreate._(
      {required this.period,
      required this.isOpen,
      this.openingTime,
      this.closingTime})
      : super._();
  @override
  TimeSlotCreate rebuild(void Function(TimeSlotCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeSlotCreateBuilder toBuilder() => TimeSlotCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSlotCreate &&
        period == other.period &&
        isOpen == other.isOpen &&
        openingTime == other.openingTime &&
        closingTime == other.closingTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, openingTime.hashCode);
    _$hash = $jc(_$hash, closingTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSlotCreate')
          ..add('period', period)
          ..add('isOpen', isOpen)
          ..add('openingTime', openingTime)
          ..add('closingTime', closingTime))
        .toString();
  }
}

class TimeSlotCreateBuilder
    implements Builder<TimeSlotCreate, TimeSlotCreateBuilder> {
  _$TimeSlotCreate? _$v;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  bool? _isOpen;
  bool? get isOpen => _$this._isOpen;
  set isOpen(bool? isOpen) => _$this._isOpen = isOpen;

  String? _openingTime;
  String? get openingTime => _$this._openingTime;
  set openingTime(String? openingTime) => _$this._openingTime = openingTime;

  String? _closingTime;
  String? get closingTime => _$this._closingTime;
  set closingTime(String? closingTime) => _$this._closingTime = closingTime;

  TimeSlotCreateBuilder() {
    TimeSlotCreate._defaults(this);
  }

  TimeSlotCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _period = $v.period;
      _isOpen = $v.isOpen;
      _openingTime = $v.openingTime;
      _closingTime = $v.closingTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSlotCreate other) {
    _$v = other as _$TimeSlotCreate;
  }

  @override
  void update(void Function(TimeSlotCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSlotCreate build() => _build();

  _$TimeSlotCreate _build() {
    final _$result = _$v ??
        _$TimeSlotCreate._(
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'TimeSlotCreate', 'period'),
          isOpen: BuiltValueNullFieldError.checkNotNull(
              isOpen, r'TimeSlotCreate', 'isOpen'),
          openingTime: openingTime,
          closingTime: closingTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
