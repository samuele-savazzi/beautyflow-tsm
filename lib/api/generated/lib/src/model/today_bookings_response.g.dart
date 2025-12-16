// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_bookings_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodayBookingsResponse extends TodayBookingsResponse {
  @override
  final bool success;
  @override
  final Date date;
  @override
  final int totalBookings;
  @override
  final BuiltList<TodayBookingDetail> bookings;

  factory _$TodayBookingsResponse(
          [void Function(TodayBookingsResponseBuilder)? updates]) =>
      (TodayBookingsResponseBuilder()..update(updates))._build();

  _$TodayBookingsResponse._(
      {required this.success,
      required this.date,
      required this.totalBookings,
      required this.bookings})
      : super._();
  @override
  TodayBookingsResponse rebuild(
          void Function(TodayBookingsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodayBookingsResponseBuilder toBuilder() =>
      TodayBookingsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodayBookingsResponse &&
        success == other.success &&
        date == other.date &&
        totalBookings == other.totalBookings &&
        bookings == other.bookings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, totalBookings.hashCode);
    _$hash = $jc(_$hash, bookings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TodayBookingsResponse')
          ..add('success', success)
          ..add('date', date)
          ..add('totalBookings', totalBookings)
          ..add('bookings', bookings))
        .toString();
  }
}

class TodayBookingsResponseBuilder
    implements Builder<TodayBookingsResponse, TodayBookingsResponseBuilder> {
  _$TodayBookingsResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  int? _totalBookings;
  int? get totalBookings => _$this._totalBookings;
  set totalBookings(int? totalBookings) =>
      _$this._totalBookings = totalBookings;

  ListBuilder<TodayBookingDetail>? _bookings;
  ListBuilder<TodayBookingDetail> get bookings =>
      _$this._bookings ??= ListBuilder<TodayBookingDetail>();
  set bookings(ListBuilder<TodayBookingDetail>? bookings) =>
      _$this._bookings = bookings;

  TodayBookingsResponseBuilder() {
    TodayBookingsResponse._defaults(this);
  }

  TodayBookingsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _date = $v.date;
      _totalBookings = $v.totalBookings;
      _bookings = $v.bookings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodayBookingsResponse other) {
    _$v = other as _$TodayBookingsResponse;
  }

  @override
  void update(void Function(TodayBookingsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TodayBookingsResponse build() => _build();

  _$TodayBookingsResponse _build() {
    _$TodayBookingsResponse _$result;
    try {
      _$result = _$v ??
          _$TodayBookingsResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'TodayBookingsResponse', 'success'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'TodayBookingsResponse', 'date'),
            totalBookings: BuiltValueNullFieldError.checkNotNull(
                totalBookings, r'TodayBookingsResponse', 'totalBookings'),
            bookings: bookings.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bookings';
        bookings.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TodayBookingsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
