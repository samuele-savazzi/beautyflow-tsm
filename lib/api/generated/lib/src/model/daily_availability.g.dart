// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_availability.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyAvailability extends DailyAvailability {
  @override
  final Date date;
  @override
  final bool available;
  @override
  final bool morningAvailable;
  @override
  final bool afternoonAvailable;

  factory _$DailyAvailability(
          [void Function(DailyAvailabilityBuilder)? updates]) =>
      (DailyAvailabilityBuilder()..update(updates))._build();

  _$DailyAvailability._(
      {required this.date,
      required this.available,
      required this.morningAvailable,
      required this.afternoonAvailable})
      : super._();
  @override
  DailyAvailability rebuild(void Function(DailyAvailabilityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyAvailabilityBuilder toBuilder() =>
      DailyAvailabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyAvailability &&
        date == other.date &&
        available == other.available &&
        morningAvailable == other.morningAvailable &&
        afternoonAvailable == other.afternoonAvailable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, available.hashCode);
    _$hash = $jc(_$hash, morningAvailable.hashCode);
    _$hash = $jc(_$hash, afternoonAvailable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyAvailability')
          ..add('date', date)
          ..add('available', available)
          ..add('morningAvailable', morningAvailable)
          ..add('afternoonAvailable', afternoonAvailable))
        .toString();
  }
}

class DailyAvailabilityBuilder
    implements Builder<DailyAvailability, DailyAvailabilityBuilder> {
  _$DailyAvailability? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  bool? _available;
  bool? get available => _$this._available;
  set available(bool? available) => _$this._available = available;

  bool? _morningAvailable;
  bool? get morningAvailable => _$this._morningAvailable;
  set morningAvailable(bool? morningAvailable) =>
      _$this._morningAvailable = morningAvailable;

  bool? _afternoonAvailable;
  bool? get afternoonAvailable => _$this._afternoonAvailable;
  set afternoonAvailable(bool? afternoonAvailable) =>
      _$this._afternoonAvailable = afternoonAvailable;

  DailyAvailabilityBuilder() {
    DailyAvailability._defaults(this);
  }

  DailyAvailabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _available = $v.available;
      _morningAvailable = $v.morningAvailable;
      _afternoonAvailable = $v.afternoonAvailable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyAvailability other) {
    _$v = other as _$DailyAvailability;
  }

  @override
  void update(void Function(DailyAvailabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyAvailability build() => _build();

  _$DailyAvailability _build() {
    final _$result = _$v ??
        _$DailyAvailability._(
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'DailyAvailability', 'date'),
          available: BuiltValueNullFieldError.checkNotNull(
              available, r'DailyAvailability', 'available'),
          morningAvailable: BuiltValueNullFieldError.checkNotNull(
              morningAvailable, r'DailyAvailability', 'morningAvailable'),
          afternoonAvailable: BuiltValueNullFieldError.checkNotNull(
              afternoonAvailable, r'DailyAvailability', 'afternoonAvailable'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
