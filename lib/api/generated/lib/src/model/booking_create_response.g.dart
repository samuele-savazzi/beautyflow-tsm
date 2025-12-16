// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_create_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingCreateResponse extends BookingCreateResponse {
  @override
  final bool success;
  @override
  final int? bookingId;
  @override
  final int? slotsCreated;
  @override
  final int? totalDuration;
  @override
  final String? error;

  factory _$BookingCreateResponse(
          [void Function(BookingCreateResponseBuilder)? updates]) =>
      (BookingCreateResponseBuilder()..update(updates))._build();

  _$BookingCreateResponse._(
      {required this.success,
      this.bookingId,
      this.slotsCreated,
      this.totalDuration,
      this.error})
      : super._();
  @override
  BookingCreateResponse rebuild(
          void Function(BookingCreateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingCreateResponseBuilder toBuilder() =>
      BookingCreateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingCreateResponse &&
        success == other.success &&
        bookingId == other.bookingId &&
        slotsCreated == other.slotsCreated &&
        totalDuration == other.totalDuration &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, bookingId.hashCode);
    _$hash = $jc(_$hash, slotsCreated.hashCode);
    _$hash = $jc(_$hash, totalDuration.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingCreateResponse')
          ..add('success', success)
          ..add('bookingId', bookingId)
          ..add('slotsCreated', slotsCreated)
          ..add('totalDuration', totalDuration)
          ..add('error', error))
        .toString();
  }
}

class BookingCreateResponseBuilder
    implements Builder<BookingCreateResponse, BookingCreateResponseBuilder> {
  _$BookingCreateResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _bookingId;
  int? get bookingId => _$this._bookingId;
  set bookingId(int? bookingId) => _$this._bookingId = bookingId;

  int? _slotsCreated;
  int? get slotsCreated => _$this._slotsCreated;
  set slotsCreated(int? slotsCreated) => _$this._slotsCreated = slotsCreated;

  int? _totalDuration;
  int? get totalDuration => _$this._totalDuration;
  set totalDuration(int? totalDuration) =>
      _$this._totalDuration = totalDuration;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  BookingCreateResponseBuilder() {
    BookingCreateResponse._defaults(this);
  }

  BookingCreateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _bookingId = $v.bookingId;
      _slotsCreated = $v.slotsCreated;
      _totalDuration = $v.totalDuration;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingCreateResponse other) {
    _$v = other as _$BookingCreateResponse;
  }

  @override
  void update(void Function(BookingCreateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingCreateResponse build() => _build();

  _$BookingCreateResponse _build() {
    final _$result = _$v ??
        _$BookingCreateResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'BookingCreateResponse', 'success'),
          bookingId: bookingId,
          slotsCreated: slotsCreated,
          totalDuration: totalDuration,
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
