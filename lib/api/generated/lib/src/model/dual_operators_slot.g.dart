// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dual_operators_slot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DualOperatorsSlot extends DualOperatorsSlot {
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
  final String primaryServiceStart;
  @override
  final String primaryServiceEnd;
  @override
  final String additionalServiceStart;
  @override
  final String additionalServiceEnd;
  @override
  final int primaryWorkstationId;
  @override
  final int additionalWorkstationId;
  @override
  final BuiltList<int> workstationIds;

  factory _$DualOperatorsSlot(
          [void Function(DualOperatorsSlotBuilder)? updates]) =>
      (DualOperatorsSlotBuilder()..update(updates))._build();

  _$DualOperatorsSlot._(
      {required this.date,
      required this.period,
      required this.startTime,
      required this.endTime,
      required this.startIdx,
      required this.endIdx,
      required this.primaryServiceStart,
      required this.primaryServiceEnd,
      required this.additionalServiceStart,
      required this.additionalServiceEnd,
      required this.primaryWorkstationId,
      required this.additionalWorkstationId,
      required this.workstationIds})
      : super._();
  @override
  DualOperatorsSlot rebuild(void Function(DualOperatorsSlotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DualOperatorsSlotBuilder toBuilder() =>
      DualOperatorsSlotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DualOperatorsSlot &&
        date == other.date &&
        period == other.period &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        startIdx == other.startIdx &&
        endIdx == other.endIdx &&
        primaryServiceStart == other.primaryServiceStart &&
        primaryServiceEnd == other.primaryServiceEnd &&
        additionalServiceStart == other.additionalServiceStart &&
        additionalServiceEnd == other.additionalServiceEnd &&
        primaryWorkstationId == other.primaryWorkstationId &&
        additionalWorkstationId == other.additionalWorkstationId &&
        workstationIds == other.workstationIds;
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
    _$hash = $jc(_$hash, primaryServiceStart.hashCode);
    _$hash = $jc(_$hash, primaryServiceEnd.hashCode);
    _$hash = $jc(_$hash, additionalServiceStart.hashCode);
    _$hash = $jc(_$hash, additionalServiceEnd.hashCode);
    _$hash = $jc(_$hash, primaryWorkstationId.hashCode);
    _$hash = $jc(_$hash, additionalWorkstationId.hashCode);
    _$hash = $jc(_$hash, workstationIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DualOperatorsSlot')
          ..add('date', date)
          ..add('period', period)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('startIdx', startIdx)
          ..add('endIdx', endIdx)
          ..add('primaryServiceStart', primaryServiceStart)
          ..add('primaryServiceEnd', primaryServiceEnd)
          ..add('additionalServiceStart', additionalServiceStart)
          ..add('additionalServiceEnd', additionalServiceEnd)
          ..add('primaryWorkstationId', primaryWorkstationId)
          ..add('additionalWorkstationId', additionalWorkstationId)
          ..add('workstationIds', workstationIds))
        .toString();
  }
}

class DualOperatorsSlotBuilder
    implements Builder<DualOperatorsSlot, DualOperatorsSlotBuilder> {
  _$DualOperatorsSlot? _$v;

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

  String? _primaryServiceStart;
  String? get primaryServiceStart => _$this._primaryServiceStart;
  set primaryServiceStart(String? primaryServiceStart) =>
      _$this._primaryServiceStart = primaryServiceStart;

  String? _primaryServiceEnd;
  String? get primaryServiceEnd => _$this._primaryServiceEnd;
  set primaryServiceEnd(String? primaryServiceEnd) =>
      _$this._primaryServiceEnd = primaryServiceEnd;

  String? _additionalServiceStart;
  String? get additionalServiceStart => _$this._additionalServiceStart;
  set additionalServiceStart(String? additionalServiceStart) =>
      _$this._additionalServiceStart = additionalServiceStart;

  String? _additionalServiceEnd;
  String? get additionalServiceEnd => _$this._additionalServiceEnd;
  set additionalServiceEnd(String? additionalServiceEnd) =>
      _$this._additionalServiceEnd = additionalServiceEnd;

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

  DualOperatorsSlotBuilder() {
    DualOperatorsSlot._defaults(this);
  }

  DualOperatorsSlotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _period = $v.period;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _startIdx = $v.startIdx;
      _endIdx = $v.endIdx;
      _primaryServiceStart = $v.primaryServiceStart;
      _primaryServiceEnd = $v.primaryServiceEnd;
      _additionalServiceStart = $v.additionalServiceStart;
      _additionalServiceEnd = $v.additionalServiceEnd;
      _primaryWorkstationId = $v.primaryWorkstationId;
      _additionalWorkstationId = $v.additionalWorkstationId;
      _workstationIds = $v.workstationIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DualOperatorsSlot other) {
    _$v = other as _$DualOperatorsSlot;
  }

  @override
  void update(void Function(DualOperatorsSlotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DualOperatorsSlot build() => _build();

  _$DualOperatorsSlot _build() {
    _$DualOperatorsSlot _$result;
    try {
      _$result = _$v ??
          _$DualOperatorsSlot._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'DualOperatorsSlot', 'date'),
            period: BuiltValueNullFieldError.checkNotNull(
                period, r'DualOperatorsSlot', 'period'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'DualOperatorsSlot', 'startTime'),
            endTime: BuiltValueNullFieldError.checkNotNull(
                endTime, r'DualOperatorsSlot', 'endTime'),
            startIdx: BuiltValueNullFieldError.checkNotNull(
                startIdx, r'DualOperatorsSlot', 'startIdx'),
            endIdx: BuiltValueNullFieldError.checkNotNull(
                endIdx, r'DualOperatorsSlot', 'endIdx'),
            primaryServiceStart: BuiltValueNullFieldError.checkNotNull(
                primaryServiceStart,
                r'DualOperatorsSlot',
                'primaryServiceStart'),
            primaryServiceEnd: BuiltValueNullFieldError.checkNotNull(
                primaryServiceEnd, r'DualOperatorsSlot', 'primaryServiceEnd'),
            additionalServiceStart: BuiltValueNullFieldError.checkNotNull(
                additionalServiceStart,
                r'DualOperatorsSlot',
                'additionalServiceStart'),
            additionalServiceEnd: BuiltValueNullFieldError.checkNotNull(
                additionalServiceEnd,
                r'DualOperatorsSlot',
                'additionalServiceEnd'),
            primaryWorkstationId: BuiltValueNullFieldError.checkNotNull(
                primaryWorkstationId,
                r'DualOperatorsSlot',
                'primaryWorkstationId'),
            additionalWorkstationId: BuiltValueNullFieldError.checkNotNull(
                additionalWorkstationId,
                r'DualOperatorsSlot',
                'additionalWorkstationId'),
            workstationIds: workstationIds.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workstationIds';
        workstationIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DualOperatorsSlot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
