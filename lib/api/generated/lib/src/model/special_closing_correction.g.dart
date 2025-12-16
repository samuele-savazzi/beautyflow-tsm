// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_closing_correction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecialClosingCorrection extends SpecialClosingCorrection {
  @override
  final int id;
  @override
  final Date date;
  @override
  final String reason;
  @override
  final bool ignore;
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
  @override
  final bool? previousMorningClosed;
  @override
  final bool? previousMorningPartial;
  @override
  final String? previousMorningFromTime;
  @override
  final String? previousMorningToTime;
  @override
  final bool? previousAfternoonClosed;
  @override
  final bool? previousAfternoonPartial;
  @override
  final String? previousAfternoonFromTime;
  @override
  final String? previousAfternoonToTime;

  factory _$SpecialClosingCorrection(
          [void Function(SpecialClosingCorrectionBuilder)? updates]) =>
      (SpecialClosingCorrectionBuilder()..update(updates))._build();

  _$SpecialClosingCorrection._(
      {required this.id,
      required this.date,
      required this.reason,
      required this.ignore,
      required this.isFullDay,
      required this.morningClosed,
      required this.morningPartial,
      this.morningFromTime,
      this.morningToTime,
      required this.afternoonClosed,
      required this.afternoonPartial,
      this.afternoonFromTime,
      this.afternoonToTime,
      this.previousMorningClosed,
      this.previousMorningPartial,
      this.previousMorningFromTime,
      this.previousMorningToTime,
      this.previousAfternoonClosed,
      this.previousAfternoonPartial,
      this.previousAfternoonFromTime,
      this.previousAfternoonToTime})
      : super._();
  @override
  SpecialClosingCorrection rebuild(
          void Function(SpecialClosingCorrectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialClosingCorrectionBuilder toBuilder() =>
      SpecialClosingCorrectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialClosingCorrection &&
        id == other.id &&
        date == other.date &&
        reason == other.reason &&
        ignore == other.ignore &&
        isFullDay == other.isFullDay &&
        morningClosed == other.morningClosed &&
        morningPartial == other.morningPartial &&
        morningFromTime == other.morningFromTime &&
        morningToTime == other.morningToTime &&
        afternoonClosed == other.afternoonClosed &&
        afternoonPartial == other.afternoonPartial &&
        afternoonFromTime == other.afternoonFromTime &&
        afternoonToTime == other.afternoonToTime &&
        previousMorningClosed == other.previousMorningClosed &&
        previousMorningPartial == other.previousMorningPartial &&
        previousMorningFromTime == other.previousMorningFromTime &&
        previousMorningToTime == other.previousMorningToTime &&
        previousAfternoonClosed == other.previousAfternoonClosed &&
        previousAfternoonPartial == other.previousAfternoonPartial &&
        previousAfternoonFromTime == other.previousAfternoonFromTime &&
        previousAfternoonToTime == other.previousAfternoonToTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, ignore.hashCode);
    _$hash = $jc(_$hash, isFullDay.hashCode);
    _$hash = $jc(_$hash, morningClosed.hashCode);
    _$hash = $jc(_$hash, morningPartial.hashCode);
    _$hash = $jc(_$hash, morningFromTime.hashCode);
    _$hash = $jc(_$hash, morningToTime.hashCode);
    _$hash = $jc(_$hash, afternoonClosed.hashCode);
    _$hash = $jc(_$hash, afternoonPartial.hashCode);
    _$hash = $jc(_$hash, afternoonFromTime.hashCode);
    _$hash = $jc(_$hash, afternoonToTime.hashCode);
    _$hash = $jc(_$hash, previousMorningClosed.hashCode);
    _$hash = $jc(_$hash, previousMorningPartial.hashCode);
    _$hash = $jc(_$hash, previousMorningFromTime.hashCode);
    _$hash = $jc(_$hash, previousMorningToTime.hashCode);
    _$hash = $jc(_$hash, previousAfternoonClosed.hashCode);
    _$hash = $jc(_$hash, previousAfternoonPartial.hashCode);
    _$hash = $jc(_$hash, previousAfternoonFromTime.hashCode);
    _$hash = $jc(_$hash, previousAfternoonToTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpecialClosingCorrection')
          ..add('id', id)
          ..add('date', date)
          ..add('reason', reason)
          ..add('ignore', ignore)
          ..add('isFullDay', isFullDay)
          ..add('morningClosed', morningClosed)
          ..add('morningPartial', morningPartial)
          ..add('morningFromTime', morningFromTime)
          ..add('morningToTime', morningToTime)
          ..add('afternoonClosed', afternoonClosed)
          ..add('afternoonPartial', afternoonPartial)
          ..add('afternoonFromTime', afternoonFromTime)
          ..add('afternoonToTime', afternoonToTime)
          ..add('previousMorningClosed', previousMorningClosed)
          ..add('previousMorningPartial', previousMorningPartial)
          ..add('previousMorningFromTime', previousMorningFromTime)
          ..add('previousMorningToTime', previousMorningToTime)
          ..add('previousAfternoonClosed', previousAfternoonClosed)
          ..add('previousAfternoonPartial', previousAfternoonPartial)
          ..add('previousAfternoonFromTime', previousAfternoonFromTime)
          ..add('previousAfternoonToTime', previousAfternoonToTime))
        .toString();
  }
}

