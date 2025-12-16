// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_history_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceHistoryListItem extends ServiceHistoryListItem {
  @override
  final int id;
  @override
  final String customerName;
  @override
  final String serviceName;
  @override
  final String operatorName;
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
  final String widgetName;
  @override
  final BuiltMap<String, Map<String, dynamic>?> widgetValue;

  factory _$ServiceHistoryListItem(
          [void Function(ServiceHistoryListItemBuilder)? updates]) =>
      (ServiceHistoryListItemBuilder()..update(updates))._build();

  _$ServiceHistoryListItem._(
      {required this.id,
      required this.customerName,
      required this.serviceName,
      required this.operatorName,
      required this.serviceDate,
      required this.durationMinutes,
      required this.price,
      required this.paid,
      this.paymentDate,
      required this.widgetName,
      required this.widgetValue})
      : super._();
  @override
  ServiceHistoryListItem rebuild(
          void Function(ServiceHistoryListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceHistoryListItemBuilder toBuilder() =>
      ServiceHistoryListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceHistoryListItem &&
        id == other.id &&
        customerName == other.customerName &&
        serviceName == other.serviceName &&
        operatorName == other.operatorName &&
        serviceDate == other.serviceDate &&
        durationMinutes == other.durationMinutes &&
        price == other.price &&
        paid == other.paid &&
        paymentDate == other.paymentDate &&
        widgetName == other.widgetName &&
        widgetValue == other.widgetValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, serviceDate.hashCode);
    _$hash = $jc(_$hash, durationMinutes.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, paid.hashCode);
    _$hash = $jc(_$hash, paymentDate.hashCode);
    _$hash = $jc(_$hash, widgetName.hashCode);
    _$hash = $jc(_$hash, widgetValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceHistoryListItem')
          ..add('id', id)
          ..add('customerName', customerName)
          ..add('serviceName', serviceName)
          ..add('operatorName', operatorName)
          ..add('serviceDate', serviceDate)
          ..add('durationMinutes', durationMinutes)
          ..add('price', price)
          ..add('paid', paid)
          ..add('paymentDate', paymentDate)
          ..add('widgetName', widgetName)
          ..add('widgetValue', widgetValue))
        .toString();
  }
}

class ServiceHistoryListItemBuilder
    implements Builder<ServiceHistoryListItem, ServiceHistoryListItemBuilder> {
  _$ServiceHistoryListItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  String? _operatorName;
  String? get operatorName => _$this._operatorName;
  set operatorName(String? operatorName) => _$this._operatorName = operatorName;

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

  String? _widgetName;
  String? get widgetName => _$this._widgetName;
  set widgetName(String? widgetName) => _$this._widgetName = widgetName;

  MapBuilder<String, Map<String, dynamic>?>? _widgetValue;
  MapBuilder<String, Map<String, dynamic>?> get widgetValue =>
      _$this._widgetValue ??= MapBuilder<String, Map<String, dynamic>?>();
  set widgetValue(MapBuilder<String, Map<String, dynamic>?>? widgetValue) =>
      _$this._widgetValue = widgetValue;

  ServiceHistoryListItemBuilder() {
    ServiceHistoryListItem._defaults(this);
  }

  ServiceHistoryListItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _customerName = $v.customerName;
      _serviceName = $v.serviceName;
      _operatorName = $v.operatorName;
      _serviceDate = $v.serviceDate;
      _durationMinutes = $v.durationMinutes;
      _price = $v.price;
      _paid = $v.paid;
      _paymentDate = $v.paymentDate;
      _widgetName = $v.widgetName;
      _widgetValue = $v.widgetValue.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceHistoryListItem other) {
    _$v = other as _$ServiceHistoryListItem;
  }

  @override
  void update(void Function(ServiceHistoryListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceHistoryListItem build() => _build();

  _$ServiceHistoryListItem _build() {
    _$ServiceHistoryListItem _$result;
    try {
      _$result = _$v ??
          _$ServiceHistoryListItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ServiceHistoryListItem', 'id'),
            customerName: BuiltValueNullFieldError.checkNotNull(
                customerName, r'ServiceHistoryListItem', 'customerName'),
            serviceName: BuiltValueNullFieldError.checkNotNull(
                serviceName, r'ServiceHistoryListItem', 'serviceName'),
            operatorName: BuiltValueNullFieldError.checkNotNull(
                operatorName, r'ServiceHistoryListItem', 'operatorName'),
            serviceDate: BuiltValueNullFieldError.checkNotNull(
                serviceDate, r'ServiceHistoryListItem', 'serviceDate'),
            durationMinutes: BuiltValueNullFieldError.checkNotNull(
                durationMinutes, r'ServiceHistoryListItem', 'durationMinutes'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'ServiceHistoryListItem', 'price'),
            paid: BuiltValueNullFieldError.checkNotNull(
                paid, r'ServiceHistoryListItem', 'paid'),
            paymentDate: paymentDate,
            widgetName: BuiltValueNullFieldError.checkNotNull(
                widgetName, r'ServiceHistoryListItem', 'widgetName'),
            widgetValue: widgetValue.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'widgetValue';
        widgetValue.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceHistoryListItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
