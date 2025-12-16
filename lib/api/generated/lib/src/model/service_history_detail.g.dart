// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_history_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceHistoryDetail extends ServiceHistoryDetail {
  @override
  final int id;
  @override
  final CustomerInfo customer;
  @override
  final ServiceInfo service;
  @override
  final OperatorInfo operator_;
  @override
  final DateTime serviceDate;
  @override
  final int durationMinutes;
  @override
  final double price;
  @override
  final bool paid;
  @override
  final DateTime? paymentDate;
  @override
  final String? paymentMethod;
  @override
  final String widgetName;
  @override
  final BuiltMap<String, Map<String, dynamic>?> widgetValue;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$ServiceHistoryDetail(
          [void Function(ServiceHistoryDetailBuilder)? updates]) =>
      (ServiceHistoryDetailBuilder()..update(updates))._build();

  _$ServiceHistoryDetail._(
      {required this.id,
      required this.customer,
      required this.service,
      required this.operator_,
      required this.serviceDate,
      required this.durationMinutes,
      required this.price,
      required this.paid,
      this.paymentDate,
      this.paymentMethod,
      required this.widgetName,
      required this.widgetValue,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  ServiceHistoryDetail rebuild(
          void Function(ServiceHistoryDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceHistoryDetailBuilder toBuilder() =>
      ServiceHistoryDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceHistoryDetail &&
        id == other.id &&
        customer == other.customer &&
        service == other.service &&
        operator_ == other.operator_ &&
        serviceDate == other.serviceDate &&
        durationMinutes == other.durationMinutes &&
        price == other.price &&
        paid == other.paid &&
        paymentDate == other.paymentDate &&
        paymentMethod == other.paymentMethod &&
        widgetName == other.widgetName &&
        widgetValue == other.widgetValue &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, service.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, serviceDate.hashCode);
    _$hash = $jc(_$hash, durationMinutes.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, paid.hashCode);
    _$hash = $jc(_$hash, paymentDate.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, widgetName.hashCode);
    _$hash = $jc(_$hash, widgetValue.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceHistoryDetail')
          ..add('id', id)
          ..add('customer', customer)
          ..add('service', service)
          ..add('operator_', operator_)
          ..add('serviceDate', serviceDate)
          ..add('durationMinutes', durationMinutes)
          ..add('price', price)
          ..add('paid', paid)
          ..add('paymentDate', paymentDate)
          ..add('paymentMethod', paymentMethod)
          ..add('widgetName', widgetName)
          ..add('widgetValue', widgetValue)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ServiceHistoryDetailBuilder
    implements Builder<ServiceHistoryDetail, ServiceHistoryDetailBuilder> {
  _$ServiceHistoryDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  CustomerInfoBuilder? _customer;
  CustomerInfoBuilder get customer =>
      _$this._customer ??= CustomerInfoBuilder();
  set customer(CustomerInfoBuilder? customer) => _$this._customer = customer;

  ServiceInfoBuilder? _service;
  ServiceInfoBuilder get service => _$this._service ??= ServiceInfoBuilder();
  set service(ServiceInfoBuilder? service) => _$this._service = service;

  OperatorInfoBuilder? _operator_;
  OperatorInfoBuilder get operator_ =>
      _$this._operator_ ??= OperatorInfoBuilder();
  set operator_(OperatorInfoBuilder? operator_) =>
      _$this._operator_ = operator_;

  DateTime? _serviceDate;
  DateTime? get serviceDate => _$this._serviceDate;
  set serviceDate(DateTime? serviceDate) => _$this._serviceDate = serviceDate;

  int? _durationMinutes;
  int? get durationMinutes => _$this._durationMinutes;
  set durationMinutes(int? durationMinutes) =>
      _$this._durationMinutes = durationMinutes;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  bool? _paid;
  bool? get paid => _$this._paid;
  set paid(bool? paid) => _$this._paid = paid;

  DateTime? _paymentDate;
  DateTime? get paymentDate => _$this._paymentDate;
  set paymentDate(DateTime? paymentDate) => _$this._paymentDate = paymentDate;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _widgetName;
  String? get widgetName => _$this._widgetName;
  set widgetName(String? widgetName) => _$this._widgetName = widgetName;

  MapBuilder<String, Map<String, dynamic>?>? _widgetValue;
  MapBuilder<String, Map<String, dynamic>?> get widgetValue =>
      _$this._widgetValue ??= MapBuilder<String, Map<String, dynamic>?>();
  set widgetValue(MapBuilder<String, Map<String, dynamic>?>? widgetValue) =>
      _$this._widgetValue = widgetValue;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ServiceHistoryDetailBuilder() {
    ServiceHistoryDetail._defaults(this);
  }

  ServiceHistoryDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _customer = $v.customer.toBuilder();
      _service = $v.service.toBuilder();
      _operator_ = $v.operator_.toBuilder();
      _serviceDate = $v.serviceDate;
      _durationMinutes = $v.durationMinutes;
      _price = $v.price;
      _paid = $v.paid;
      _paymentDate = $v.paymentDate;
      _paymentMethod = $v.paymentMethod;
      _widgetName = $v.widgetName;
      _widgetValue = $v.widgetValue.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceHistoryDetail other) {
    _$v = other as _$ServiceHistoryDetail;
  }

  @override
  void update(void Function(ServiceHistoryDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceHistoryDetail build() => _build();

  _$ServiceHistoryDetail _build() {
    _$ServiceHistoryDetail _$result;
    try {
      _$result = _$v ??
          _$ServiceHistoryDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ServiceHistoryDetail', 'id'),
            customer: customer.build(),
            service: service.build(),
            operator_: operator_.build(),
            serviceDate: BuiltValueNullFieldError.checkNotNull(
                serviceDate, r'ServiceHistoryDetail', 'serviceDate'),
            durationMinutes: BuiltValueNullFieldError.checkNotNull(
                durationMinutes, r'ServiceHistoryDetail', 'durationMinutes'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'ServiceHistoryDetail', 'price'),
            paid: BuiltValueNullFieldError.checkNotNull(
                paid, r'ServiceHistoryDetail', 'paid'),
            paymentDate: paymentDate,
            paymentMethod: paymentMethod,
            widgetName: BuiltValueNullFieldError.checkNotNull(
                widgetName, r'ServiceHistoryDetail', 'widgetName'),
            widgetValue: widgetValue.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'ServiceHistoryDetail', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'ServiceHistoryDetail', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customer';
        customer.build();
        _$failedField = 'service';
        service.build();
        _$failedField = 'operator_';
        operator_.build();

        _$failedField = 'widgetValue';
        widgetValue.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceHistoryDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
