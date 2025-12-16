// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_closing_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecialClosingUpdate extends SpecialClosingUpdate {
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

  factory _$SpecialClosingUpdate(
          [void Function(SpecialClosingUpdateBuilder)? updates]) =>
      (SpecialClosingUpdateBuilder()..update(updates))._build();

  _$SpecialClosingUpdate._(
      {required this.date,
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
  SpecialClosingUpdate rebuild(
          void Function(SpecialClosingUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialClosingUpdateBuilder toBuilder() =>
      SpecialClosingUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialClosingUpdate &&
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
    return (newBuiltValueToStringHelper(r'SpecialClosingUpdate')
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

class SpecialClosingUpdateBuilder
    implements Builder<SpecialClosingUpdate, SpecialClosingUpdateBuilder> {
  _$SpecialClosingUpdate? _$v;

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

  SpecialClosingUpdateBuilder() {
    SpecialClosingUpdate._defaults(this);
  }

  SpecialClosingUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(SpecialClosingUpdate other) {
    _$v = other as _$SpecialClosingUpdate;
  }

  @override
  void update(void Function(SpecialClosingUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialClosingUpdate build() => _build();

  _$SpecialClosingUpdate _build() {
    final _$result = _$v ??
        _$SpecialClosingUpdate._(
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'SpecialClosingUpdate', 'date'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'SpecialClosingUpdate', 'reason'),
          isFullDay: BuiltValueNullFieldError.checkNotNull(
              isFullDay, r'SpecialClosingUpdate', 'isFullDay'),
          morningClosed: BuiltValueNullFieldError.checkNotNull(
              morningClosed, r'SpecialClosingUpdate', 'morningClosed'),
          morningPartial: BuiltValueNullFieldError.checkNotNull(
              morningPartial, r'SpecialClosingUpdate', 'morningPartial'),
          morningFromTime: morningFromTime,
          morningToTime: morningToTime,
          afternoonClosed: BuiltValueNullFieldError.checkNotNull(
              afternoonClosed, r'SpecialClosingUpdate', 'afternoonClosed'),
          afternoonPartial: BuiltValueNullFieldError.checkNotNull(
              afternoonPartial, r'SpecialClosingUpdate', 'afternoonPartial'),
          afternoonFromTime: afternoonFromTime,
          afternoonToTime: afternoonToTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
