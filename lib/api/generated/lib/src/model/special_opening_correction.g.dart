// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_opening_correction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecialOpeningCorrection extends SpecialOpeningCorrection {
  @override
  final int id;
  @override
  final Date date;
  @override
  final String reason;
  @override
  final bool ignore;
  @override
  final bool morningOpen;
  @override
  final String? morningOpeningTime;
  @override
  final String? morningClosingTime;
  @override
  final bool afternoonOpen;
  @override
  final String? afternoonOpeningTime;
  @override
  final String? afternoonClosingTime;

  factory _$SpecialOpeningCorrection(
          [void Function(SpecialOpeningCorrectionBuilder)? updates]) =>
      (SpecialOpeningCorrectionBuilder()..update(updates))._build();

  _$SpecialOpeningCorrection._(
      {required this.id,
      required this.date,
      required this.reason,
      required this.ignore,
      required this.morningOpen,
      this.morningOpeningTime,
      this.morningClosingTime,
      required this.afternoonOpen,
      this.afternoonOpeningTime,
      this.afternoonClosingTime})
      : super._();
  @override
  SpecialOpeningCorrection rebuild(
          void Function(SpecialOpeningCorrectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialOpeningCorrectionBuilder toBuilder() =>
      SpecialOpeningCorrectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialOpeningCorrection &&
        id == other.id &&
        date == other.date &&
        reason == other.reason &&
        ignore == other.ignore &&
        morningOpen == other.morningOpen &&
        morningOpeningTime == other.morningOpeningTime &&
        morningClosingTime == other.morningClosingTime &&
        afternoonOpen == other.afternoonOpen &&
        afternoonOpeningTime == other.afternoonOpeningTime &&
        afternoonClosingTime == other.afternoonClosingTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, ignore.hashCode);
    _$hash = $jc(_$hash, morningOpen.hashCode);
    _$hash = $jc(_$hash, morningOpeningTime.hashCode);
    _$hash = $jc(_$hash, morningClosingTime.hashCode);
    _$hash = $jc(_$hash, afternoonOpen.hashCode);
    _$hash = $jc(_$hash, afternoonOpeningTime.hashCode);
    _$hash = $jc(_$hash, afternoonClosingTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpecialOpeningCorrection')
          ..add('id', id)
          ..add('date', date)
          ..add('reason', reason)
          ..add('ignore', ignore)
          ..add('morningOpen', morningOpen)
          ..add('morningOpeningTime', morningOpeningTime)
          ..add('morningClosingTime', morningClosingTime)
          ..add('afternoonOpen', afternoonOpen)
          ..add('afternoonOpeningTime', afternoonOpeningTime)
          ..add('afternoonClosingTime', afternoonClosingTime))
        .toString();
  }
}

class SpecialOpeningCorrectionBuilder
    implements
        Builder<SpecialOpeningCorrection, SpecialOpeningCorrectionBuilder> {
  _$SpecialOpeningCorrection? _$v;

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

  SpecialOpeningCorrectionBuilder() {
    SpecialOpeningCorrection._defaults(this);
  }

  SpecialOpeningCorrectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _date = $v.date;
      _reason = $v.reason;
      _ignore = $v.ignore;
      _morningOpen = $v.morningOpen;
      _morningOpeningTime = $v.morningOpeningTime;
      _morningClosingTime = $v.morningClosingTime;
      _afternoonOpen = $v.afternoonOpen;
      _afternoonOpeningTime = $v.afternoonOpeningTime;
      _afternoonClosingTime = $v.afternoonClosingTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpecialOpeningCorrection other) {
    _$v = other as _$SpecialOpeningCorrection;
  }

  @override
  void update(void Function(SpecialOpeningCorrectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialOpeningCorrection build() => _build();

  _$SpecialOpeningCorrection _build() {
    final _$result = _$v ??
        _$SpecialOpeningCorrection._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'SpecialOpeningCorrection', 'id'),
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'SpecialOpeningCorrection', 'date'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'SpecialOpeningCorrection', 'reason'),
          ignore: BuiltValueNullFieldError.checkNotNull(
              ignore, r'SpecialOpeningCorrection', 'ignore'),
          morningOpen: BuiltValueNullFieldError.checkNotNull(
              morningOpen, r'SpecialOpeningCorrection', 'morningOpen'),
          morningOpeningTime: morningOpeningTime,
          morningClosingTime: morningClosingTime,
          afternoonOpen: BuiltValueNullFieldError.checkNotNull(
              afternoonOpen, r'SpecialOpeningCorrection', 'afternoonOpen'),
          afternoonOpeningTime: afternoonOpeningTime,
          afternoonClosingTime: afternoonClosingTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
