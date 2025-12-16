// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_time_change_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledTimeChangeResponse extends ScheduledTimeChangeResponse {
  @override
  final int id;
  @override
  final int areaId;
  @override
  final String areaName;
  @override
  final Date effectiveFrom;
  @override
  final String reason;
  @override
  final bool isActive;
  @override
  final DateTime createdAt;
  @override
  final BuiltList<ScheduledTimeSlotResponse> timeSlots;
  @override
  final CorrectionsApplied? correctionsApplied;

  factory _$ScheduledTimeChangeResponse(
          [void Function(ScheduledTimeChangeResponseBuilder)? updates]) =>
      (ScheduledTimeChangeResponseBuilder()..update(updates))._build();

  _$ScheduledTimeChangeResponse._(
      {required this.id,
      required this.areaId,
      required this.areaName,
      required this.effectiveFrom,
      required this.reason,
      required this.isActive,
      required this.createdAt,
      required this.timeSlots,
      this.correctionsApplied})
      : super._();
  @override
  ScheduledTimeChangeResponse rebuild(
          void Function(ScheduledTimeChangeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledTimeChangeResponseBuilder toBuilder() =>
      ScheduledTimeChangeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledTimeChangeResponse &&
        id == other.id &&
        areaId == other.areaId &&
        areaName == other.areaName &&
        effectiveFrom == other.effectiveFrom &&
        reason == other.reason &&
        isActive == other.isActive &&
        createdAt == other.createdAt &&
        timeSlots == other.timeSlots &&
        correctionsApplied == other.correctionsApplied;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, areaName.hashCode);
    _$hash = $jc(_$hash, effectiveFrom.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jc(_$hash, correctionsApplied.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduledTimeChangeResponse')
          ..add('id', id)
          ..add('areaId', areaId)
          ..add('areaName', areaName)
          ..add('effectiveFrom', effectiveFrom)
          ..add('reason', reason)
          ..add('isActive', isActive)
          ..add('createdAt', createdAt)
          ..add('timeSlots', timeSlots)
          ..add('correctionsApplied', correctionsApplied))
        .toString();
  }
}

class ScheduledTimeChangeResponseBuilder
    implements
        Builder<ScheduledTimeChangeResponse,
            ScheduledTimeChangeResponseBuilder> {
  _$ScheduledTimeChangeResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  String? _areaName;
  String? get areaName => _$this._areaName;
  set areaName(String? areaName) => _$this._areaName = areaName;

  Date? _effectiveFrom;
  Date? get effectiveFrom => _$this._effectiveFrom;
  set effectiveFrom(Date? effectiveFrom) =>
      _$this._effectiveFrom = effectiveFrom;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ListBuilder<ScheduledTimeSlotResponse>? _timeSlots;
  ListBuilder<ScheduledTimeSlotResponse> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<ScheduledTimeSlotResponse>();
  set timeSlots(ListBuilder<ScheduledTimeSlotResponse>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  CorrectionsAppliedBuilder? _correctionsApplied;
  CorrectionsAppliedBuilder get correctionsApplied =>
      _$this._correctionsApplied ??= CorrectionsAppliedBuilder();
  set correctionsApplied(CorrectionsAppliedBuilder? correctionsApplied) =>
      _$this._correctionsApplied = correctionsApplied;

  ScheduledTimeChangeResponseBuilder() {
    ScheduledTimeChangeResponse._defaults(this);
  }

  ScheduledTimeChangeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _areaId = $v.areaId;
      _areaName = $v.areaName;
      _effectiveFrom = $v.effectiveFrom;
      _reason = $v.reason;
      _isActive = $v.isActive;
      _createdAt = $v.createdAt;
      _timeSlots = $v.timeSlots.toBuilder();
      _correctionsApplied = $v.correctionsApplied?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledTimeChangeResponse other) {
    _$v = other as _$ScheduledTimeChangeResponse;
  }

  @override
  void update(void Function(ScheduledTimeChangeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledTimeChangeResponse build() => _build();

  _$ScheduledTimeChangeResponse _build() {
    _$ScheduledTimeChangeResponse _$result;
    try {
      _$result = _$v ??
          _$ScheduledTimeChangeResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ScheduledTimeChangeResponse', 'id'),
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'ScheduledTimeChangeResponse', 'areaId'),
            areaName: BuiltValueNullFieldError.checkNotNull(
                areaName, r'ScheduledTimeChangeResponse', 'areaName'),
            effectiveFrom: BuiltValueNullFieldError.checkNotNull(
                effectiveFrom, r'ScheduledTimeChangeResponse', 'effectiveFrom'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'ScheduledTimeChangeResponse', 'reason'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'ScheduledTimeChangeResponse', 'isActive'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'ScheduledTimeChangeResponse', 'createdAt'),
            timeSlots: timeSlots.build(),
            correctionsApplied: _correctionsApplied?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
        _$failedField = 'correctionsApplied';
        _correctionsApplied?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ScheduledTimeChangeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
