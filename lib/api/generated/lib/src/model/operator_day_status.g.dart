// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_day_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorDayStatus extends OperatorDayStatus {
  @override
  final int operatorId;
  @override
  final String operatorName;
  @override
  final String operatorType;
  @override
  final bool morningAvailable;
  @override
  final bool afternoonAvailable;
  @override
  final String morningStartTime;
  @override
  final String morningEndTime;
  @override
  final String afternoonStartTime;
  @override
  final String afternoonEndTime;
  @override
  final String status;
  @override
  final String reason;

  factory _$OperatorDayStatus(
          [void Function(OperatorDayStatusBuilder)? updates]) =>
      (OperatorDayStatusBuilder()..update(updates))._build();

  _$OperatorDayStatus._(
      {required this.operatorId,
      required this.operatorName,
      required this.operatorType,
      required this.morningAvailable,
      required this.afternoonAvailable,
      required this.morningStartTime,
      required this.morningEndTime,
      required this.afternoonStartTime,
      required this.afternoonEndTime,
      required this.status,
      required this.reason})
      : super._();
  @override
  OperatorDayStatus rebuild(void Function(OperatorDayStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorDayStatusBuilder toBuilder() =>
      OperatorDayStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorDayStatus &&
        operatorId == other.operatorId &&
        operatorName == other.operatorName &&
        operatorType == other.operatorType &&
        morningAvailable == other.morningAvailable &&
        afternoonAvailable == other.afternoonAvailable &&
        morningStartTime == other.morningStartTime &&
        morningEndTime == other.morningEndTime &&
        afternoonStartTime == other.afternoonStartTime &&
        afternoonEndTime == other.afternoonEndTime &&
        status == other.status &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, operatorType.hashCode);
    _$hash = $jc(_$hash, morningAvailable.hashCode);
    _$hash = $jc(_$hash, afternoonAvailable.hashCode);
    _$hash = $jc(_$hash, morningStartTime.hashCode);
    _$hash = $jc(_$hash, morningEndTime.hashCode);
    _$hash = $jc(_$hash, afternoonStartTime.hashCode);
    _$hash = $jc(_$hash, afternoonEndTime.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorDayStatus')
          ..add('operatorId', operatorId)
          ..add('operatorName', operatorName)
          ..add('operatorType', operatorType)
          ..add('morningAvailable', morningAvailable)
          ..add('afternoonAvailable', afternoonAvailable)
          ..add('morningStartTime', morningStartTime)
          ..add('morningEndTime', morningEndTime)
          ..add('afternoonStartTime', afternoonStartTime)
          ..add('afternoonEndTime', afternoonEndTime)
          ..add('status', status)
          ..add('reason', reason))
        .toString();
  }
}

class OperatorDayStatusBuilder
    implements Builder<OperatorDayStatus, OperatorDayStatusBuilder> {
  _$OperatorDayStatus? _$v;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _operatorName;
  String? get operatorName => _$this._operatorName;
  set operatorName(String? operatorName) => _$this._operatorName = operatorName;

  String? _operatorType;
  String? get operatorType => _$this._operatorType;
  set operatorType(String? operatorType) => _$this._operatorType = operatorType;

  bool? _morningAvailable;
  bool? get morningAvailable => _$this._morningAvailable;
  set morningAvailable(bool? morningAvailable) =>
      _$this._morningAvailable = morningAvailable;

  bool? _afternoonAvailable;
  bool? get afternoonAvailable => _$this._afternoonAvailable;
  set afternoonAvailable(bool? afternoonAvailable) =>
      _$this._afternoonAvailable = afternoonAvailable;

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

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  OperatorDayStatusBuilder() {
    OperatorDayStatus._defaults(this);
  }

  OperatorDayStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatorId = $v.operatorId;
      _operatorName = $v.operatorName;
      _operatorType = $v.operatorType;
      _morningAvailable = $v.morningAvailable;
      _afternoonAvailable = $v.afternoonAvailable;
      _morningStartTime = $v.morningStartTime;
      _morningEndTime = $v.morningEndTime;
      _afternoonStartTime = $v.afternoonStartTime;
      _afternoonEndTime = $v.afternoonEndTime;
      _status = $v.status;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorDayStatus other) {
    _$v = other as _$OperatorDayStatus;
  }

  @override
  void update(void Function(OperatorDayStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorDayStatus build() => _build();

  _$OperatorDayStatus _build() {
    final _$result = _$v ??
        _$OperatorDayStatus._(
          operatorId: BuiltValueNullFieldError.checkNotNull(
              operatorId, r'OperatorDayStatus', 'operatorId'),
          operatorName: BuiltValueNullFieldError.checkNotNull(
              operatorName, r'OperatorDayStatus', 'operatorName'),
          operatorType: BuiltValueNullFieldError.checkNotNull(
              operatorType, r'OperatorDayStatus', 'operatorType'),
          morningAvailable: BuiltValueNullFieldError.checkNotNull(
              morningAvailable, r'OperatorDayStatus', 'morningAvailable'),
          afternoonAvailable: BuiltValueNullFieldError.checkNotNull(
              afternoonAvailable, r'OperatorDayStatus', 'afternoonAvailable'),
          morningStartTime: BuiltValueNullFieldError.checkNotNull(
              morningStartTime, r'OperatorDayStatus', 'morningStartTime'),
          morningEndTime: BuiltValueNullFieldError.checkNotNull(
              morningEndTime, r'OperatorDayStatus', 'morningEndTime'),
          afternoonStartTime: BuiltValueNullFieldError.checkNotNull(
              afternoonStartTime, r'OperatorDayStatus', 'afternoonStartTime'),
          afternoonEndTime: BuiltValueNullFieldError.checkNotNull(
              afternoonEndTime, r'OperatorDayStatus', 'afternoonEndTime'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'OperatorDayStatus', 'status'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'OperatorDayStatus', 'reason'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
