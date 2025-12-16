// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_opening_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecialOpeningRequest extends SpecialOpeningRequest {
  @override
  final int areaId;
  @override
  final Date date;
  @override
  final String reason;
  @override
  final bool? morningOpen;
  @override
  final String? morningOpeningTime;
  @override
  final String? morningClosingTime;
  @override
  final bool? afternoonOpen;
  @override
  final String? afternoonOpeningTime;
  @override
  final String? afternoonClosingTime;
  @override
  final bool? getOperatorsOnly;
  @override
  final BuiltList<OperatorSchedule>? operatorSchedules;

  factory _$SpecialOpeningRequest(
          [void Function(SpecialOpeningRequestBuilder)? updates]) =>
      (SpecialOpeningRequestBuilder()..update(updates))._build();

  _$SpecialOpeningRequest._(
      {required this.areaId,
      required this.date,
      required this.reason,
      this.morningOpen,
      this.morningOpeningTime,
      this.morningClosingTime,
      this.afternoonOpen,
      this.afternoonOpeningTime,
      this.afternoonClosingTime,
      this.getOperatorsOnly,
      this.operatorSchedules})
      : super._();
  @override
  SpecialOpeningRequest rebuild(
          void Function(SpecialOpeningRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialOpeningRequestBuilder toBuilder() =>
      SpecialOpeningRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialOpeningRequest &&
        areaId == other.areaId &&
        date == other.date &&
        reason == other.reason &&
        morningOpen == other.morningOpen &&
        morningOpeningTime == other.morningOpeningTime &&
        morningClosingTime == other.morningClosingTime &&
        afternoonOpen == other.afternoonOpen &&
        afternoonOpeningTime == other.afternoonOpeningTime &&
        afternoonClosingTime == other.afternoonClosingTime &&
        getOperatorsOnly == other.getOperatorsOnly &&
        operatorSchedules == other.operatorSchedules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, morningOpen.hashCode);
    _$hash = $jc(_$hash, morningOpeningTime.hashCode);
    _$hash = $jc(_$hash, morningClosingTime.hashCode);
    _$hash = $jc(_$hash, afternoonOpen.hashCode);
    _$hash = $jc(_$hash, afternoonOpeningTime.hashCode);
    _$hash = $jc(_$hash, afternoonClosingTime.hashCode);
    _$hash = $jc(_$hash, getOperatorsOnly.hashCode);
    _$hash = $jc(_$hash, operatorSchedules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpecialOpeningRequest')
          ..add('areaId', areaId)
          ..add('date', date)
          ..add('reason', reason)
          ..add('morningOpen', morningOpen)
          ..add('morningOpeningTime', morningOpeningTime)
          ..add('morningClosingTime', morningClosingTime)
          ..add('afternoonOpen', afternoonOpen)
          ..add('afternoonOpeningTime', afternoonOpeningTime)
          ..add('afternoonClosingTime', afternoonClosingTime)
          ..add('getOperatorsOnly', getOperatorsOnly)
          ..add('operatorSchedules', operatorSchedules))
        .toString();
  }
}

class SpecialOpeningRequestBuilder
    implements Builder<SpecialOpeningRequest, SpecialOpeningRequestBuilder> {
  _$SpecialOpeningRequest? _$v;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  bool? _morningOpen;
  bool? get morningOpen => _$this._morningOpen;
  set morningOpen(bool? morningOpen) => _$this._morningOpen = morningOpen;

  String? _morningOpeningTime;
  String? get morningOpeningTime => _$this._morningOpeningTime;
  set morningOpeningTime(String? morningOpeningTime) =>
      _$this._morningOpeningTime = morningOpeningTime;

  String? _morningClosingTime;
  String? get morningClosingTime => _$this._morningClosingTime;
  set morningClosingTime(String? morningClosingTime) =>
      _$this._morningClosingTime = morningClosingTime;

  bool? _afternoonOpen;
  bool? get afternoonOpen => _$this._afternoonOpen;
  set afternoonOpen(bool? afternoonOpen) =>
      _$this._afternoonOpen = afternoonOpen;

  String? _afternoonOpeningTime;
  String? get afternoonOpeningTime => _$this._afternoonOpeningTime;
  set afternoonOpeningTime(String? afternoonOpeningTime) =>
      _$this._afternoonOpeningTime = afternoonOpeningTime;

  String? _afternoonClosingTime;
  String? get afternoonClosingTime => _$this._afternoonClosingTime;
  set afternoonClosingTime(String? afternoonClosingTime) =>
      _$this._afternoonClosingTime = afternoonClosingTime;

  bool? _getOperatorsOnly;
  bool? get getOperatorsOnly => _$this._getOperatorsOnly;
  set getOperatorsOnly(bool? getOperatorsOnly) =>
      _$this._getOperatorsOnly = getOperatorsOnly;

  ListBuilder<OperatorSchedule>? _operatorSchedules;
  ListBuilder<OperatorSchedule> get operatorSchedules =>
      _$this._operatorSchedules ??= ListBuilder<OperatorSchedule>();
  set operatorSchedules(ListBuilder<OperatorSchedule>? operatorSchedules) =>
      _$this._operatorSchedules = operatorSchedules;

  SpecialOpeningRequestBuilder() {
    SpecialOpeningRequest._defaults(this);
  }

  SpecialOpeningRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaId = $v.areaId;
      _date = $v.date;
      _reason = $v.reason;
      _morningOpen = $v.morningOpen;
      _morningOpeningTime = $v.morningOpeningTime;
      _morningClosingTime = $v.morningClosingTime;
      _afternoonOpen = $v.afternoonOpen;
      _afternoonOpeningTime = $v.afternoonOpeningTime;
      _afternoonClosingTime = $v.afternoonClosingTime;
      _getOperatorsOnly = $v.getOperatorsOnly;
      _operatorSchedules = $v.operatorSchedules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpecialOpeningRequest other) {
    _$v = other as _$SpecialOpeningRequest;
  }

  @override
  void update(void Function(SpecialOpeningRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialOpeningRequest build() => _build();

  _$SpecialOpeningRequest _build() {
    _$SpecialOpeningRequest _$result;
    try {
      _$result = _$v ??
          _$SpecialOpeningRequest._(
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'SpecialOpeningRequest', 'areaId'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'SpecialOpeningRequest', 'date'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'SpecialOpeningRequest', 'reason'),
            morningOpen: morningOpen,
            morningOpeningTime: morningOpeningTime,
            morningClosingTime: morningClosingTime,
            afternoonOpen: afternoonOpen,
            afternoonOpeningTime: afternoonOpeningTime,
            afternoonClosingTime: afternoonClosingTime,
            getOperatorsOnly: getOperatorsOnly,
            operatorSchedules: _operatorSchedules?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operatorSchedules';
        _operatorSchedules?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SpecialOpeningRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
