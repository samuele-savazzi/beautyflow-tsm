// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingListResponse extends BookingListResponse {
  @override
  final bool success;
  @override
  final int count;
  @override
  final BuiltList<BookingItem> bookings;

  factory _$BookingListResponse(
          [void Function(BookingListResponseBuilder)? updates]) =>
      (BookingListResponseBuilder()..update(updates))._build();

  _$BookingListResponse._(
      {required this.success, required this.count, required this.bookings})
      : super._();
  @override
  BookingListResponse rebuild(
          void Function(BookingListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingListResponseBuilder toBuilder() =>
      BookingListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingListResponse &&
        success == other.success &&
        count == other.count &&
        bookings == other.bookings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, bookings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingListResponse')
          ..add('success', success)
          ..add('count', count)
          ..add('bookings', bookings))
        .toString();
  }
}

class BookingListResponseBuilder
    implements Builder<BookingListResponse, BookingListResponseBuilder> {
  _$BookingListResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<BookingItem>? _bookings;
  ListBuilder<BookingItem> get bookings =>
      _$this._bookings ??= ListBuilder<BookingItem>();
  set bookings(ListBuilder<BookingItem>? bookings) =>
      _$this._bookings = bookings;

  BookingListResponseBuilder() {
    BookingListResponse._defaults(this);
  }

  BookingListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _count = $v.count;
      _bookings = $v.bookings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingListResponse other) {
    _$v = other as _$BookingListResponse;
  }

  @override
  void update(void Function(BookingListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingListResponse build() => _build();

  _$BookingListResponse _build() {
    _$BookingListResponse _$result;
    try {
      _$result = _$v ??
          _$BookingListResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'BookingListResponse', 'success'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'BookingListResponse', 'count'),
            bookings: bookings.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bookings';
        bookings.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BookingListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
