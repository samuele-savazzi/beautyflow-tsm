// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_revenue_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyRevenueResponse extends DailyRevenueResponse {
  @override
  final String type;
  @override
  final Date date;
  @override
  final int areaId;
  @override
  final String areaName;
  @override
  final int? operatorId;
  @override
  final String? operatorName;
  @override
  final double serviceRevenueCash;
  @override
  final double serviceRevenueCard;
  @override
  final double serviceRevenueTotal;
  @override
  final double productRevenueCash;
  @override
  final double productRevenueCard;
  @override
  final double productRevenueTotal;
  @override
  final double totalRevenueCash;
  @override
  final double totalRevenueCard;
  @override
  final double totalRevenue;
  @override
  final int completedAppointmentsCount;
  @override
  final int cancelledAppointmentsCount;
  @override
  final int noShowAppointmentsCount;
  @override
  final int missedAppointmentsCount;
  @override
  final double missedRevenue;

  factory _$DailyRevenueResponse(
          [void Function(DailyRevenueResponseBuilder)? updates]) =>
      (DailyRevenueResponseBuilder()..update(updates))._build();

  _$DailyRevenueResponse._(
      {required this.type,
      required this.date,
      required this.areaId,
      required this.areaName,
      this.operatorId,
      this.operatorName,
      required this.serviceRevenueCash,
      required this.serviceRevenueCard,
      required this.serviceRevenueTotal,
      required this.productRevenueCash,
      required this.productRevenueCard,
      required this.productRevenueTotal,
      required this.totalRevenueCash,
      required this.totalRevenueCard,
      required this.totalRevenue,
      required this.completedAppointmentsCount,
      required this.cancelledAppointmentsCount,
      required this.noShowAppointmentsCount,
      required this.missedAppointmentsCount,
      required this.missedRevenue})
      : super._();
  @override
  DailyRevenueResponse rebuild(
          void Function(DailyRevenueResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyRevenueResponseBuilder toBuilder() =>
      DailyRevenueResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyRevenueResponse &&
        type == other.type &&
        date == other.date &&
        areaId == other.areaId &&
        areaName == other.areaName &&
        operatorId == other.operatorId &&
        operatorName == other.operatorName &&
        serviceRevenueCash == other.serviceRevenueCash &&
        serviceRevenueCard == other.serviceRevenueCard &&
        serviceRevenueTotal == other.serviceRevenueTotal &&
        productRevenueCash == other.productRevenueCash &&
        productRevenueCard == other.productRevenueCard &&
        productRevenueTotal == other.productRevenueTotal &&
        totalRevenueCash == other.totalRevenueCash &&
        totalRevenueCard == other.totalRevenueCard &&
        totalRevenue == other.totalRevenue &&
        completedAppointmentsCount == other.completedAppointmentsCount &&
        cancelledAppointmentsCount == other.cancelledAppointmentsCount &&
        noShowAppointmentsCount == other.noShowAppointmentsCount &&
        missedAppointmentsCount == other.missedAppointmentsCount &&
        missedRevenue == other.missedRevenue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, areaName.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, serviceRevenueCash.hashCode);
    _$hash = $jc(_$hash, serviceRevenueCard.hashCode);
    _$hash = $jc(_$hash, serviceRevenueTotal.hashCode);
    _$hash = $jc(_$hash, productRevenueCash.hashCode);
    _$hash = $jc(_$hash, productRevenueCard.hashCode);
    _$hash = $jc(_$hash, productRevenueTotal.hashCode);
    _$hash = $jc(_$hash, totalRevenueCash.hashCode);
    _$hash = $jc(_$hash, totalRevenueCard.hashCode);
    _$hash = $jc(_$hash, totalRevenue.hashCode);
    _$hash = $jc(_$hash, completedAppointmentsCount.hashCode);
    _$hash = $jc(_$hash, cancelledAppointmentsCount.hashCode);
    _$hash = $jc(_$hash, noShowAppointmentsCount.hashCode);
    _$hash = $jc(_$hash, missedAppointmentsCount.hashCode);
    _$hash = $jc(_$hash, missedRevenue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyRevenueResponse')
          ..add('type', type)
          ..add('date', date)
          ..add('areaId', areaId)
          ..add('areaName', areaName)
          ..add('operatorId', operatorId)
          ..add('operatorName', operatorName)
          ..add('serviceRevenueCash', serviceRevenueCash)
          ..add('serviceRevenueCard', serviceRevenueCard)
          ..add('serviceRevenueTotal', serviceRevenueTotal)
          ..add('productRevenueCash', productRevenueCash)
          ..add('productRevenueCard', productRevenueCard)
          ..add('productRevenueTotal', productRevenueTotal)
          ..add('totalRevenueCash', totalRevenueCash)
          ..add('totalRevenueCard', totalRevenueCard)
          ..add('totalRevenue', totalRevenue)
          ..add('completedAppointmentsCount', completedAppointmentsCount)
          ..add('cancelledAppointmentsCount', cancelledAppointmentsCount)
          ..add('noShowAppointmentsCount', noShowAppointmentsCount)
          ..add('missedAppointmentsCount', missedAppointmentsCount)
          ..add('missedRevenue', missedRevenue))
        .toString();
  }
}

