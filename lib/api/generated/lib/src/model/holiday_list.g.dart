// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HolidayList extends HolidayList {
  @override
  final int id;
  @override
  final Date date;
  @override
  final bool isFullDay;
  @override
  final bool morningClosed;
  @override
  final bool afternoonClosed;
  @override
  final String? reason;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> timeSlots;

  factory _$HolidayList([void Function(HolidayListBuilder)? updates]) =>
      (HolidayListBuilder()..update(updates))._build();

  _$HolidayList._(
      {required this.id,
      required this.date,
      required this.isFullDay,
      required this.morningClosed,
      required this.afternoonClosed,
      this.reason,
      required this.timeSlots})
      : super._();
  @override
  HolidayList rebuild(void Function(HolidayListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HolidayListBuilder toBuilder() => HolidayListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HolidayList &&
        id == other.id &&
        date == other.date &&
        isFullDay == other.isFullDay &&
        morningClosed == other.morningClosed &&
        afternoonClosed == other.afternoonClosed &&
        reason == other.reason &&
        timeSlots == other.timeSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, isFullDay.hashCode);
    _$hash = $jc(_$hash, morningClosed.hashCode);
    _$hash = $jc(_$hash, afternoonClosed.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HolidayList')
          ..add('id', id)
          ..add('date', date)
          ..add('isFullDay', isFullDay)
          ..add('morningClosed', morningClosed)
          ..add('afternoonClosed', afternoonClosed)
          ..add('reason', reason)
          ..add('timeSlots', timeSlots))
        .toString();
  }
}

class HolidayListBuilder implements Builder<HolidayList, HolidayListBuilder> {
  _$HolidayList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  bool? _isFullDay;
  bool? get isFullDay => _$this._isFullDay;
  set isFullDay(bool? isFullDay) => _$this._isFullDay = isFullDay;

  bool? _morningClosed;
  bool? get morningClosed => _$this._morningClosed;
  set morningClosed(bool? morningClosed) =>
      _$this._morningClosed = morningClosed;

  bool? _afternoonClosed;
  bool? get afternoonClosed => _$this._afternoonClosed;
  set afternoonClosed(bool? afternoonClosed) =>
      _$this._afternoonClosed = afternoonClosed;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _timeSlots;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get timeSlots =>
      _$this._timeSlots ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set timeSlots(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  HolidayListBuilder() {
    HolidayList._defaults(this);
  }

  HolidayListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _date = $v.date;
      _isFullDay = $v.isFullDay;
      _morningClosed = $v.morningClosed;
      _afternoonClosed = $v.afternoonClosed;
      _reason = $v.reason;
      _timeSlots = $v.timeSlots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HolidayList other) {
    _$v = other as _$HolidayList;
  }

  @override
  void update(void Function(HolidayListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HolidayList build() => _build();

  _$HolidayList _build() {
    _$HolidayList _$result;
    try {
      _$result = _$v ??
          _$HolidayList._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'HolidayList', 'id'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'HolidayList', 'date'),
            isFullDay: BuiltValueNullFieldError.checkNotNull(
                isFullDay, r'HolidayList', 'isFullDay'),
            morningClosed: BuiltValueNullFieldError.checkNotNull(
                morningClosed, r'HolidayList', 'morningClosed'),
            afternoonClosed: BuiltValueNullFieldError.checkNotNull(
                afternoonClosed, r'HolidayList', 'afternoonClosed'),
            reason: reason,
            timeSlots: timeSlots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HolidayList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
