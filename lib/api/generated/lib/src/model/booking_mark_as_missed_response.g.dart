// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_mark_as_missed_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingMarkAsMissedResponse extends BookingMarkAsMissedResponse {
  @override
  final bool success;
  @override
  final int bookingId;
  @override
  final String status;
  @override
  final int minutesFreed;
  @override
  final int slotsDeleted;
  @override
  final String? error;

  factory _$BookingMarkAsMissedResponse(
          [void Function(BookingMarkAsMissedResponseBuilder)? updates]) =>
      (BookingMarkAsMissedResponseBuilder()..update(updates))._build();

  _$BookingMarkAsMissedResponse._(
      {required this.success,
      required this.bookingId,
      required this.status,
      required this.minutesFreed,
      required this.slotsDeleted,
      this.error})
      : super._();
  @override
  BookingMarkAsMissedResponse rebuild(
          void Function(BookingMarkAsMissedResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingMarkAsMissedResponseBuilder toBuilder() =>
      BookingMarkAsMissedResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingMarkAsMissedResponse &&
        success == other.success &&
        bookingId == other.bookingId &&
        status == other.status &&
        minutesFreed == other.minutesFreed &&
        slotsDeleted == other.slotsDeleted &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, bookingId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, minutesFreed.hashCode);
    _$hash = $jc(_$hash, slotsDeleted.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingMarkAsMissedResponse')
          ..add('success', success)
          ..add('bookingId', bookingId)
          ..add('status', status)
          ..add('minutesFreed', minutesFreed)
          ..add('slotsDeleted', slotsDeleted)
          ..add('error', error))
        .toString();
  }
}

class BookingMarkAsMissedResponseBuilder
    implements
        Builder<BookingMarkAsMissedResponse,
            BookingMarkAsMissedResponseBuilder> {
  _$BookingMarkAsMissedResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _bookingId;
  int? get bookingId => _$this._bookingId;
  set bookingId(int? bookingId) => _$this._bookingId = bookingId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _minutesFreed;
  int? get minutesFreed => _$this._minutesFreed;
  set minutesFreed(int? minutesFreed) => _$this._minutesFreed = minutesFreed;

  int? _slotsDeleted;
  int? get slotsDeleted => _$this._slotsDeleted;
  set slotsDeleted(int? slotsDeleted) => _$this._slotsDeleted = slotsDeleted;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  BookingMarkAsMissedResponseBuilder() {
    BookingMarkAsMissedResponse._defaults(this);
  }

  BookingMarkAsMissedResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _bookingId = $v.bookingId;
      _status = $v.status;
      _minutesFreed = $v.minutesFreed;
      _slotsDeleted = $v.slotsDeleted;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingMarkAsMissedResponse other) {
    _$v = other as _$BookingMarkAsMissedResponse;
  }

  @override
  void update(void Function(BookingMarkAsMissedResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingMarkAsMissedResponse build() => _build();

  _$BookingMarkAsMissedResponse _build() {
    final _$result = _$v ??
        _$BookingMarkAsMissedResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'BookingMarkAsMissedResponse', 'success'),
          bookingId: BuiltValueNullFieldError.checkNotNull(
              bookingId, r'BookingMarkAsMissedResponse', 'bookingId'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'BookingMarkAsMissedResponse', 'status'),
          minutesFreed: BuiltValueNullFieldError.checkNotNull(
              minutesFreed, r'BookingMarkAsMissedResponse', 'minutesFreed'),
          slotsDeleted: BuiltValueNullFieldError.checkNotNull(
              slotsDeleted, r'BookingMarkAsMissedResponse', 'slotsDeleted'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