class DailyRevenueResponseBuilder
    implements Builder<DailyRevenueResponse, DailyRevenueResponseBuilder> {
  _$DailyRevenueResponse? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  String? _areaName;
  String? get areaName => _$this._areaName;
  set areaName(String? areaName) => _$this._areaName = areaName;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _operatorName;
  String? get operatorName => _$this._operatorName;
  set operatorName(String? operatorName) => _$this._operatorName = operatorName;

  double? _serviceRevenueCash;
  double? get serviceRevenueCash => _$this._serviceRevenueCash;
  set serviceRevenueCash(double? serviceRevenueCash) =>
      _$this._serviceRevenueCash = serviceRevenueCash;

  double? _serviceRevenueCard;
  double? get serviceRevenueCard => _$this._serviceRevenueCard;
  set serviceRevenueCard(double? serviceRevenueCard) =>
      _$this._serviceRevenueCard = serviceRevenueCard;

  double? _serviceRevenueTotal;
  double? get serviceRevenueTotal => _$this._serviceRevenueTotal;
  set serviceRevenueTotal(double? serviceRevenueTotal) =>
      _$this._serviceRevenueTotal = serviceRevenueTotal;

  double? _productRevenueCash;
  double? get productRevenueCash => _$this._productRevenueCash;
  set productRevenueCash(double? productRevenueCash) =>
      _$this._productRevenueCash = productRevenueCash;

  double? _productRevenueCard;
  double? get productRevenueCard => _$this._productRevenueCard;
  set productRevenueCard(double? productRevenueCard) =>
      _$this._productRevenueCard = productRevenueCard;

  double? _productRevenueTotal;
  double? get productRevenueTotal => _$this._productRevenueTotal;
  set productRevenueTotal(double? productRevenueTotal) =>
      _$this._productRevenueTotal = productRevenueTotal;

  double? _totalRevenueCash;
  double? get totalRevenueCash => _$this._totalRevenueCash;
  set totalRevenueCash(double? totalRevenueCash) =>
      _$this._totalRevenueCash = totalRevenueCash;

  double? _totalRevenueCard;
  double? get totalRevenueCard => _$this._totalRevenueCard;
  set totalRevenueCard(double? totalRevenueCard) =>
      _$this._totalRevenueCard = totalRevenueCard;

  double? _totalRevenue;
  double? get totalRevenue => _$this._totalRevenue;
  set totalRevenue(double? totalRevenue) => _$this._totalRevenue = totalRevenue;

  int? _completedAppointmentsCount;
  int? get completedAppointmentsCount => _$this._completedAppointmentsCount;
  set completedAppointmentsCount(int? completedAppointmentsCount) =>
      _$this._completedAppointmentsCount = completedAppointmentsCount;

  int? _cancelledAppointmentsCount;
  int? get cancelledAppointmentsCount => _$this._cancelledAppointmentsCount;
  set cancelledAppointmentsCount(int? cancelledAppointmentsCount) =>
      _$this._cancelledAppointmentsCount = cancelledAppointmentsCount;

  int? _noShowAppointmentsCount;
  int? get noShowAppointmentsCount => _$this._noShowAppointmentsCount;
  set noShowAppointmentsCount(int? noShowAppointmentsCount) =>
      _$this._noShowAppointmentsCount = noShowAppointmentsCount;

  int? _missedAppointmentsCount;
  int? get missedAppointmentsCount => _$this._missedAppointmentsCount;
  set missedAppointmentsCount(int? missedAppointmentsCount) =>
      _$this._missedAppointmentsCount = missedAppointmentsCount;

  double? _missedRevenue;
  double? get missedRevenue => _$this._missedRevenue;
  set missedRevenue(double? missedRevenue) =>
      _$this._missedRevenue = missedRevenue;

  DailyRevenueResponseBuilder() {
    DailyRevenueResponse._defaults(this);
  }

  DailyRevenueResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _date = $v.date;
      _areaId = $v.areaId;
      _areaName = $v.areaName;
      _operatorId = $v.operatorId;
      _operatorName = $v.operatorName;
      _serviceRevenueCash = $v.serviceRevenueCash;
      _serviceRevenueCard = $v.serviceRevenueCard;
      _serviceRevenueTotal = $v.serviceRevenueTotal;
      _productRevenueCash = $v.productRevenueCash;
      _productRevenueCard = $v.productRevenueCard;
      _productRevenueTotal = $v.productRevenueTotal;
      _totalRevenueCash = $v.totalRevenueCash;
      _totalRevenueCard = $v.totalRevenueCard;
      _totalRevenue = $v.totalRevenue;
      _completedAppointmentsCount = $v.completedAppointmentsCount;
      _cancelledAppointmentsCount = $v.cancelledAppointmentsCount;
      _noShowAppointmentsCount = $v.noShowAppointmentsCount;
      _missedAppointmentsCount = $v.missedAppointmentsCount;
      _missedRevenue = $v.missedRevenue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyRevenueResponse other) {
    _$v = other as _$DailyRevenueResponse;
  }

  @override
  void update(void Function(DailyRevenueResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyRevenueResponse build() => _build();

  _$DailyRevenueResponse _build() {
    final _$result = _$v ??
        _$DailyRevenueResponse._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'DailyRevenueResponse', 'type'),
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'DailyRevenueResponse', 'date'),
          areaId: BuiltValueNullFieldError.checkNotNull(
              areaId, r'DailyRevenueResponse', 'areaId'),
          areaName: BuiltValueNullFieldError.checkNotNull(
              areaName, r'DailyRevenueResponse', 'areaName'),
          operatorId: operatorId,
          operatorName: operatorName,
          serviceRevenueCash: BuiltValueNullFieldError.checkNotNull(
              serviceRevenueCash,
              r'DailyRevenueResponse',
              'serviceRevenueCash'),
          serviceRevenueCard: BuiltValueNullFieldError.checkNotNull(
              serviceRevenueCard,
              r'DailyRevenueResponse',
              'serviceRevenueCard'),
          serviceRevenueTotal: BuiltValueNullFieldError.checkNotNull(
              serviceRevenueTotal,
              r'DailyRevenueResponse',
              'serviceRevenueTotal'),
          productRevenueCash: BuiltValueNullFieldError.checkNotNull(
              productRevenueCash,
              r'DailyRevenueResponse',
              'productRevenueCash'),
          productRevenueCard: BuiltValueNullFieldError.checkNotNull(
              productRevenueCard,
              r'DailyRevenueResponse',
              'productRevenueCard'),
          productRevenueTotal: BuiltValueNullFieldError.checkNotNull(
              productRevenueTotal,
              r'DailyRevenueResponse',
              'productRevenueTotal'),
          totalRevenueCash: BuiltValueNullFieldError.checkNotNull(
              totalRevenueCash, r'DailyRevenueResponse', 'totalRevenueCash'),
          totalRevenueCard: BuiltValueNullFieldError.checkNotNull(
              totalRevenueCard, r'DailyRevenueResponse', 'totalRevenueCard'),
          totalRevenue: BuiltValueNullFieldError.checkNotNull(
              totalRevenue, r'DailyRevenueResponse', 'totalRevenue'),
          completedAppointmentsCount: BuiltValueNullFieldError.checkNotNull(
              completedAppointmentsCount,
              r'DailyRevenueResponse',
              'completedAppointmentsCount'),
          cancelledAppointmentsCount: BuiltValueNullFieldError.checkNotNull(
              cancelledAppointmentsCount,
              r'DailyRevenueResponse',
              'cancelledAppointmentsCount'),
          noShowAppointmentsCount: BuiltValueNullFieldError.checkNotNull(
              noShowAppointmentsCount,
              r'DailyRevenueResponse',
              'noShowAppointmentsCount'),
          missedAppointmentsCount: BuiltValueNullFieldError.checkNotNull(
              missedAppointmentsCount,
              r'DailyRevenueResponse',
              'missedAppointmentsCount'),
          missedRevenue: BuiltValueNullFieldError.checkNotNull(
              missedRevenue, r'DailyRevenueResponse', 'missedRevenue'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
