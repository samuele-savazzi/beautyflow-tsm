// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_detail_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerDetailStats extends CustomerDetailStats {
  @override
  final bool success;
  @override
  final CustomerFullDetail customer;
  @override
  final BookingFrequency bookingFrequency;
  @override
  final BuiltList<TopService> topServices;
  @override
  final PremiumStatus premiumStatus;

  factory _$CustomerDetailStats(
          [void Function(CustomerDetailStatsBuilder)? updates]) =>
      (CustomerDetailStatsBuilder()..update(updates))._build();

  _$CustomerDetailStats._(
      {required this.success,
      required this.customer,
      required this.bookingFrequency,
      required this.topServices,
      required this.premiumStatus})
      : super._();
  @override
  CustomerDetailStats rebuild(
          void Function(CustomerDetailStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerDetailStatsBuilder toBuilder() =>
      CustomerDetailStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerDetailStats &&
        success == other.success &&
        customer == other.customer &&
        bookingFrequency == other.bookingFrequency &&
        topServices == other.topServices &&
        premiumStatus == other.premiumStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, bookingFrequency.hashCode);
    _$hash = $jc(_$hash, topServices.hashCode);
    _$hash = $jc(_$hash, premiumStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerDetailStats')
          ..add('success', success)
          ..add('customer', customer)
          ..add('bookingFrequency', bookingFrequency)
          ..add('topServices', topServices)
          ..add('premiumStatus', premiumStatus))
        .toString();
  }
}

class CustomerDetailStatsBuilder
    implements Builder<CustomerDetailStats, CustomerDetailStatsBuilder> {
  _$CustomerDetailStats? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  CustomerFullDetailBuilder? _customer;
  CustomerFullDetailBuilder get customer =>
      _$this._customer ??= CustomerFullDetailBuilder();
  set customer(CustomerFullDetailBuilder? customer) =>
      _$this._customer = customer;

  BookingFrequencyBuilder? _bookingFrequency;
  BookingFrequencyBuilder get bookingFrequency =>
      _$this._bookingFrequency ??= BookingFrequencyBuilder();
  set bookingFrequency(BookingFrequencyBuilder? bookingFrequency) =>
      _$this._bookingFrequency = bookingFrequency;

  ListBuilder<TopService>? _topServices;
  ListBuilder<TopService> get topServices =>
      _$this._topServices ??= ListBuilder<TopService>();
  set topServices(ListBuilder<TopService>? topServices) =>
      _$this._topServices = topServices;

  PremiumStatusBuilder? _premiumStatus;
  PremiumStatusBuilder get premiumStatus =>
      _$this._premiumStatus ??= PremiumStatusBuilder();
  set premiumStatus(PremiumStatusBuilder? premiumStatus) =>
      _$this._premiumStatus = premiumStatus;

  CustomerDetailStatsBuilder() {
    CustomerDetailStats._defaults(this);
  }

  CustomerDetailStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _customer = $v.customer.toBuilder();
      _bookingFrequency = $v.bookingFrequency.toBuilder();
      _topServices = $v.topServices.toBuilder();
      _premiumStatus = $v.premiumStatus.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerDetailStats other) {
    _$v = other as _$CustomerDetailStats;
  }

  @override
  void update(void Function(CustomerDetailStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerDetailStats build() => _build();

  _$CustomerDetailStats _build() {
    _$CustomerDetailStats _$result;
    try {
      _$result = _$v ??
          _$CustomerDetailStats._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'CustomerDetailStats', 'success'),
            customer: customer.build(),
            bookingFrequency: bookingFrequency.build(),
            topServices: topServices.build(),
            premiumStatus: premiumStatus.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customer';
        customer.build();
        _$failedField = 'bookingFrequency';
        bookingFrequency.build();
        _$failedField = 'topServices';
        topServices.build();
        _$failedField = 'premiumStatus';
        premiumStatus.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerDetailStats', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
