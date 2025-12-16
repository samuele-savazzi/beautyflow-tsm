// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_closing_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecialClosingList extends SpecialClosingList {
  @override
  final int id;
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

  factory _$SpecialClosingList(
          [void Function(SpecialClosingListBuilder)? updates]) =>
      (SpecialClosingListBuilder()..update(updates))._build();

  _$SpecialClosingList._(
      {required this.id,
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
  SpecialClosingList rebuild(
          void Function(SpecialClosingListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialClosingListBuilder toBuilder() =>
      SpecialClosingListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialClosingList &&
        id == other.id &&
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
    _$hash = $jc(_$hash, id.hashCode);
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
    return (newBuiltValueToStringHelper(r'SpecialClosingList')
          ..add('id', id)
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

class SpecialClosingListBuilder
    implements Builder<SpecialClosingList, SpecialClosingListBuilder> {
  _$SpecialClosingList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  SpecialClosingListBuilder() {
    SpecialClosingList._defaults(this);
  }

  SpecialClosingListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
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
  void replace(SpecialClosingList other) {
    _$v = other as _$SpecialClosingList;
  }

  @override
  void update(void Function(SpecialClosingListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialClosingList build() => _build();

  _$SpecialClosingList _build() {
    final _$result = _$v ??
        _$SpecialClosingList._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'SpecialClosingList', 'id'),
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'SpecialClosingList', 'date'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'SpecialClosingList', 'reason'),
          isFullDay: BuiltValueNullFieldError.checkNotNull(
              isFullDay, r'SpecialClosingList', 'isFullDay'),
          morningClosed: BuiltValueNullFieldError.checkNotNull(
              morningClosed, r'SpecialClosingList', 'morningClosed'),
          morningPartial: BuiltValueNullFieldError.checkNotNull(
              morningPartial, r'SpecialClosingList', 'morningPartial'),
          morningFromTime: morningFromTime,
          morningToTime: morningToTime,
          afternoonClosed: BuiltValueNullFieldError.checkNotNull(
              afternoonClosed, r'SpecialClosingList', 'afternoonClosed'),
          afternoonPartial: BuiltValueNullFieldError.checkNotNull(
              afternoonPartial, r'SpecialClosingList', 'afternoonPartial'),
          afternoonFromTime: afternoonFromTime,
          afternoonToTime: afternoonToTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
