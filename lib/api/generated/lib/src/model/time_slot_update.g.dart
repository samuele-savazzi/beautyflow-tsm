// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSlotUpdate extends TimeSlotUpdate {
  @override
  final int? id;
  @override
  final String period;
  @override
  final bool isOpen;
  @override
  final String? openingTime;
  @override
  final String? closingTime;

  factory _$TimeSlotUpdate([void Function(TimeSlotUpdateBuilder)? updates]) =>
      (TimeSlotUpdateBuilder()..update(updates))._build();

  _$TimeSlotUpdate._(
      {this.id,
      required this.period,
      required this.isOpen,
      this.openingTime,
      this.closingTime})
      : super._();
  @override
  TimeSlotUpdate rebuild(void Function(TimeSlotUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeSlotUpdateBuilder toBuilder() => TimeSlotUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSlotUpdate &&
        id == other.id &&
        period == other.period &&
        isOpen == other.isOpen &&
        openingTime == other.openingTime &&
        closingTime == other.closingTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, openingTime.hashCode);
    _$hash = $jc(_$hash, closingTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSlotUpdate')
          ..add('id', id)
          ..add('period', period)
          ..add('isOpen', isOpen)
          ..add('openingTime', openingTime)
          ..add('closingTime', closingTime))
        .toString();
  }
}

class TimeSlotUpdateBuilder
    implements Builder<TimeSlotUpdate, TimeSlotUpdateBuilder> {
  _$TimeSlotUpdate? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  TimeSlotUpdateBuilder() {
    TimeSlotUpdate._defaults(this);
  }

  TimeSlotUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _period = $v.period;
      _isOpen = $v.isOpen;
      _openingTime = $v.openingTime;
      _closingTime = $v.closingTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSlotUpdate other) {
    _$v = other as _$TimeSlotUpdate;
  }

  @override
  void update(void Function(TimeSlotUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSlotUpdate build() => _build();

  _$TimeSlotUpdate _build() {
    final _$result = _$v ??
        _$TimeSlotUpdate._(
          id: id,
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'TimeSlotUpdate', 'period'),
          isOpen: BuiltValueNullFieldError.checkNotNull(
              isOpen, r'TimeSlotUpdate', 'isOpen'),
          openingTime: openingTime,
          closingTime: closingTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
