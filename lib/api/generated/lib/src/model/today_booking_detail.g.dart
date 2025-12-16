// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_booking_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodayBookingDetail extends TodayBookingDetail {
  @override
  final int id;
  @override
  final Date bookingDate;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final int durationMinutes;
  @override
  final String status;
  @override
  final int? customerId;
  @override
  final String customerName;
  @override
  final String? customerPhone;
  @override
  final String? customerEmail;
  @override
  final bool isGuest;
  @override
  final int operatorId;
  @override
  final String operatorName;
  @override
  final String? operatorPhoto;
  @override
  final int? additionalOperatorId;
  @override
  final String? additionalOperatorName;
  @override
  final int serviceId;
  @override
  final String serviceName;
  @override
  final int? additionalServiceId;
  @override
  final String? additionalServiceName;
  @override
  final int? workstationId;
  @override
  final String? workstationName;
  @override
  final double totalPrice;
  @override
  final String? paymentMethod;
  @override
  final double cashAmount;
  @override
  final double cardAmount;
  @override
  final bool isConsultation;
  @override
  final BuiltList<ProductSale> productsSold;
  @override
  final double totalProductsRevenue;
  @override
  final String? notes;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>?
      serviceStepsSnapshot;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>?
      additionalServiceStepsSnapshot;

  factory _$TodayBookingDetail(
          [void Function(TodayBookingDetailBuilder)? updates]) =>
      (TodayBookingDetailBuilder()..update(updates))._build();

  _$TodayBookingDetail._(
      {required this.id,
      required this.bookingDate,
      required this.startTime,
      required this.endTime,
      required this.durationMinutes,
      required this.status,
      this.customerId,
      required this.customerName,
      this.customerPhone,
      this.customerEmail,
      required this.isGuest,
      required this.operatorId,
      required this.operatorName,
      this.operatorPhoto,
      this.additionalOperatorId,
      this.additionalOperatorName,
      required this.serviceId,
      required this.serviceName,
      this.additionalServiceId,
      this.additionalServiceName,
      this.workstationId,
      this.workstationName,
      required this.totalPrice,
      this.paymentMethod,
      required this.cashAmount,
      required this.cardAmount,
      required this.isConsultation,
      required this.productsSold,
      required this.totalProductsRevenue,
      this.notes,
      this.serviceStepsSnapshot,
      this.additionalServiceStepsSnapshot})
      : super._();
  @override
  TodayBookingDetail rebuild(
          void Function(TodayBookingDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodayBookingDetailBuilder toBuilder() =>
      TodayBookingDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodayBookingDetail &&
        id == other.id &&
        bookingDate == other.bookingDate &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        durationMinutes == other.durationMinutes &&
        status == other.status &&
        customerId == other.customerId &&
        customerName == other.customerName &&
        customerPhone == other.customerPhone &&
        customerEmail == other.customerEmail &&
        isGuest == other.isGuest &&
        operatorId == other.operatorId &&
        operatorName == other.operatorName &&
        operatorPhoto == other.operatorPhoto &&
        additionalOperatorId == other.additionalOperatorId &&
        additionalOperatorName == other.additionalOperatorName &&
        serviceId == other.serviceId &&
        serviceName == other.serviceName &&
        additionalServiceId == other.additionalServiceId &&
        additionalServiceName == other.additionalServiceName &&
        workstationId == other.workstationId &&
        workstationName == other.workstationName &&
        totalPrice == other.totalPrice &&
        paymentMethod == other.paymentMethod &&
        cashAmount == other.cashAmount &&
        cardAmount == other.cardAmount &&
        isConsultation == other.isConsultation &&
        productsSold == other.productsSold &&
        totalProductsRevenue == other.totalProductsRevenue &&
        notes == other.notes &&
        serviceStepsSnapshot == other.serviceStepsSnapshot &&
        additionalServiceStepsSnapshot == other.additionalServiceStepsSnapshot;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, bookingDate.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, durationMinutes.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerPhone.hashCode);
    _$hash = $jc(_$hash, customerEmail.hashCode);
    _$hash = $jc(_$hash, isGuest.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, operatorPhoto.hashCode);
    _$hash = $jc(_$hash, additionalOperatorId.hashCode);
    _$hash = $jc(_$hash, additionalOperatorName.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, additionalServiceId.hashCode);
    _$hash = $jc(_$hash, additionalServiceName.hashCode);
    _$hash = $jc(_$hash, workstationId.hashCode);
    _$hash = $jc(_$hash, workstationName.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, cashAmount.hashCode);
    _$hash = $jc(_$hash, cardAmount.hashCode);
    _$hash = $jc(_$hash, isConsultation.hashCode);
    _$hash = $jc(_$hash, productsSold.hashCode);
    _$hash = $jc(_$hash, totalProductsRevenue.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, serviceStepsSnapshot.hashCode);
    _$hash = $jc(_$hash, additionalServiceStepsSnapshot.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TodayBookingDetail')
          ..add('id', id)
          ..add('bookingDate', bookingDate)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('durationMinutes', durationMinutes)
          ..add('status', status)
          ..add('customerId', customerId)
          ..add('customerName', customerName)
          ..add('customerPhone', customerPhone)
          ..add('customerEmail', customerEmail)
          ..add('isGuest', isGuest)
          ..add('operatorId', operatorId)
          ..add('operatorName', operatorName)
          ..add('operatorPhoto', operatorPhoto)
          ..add('additionalOperatorId', additionalOperatorId)
          ..add('additionalOperatorName', additionalOperatorName)
          ..add('serviceId', serviceId)
          ..add('serviceName', serviceName)
          ..add('additionalServiceId', additionalServiceId)
          ..add('additionalServiceName', additionalServiceName)
          ..add('workstationId', workstationId)
          ..add('workstationName', workstationName)
          ..add('totalPrice', totalPrice)
          ..add('paymentMethod', paymentMethod)
          ..add('cashAmount', cashAmount)
          ..add('cardAmount', cardAmount)
          ..add('isConsultation', isConsultation)
          ..add('productsSold', productsSold)
          ..add('totalProductsRevenue', totalProductsRevenue)
          ..add('notes', notes)
          ..add('serviceStepsSnapshot', serviceStepsSnapshot)
          ..add(
              'additionalServiceStepsSnapshot', additionalServiceStepsSnapshot))
        .toString();
  }
}

