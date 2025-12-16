// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_closing_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecialClosingCreate extends SpecialClosingCreate {
  @override
  final int areaId;
  @override
  final Date date;
  @override
  final String reason;
  @override
  final bool isFullDay;
  @override
  final bool morningClosed;
  @override
  final bool morningPartial;
  @override
  final String? morningFromTime;
  @override
  final String? morningToTime;
  @override
  final bool afternoonClosed;
  @override
  final bool afternoonPartial;
  @override
  final String? afternoonFromTime;
  @override
  final String? afternoonToTime;

  factory _$SpecialClosingCreate(
          [void Function(SpecialClosingCreateBuilder)? updates]) =>
      (SpecialClosingCreateBuilder()..update(updates))._build();

  _$SpecialClosingCreate._(
      {required this.areaId,
      required this.date,
      required this.reason,
      required this.isFullDay,
      required this.morningClosed,
      required this.morningPartial,
      this.morningFromTime,
      this.morningToTime,
      required this.afternoonClosed,
      required this.afternoonPartial,
      this.afternoonFromTime,
      this.afternoonToTime})
      : super._();
  @override
  SpecialClosingCreate rebuild(
          void Function(SpecialClosingCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialClosingCreateBuilder toBuilder() =>
      SpecialClosingCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialClosingCreate &&
        areaId == other.areaId &&
        date == other.date &&
        reason == other.reason &&
        isFullDay == other.isFullDay &&
        morningClosed == other.morningClosed &&
        morningPartial == other.morningPartial &&
        morningFromTime == other.morningFromTime &&
        morningToTime == other.morningToTime &&
        afternoonClosed == other.afternoonClosed &&
        afternoonPartial == other.afternoonPartial &&
        afternoonFromTime == other.afternoonFromTime &&
        afternoonToTime == other.afternoonToTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, isFullDay.hashCode);
    _$hash = $jc(_$hash, morningClosed.hashCode);
    _$hash = $jc(_$hash, morningPartial.hashCode);
    _$hash = $jc(_$hash, morningFromTime.hashCode);
    _$hash = $jc(_$hash, morningToTime.hashCode);
    _$hash = $jc(_$hash, afternoonClosed.hashCode);
    _$hash = $jc(_$hash, afternoonPartial.hashCode);
    _$hash = $jc(_$hash, afternoonFromTime.hashCode);
    _$hash = $jc(_$hash, afternoonToTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpecialClosingCreate')
          ..add('areaId', areaId)
          ..add('date', date)
          ..add('reason', reason)
          ..add('isFullDay', isFullDay)
          ..add('morningClosed', morningClosed)
          ..add('morningPartial', morningPartial)
          ..add('morningFromTime', morningFromTime)
          ..add('morningToTime', morningToTime)
          ..add('afternoonClosed', afternoonClosed)
          ..add('afternoonPartial', afternoonPartial)
          ..add('afternoonFromTime', afternoonFromTime)
          ..add('afternoonToTime', afternoonToTime))
        .toString();
  }
}

class SpecialClosingCreateBuilder
    implements Builder<SpecialClosingCreate, SpecialClosingCreateBuilder> {
  _$SpecialClosingCreate? _$v;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  bool? _isFullDay;
  bool? get isFullDay => _$this._isFullDay;
  set isFullDay(bool? isFullDay) => _$this._isFullDay = isFullDay;

  bool? _morningClosed;
  bool? get morningClosed => _$this._morningClosed;
  set morningClosed(bool? morningClosed) =>
      _$this._morningClosed = morningClosed;

  bool? _morningPartial;
  bool? get morningPartial => _$this._morningPartial;
  set morningPartial(bool? morningPartial) =>
      _$this._morningPartial = morningPartial;

  String? _morningFromTime;
  String? get morningFromTime => _$this._morningFromTime;
  set morningFromTime(String? morningFromTime) =>
      _$this._morningFromTime = morningFromTime;

  String? _morningToTime;
  String? get morningToTime => _$this._morningToTime;
  set morningToTime(String? morningToTime) =>
      _$this._morningToTime = morningToTime;

  bool? _afternoonClosed;
  bool? get afternoonClosed => _$this._afternoonClosed;
  set afternoonClosed(bool? afternoonClosed) =>
      _$this._afternoonClosed = afternoonClosed;

  bool? _afternoonPartial;
  bool? get afternoonPartial => _$this._afternoonPartial;
  set afternoonPartial(bool? afternoonPartial) =>
      _$this._afternoonPartial = afternoonPartial;

  String? _afternoonFromTime;
  String? get afternoonFromTime => _$this._afternoonFromTime;
  set afternoonFromTime(String? afternoonFromTime) =>
      _$this._afternoonFromTime = afternoonFromTime;

  String? _afternoonToTime;
  String? get afternoonToTime => _$this._afternoonToTime;
  set afternoonToTime(String? afternoonToTime) =>
      _$this._afternoonToTime = afternoonToTime;

  SpecialClosingCreateBuilder() {
    SpecialClosingCreate._defaults(this);
  }

  SpecialClosingCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaId = $v.areaId;
      _date = $v.date;
      _reason = $v.reason;
      _isFullDay = $v.isFullDay;
      _morningClosed = $v.morningClosed;
      _morningPartial = $v.morningPartial;
      _morningFromTime = $v.morningFromTime;
      _morningToTime = $v.morningToTime;
      _afternoonClosed = $v.afternoonClosed;
      _afternoonPartial = $v.afternoonPartial;
      _afternoonFromTime = $v.afternoonFromTime;
      _afternoonToTime = $v.afternoonToTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpecialClosingCreate other) {
    _$v = other as _$SpecialClosingCreate;
  }

  @override
  void update(void Function(SpecialClosingCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialClosingCreate build() => _build();

  _$SpecialClosingCreate _build() {
    final _$result = _$v ??
        _$SpecialClosingCreate._(
          areaId: BuiltValueNullFieldError.checkNotNull(
              areaId, r'SpecialClosingCreate', 'areaId'),
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'SpecialClosingCreate', 'date'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'SpecialClosingCreate', 'reason'),
          isFullDay: BuiltValueNullFieldError.checkNotNull(
              isFullDay, r'SpecialClosingCreate', 'isFullDay'),
          morningClosed: BuiltValueNullFieldError.checkNotNull(
              morningClosed, r'SpecialClosingCreate', 'morningClosed'),
          morningPartial: BuiltValueNullFieldError.checkNotNull(
              morningPartial, r'SpecialClosingCreate', 'morningPartial'),
          morningFromTime: morningFromTime,
          morningToTime: morningToTime,
          afternoonClosed: BuiltValueNullFieldError.checkNotNull(
              afternoonClosed, r'SpecialClosingCreate', 'afternoonClosed'),
          afternoonPartial: BuiltValueNullFieldError.checkNotNull(
              afternoonPartial, r'SpecialClosingCreate', 'afternoonPartial'),
          afternoonFromTime: afternoonFromTime,
          afternoonToTime: afternoonToTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
