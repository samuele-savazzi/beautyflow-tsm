// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HolidayUpdate extends HolidayUpdate {
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
  final BuiltList<HolidayTimeSlotUpdate>? timeSlots;

  factory _$HolidayUpdate([void Function(HolidayUpdateBuilder)? updates]) =>
      (HolidayUpdateBuilder()..update(updates))._build();

  _$HolidayUpdate._(
      {required this.date,
      required this.isFullDay,
      required this.morningClosed,
      required this.afternoonClosed,
      this.reason,
      this.timeSlots})
      : super._();
  @override
  HolidayUpdate rebuild(void Function(HolidayUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HolidayUpdateBuilder toBuilder() => HolidayUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HolidayUpdate &&
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
    return (newBuiltValueToStringHelper(r'HolidayUpdate')
          ..add('date', date)
          ..add('isFullDay', isFullDay)
          ..add('morningClosed', morningClosed)
          ..add('afternoonClosed', afternoonClosed)
          ..add('reason', reason)
          ..add('timeSlots', timeSlots))
        .toString();
  }
}

class HolidayUpdateBuilder
    implements Builder<HolidayUpdate, HolidayUpdateBuilder> {
  _$HolidayUpdate? _$v;

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

  ListBuilder<HolidayTimeSlotUpdate>? _timeSlots;
  ListBuilder<HolidayTimeSlotUpdate> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<HolidayTimeSlotUpdate>();
  set timeSlots(ListBuilder<HolidayTimeSlotUpdate>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  HolidayUpdateBuilder() {
    HolidayUpdate._defaults(this);
  }

  HolidayUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
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
  void replace(HolidayUpdate other) {
    _$v = other as _$HolidayUpdate;
  }

  @override
  void update(void Function(HolidayUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HolidayUpdate build() => _build();

  _$HolidayUpdate _build() {
    _$HolidayUpdate _$result;
    try {
      _$result = _$v ??
          _$HolidayUpdate._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'HolidayUpdate', 'date'),
            isFullDay: BuiltValueNullFieldError.checkNotNull(
                isFullDay, r'HolidayUpdate', 'isFullDay'),
            morningClosed: BuiltValueNullFieldError.checkNotNull(
                morningClosed, r'HolidayUpdate', 'morningClosed'),
            afternoonClosed: BuiltValueNullFieldError.checkNotNull(
                afternoonClosed, r'HolidayUpdate', 'afternoonClosed'),
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
            r'HolidayUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
