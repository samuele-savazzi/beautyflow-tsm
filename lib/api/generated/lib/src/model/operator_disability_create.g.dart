// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_disability_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorDisabilityCreate extends OperatorDisabilityCreate {
  @override
  final int operatorId;
  @override
  final String reason;
  @override
  final Date startDate;
  @override
  final Date? endDate;
  @override
  final BuiltList<TimeSlotCreate>? timeSlots;
  @override
  final bool? isDaily;
  @override
  final String? morningStartTime;
  @override
  final String? morningEndTime;
  @override
  final String? afternoonStartTime;
  @override
  final String? afternoonEndTime;
  @override
  final int? areaId;

  factory _$OperatorDisabilityCreate(
          [void Function(OperatorDisabilityCreateBuilder)? updates]) =>
      (OperatorDisabilityCreateBuilder()..update(updates))._build();

  _$OperatorDisabilityCreate._(
      {required this.operatorId,
      required this.reason,
      required this.startDate,
      this.endDate,
      this.timeSlots,
      this.isDaily,
      this.morningStartTime,
      this.morningEndTime,
      this.afternoonStartTime,
      this.afternoonEndTime,
      this.areaId})
      : super._();
  @override
  OperatorDisabilityCreate rebuild(
          void Function(OperatorDisabilityCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorDisabilityCreateBuilder toBuilder() =>
      OperatorDisabilityCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorDisabilityCreate &&
        operatorId == other.operatorId &&
        reason == other.reason &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        timeSlots == other.timeSlots &&
        isDaily == other.isDaily &&
        morningStartTime == other.morningStartTime &&
        morningEndTime == other.morningEndTime &&
        afternoonStartTime == other.afternoonStartTime &&
        afternoonEndTime == other.afternoonEndTime &&
        areaId == other.areaId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jc(_$hash, isDaily.hashCode);
    _$hash = $jc(_$hash, morningStartTime.hashCode);
    _$hash = $jc(_$hash, morningEndTime.hashCode);
    _$hash = $jc(_$hash, afternoonStartTime.hashCode);
    _$hash = $jc(_$hash, afternoonEndTime.hashCode);
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorDisabilityCreate')
          ..add('operatorId', operatorId)
          ..add('reason', reason)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('timeSlots', timeSlots)
          ..add('isDaily', isDaily)
          ..add('morningStartTime', morningStartTime)
          ..add('morningEndTime', morningEndTime)
          ..add('afternoonStartTime', afternoonStartTime)
          ..add('afternoonEndTime', afternoonEndTime)
          ..add('areaId', areaId))
        .toString();
  }
}

class OperatorDisabilityCreateBuilder
    implements
        Builder<OperatorDisabilityCreate, OperatorDisabilityCreateBuilder> {
  _$OperatorDisabilityCreate? _$v;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

  ListBuilder<TimeSlotCreate>? _timeSlots;
  ListBuilder<TimeSlotCreate> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<TimeSlotCreate>();
  set timeSlots(ListBuilder<TimeSlotCreate>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  bool? _isDaily;
  bool? get isDaily => _$this._isDaily;
  set isDaily(bool? isDaily) => _$this._isDaily = isDaily;

  String? _morningStartTime;
  String? get morningStartTime => _$this._morningStartTime;
  set morningStartTime(String? morningStartTime) =>
      _$this._morningStartTime = morningStartTime;

  String? _morningEndTime;
  String? get morningEndTime => _$this._morningEndTime;
  set morningEndTime(String? morningEndTime) =>
      _$this._morningEndTime = morningEndTime;

  String? _afternoonStartTime;
  String? get afternoonStartTime => _$this._afternoonStartTime;
  set afternoonStartTime(String? afternoonStartTime) =>
      _$this._afternoonStartTime = afternoonStartTime;

  String? _afternoonEndTime;
  String? get afternoonEndTime => _$this._afternoonEndTime;
  set afternoonEndTime(String? afternoonEndTime) =>
      _$this._afternoonEndTime = afternoonEndTime;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  OperatorDisabilityCreateBuilder() {
    OperatorDisabilityCreate._defaults(this);
  }

  OperatorDisabilityCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatorId = $v.operatorId;
      _reason = $v.reason;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _timeSlots = $v.timeSlots?.toBuilder();
      _isDaily = $v.isDaily;
      _morningStartTime = $v.morningStartTime;
      _morningEndTime = $v.morningEndTime;
      _afternoonStartTime = $v.afternoonStartTime;
      _afternoonEndTime = $v.afternoonEndTime;
      _areaId = $v.areaId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorDisabilityCreate other) {
    _$v = other as _$OperatorDisabilityCreate;
  }

  @override
  void update(void Function(OperatorDisabilityCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorDisabilityCreate build() => _build();

  _$OperatorDisabilityCreate _build() {
    _$OperatorDisabilityCreate _$result;
    try {
      _$result = _$v ??
          _$OperatorDisabilityCreate._(
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'OperatorDisabilityCreate', 'operatorId'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'OperatorDisabilityCreate', 'reason'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'OperatorDisabilityCreate', 'startDate'),
            endDate: endDate,
            timeSlots: _timeSlots?.build(),
            isDaily: isDaily,
            morningStartTime: morningStartTime,
            morningEndTime: morningEndTime,
            afternoonStartTime: afternoonStartTime,
            afternoonEndTime: afternoonEndTime,
            areaId: areaId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        _timeSlots?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorDisabilityCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
