// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_service.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TopService extends TopService {
  @override
  final int serviceId;
  @override
  final String serviceName;
  @override
  final int bookingCount;
  @override
  final double totalSpent;
  @override
  final String lastServiceDate;

  factory _$TopService([void Function(TopServiceBuilder)? updates]) =>
      (TopServiceBuilder()..update(updates))._build();

  _$TopService._(
      {required this.serviceId,
      required this.serviceName,
      required this.bookingCount,
      required this.totalSpent,
      required this.lastServiceDate})
      : super._();
  @override
  TopService rebuild(void Function(TopServiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopServiceBuilder toBuilder() => TopServiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopService &&
        serviceId == other.serviceId &&
        serviceName == other.serviceName &&
        bookingCount == other.bookingCount &&
        totalSpent == other.totalSpent &&
        lastServiceDate == other.lastServiceDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, bookingCount.hashCode);
    _$hash = $jc(_$hash, totalSpent.hashCode);
    _$hash = $jc(_$hash, lastServiceDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TopService')
          ..add('serviceId', serviceId)
          ..add('serviceName', serviceName)
          ..add('bookingCount', bookingCount)
          ..add('totalSpent', totalSpent)
          ..add('lastServiceDate', lastServiceDate))
        .toString();
  }
}

class TopServiceBuilder implements Builder<TopService, TopServiceBuilder> {
  _$TopService? _$v;

  int? _serviceId;
  int? get serviceId => _$this._serviceId;
  set serviceId(int? serviceId) => _$this._serviceId = serviceId;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  int? _bookingCount;
  int? get bookingCount => _$this._bookingCount;
  set bookingCount(int? bookingCount) => _$this._bookingCount = bookingCount;

  double? _totalSpent;
  double? get totalSpent => _$this._totalSpent;
  set totalSpent(double? totalSpent) => _$this._totalSpent = totalSpent;

  String? _lastServiceDate;
  String? get lastServiceDate => _$this._lastServiceDate;
  set lastServiceDate(String? lastServiceDate) =>
      _$this._lastServiceDate = lastServiceDate;

  TopServiceBuilder() {
    TopService._defaults(this);
  }

  TopServiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceId = $v.serviceId;
      _serviceName = $v.serviceName;
      _bookingCount = $v.bookingCount;
      _totalSpent = $v.totalSpent;
      _lastServiceDate = $v.lastServiceDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopService other) {
    _$v = other as _$TopService;
  }

  @override
  void update(void Function(TopServiceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TopService build() => _build();

  _$TopService _build() {
    final _$result = _$v ??
        _$TopService._(
          serviceId: BuiltValueNullFieldError.checkNotNull(
              serviceId, r'TopService', 'serviceId'),
          serviceName: BuiltValueNullFieldError.checkNotNull(
              serviceName, r'TopService', 'serviceName'),
          bookingCount: BuiltValueNullFieldError.checkNotNull(
              bookingCount, r'TopService', 'bookingCount'),
          totalSpent: BuiltValueNullFieldError.checkNotNull(
              totalSpent, r'TopService', 'totalSpent'),
          lastServiceDate: BuiltValueNullFieldError.checkNotNull(
              lastServiceDate, r'TopService', 'lastServiceDate'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
