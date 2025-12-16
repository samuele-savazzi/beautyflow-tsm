// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_availability_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FirstAvailabilityResponse extends FirstAvailabilityResponse {
  @override
  final Date date;
  @override
  final String period;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final int workstationId;
  @override
  final double score;

  factory _$FirstAvailabilityResponse(
          [void Function(FirstAvailabilityResponseBuilder)? updates]) =>
      (FirstAvailabilityResponseBuilder()..update(updates))._build();

  _$FirstAvailabilityResponse._(
      {required this.date,
      required this.period,
      required this.startTime,
      required this.endTime,
      required this.workstationId,
      required this.score})
      : super._();
  @override
  FirstAvailabilityResponse rebuild(
          void Function(FirstAvailabilityResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FirstAvailabilityResponseBuilder toBuilder() =>
      FirstAvailabilityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FirstAvailabilityResponse &&
        date == other.date &&
        period == other.period &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        workstationId == other.workstationId &&
        score == other.score;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, workstationId.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FirstAvailabilityResponse')
          ..add('date', date)
          ..add('period', period)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('workstationId', workstationId)
          ..add('score', score))
        .toString();
  }
}

class FirstAvailabilityResponseBuilder
    implements
        Builder<FirstAvailabilityResponse, FirstAvailabilityResponseBuilder> {
  _$FirstAvailabilityResponse? _$v;

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

  int? _workstationId;
  int? get workstationId => _$this._workstationId;
  set workstationId(int? workstationId) =>
      _$this._workstationId = workstationId;

  double? _score;
  double? get score => _$this._score;
  set score(double? score) => _$this._score = score;

  FirstAvailabilityResponseBuilder() {
    FirstAvailabilityResponse._defaults(this);
  }

  FirstAvailabilityResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _period = $v.period;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _workstationId = $v.workstationId;
      _score = $v.score;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FirstAvailabilityResponse other) {
    _$v = other as _$FirstAvailabilityResponse;
  }

  @override
  void update(void Function(FirstAvailabilityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FirstAvailabilityResponse build() => _build();

  _$FirstAvailabilityResponse _build() {
    final _$result = _$v ??
        _$FirstAvailabilityResponse._(
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'FirstAvailabilityResponse', 'date'),
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'FirstAvailabilityResponse', 'period'),
          startTime: BuiltValueNullFieldError.checkNotNull(
              startTime, r'FirstAvailabilityResponse', 'startTime'),
          endTime: BuiltValueNullFieldError.checkNotNull(
              endTime, r'FirstAvailabilityResponse', 'endTime'),
          workstationId: BuiltValueNullFieldError.checkNotNull(
              workstationId, r'FirstAvailabilityResponse', 'workstationId'),
          score: BuiltValueNullFieldError.checkNotNull(
              score, r'FirstAvailabilityResponse', 'score'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
