// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_mark_as_paid_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingMarkAsPaidResponse extends BookingMarkAsPaidResponse {
  @override
  final bool success;
  @override
  final int bookingId;
  @override
  final String paymentMethod;
  @override
  final double totalPaid;
  @override
  final int movementsCreated;
  @override
  final BuiltList<String>? errors;
  @override
  final BuiltList<String>? warnings;

  factory _$BookingMarkAsPaidResponse(
          [void Function(BookingMarkAsPaidResponseBuilder)? updates]) =>
      (BookingMarkAsPaidResponseBuilder()..update(updates))._build();

  _$BookingMarkAsPaidResponse._(
      {required this.success,
      required this.bookingId,
      required this.paymentMethod,
      required this.totalPaid,
      required this.movementsCreated,
      this.errors,
      this.warnings})
      : super._();
  @override
  BookingMarkAsPaidResponse rebuild(
          void Function(BookingMarkAsPaidResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingMarkAsPaidResponseBuilder toBuilder() =>
      BookingMarkAsPaidResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingMarkAsPaidResponse &&
        success == other.success &&
        bookingId == other.bookingId &&
        paymentMethod == other.paymentMethod &&
        totalPaid == other.totalPaid &&
        movementsCreated == other.movementsCreated &&
        errors == other.errors &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, bookingId.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, totalPaid.hashCode);
    _$hash = $jc(_$hash, movementsCreated.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingMarkAsPaidResponse')
          ..add('success', success)
          ..add('bookingId', bookingId)
          ..add('paymentMethod', paymentMethod)
          ..add('totalPaid', totalPaid)
          ..add('movementsCreated', movementsCreated)
          ..add('errors', errors)
          ..add('warnings', warnings))
        .toString();
  }
}

class BookingMarkAsPaidResponseBuilder
    implements
        Builder<BookingMarkAsPaidResponse, BookingMarkAsPaidResponseBuilder> {
  _$BookingMarkAsPaidResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _bookingId;
  int? get bookingId => _$this._bookingId;
  set bookingId(int? bookingId) => _$this._bookingId = bookingId;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  double? _totalPaid;
  double? get totalPaid => _$this._totalPaid;
  set totalPaid(double? totalPaid) => _$this._totalPaid = totalPaid;

  int? _movementsCreated;
  int? get movementsCreated => _$this._movementsCreated;
  set movementsCreated(int? movementsCreated) =>
      _$this._movementsCreated = movementsCreated;

  ListBuilder<String>? _errors;
  ListBuilder<String> get errors => _$this._errors ??= ListBuilder<String>();
  set errors(ListBuilder<String>? errors) => _$this._errors = errors;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  BookingMarkAsPaidResponseBuilder() {
    BookingMarkAsPaidResponse._defaults(this);
  }

  BookingMarkAsPaidResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _bookingId = $v.bookingId;
      _paymentMethod = $v.paymentMethod;
      _totalPaid = $v.totalPaid;
      _movementsCreated = $v.movementsCreated;
      _errors = $v.errors?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingMarkAsPaidResponse other) {
    _$v = other as _$BookingMarkAsPaidResponse;
  }

  @override
  void update(void Function(BookingMarkAsPaidResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingMarkAsPaidResponse build() => _build();

  _$BookingMarkAsPaidResponse _build() {
    _$BookingMarkAsPaidResponse _$result;
    try {
      _$result = _$v ??
          _$BookingMarkAsPaidResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'BookingMarkAsPaidResponse', 'success'),
            bookingId: BuiltValueNullFieldError.checkNotNull(
                bookingId, r'BookingMarkAsPaidResponse', 'bookingId'),
            paymentMethod: BuiltValueNullFieldError.checkNotNull(
                paymentMethod, r'BookingMarkAsPaidResponse', 'paymentMethod'),
            totalPaid: BuiltValueNullFieldError.checkNotNull(
                totalPaid, r'BookingMarkAsPaidResponse', 'totalPaid'),
            movementsCreated: BuiltValueNullFieldError.checkNotNull(
                movementsCreated,
                r'BookingMarkAsPaidResponse',
                'movementsCreated'),
            errors: _errors?.build(),
            warnings: _warnings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BookingMarkAsPaidResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
