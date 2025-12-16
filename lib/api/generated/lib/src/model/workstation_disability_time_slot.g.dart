// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workstation_disability_time_slot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkstationDisabilityTimeSlot extends WorkstationDisabilityTimeSlot {
  @override
  final int id;
  @override
  final PeriodEnum period;
  @override
  final String periodDisplay;
  @override
  final String? openingTime;
  @override
  final String? closingTime;
  @override
  final bool isOpen;
  @override
  final String? previousOpeningTime;
  @override
  final String? previousClosingTime;

  factory _$WorkstationDisabilityTimeSlot(
          [void Function(WorkstationDisabilityTimeSlotBuilder)? updates]) =>
      (WorkstationDisabilityTimeSlotBuilder()..update(updates))._build();

  _$WorkstationDisabilityTimeSlot._(
      {required this.id,
      required this.period,
      required this.periodDisplay,
      this.openingTime,
      this.closingTime,
      required this.isOpen,
      this.previousOpeningTime,
      this.previousClosingTime})
      : super._();
  @override
  WorkstationDisabilityTimeSlot rebuild(
          void Function(WorkstationDisabilityTimeSlotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkstationDisabilityTimeSlotBuilder toBuilder() =>
      WorkstationDisabilityTimeSlotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkstationDisabilityTimeSlot &&
        id == other.id &&
        period == other.period &&
        periodDisplay == other.periodDisplay &&
        openingTime == other.openingTime &&
        closingTime == other.closingTime &&
        isOpen == other.isOpen &&
        previousOpeningTime == other.previousOpeningTime &&
        previousClosingTime == other.previousClosingTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, periodDisplay.hashCode);
    _$hash = $jc(_$hash, openingTime.hashCode);
    _$hash = $jc(_$hash, closingTime.hashCode);
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, previousOpeningTime.hashCode);
    _$hash = $jc(_$hash, previousClosingTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkstationDisabilityTimeSlot')
          ..add('id', id)
          ..add('period', period)
          ..add('periodDisplay', periodDisplay)
          ..add('openingTime', openingTime)
          ..add('closingTime', closingTime)
          ..add('isOpen', isOpen)
          ..add('previousOpeningTime', previousOpeningTime)
          ..add('previousClosingTime', previousClosingTime))
        .toString();
  }
}

class WorkstationDisabilityTimeSlotBuilder
    implements
        Builder<WorkstationDisabilityTimeSlot,
            WorkstationDisabilityTimeSlotBuilder> {
  _$WorkstationDisabilityTimeSlot? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  PeriodEnum? _period;
  PeriodEnum? get period => _$this._period;
  set period(PeriodEnum? period) => _$this._period = period;

  String? _periodDisplay;
  String? get periodDisplay => _$this._periodDisplay;
  set periodDisplay(String? periodDisplay) =>
      _$this._periodDisplay = periodDisplay;

  String? _openingTime;
  String? get openingTime => _$this._openingTime;
  set openingTime(String? openingTime) => _$this._openingTime = openingTime;

  String? _closingTime;
  String? get closingTime => _$this._closingTime;
  set closingTime(String? closingTime) => _$this._closingTime = closingTime;

  bool? _isOpen;
  bool? get isOpen => _$this._isOpen;
  set isOpen(bool? isOpen) => _$this._isOpen = isOpen;

  String? _previousOpeningTime;
  String? get previousOpeningTime => _$this._previousOpeningTime;
  set previousOpeningTime(String? previousOpeningTime) =>
      _$this._previousOpeningTime = previousOpeningTime;

  String? _previousClosingTime;
  String? get previousClosingTime => _$this._previousClosingTime;
  set previousClosingTime(String? previousClosingTime) =>
      _$this._previousClosingTime = previousClosingTime;

  WorkstationDisabilityTimeSlotBuilder() {
    WorkstationDisabilityTimeSlot._defaults(this);
  }

  WorkstationDisabilityTimeSlotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _period = $v.period;
      _periodDisplay = $v.periodDisplay;
      _openingTime = $v.openingTime;
      _closingTime = $v.closingTime;
      _isOpen = $v.isOpen;
      _previousOpeningTime = $v.previousOpeningTime;
      _previousClosingTime = $v.previousClosingTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkstationDisabilityTimeSlot other) {
    _$v = other as _$WorkstationDisabilityTimeSlot;
  }

  @override
  void update(void Function(WorkstationDisabilityTimeSlotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkstationDisabilityTimeSlot build() => _build();

  _$WorkstationDisabilityTimeSlot _build() {
    final _$result = _$v ??
        _$WorkstationDisabilityTimeSlot._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'WorkstationDisabilityTimeSlot', 'id'),
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'WorkstationDisabilityTimeSlot', 'period'),
          periodDisplay: BuiltValueNullFieldError.checkNotNull(
              periodDisplay, r'WorkstationDisabilityTimeSlot', 'periodDisplay'),
          openingTime: openingTime,
          closingTime: closingTime,
          isOpen: BuiltValueNullFieldError.checkNotNull(
              isOpen, r'WorkstationDisabilityTimeSlot', 'isOpen'),
          previousOpeningTime: previousOpeningTime,
          previousClosingTime: previousClosingTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
