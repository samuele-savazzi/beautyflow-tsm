// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_regular_service.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerRegularService extends CustomerRegularService {
  @override
  final int id;
  @override
  final int customer;
  @override
  final String customerName;
  @override
  final String customerPhone;
  @override
  final int service;
  @override
  final String serviceName;
  @override
  final int serviceId;
  @override
  final int? markedRegularBy;
  @override
  final String markedByName;
  @override
  final DateTime markedRegularAt;
  @override
  final int? triggeredByConsultation;
  @override
  final bool? active;
  @override
  final String? notes;
  @override
  final int totalConsultations;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$CustomerRegularService(
          [void Function(CustomerRegularServiceBuilder)? updates]) =>
      (CustomerRegularServiceBuilder()..update(updates))._build();

  _$CustomerRegularService._(
      {required this.id,
      required this.customer,
      required this.customerName,
      required this.customerPhone,
      required this.service,
      required this.serviceName,
      required this.serviceId,
      this.markedRegularBy,
      required this.markedByName,
      required this.markedRegularAt,
      this.triggeredByConsultation,
      this.active,
      this.notes,
      required this.totalConsultations,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  CustomerRegularService rebuild(
          void Function(CustomerRegularServiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerRegularServiceBuilder toBuilder() =>
      CustomerRegularServiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerRegularService &&
        id == other.id &&
        customer == other.customer &&
        customerName == other.customerName &&
        customerPhone == other.customerPhone &&
        service == other.service &&
        serviceName == other.serviceName &&
        serviceId == other.serviceId &&
        markedRegularBy == other.markedRegularBy &&
        markedByName == other.markedByName &&
        markedRegularAt == other.markedRegularAt &&
        triggeredByConsultation == other.triggeredByConsultation &&
        active == other.active &&
        notes == other.notes &&
        totalConsultations == other.totalConsultations &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerPhone.hashCode);
    _$hash = $jc(_$hash, service.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, markedRegularBy.hashCode);
    _$hash = $jc(_$hash, markedByName.hashCode);
    _$hash = $jc(_$hash, markedRegularAt.hashCode);
    _$hash = $jc(_$hash, triggeredByConsultation.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, totalConsultations.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerRegularService')
          ..add('id', id)
          ..add('customer', customer)
          ..add('customerName', customerName)
          ..add('customerPhone', customerPhone)
          ..add('service', service)
          ..add('serviceName', serviceName)
          ..add('serviceId', serviceId)
          ..add('markedRegularBy', markedRegularBy)
          ..add('markedByName', markedByName)
          ..add('markedRegularAt', markedRegularAt)
          ..add('triggeredByConsultation', triggeredByConsultation)
          ..add('active', active)
          ..add('notes', notes)
          ..add('totalConsultations', totalConsultations)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CustomerRegularServiceBuilder
    implements Builder<CustomerRegularService, CustomerRegularServiceBuilder> {
  _$CustomerRegularService? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _customer;
  int? get customer => _$this._customer;
  set customer(int? customer) => _$this._customer = customer;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _customerPhone;
  String? get customerPhone => _$this._customerPhone;
  set customerPhone(String? customerPhone) =>
      _$this._customerPhone = customerPhone;

  int? _service;
  int? get service => _$this._service;
  set service(int? service) => _$this._service = service;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  int? _serviceId;
  int? get serviceId => _$this._serviceId;
  set serviceId(int? serviceId) => _$this._serviceId = serviceId;

  int? _markedRegularBy;
  int? get markedRegularBy => _$this._markedRegularBy;
  set markedRegularBy(int? markedRegularBy) =>
      _$this._markedRegularBy = markedRegularBy;

  String? _markedByName;
  String? get markedByName => _$this._markedByName;
  set markedByName(String? markedByName) => _$this._markedByName = markedByName;

  DateTime? _markedRegularAt;
  DateTime? get markedRegularAt => _$this._markedRegularAt;
  set markedRegularAt(DateTime? markedRegularAt) =>
      _$this._markedRegularAt = markedRegularAt;

  int? _triggeredByConsultation;
  int? get triggeredByConsultation => _$this._triggeredByConsultation;
  set triggeredByConsultation(int? triggeredByConsultation) =>
      _$this._triggeredByConsultation = triggeredByConsultation;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  int? _totalConsultations;
  int? get totalConsultations => _$this._totalConsultations;
  set totalConsultations(int? totalConsultations) =>
      _$this._totalConsultations = totalConsultations;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  CustomerRegularServiceBuilder() {
    CustomerRegularService._defaults(this);
  }

  CustomerRegularServiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _customer = $v.customer;
      _customerName = $v.customerName;
      _customerPhone = $v.customerPhone;
      _service = $v.service;
      _serviceName = $v.serviceName;
      _serviceId = $v.serviceId;
      _markedRegularBy = $v.markedRegularBy;
      _markedByName = $v.markedByName;
      _markedRegularAt = $v.markedRegularAt;
      _triggeredByConsultation = $v.triggeredByConsultation;
      _active = $v.active;
      _notes = $v.notes;
      _totalConsultations = $v.totalConsultations;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerRegularService other) {
    _$v = other as _$CustomerRegularService;
  }

  @override
  void update(void Function(CustomerRegularServiceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerRegularService build() => _build();

  _$CustomerRegularService _build() {
    final _$result = _$v ??
        _$CustomerRegularService._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CustomerRegularService', 'id'),
          customer: BuiltValueNullFieldError.checkNotNull(
              customer, r'CustomerRegularService', 'customer'),
          customerName: BuiltValueNullFieldError.checkNotNull(
              customerName, r'CustomerRegularService', 'customerName'),
          customerPhone: BuiltValueNullFieldError.checkNotNull(
              customerPhone, r'CustomerRegularService', 'customerPhone'),
          service: BuiltValueNullFieldError.checkNotNull(
              service, r'CustomerRegularService', 'service'),
          serviceName: BuiltValueNullFieldError.checkNotNull(
              serviceName, r'CustomerRegularService', 'serviceName'),
          serviceId: BuiltValueNullFieldError.checkNotNull(
              serviceId, r'CustomerRegularService', 'serviceId'),
          markedRegularBy: markedRegularBy,
          markedByName: BuiltValueNullFieldError.checkNotNull(
              markedByName, r'CustomerRegularService', 'markedByName'),
          markedRegularAt: BuiltValueNullFieldError.checkNotNull(
              markedRegularAt, r'CustomerRegularService', 'markedRegularAt'),
          triggeredByConsultation: triggeredByConsultation,
          active: active,
          notes: notes,
          totalConsultations: BuiltValueNullFieldError.checkNotNull(
              totalConsultations,
              r'CustomerRegularService',
              'totalConsultations'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'CustomerRegularService', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'CustomerRegularService', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
