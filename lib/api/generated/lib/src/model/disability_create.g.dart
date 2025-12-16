// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disability_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisabilityCreate extends DisabilityCreate {
  @override
  final int workstationId;
  @override
  final String reason;
  @override
  final Date startDate;
  @override
  final Date? endDate;
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
  final int areaId;

  factory _$DisabilityCreate(
          [void Function(DisabilityCreateBuilder)? updates]) =>
      (DisabilityCreateBuilder()..update(updates))._build();

  _$DisabilityCreate._(
      {required this.workstationId,
      required this.reason,
      required this.startDate,
      this.endDate,
      this.isDaily,
      this.morningStartTime,
      this.morningEndTime,
      this.afternoonStartTime,
      this.afternoonEndTime,
      required this.areaId})
      : super._();
  @override
  DisabilityCreate rebuild(void Function(DisabilityCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisabilityCreateBuilder toBuilder() =>
      DisabilityCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisabilityCreate &&
        workstationId == other.workstationId &&
        reason == other.reason &&
        startDate == other.startDate &&
        endDate == other.endDate &&
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
    _$hash = $jc(_$hash, workstationId.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
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
    return (newBuiltValueToStringHelper(r'DisabilityCreate')
          ..add('workstationId', workstationId)
          ..add('reason', reason)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('isDaily', isDaily)
          ..add('morningStartTime', morningStartTime)
          ..add('morningEndTime', morningEndTime)
          ..add('afternoonStartTime', afternoonStartTime)
          ..add('afternoonEndTime', afternoonEndTime)
          ..add('areaId', areaId))
        .toString();
  }
}

class DisabilityCreateBuilder
    implements Builder<DisabilityCreate, DisabilityCreateBuilder> {
  _$DisabilityCreate? _$v;

  int? _workstationId;
  int? get workstationId => _$this._workstationId;
  set workstationId(int? workstationId) =>
      _$this._workstationId = workstationId;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

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

  DisabilityCreateBuilder() {
    DisabilityCreate._defaults(this);
  }

  DisabilityCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workstationId = $v.workstationId;
      _reason = $v.reason;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
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
  void replace(DisabilityCreate other) {
    _$v = other as _$DisabilityCreate;
  }

  @override
  void update(void Function(DisabilityCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisabilityCreate build() => _build();

  _$DisabilityCreate _build() {
    final _$result = _$v ??
        _$DisabilityCreate._(
          workstationId: BuiltValueNullFieldError.checkNotNull(
              workstationId, r'DisabilityCreate', 'workstationId'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'DisabilityCreate', 'reason'),
          startDate: BuiltValueNullFieldError.checkNotNull(
              startDate, r'DisabilityCreate', 'startDate'),
          endDate: endDate,
          isDaily: isDaily,
          morningStartTime: morningStartTime,
          morningEndTime: morningEndTime,
          afternoonStartTime: afternoonStartTime,
          afternoonEndTime: afternoonEndTime,
          areaId: BuiltValueNullFieldError.checkNotNull(
              areaId, r'DisabilityCreate', 'areaId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
