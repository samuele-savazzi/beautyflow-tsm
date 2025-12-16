// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_ready_to_book_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsultationReadyToBookOutput extends ConsultationReadyToBookOutput {
  @override
  final int id;
  @override
  final int customer;
  @override
  final String customerName;
  @override
  final int service;
  @override
  final String serviceName;
  @override
  final StatusEnum status;
  @override
  final Map<String, dynamic>? serviceStepsSnapshot;
  @override
  final String finalDescription;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$ConsultationReadyToBookOutput(
          [void Function(ConsultationReadyToBookOutputBuilder)? updates]) =>
      (ConsultationReadyToBookOutputBuilder()..update(updates))._build();

  _$ConsultationReadyToBookOutput._(
      {required this.id,
      required this.customer,
      required this.customerName,
      required this.service,
      required this.serviceName,
      required this.status,
      this.serviceStepsSnapshot,
      required this.finalDescription,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  ConsultationReadyToBookOutput rebuild(
          void Function(ConsultationReadyToBookOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationReadyToBookOutputBuilder toBuilder() =>
      ConsultationReadyToBookOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultationReadyToBookOutput &&
        id == other.id &&
        customer == other.customer &&
        customerName == other.customerName &&
        service == other.service &&
        serviceName == other.serviceName &&
        status == other.status &&
        serviceStepsSnapshot == other.serviceStepsSnapshot &&
        finalDescription == other.finalDescription &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, service.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, serviceStepsSnapshot.hashCode);
    _$hash = $jc(_$hash, finalDescription.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsultationReadyToBookOutput')
          ..add('id', id)
          ..add('customer', customer)
          ..add('customerName', customerName)
          ..add('service', service)
          ..add('serviceName', serviceName)
          ..add('status', status)
          ..add('serviceStepsSnapshot', serviceStepsSnapshot)
          ..add('finalDescription', finalDescription)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ConsultationReadyToBookOutputBuilder
    implements
        Builder<ConsultationReadyToBookOutput,
            ConsultationReadyToBookOutputBuilder> {
  _$ConsultationReadyToBookOutput? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _customer;
  int? get customer => _$this._customer;
  set customer(int? customer) => _$this._customer = customer;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  int? _service;
  int? get service => _$this._service;
  set service(int? service) => _$this._service = service;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  StatusEnum? _status;
  StatusEnum? get status => _$this._status;
  set status(StatusEnum? status) => _$this._status = status;

  Map<String, dynamic>? _serviceStepsSnapshot;
  Map<String, dynamic>? get serviceStepsSnapshot =>
      _$this._serviceStepsSnapshot;
  set serviceStepsSnapshot(Map<String, dynamic>? serviceStepsSnapshot) =>
      _$this._serviceStepsSnapshot = serviceStepsSnapshot;

  String? _finalDescription;
  String? get finalDescription => _$this._finalDescription;
  set finalDescription(String? finalDescription) =>
      _$this._finalDescription = finalDescription;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ConsultationReadyToBookOutputBuilder() {
    ConsultationReadyToBookOutput._defaults(this);
  }

  ConsultationReadyToBookOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _customer = $v.customer;
      _customerName = $v.customerName;
      _service = $v.service;
      _serviceName = $v.serviceName;
      _status = $v.status;
      _serviceStepsSnapshot = $v.serviceStepsSnapshot;
      _finalDescription = $v.finalDescription;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsultationReadyToBookOutput other) {
    _$v = other as _$ConsultationReadyToBookOutput;
  }

  @override
  void update(void Function(ConsultationReadyToBookOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsultationReadyToBookOutput build() => _build();

  _$ConsultationReadyToBookOutput _build() {
    final _$result = _$v ??
        _$ConsultationReadyToBookOutput._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ConsultationReadyToBookOutput', 'id'),
          customer: BuiltValueNullFieldError.checkNotNull(
              customer, r'ConsultationReadyToBookOutput', 'customer'),
          customerName: BuiltValueNullFieldError.checkNotNull(
              customerName, r'ConsultationReadyToBookOutput', 'customerName'),
          service: BuiltValueNullFieldError.checkNotNull(
              service, r'ConsultationReadyToBookOutput', 'service'),
          serviceName: BuiltValueNullFieldError.checkNotNull(
              serviceName, r'ConsultationReadyToBookOutput', 'serviceName'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ConsultationReadyToBookOutput', 'status'),
          serviceStepsSnapshot: serviceStepsSnapshot,
          finalDescription: BuiltValueNullFieldError.checkNotNull(
              finalDescription,
              r'ConsultationReadyToBookOutput',
              'finalDescription'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ConsultationReadyToBookOutput', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'ConsultationReadyToBookOutput', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
