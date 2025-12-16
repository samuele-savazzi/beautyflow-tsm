// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_mark_as_missed_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingMarkAsMissedRequest extends BookingMarkAsMissedRequest {
  @override
  final int bookingId;
  @override
  final BookingMarkAsMissedRequestReasonEnum? reason;

  factory _$BookingMarkAsMissedRequest(
          [void Function(BookingMarkAsMissedRequestBuilder)? updates]) =>
      (BookingMarkAsMissedRequestBuilder()..update(updates))._build();

  _$BookingMarkAsMissedRequest._({required this.bookingId, this.reason})
      : super._();
  @override
  BookingMarkAsMissedRequest rebuild(
          void Function(BookingMarkAsMissedRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingMarkAsMissedRequestBuilder toBuilder() =>
      BookingMarkAsMissedRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingMarkAsMissedRequest &&
        bookingId == other.bookingId &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bookingId.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingMarkAsMissedRequest')
          ..add('bookingId', bookingId)
          ..add('reason', reason))
        .toString();
  }
}

class BookingMarkAsMissedRequestBuilder
    implements
        Builder<BookingMarkAsMissedRequest, BookingMarkAsMissedRequestBuilder> {
  _$BookingMarkAsMissedRequest? _$v;

  int? _bookingId;
  int? get bookingId => _$this._bookingId;
  set bookingId(int? bookingId) => _$this._bookingId = bookingId;

  BookingMarkAsMissedRequestReasonEnum? _reason;
  BookingMarkAsMissedRequestReasonEnum? get reason => _$this._reason;
  set reason(BookingMarkAsMissedRequestReasonEnum? reason) =>
      _$this._reason = reason;

  BookingMarkAsMissedRequestBuilder() {
    BookingMarkAsMissedRequest._defaults(this);
  }

  BookingMarkAsMissedRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookingId = $v.bookingId;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingMarkAsMissedRequest other) {
    _$v = other as _$BookingMarkAsMissedRequest;
  }

  @override
  void update(void Function(BookingMarkAsMissedRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingMarkAsMissedRequest build() => _build();

  _$BookingMarkAsMissedRequest _build() {
    final _$result = _$v ??
        _$BookingMarkAsMissedRequest._(
          bookingId: BuiltValueNullFieldError.checkNotNull(
              bookingId, r'BookingMarkAsMissedRequest', 'bookingId'),
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
