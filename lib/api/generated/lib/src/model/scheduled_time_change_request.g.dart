// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_time_change_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledTimeChangeRequest extends ScheduledTimeChangeRequest {
  @override
  final int areaId;
  @override
  final int dayId;
  @override
  final BuiltList<Timeslot> timeslot;
  @override
  final Date effectiveStartDate;
  @override
  final bool? checkInconsistenceOnly;
  @override
  final BuiltList<InconsistenceCorrected>? incostenceCorrected;

  factory _$ScheduledTimeChangeRequest(
          [void Function(ScheduledTimeChangeRequestBuilder)? updates]) =>
      (ScheduledTimeChangeRequestBuilder()..update(updates))._build();

  _$ScheduledTimeChangeRequest._(
      {required this.areaId,
      required this.dayId,
      required this.timeslot,
      required this.effectiveStartDate,
      this.checkInconsistenceOnly,
      this.incostenceCorrected})
      : super._();
  @override
  ScheduledTimeChangeRequest rebuild(
          void Function(ScheduledTimeChangeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledTimeChangeRequestBuilder toBuilder() =>
      ScheduledTimeChangeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledTimeChangeRequest &&
        areaId == other.areaId &&
        dayId == other.dayId &&
        timeslot == other.timeslot &&
        effectiveStartDate == other.effectiveStartDate &&
        checkInconsistenceOnly == other.checkInconsistenceOnly &&
        incostenceCorrected == other.incostenceCorrected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, dayId.hashCode);
    _$hash = $jc(_$hash, timeslot.hashCode);
    _$hash = $jc(_$hash, effectiveStartDate.hashCode);
    _$hash = $jc(_$hash, checkInconsistenceOnly.hashCode);
    _$hash = $jc(_$hash, incostenceCorrected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduledTimeChangeRequest')
          ..add('areaId', areaId)
          ..add('dayId', dayId)
          ..add('timeslot', timeslot)
          ..add('effectiveStartDate', effectiveStartDate)
          ..add('checkInconsistenceOnly', checkInconsistenceOnly)
          ..add('incostenceCorrected', incostenceCorrected))
        .toString();
  }
}

class ScheduledTimeChangeRequestBuilder
    implements
        Builder<ScheduledTimeChangeRequest, ScheduledTimeChangeRequestBuilder> {
  _$ScheduledTimeChangeRequest? _$v;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  int? _dayId;
  int? get dayId => _$this._dayId;
  set dayId(int? dayId) => _$this._dayId = dayId;

  ListBuilder<Timeslot>? _timeslot;
  ListBuilder<Timeslot> get timeslot =>
      _$this._timeslot ??= ListBuilder<Timeslot>();
  set timeslot(ListBuilder<Timeslot>? timeslot) => _$this._timeslot = timeslot;

  Date? _effectiveStartDate;
  Date? get effectiveStartDate => _$this._effectiveStartDate;
  set effectiveStartDate(Date? effectiveStartDate) =>
      _$this._effectiveStartDate = effectiveStartDate;

  bool? _checkInconsistenceOnly;
  bool? get checkInconsistenceOnly => _$this._checkInconsistenceOnly;
  set checkInconsistenceOnly(bool? checkInconsistenceOnly) =>
      _$this._checkInconsistenceOnly = checkInconsistenceOnly;

  ListBuilder<InconsistenceCorrected>? _incostenceCorrected;
  ListBuilder<InconsistenceCorrected> get incostenceCorrected =>
      _$this._incostenceCorrected ??= ListBuilder<InconsistenceCorrected>();
  set incostenceCorrected(
          ListBuilder<InconsistenceCorrected>? incostenceCorrected) =>
      _$this._incostenceCorrected = incostenceCorrected;

  ScheduledTimeChangeRequestBuilder() {
    ScheduledTimeChangeRequest._defaults(this);
  }

  ScheduledTimeChangeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaId = $v.areaId;
      _dayId = $v.dayId;
      _timeslot = $v.timeslot.toBuilder();
      _effectiveStartDate = $v.effectiveStartDate;
      _checkInconsistenceOnly = $v.checkInconsistenceOnly;
      _incostenceCorrected = $v.incostenceCorrected?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledTimeChangeRequest other) {
    _$v = other as _$ScheduledTimeChangeRequest;
  }

  @override
  void update(void Function(ScheduledTimeChangeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledTimeChangeRequest build() => _build();

  _$ScheduledTimeChangeRequest _build() {
    _$ScheduledTimeChangeRequest _$result;
    try {
      _$result = _$v ??
          _$ScheduledTimeChangeRequest._(
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'ScheduledTimeChangeRequest', 'areaId'),
            dayId: BuiltValueNullFieldError.checkNotNull(
                dayId, r'ScheduledTimeChangeRequest', 'dayId'),
            timeslot: timeslot.build(),
            effectiveStartDate: BuiltValueNullFieldError.checkNotNull(
                effectiveStartDate,
                r'ScheduledTimeChangeRequest',
                'effectiveStartDate'),
            checkInconsistenceOnly: checkInconsistenceOnly,
            incostenceCorrected: _incostenceCorrected?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeslot';
        timeslot.build();

        _$failedField = 'incostenceCorrected';
        _incostenceCorrected?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ScheduledTimeChangeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
