// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_delete_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingDeleteResponse extends BookingDeleteResponse {
  @override
  final bool success;
  @override
  final int? bookingId;
  @override
  final int? slotsDeleted;
  @override
  final String? error;

  factory _$BookingDeleteResponse(
          [void Function(BookingDeleteResponseBuilder)? updates]) =>
      (BookingDeleteResponseBuilder()..update(updates))._build();

  _$BookingDeleteResponse._(
      {required this.success, this.bookingId, this.slotsDeleted, this.error})
      : super._();
  @override
  BookingDeleteResponse rebuild(
          void Function(BookingDeleteResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingDeleteResponseBuilder toBuilder() =>
      BookingDeleteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingDeleteResponse &&
        success == other.success &&
        bookingId == other.bookingId &&
        slotsDeleted == other.slotsDeleted &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, bookingId.hashCode);
    _$hash = $jc(_$hash, slotsDeleted.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingDeleteResponse')
          ..add('success', success)
          ..add('bookingId', bookingId)
          ..add('slotsDeleted', slotsDeleted)
          ..add('error', error))
        .toString();
  }
}

class BookingDeleteResponseBuilder
    implements Builder<BookingDeleteResponse, BookingDeleteResponseBuilder> {
  _$BookingDeleteResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _bookingId;
  int? get bookingId => _$this._bookingId;
  set bookingId(int? bookingId) => _$this._bookingId = bookingId;

  int? _slotsDeleted;
  int? get slotsDeleted => _$this._slotsDeleted;
  set slotsDeleted(int? slotsDeleted) => _$this._slotsDeleted = slotsDeleted;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  BookingDeleteResponseBuilder() {
    BookingDeleteResponse._defaults(this);
  }

  BookingDeleteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _bookingId = $v.bookingId;
      _slotsDeleted = $v.slotsDeleted;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingDeleteResponse other) {
    _$v = other as _$BookingDeleteResponse;
  }

  @override
  void update(void Function(BookingDeleteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingDeleteResponse build() => _build();

  _$BookingDeleteResponse _build() {
    final _$result = _$v ??
        _$BookingDeleteResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'BookingDeleteResponse', 'success'),
          bookingId: bookingId,
          slotsDeleted: slotsDeleted,
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
