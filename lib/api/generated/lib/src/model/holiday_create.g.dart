// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HolidayCreate extends HolidayCreate {
  @override
  final int areaId;
  @override
  final Date date;
  @override
  final Date? endDate;
  @override
  final bool isFullDay;
  @override
  final bool morningClosed;
  @override
  final bool afternoonClosed;
  @override
  final String? reason;
  @override
  final BuiltList<HolidayTimeSlotCreate>? timeSlots;

  factory _$HolidayCreate([void Function(HolidayCreateBuilder)? updates]) =>
      (HolidayCreateBuilder()..update(updates))._build();

  _$HolidayCreate._(
      {required this.areaId,
      required this.date,
      this.endDate,
      required this.isFullDay,
      required this.morningClosed,
      required this.afternoonClosed,
      this.reason,
      this.timeSlots})
      : super._();
  @override
  HolidayCreate rebuild(void Function(HolidayCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HolidayCreateBuilder toBuilder() => HolidayCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HolidayCreate &&
        areaId == other.areaId &&
        date == other.date &&
        endDate == other.endDate &&
        isFullDay == other.isFullDay &&
        morningClosed == other.morningClosed &&
        afternoonClosed == other.afternoonClosed &&
        reason == other.reason &&
        timeSlots == other.timeSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
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
    return (newBuiltValueToStringHelper(r'HolidayCreate')
          ..add('areaId', areaId)
          ..add('date', date)
          ..add('endDate', endDate)
          ..add('isFullDay', isFullDay)
          ..add('morningClosed', morningClosed)
          ..add('afternoonClosed', afternoonClosed)
          ..add('reason', reason)
          ..add('timeSlots', timeSlots))
        .toString();
  }
}

class HolidayCreateBuilder
    implements Builder<HolidayCreate, HolidayCreateBuilder> {
  _$HolidayCreate? _$v;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

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

  ListBuilder<HolidayTimeSlotCreate>? _timeSlots;
  ListBuilder<HolidayTimeSlotCreate> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<HolidayTimeSlotCreate>();
  set timeSlots(ListBuilder<HolidayTimeSlotCreate>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  HolidayCreateBuilder() {
    HolidayCreate._defaults(this);
  }

  HolidayCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaId = $v.areaId;
      _date = $v.date;
      _endDate = $v.endDate;
      _isFullDay = $v.isFullDay;
      _morningClosed = $v.morningClosed;
      _afternoonClosed = $v.afternoonClosed;
      _reason = $v.reason;
      _timeSlots = $v.timeSlots?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HolidayCreate other) {
    _$v = other as _$HolidayCreate;
  }

  @override
  void update(void Function(HolidayCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HolidayCreate build() => _build();

  _$HolidayCreate _build() {
    _$HolidayCreate _$result;
    try {
      _$result = _$v ??
          _$HolidayCreate._(
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'HolidayCreate', 'areaId'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'HolidayCreate', 'date'),
            endDate: endDate,
            isFullDay: BuiltValueNullFieldError.checkNotNull(
                isFullDay, r'HolidayCreate', 'isFullDay'),
            morningClosed: BuiltValueNullFieldError.checkNotNull(
                morningClosed, r'HolidayCreate', 'morningClosed'),
            afternoonClosed: BuiltValueNullFieldError.checkNotNull(
                afternoonClosed, r'HolidayCreate', 'afternoonClosed'),
            reason: reason,
            timeSlots: _timeSlots?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        _timeSlots?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HolidayCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
