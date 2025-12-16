// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_bookings_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerBookingsResponse extends CustomerBookingsResponse {
  @override
  final bool success;
  @override
  final int count;
  @override
  final BuiltList<BookingDetail> bookings;

  factory _$CustomerBookingsResponse(
          [void Function(CustomerBookingsResponseBuilder)? updates]) =>
      (CustomerBookingsResponseBuilder()..update(updates))._build();

  _$CustomerBookingsResponse._(
      {required this.success, required this.count, required this.bookings})
      : super._();
  @override
  CustomerBookingsResponse rebuild(
          void Function(CustomerBookingsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerBookingsResponseBuilder toBuilder() =>
      CustomerBookingsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerBookingsResponse &&
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
    return (newBuiltValueToStringHelper(r'CustomerBookingsResponse')
          ..add('success', success)
          ..add('count', count)
          ..add('bookings', bookings))
        .toString();
  }
}

class CustomerBookingsResponseBuilder
    implements
        Builder<CustomerBookingsResponse, CustomerBookingsResponseBuilder> {
  _$CustomerBookingsResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<BookingDetail>? _bookings;
  ListBuilder<BookingDetail> get bookings =>
      _$this._bookings ??= ListBuilder<BookingDetail>();
  set bookings(ListBuilder<BookingDetail>? bookings) =>
      _$this._bookings = bookings;

  CustomerBookingsResponseBuilder() {
    CustomerBookingsResponse._defaults(this);
  }

  CustomerBookingsResponseBuilder get _$this {
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
  void replace(CustomerBookingsResponse other) {
    _$v = other as _$CustomerBookingsResponse;
  }

  @override
  void update(void Function(CustomerBookingsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerBookingsResponse build() => _build();

  _$CustomerBookingsResponse _build() {
    _$CustomerBookingsResponse _$result;
    try {
      _$result = _$v ??
          _$CustomerBookingsResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'CustomerBookingsResponse', 'success'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'CustomerBookingsResponse', 'count'),
            bookings: bookings.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bookings';
        bookings.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerBookingsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