class SpecialClosingCorrectionBuilder
    implements
        Builder<SpecialClosingCorrection, SpecialClosingCorrectionBuilder> {
  _$SpecialClosingCorrection? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  bool? _ignore;
  bool? get ignore => _$this._ignore;
  set ignore(bool? ignore) => _$this._ignore = ignore;

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

  bool? _previousMorningClosed;
  bool? get previousMorningClosed => _$this._previousMorningClosed;
  set previousMorningClosed(bool? previousMorningClosed) =>
      _$this._previousMorningClosed = previousMorningClosed;

  bool? _previousMorningPartial;
  bool? get previousMorningPartial => _$this._previousMorningPartial;
  set previousMorningPartial(bool? previousMorningPartial) =>
      _$this._previousMorningPartial = previousMorningPartial;

  String? _previousMorningFromTime;
  String? get previousMorningFromTime => _$this._previousMorningFromTime;
  set previousMorningFromTime(String? previousMorningFromTime) =>
      _$this._previousMorningFromTime = previousMorningFromTime;

  String? _previousMorningToTime;
  String? get previousMorningToTime => _$this._previousMorningToTime;
  set previousMorningToTime(String? previousMorningToTime) =>
      _$this._previousMorningToTime = previousMorningToTime;

  bool? _previousAfternoonClosed;
  bool? get previousAfternoonClosed => _$this._previousAfternoonClosed;
  set previousAfternoonClosed(bool? previousAfternoonClosed) =>
      _$this._previousAfternoonClosed = previousAfternoonClosed;

  bool? _previousAfternoonPartial;
  bool? get previousAfternoonPartial => _$this._previousAfternoonPartial;
  set previousAfternoonPartial(bool? previousAfternoonPartial) =>
      _$this._previousAfternoonPartial = previousAfternoonPartial;

  String? _previousAfternoonFromTime;
  String? get previousAfternoonFromTime => _$this._previousAfternoonFromTime;
  set previousAfternoonFromTime(String? previousAfternoonFromTime) =>
      _$this._previousAfternoonFromTime = previousAfternoonFromTime;

  String? _previousAfternoonToTime;
  String? get previousAfternoonToTime => _$this._previousAfternoonToTime;
  set previousAfternoonToTime(String? previousAfternoonToTime) =>
      _$this._previousAfternoonToTime = previousAfternoonToTime;

  SpecialClosingCorrectionBuilder() {
    SpecialClosingCorrection._defaults(this);
  }

  SpecialClosingCorrectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _date = $v.date;
      _reason = $v.reason;
      _ignore = $v.ignore;
      _isFullDay = $v.isFullDay;
      _morningClosed = $v.morningClosed;
      _morningPartial = $v.morningPartial;
      _morningFromTime = $v.morningFromTime;
      _morningToTime = $v.morningToTime;
      _afternoonClosed = $v.afternoonClosed;
      _afternoonPartial = $v.afternoonPartial;
      _afternoonFromTime = $v.afternoonFromTime;
      _afternoonToTime = $v.afternoonToTime;
      _previousMorningClosed = $v.previousMorningClosed;
      _previousMorningPartial = $v.previousMorningPartial;
      _previousMorningFromTime = $v.previousMorningFromTime;
      _previousMorningToTime = $v.previousMorningToTime;
      _previousAfternoonClosed = $v.previousAfternoonClosed;
      _previousAfternoonPartial = $v.previousAfternoonPartial;
      _previousAfternoonFromTime = $v.previousAfternoonFromTime;
      _previousAfternoonToTime = $v.previousAfternoonToTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpecialClosingCorrection other) {
    _$v = other as _$SpecialClosingCorrection;
  }

  @override
  void update(void Function(SpecialClosingCorrectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialClosingCorrection build() => _build();

  _$SpecialClosingCorrection _build() {
    final _$result = _$v ??
        _$SpecialClosingCorrection._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'SpecialClosingCorrection', 'id'),
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'SpecialClosingCorrection', 'date'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'SpecialClosingCorrection', 'reason'),
          ignore: BuiltValueNullFieldError.checkNotNull(
              ignore, r'SpecialClosingCorrection', 'ignore'),
          isFullDay: BuiltValueNullFieldError.checkNotNull(
              isFullDay, r'SpecialClosingCorrection', 'isFullDay'),
          morningClosed: BuiltValueNullFieldError.checkNotNull(
              morningClosed, r'SpecialClosingCorrection', 'morningClosed'),
          morningPartial: BuiltValueNullFieldError.checkNotNull(
              morningPartial, r'SpecialClosingCorrection', 'morningPartial'),
          morningFromTime: morningFromTime,
          morningToTime: morningToTime,
          afternoonClosed: BuiltValueNullFieldError.checkNotNull(
              afternoonClosed, r'SpecialClosingCorrection', 'afternoonClosed'),
          afternoonPartial: BuiltValueNullFieldError.checkNotNull(
              afternoonPartial,
              r'SpecialClosingCorrection',
              'afternoonPartial'),
          afternoonFromTime: afternoonFromTime,
          afternoonToTime: afternoonToTime,
          previousMorningClosed: previousMorningClosed,
          previousMorningPartial: previousMorningPartial,
          previousMorningFromTime: previousMorningFromTime,
          previousMorningToTime: previousMorningToTime,
          previousAfternoonClosed: previousAfternoonClosed,
          previousAfternoonPartial: previousAfternoonPartial,
          previousAfternoonFromTime: previousAfternoonFromTime,
          previousAfternoonToTime: previousAfternoonToTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
