// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_mark_as_paid_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingMarkAsPaidRequest extends BookingMarkAsPaidRequest {
  @override
  final int bookingId;
  @override
  final double? cashAmount;
  @override
  final double? cardAmount;
  @override
  final BuiltList<ProductConsumed>? productsConsumed;

  factory _$BookingMarkAsPaidRequest(
          [void Function(BookingMarkAsPaidRequestBuilder)? updates]) =>
      (BookingMarkAsPaidRequestBuilder()..update(updates))._build();

  _$BookingMarkAsPaidRequest._(
      {required this.bookingId,
      this.cashAmount,
      this.cardAmount,
      this.productsConsumed})
      : super._();
  @override
  BookingMarkAsPaidRequest rebuild(
          void Function(BookingMarkAsPaidRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingMarkAsPaidRequestBuilder toBuilder() =>
      BookingMarkAsPaidRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingMarkAsPaidRequest &&
        bookingId == other.bookingId &&
        cashAmount == other.cashAmount &&
        cardAmount == other.cardAmount &&
        productsConsumed == other.productsConsumed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bookingId.hashCode);
    _$hash = $jc(_$hash, cashAmount.hashCode);
    _$hash = $jc(_$hash, cardAmount.hashCode);
    _$hash = $jc(_$hash, productsConsumed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingMarkAsPaidRequest')
          ..add('bookingId', bookingId)
          ..add('cashAmount', cashAmount)
          ..add('cardAmount', cardAmount)
          ..add('productsConsumed', productsConsumed))
        .toString();
  }
}

class BookingMarkAsPaidRequestBuilder
    implements
        Builder<BookingMarkAsPaidRequest, BookingMarkAsPaidRequestBuilder> {
  _$BookingMarkAsPaidRequest? _$v;

  int? _bookingId;
  int? get bookingId => _$this._bookingId;
  set bookingId(int? bookingId) => _$this._bookingId = bookingId;

  double? _cashAmount;
  double? get cashAmount => _$this._cashAmount;
  set cashAmount(double? cashAmount) => _$this._cashAmount = cashAmount;

  double? _cardAmount;
  double? get cardAmount => _$this._cardAmount;
  set cardAmount(double? cardAmount) => _$this._cardAmount = cardAmount;

  ListBuilder<ProductConsumed>? _productsConsumed;
  ListBuilder<ProductConsumed> get productsConsumed =>
      _$this._productsConsumed ??= ListBuilder<ProductConsumed>();
  set productsConsumed(ListBuilder<ProductConsumed>? productsConsumed) =>
      _$this._productsConsumed = productsConsumed;

  BookingMarkAsPaidRequestBuilder() {
    BookingMarkAsPaidRequest._defaults(this);
  }

  BookingMarkAsPaidRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bookingId = $v.bookingId;
      _cashAmount = $v.cashAmount;
      _cardAmount = $v.cardAmount;
      _productsConsumed = $v.productsConsumed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingMarkAsPaidRequest other) {
    _$v = other as _$BookingMarkAsPaidRequest;
  }

  @override
  void update(void Function(BookingMarkAsPaidRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingMarkAsPaidRequest build() => _build();

  _$BookingMarkAsPaidRequest _build() {
    _$BookingMarkAsPaidRequest _$result;
    try {
      _$result = _$v ??
          _$BookingMarkAsPaidRequest._(
            bookingId: BuiltValueNullFieldError.checkNotNull(
                bookingId, r'BookingMarkAsPaidRequest', 'bookingId'),
            cashAmount: cashAmount,
            cardAmount: cardAmount,
            productsConsumed: _productsConsumed?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productsConsumed';
        _productsConsumed?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BookingMarkAsPaidRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
