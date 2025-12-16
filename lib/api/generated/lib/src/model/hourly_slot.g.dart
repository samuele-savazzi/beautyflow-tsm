// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_slot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HourlySlot extends HourlySlot {
  @override
  final Date date;
  @override
  final String period;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final int startIdx;
  @override
  final int endIdx;
  @override
  final int? workstationId;
  @override
  final int? primaryWorkstationId;
  @override
  final int? additionalWorkstationId;
  @override
  final BuiltList<int> workstationIds;
  @override
  final int availabilityScore;

  factory _$HourlySlot([void Function(HourlySlotBuilder)? updates]) =>
      (HourlySlotBuilder()..update(updates))._build();

  _$HourlySlot._(
      {required this.date,
      required this.period,
      required this.startTime,
      required this.endTime,
      required this.startIdx,
      required this.endIdx,
      this.workstationId,
      this.primaryWorkstationId,
      this.additionalWorkstationId,
      required this.workstationIds,
      required this.availabilityScore})
      : super._();
  @override
  HourlySlot rebuild(void Function(HourlySlotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HourlySlotBuilder toBuilder() => HourlySlotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HourlySlot &&
        date == other.date &&
        period == other.period &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        startIdx == other.startIdx &&
        endIdx == other.endIdx &&
        workstationId == other.workstationId &&
        primaryWorkstationId == other.primaryWorkstationId &&
        additionalWorkstationId == other.additionalWorkstationId &&
        workstationIds == other.workstationIds &&
        availabilityScore == other.availabilityScore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, startIdx.hashCode);
    _$hash = $jc(_$hash, endIdx.hashCode);
    _$hash = $jc(_$hash, workstationId.hashCode);
    _$hash = $jc(_$hash, primaryWorkstationId.hashCode);
    _$hash = $jc(_$hash, additionalWorkstationId.hashCode);
    _$hash = $jc(_$hash, workstationIds.hashCode);
    _$hash = $jc(_$hash, availabilityScore.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HourlySlot')
          ..add('date', date)
          ..add('period', period)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('startIdx', startIdx)
          ..add('endIdx', endIdx)
          ..add('workstationId', workstationId)
          ..add('primaryWorkstationId', primaryWorkstationId)
          ..add('additionalWorkstationId', additionalWorkstationId)
          ..add('workstationIds', workstationIds)
          ..add('availabilityScore', availabilityScore))
        .toString();
  }
}

class HourlySlotBuilder implements Builder<HourlySlot, HourlySlotBuilder> {
  _$HourlySlot? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  int? _startIdx;
  int? get startIdx => _$this._startIdx;
  set startIdx(int? startIdx) => _$this._startIdx = startIdx;

  int? _endIdx;
  int? get endIdx => _$this._endIdx;
  set endIdx(int? endIdx) => _$this._endIdx = endIdx;

  int? _workstationId;
  int? get workstationId => _$this._workstationId;
  set workstationId(int? workstationId) =>
      _$this._workstationId = workstationId;

  int? _primaryWorkstationId;
  int? get primaryWorkstationId => _$this._primaryWorkstationId;
  set primaryWorkstationId(int? primaryWorkstationId) =>
      _$this._primaryWorkstationId = primaryWorkstationId;

  int? _additionalWorkstationId;
  int? get additionalWorkstationId => _$this._additionalWorkstationId;
  set additionalWorkstationId(int? additionalWorkstationId) =>
      _$this._additionalWorkstationId = additionalWorkstationId;

  ListBuilder<int>? _workstationIds;
  ListBuilder<int> get workstationIds =>
      _$this._workstationIds ??= ListBuilder<int>();
  set workstationIds(ListBuilder<int>? workstationIds) =>
      _$this._workstationIds = workstationIds;

  int? _availabilityScore;
  int? get availabilityScore => _$this._availabilityScore;
  set availabilityScore(int? availabilityScore) =>
      _$this._availabilityScore = availabilityScore;

  HourlySlotBuilder() {
    HourlySlot._defaults(this);
  }

  HourlySlotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _period = $v.period;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _startIdx = $v.startIdx;
      _endIdx = $v.endIdx;
      _workstationId = $v.workstationId;
      _primaryWorkstationId = $v.primaryWorkstationId;
      _additionalWorkstationId = $v.additionalWorkstationId;
      _workstationIds = $v.workstationIds.toBuilder();
      _availabilityScore = $v.availabilityScore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HourlySlot other) {
    _$v = other as _$HourlySlot;
  }

  @override
  void update(void Function(HourlySlotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HourlySlot build() => _build();

  _$HourlySlot _build() {
    _$HourlySlot _$result;
    try {
      _$result = _$v ??
          _$HourlySlot._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'HourlySlot', 'date'),
            period: BuiltValueNullFieldError.checkNotNull(
                period, r'HourlySlot', 'period'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'HourlySlot', 'startTime'),
            endTime: BuiltValueNullFieldError.checkNotNull(
                endTime, r'HourlySlot', 'endTime'),
            startIdx: BuiltValueNullFieldError.checkNotNull(
                startIdx, r'HourlySlot', 'startIdx'),
            endIdx: BuiltValueNullFieldError.checkNotNull(
                endIdx, r'HourlySlot', 'endIdx'),
            workstationId: workstationId,
            primaryWorkstationId: primaryWorkstationId,
            additionalWorkstationId: additionalWorkstationId,
            workstationIds: workstationIds.build(),
            availabilityScore: BuiltValueNullFieldError.checkNotNull(
                availabilityScore, r'HourlySlot', 'availabilityScore'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workstationIds';
        workstationIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HourlySlot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
