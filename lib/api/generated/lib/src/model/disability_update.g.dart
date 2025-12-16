// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disability_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisabilityUpdate extends DisabilityUpdate {
  @override
  final String? reason;
  @override
  final Date? startDate;
  @override
  final Date? endDate;
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

  factory _$DisabilityUpdate(
          [void Function(DisabilityUpdateBuilder)? updates]) =>
      (DisabilityUpdateBuilder()..update(updates))._build();

  _$DisabilityUpdate._(
      {this.reason,
      this.startDate,
      this.endDate,
      this.morningStartTime,
      this.morningEndTime,
      this.afternoonStartTime,
      this.afternoonEndTime,
      this.areaId})
      : super._();
  @override
  DisabilityUpdate rebuild(void Function(DisabilityUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisabilityUpdateBuilder toBuilder() =>
      DisabilityUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisabilityUpdate &&
        reason == other.reason &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        morningStartTime == other.morningStartTime &&
        morningEndTime == other.morningEndTime &&
        afternoonStartTime == other.afternoonStartTime &&
        afternoonEndTime == other.afternoonEndTime &&
        areaId == other.areaId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
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
    return (newBuiltValueToStringHelper(r'DisabilityUpdate')
          ..add('reason', reason)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('morningStartTime', morningStartTime)
          ..add('morningEndTime', morningEndTime)
          ..add('afternoonStartTime', afternoonStartTime)
          ..add('afternoonEndTime', afternoonEndTime)
          ..add('areaId', areaId))
        .toString();
  }
}

class DisabilityUpdateBuilder
    implements Builder<DisabilityUpdate, DisabilityUpdateBuilder> {
  _$DisabilityUpdate? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

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

  DisabilityUpdateBuilder() {
    DisabilityUpdate._defaults(this);
  }

  DisabilityUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
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
  void replace(DisabilityUpdate other) {
    _$v = other as _$DisabilityUpdate;
  }

  @override
  void update(void Function(DisabilityUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisabilityUpdate build() => _build();

  _$DisabilityUpdate _build() {
    final _$result = _$v ??
        _$DisabilityUpdate._(
          reason: reason,
          startDate: startDate,
          endDate: endDate,
          morningStartTime: morningStartTime,
          morningEndTime: morningEndTime,
          afternoonStartTime: afternoonStartTime,
          afternoonEndTime: afternoonEndTime,
          areaId: areaId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
