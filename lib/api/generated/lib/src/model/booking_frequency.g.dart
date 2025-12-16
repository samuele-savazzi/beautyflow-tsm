// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_frequency.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingFrequency extends BookingFrequency {
  @override
  final int totalBookings;
  @override
  final int bookingsLastYear;
  @override
  final int bookingsLastMonth;
  @override
  final String frequency3Months;
  @override
  final String frequency6Months;
  @override
  final String? lastBookingDate;
  @override
  final String? firstBookingDate;

  factory _$BookingFrequency(
          [void Function(BookingFrequencyBuilder)? updates]) =>
      (BookingFrequencyBuilder()..update(updates))._build();

  _$BookingFrequency._(
      {required this.totalBookings,
      required this.bookingsLastYear,
      required this.bookingsLastMonth,
      required this.frequency3Months,
      required this.frequency6Months,
      this.lastBookingDate,
      this.firstBookingDate})
      : super._();
  @override
  BookingFrequency rebuild(void Function(BookingFrequencyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingFrequencyBuilder toBuilder() =>
      BookingFrequencyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingFrequency &&
        totalBookings == other.totalBookings &&
        bookingsLastYear == other.bookingsLastYear &&
        bookingsLastMonth == other.bookingsLastMonth &&
        frequency3Months == other.frequency3Months &&
        frequency6Months == other.frequency6Months &&
        lastBookingDate == other.lastBookingDate &&
        firstBookingDate == other.firstBookingDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalBookings.hashCode);
    _$hash = $jc(_$hash, bookingsLastYear.hashCode);
    _$hash = $jc(_$hash, bookingsLastMonth.hashCode);
    _$hash = $jc(_$hash, frequency3Months.hashCode);
    _$hash = $jc(_$hash, frequency6Months.hashCode);
    _$hash = $jc(_$hash, lastBookingDate.hashCode);
    _$hash = $jc(_$hash, firstBookingDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingFrequency')
          ..add('totalBookings', totalBookings)
          ..add('bookingsLastYear', bookingsLastYear)
          ..add('bookingsLastMonth', bookingsLastMonth)
          ..add('frequency3Months', frequency3Months)
          ..add('frequency6Months', frequency6Months)
          ..add('lastBookingDate', lastBookingDate)
          ..add('firstBookingDate', firstBookingDate))
        .toString();
  }
}

class BookingFrequencyBuilder
    implements Builder<BookingFrequency, BookingFrequencyBuilder> {
  _$BookingFrequency? _$v;

  int? _totalBookings;
  int? get totalBookings => _$this._totalBookings;
  set totalBookings(int? totalBookings) =>
      _$this._totalBookings = totalBookings;

  int? _bookingsLastYear;
  int? get bookingsLastYear => _$this._bookingsLastYear;
  set bookingsLastYear(int? bookingsLastYear) =>
      _$this._bookingsLastYear = bookingsLastYear;

  int? _bookingsLastMonth;
  int? get bookingsLastMonth => _$this._bookingsLastMonth;
  set bookingsLastMonth(int? bookingsLastMonth) =>
      _$this._bookingsLastMonth = bookingsLastMonth;

  String? _frequency3Months;
  String? get frequency3Months => _$this._frequency3Months;
  set frequency3Months(String? frequency3Months) =>
      _$this._frequency3Months = frequency3Months;

  String? _frequency6Months;
  String? get frequency6Months => _$this._frequency6Months;
  set frequency6Months(String? frequency6Months) =>
      _$this._frequency6Months = frequency6Months;

  String? _lastBookingDate;
  String? get lastBookingDate => _$this._lastBookingDate;
  set lastBookingDate(String? lastBookingDate) =>
      _$this._lastBookingDate = lastBookingDate;

  String? _firstBookingDate;
  String? get firstBookingDate => _$this._firstBookingDate;
  set firstBookingDate(String? firstBookingDate) =>
      _$this._firstBookingDate = firstBookingDate;

  BookingFrequencyBuilder() {
    BookingFrequency._defaults(this);
  }

  BookingFrequencyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalBookings = $v.totalBookings;
      _bookingsLastYear = $v.bookingsLastYear;
      _bookingsLastMonth = $v.bookingsLastMonth;
      _frequency3Months = $v.frequency3Months;
      _frequency6Months = $v.frequency6Months;
      _lastBookingDate = $v.lastBookingDate;
      _firstBookingDate = $v.firstBookingDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingFrequency other) {
    _$v = other as _$BookingFrequency;
  }

  @override
  void update(void Function(BookingFrequencyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingFrequency build() => _build();

  _$BookingFrequency _build() {
    final _$result = _$v ??
        _$BookingFrequency._(
          totalBookings: BuiltValueNullFieldError.checkNotNull(
              totalBookings, r'BookingFrequency', 'totalBookings'),
          bookingsLastYear: BuiltValueNullFieldError.checkNotNull(
              bookingsLastYear, r'BookingFrequency', 'bookingsLastYear'),
          bookingsLastMonth: BuiltValueNullFieldError.checkNotNull(
              bookingsLastMonth, r'BookingFrequency', 'bookingsLastMonth'),
          frequency3Months: BuiltValueNullFieldError.checkNotNull(
              frequency3Months, r'BookingFrequency', 'frequency3Months'),
          frequency6Months: BuiltValueNullFieldError.checkNotNull(
              frequency6Months, r'BookingFrequency', 'frequency6Months'),
          lastBookingDate: lastBookingDate,
          firstBookingDate: firstBookingDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