class TodayBookingDetailBuilder
    implements Builder<TodayBookingDetail, TodayBookingDetailBuilder> {
  _$TodayBookingDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  Date? _bookingDate;
  Date? get bookingDate => _$this._bookingDate;
  set bookingDate(Date? bookingDate) => _$this._bookingDate = bookingDate;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  int? _durationMinutes;
  int? get durationMinutes => _$this._durationMinutes;
  set durationMinutes(int? durationMinutes) =>
      _$this._durationMinutes = durationMinutes;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _customerPhone;
  String? get customerPhone => _$this._customerPhone;
  set customerPhone(String? customerPhone) =>
      _$this._customerPhone = customerPhone;

  String? _customerEmail;
  String? get customerEmail => _$this._customerEmail;
  set customerEmail(String? customerEmail) =>
      _$this._customerEmail = customerEmail;

  bool? _isGuest;
  bool? get isGuest => _$this._isGuest;
  set isGuest(bool? isGuest) => _$this._isGuest = isGuest;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _operatorName;
  String? get operatorName => _$this._operatorName;
  set operatorName(String? operatorName) => _$this._operatorName = operatorName;

  String? _operatorPhoto;
  String? get operatorPhoto => _$this._operatorPhoto;
  set operatorPhoto(String? operatorPhoto) =>
      _$this._operatorPhoto = operatorPhoto;

  int? _additionalOperatorId;
  int? get additionalOperatorId => _$this._additionalOperatorId;
  set additionalOperatorId(int? additionalOperatorId) =>
      _$this._additionalOperatorId = additionalOperatorId;

  String? _additionalOperatorName;
  String? get additionalOperatorName => _$this._additionalOperatorName;
  set additionalOperatorName(String? additionalOperatorName) =>
      _$this._additionalOperatorName = additionalOperatorName;

  int? _serviceId;
  int? get serviceId => _$this._serviceId;
  set serviceId(int? serviceId) => _$this._serviceId = serviceId;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  int? _additionalServiceId;
  int? get additionalServiceId => _$this._additionalServiceId;
  set additionalServiceId(int? additionalServiceId) =>
      _$this._additionalServiceId = additionalServiceId;

  String? _additionalServiceName;
  String? get additionalServiceName => _$this._additionalServiceName;
  set additionalServiceName(String? additionalServiceName) =>
      _$this._additionalServiceName = additionalServiceName;

  int? _workstationId;
  int? get workstationId => _$this._workstationId;
  set workstationId(int? workstationId) =>
      _$this._workstationId = workstationId;

  String? _workstationName;
  String? get workstationName => _$this._workstationName;
  set workstationName(String? workstationName) =>
      _$this._workstationName = workstationName;

  double? _totalPrice;
  double? get totalPrice => _$this._totalPrice;
  set totalPrice(double? totalPrice) => _$this._totalPrice = totalPrice;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  double? _cashAmount;
  double? get cashAmount => _$this._cashAmount;
  set cashAmount(double? cashAmount) => _$this._cashAmount = cashAmount;

  double? _cardAmount;
  double? get cardAmount => _$this._cardAmount;
  set cardAmount(double? cardAmount) => _$this._cardAmount = cardAmount;

  bool? _isConsultation;
  bool? get isConsultation => _$this._isConsultation;
  set isConsultation(bool? isConsultation) =>
      _$this._isConsultation = isConsultation;

  ListBuilder<ProductSale>? _productsSold;
  ListBuilder<ProductSale> get productsSold =>
      _$this._productsSold ??= ListBuilder<ProductSale>();
  set productsSold(ListBuilder<ProductSale>? productsSold) =>
      _$this._productsSold = productsSold;

  double? _totalProductsRevenue;
  double? get totalProductsRevenue => _$this._totalProductsRevenue;
  set totalProductsRevenue(double? totalProductsRevenue) =>
      _$this._totalProductsRevenue = totalProductsRevenue;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _serviceStepsSnapshot;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>
      get serviceStepsSnapshot => _$this._serviceStepsSnapshot ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set serviceStepsSnapshot(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>?
              serviceStepsSnapshot) =>
      _$this._serviceStepsSnapshot = serviceStepsSnapshot;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>?
      _additionalServiceStepsSnapshot;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>
      get additionalServiceStepsSnapshot =>
          _$this._additionalServiceStepsSnapshot ??=
              ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set additionalServiceStepsSnapshot(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>?
              additionalServiceStepsSnapshot) =>
      _$this._additionalServiceStepsSnapshot = additionalServiceStepsSnapshot;

  TodayBookingDetailBuilder() {
    TodayBookingDetail._defaults(this);
  }

  TodayBookingDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _bookingDate = $v.bookingDate;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _durationMinutes = $v.durationMinutes;
      _status = $v.status;
      _customerId = $v.customerId;
      _customerName = $v.customerName;
      _customerPhone = $v.customerPhone;
      _customerEmail = $v.customerEmail;
      _isGuest = $v.isGuest;
      _operatorId = $v.operatorId;
      _operatorName = $v.operatorName;
      _operatorPhoto = $v.operatorPhoto;
      _additionalOperatorId = $v.additionalOperatorId;
      _additionalOperatorName = $v.additionalOperatorName;
      _serviceId = $v.serviceId;
      _serviceName = $v.serviceName;
      _additionalServiceId = $v.additionalServiceId;
      _additionalServiceName = $v.additionalServiceName;
      _workstationId = $v.workstationId;
      _workstationName = $v.workstationName;
      _totalPrice = $v.totalPrice;
      _paymentMethod = $v.paymentMethod;
      _cashAmount = $v.cashAmount;
      _cardAmount = $v.cardAmount;
      _isConsultation = $v.isConsultation;
      _productsSold = $v.productsSold.toBuilder();
      _totalProductsRevenue = $v.totalProductsRevenue;
      _notes = $v.notes;
      _serviceStepsSnapshot = $v.serviceStepsSnapshot?.toBuilder();
      _additionalServiceStepsSnapshot =
          $v.additionalServiceStepsSnapshot?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodayBookingDetail other) {
    _$v = other as _$TodayBookingDetail;
  }

  @override
  void update(void Function(TodayBookingDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TodayBookingDetail build() => _build();

  _$TodayBookingDetail _build() {
    _$TodayBookingDetail _$result;
    try {
      _$result = _$v ??
          _$TodayBookingDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TodayBookingDetail', 'id'),
            bookingDate: BuiltValueNullFieldError.checkNotNull(
                bookingDate, r'TodayBookingDetail', 'bookingDate'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'TodayBookingDetail', 'startTime'),
            endTime: BuiltValueNullFieldError.checkNotNull(
                endTime, r'TodayBookingDetail', 'endTime'),
            durationMinutes: BuiltValueNullFieldError.checkNotNull(
                durationMinutes, r'TodayBookingDetail', 'durationMinutes'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'TodayBookingDetail', 'status'),
            customerId: customerId,
            customerName: BuiltValueNullFieldError.checkNotNull(
                customerName, r'TodayBookingDetail', 'customerName'),
            customerPhone: customerPhone,
            customerEmail: customerEmail,
            isGuest: BuiltValueNullFieldError.checkNotNull(
                isGuest, r'TodayBookingDetail', 'isGuest'),
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'TodayBookingDetail', 'operatorId'),
            operatorName: BuiltValueNullFieldError.checkNotNull(
                operatorName, r'TodayBookingDetail', 'operatorName'),
            operatorPhoto: operatorPhoto,
            additionalOperatorId: additionalOperatorId,
            additionalOperatorName: additionalOperatorName,
            serviceId: BuiltValueNullFieldError.checkNotNull(
                serviceId, r'TodayBookingDetail', 'serviceId'),
            serviceName: BuiltValueNullFieldError.checkNotNull(
                serviceName, r'TodayBookingDetail', 'serviceName'),
            additionalServiceId: additionalServiceId,
            additionalServiceName: additionalServiceName,
            workstationId: workstationId,
            workstationName: workstationName,
            totalPrice: BuiltValueNullFieldError.checkNotNull(
                totalPrice, r'TodayBookingDetail', 'totalPrice'),
            paymentMethod: paymentMethod,
            cashAmount: BuiltValueNullFieldError.checkNotNull(
                cashAmount, r'TodayBookingDetail', 'cashAmount'),
            cardAmount: BuiltValueNullFieldError.checkNotNull(
                cardAmount, r'TodayBookingDetail', 'cardAmount'),
            isConsultation: BuiltValueNullFieldError.checkNotNull(
                isConsultation, r'TodayBookingDetail', 'isConsultation'),
            productsSold: productsSold.build(),
            totalProductsRevenue: BuiltValueNullFieldError.checkNotNull(
                totalProductsRevenue,
                r'TodayBookingDetail',
                'totalProductsRevenue'),
            notes: notes,
            serviceStepsSnapshot: _serviceStepsSnapshot?.build(),
            additionalServiceStepsSnapshot:
                _additionalServiceStepsSnapshot?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productsSold';
        productsSold.build();

        _$failedField = 'serviceStepsSnapshot';
        _serviceStepsSnapshot?.build();
        _$failedField = 'additionalServiceStepsSnapshot';
        _additionalServiceStepsSnapshot?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TodayBookingDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
