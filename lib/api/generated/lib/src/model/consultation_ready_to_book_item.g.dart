// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_ready_to_book_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsultationReadyToBookItem extends ConsultationReadyToBookItem {
  @override
  final int id;
  @override
  final int customerId;
  @override
  final String customerName;
  @override
  final String customerPhone;
  @override
  final int operatorId;
  @override
  final String operatorName;
  @override
  final int serviceId;
  @override
  final String serviceName;
  @override
  final String finalDescription;
  @override
  final Map<String, dynamic>? serviceStepsSnapshot;
  @override
  final int? totalDuration;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$ConsultationReadyToBookItem(
          [void Function(ConsultationReadyToBookItemBuilder)? updates]) =>
      (ConsultationReadyToBookItemBuilder()..update(updates))._build();

  _$ConsultationReadyToBookItem._(
      {required this.id,
      required this.customerId,
      required this.customerName,
      required this.customerPhone,
      required this.operatorId,
      required this.operatorName,
      required this.serviceId,
      required this.serviceName,
      required this.finalDescription,
      this.serviceStepsSnapshot,
      this.totalDuration,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  ConsultationReadyToBookItem rebuild(
          void Function(ConsultationReadyToBookItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationReadyToBookItemBuilder toBuilder() =>
      ConsultationReadyToBookItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultationReadyToBookItem &&
        id == other.id &&
        customerId == other.customerId &&
        customerName == other.customerName &&
        customerPhone == other.customerPhone &&
        operatorId == other.operatorId &&
        operatorName == other.operatorName &&
        serviceId == other.serviceId &&
        serviceName == other.serviceName &&
        finalDescription == other.finalDescription &&
        serviceStepsSnapshot == other.serviceStepsSnapshot &&
        totalDuration == other.totalDuration &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerPhone.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, finalDescription.hashCode);
    _$hash = $jc(_$hash, serviceStepsSnapshot.hashCode);
    _$hash = $jc(_$hash, totalDuration.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsultationReadyToBookItem')
          ..add('id', id)
          ..add('customerId', customerId)
          ..add('customerName', customerName)
          ..add('customerPhone', customerPhone)
          ..add('operatorId', operatorId)
          ..add('operatorName', operatorName)
          ..add('serviceId', serviceId)
          ..add('serviceName', serviceName)
          ..add('finalDescription', finalDescription)
          ..add('serviceStepsSnapshot', serviceStepsSnapshot)
          ..add('totalDuration', totalDuration)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ConsultationReadyToBookItemBuilder
    implements
        Builder<ConsultationReadyToBookItem,
            ConsultationReadyToBookItemBuilder> {
  _$ConsultationReadyToBookItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _operatorName;
  String? get operatorName => _$this._operatorName;
  set operatorName(String? operatorName) => _$this._operatorName = operatorName;

  int? _serviceId;
  int? get serviceId => _$this._serviceId;
  set serviceId(int? serviceId) => _$this._serviceId = serviceId;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  String? _finalDescription;
  String? get finalDescription => _$this._finalDescription;
  set finalDescription(String? finalDescription) =>
      _$this._finalDescription = finalDescription;

  Map<String, dynamic>? _serviceStepsSnapshot;
  Map<String, dynamic>? get serviceStepsSnapshot =>
      _$this._serviceStepsSnapshot;
  set serviceStepsSnapshot(Map<String, dynamic>? serviceStepsSnapshot) =>
      _$this._serviceStepsSnapshot = serviceStepsSnapshot;

  int? _totalDuration;
  int? get totalDuration => _$this._totalDuration;
  set totalDuration(int? totalDuration) =>
      _$this._totalDuration = totalDuration;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ConsultationReadyToBookItemBuilder() {
    ConsultationReadyToBookItem._defaults(this);
  }

  ConsultationReadyToBookItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _customerId = $v.customerId;
      _customerName = $v.customerName;
      _customerPhone = $v.customerPhone;
      _operatorId = $v.operatorId;
      _operatorName = $v.operatorName;
      _serviceId = $v.serviceId;
      _serviceName = $v.serviceName;
      _finalDescription = $v.finalDescription;
      _serviceStepsSnapshot = $v.serviceStepsSnapshot;
      _totalDuration = $v.totalDuration;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsultationReadyToBookItem other) {
    _$v = other as _$ConsultationReadyToBookItem;
  }

  @override
  void update(void Function(ConsultationReadyToBookItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsultationReadyToBookItem build() => _build();

  _$ConsultationReadyToBookItem _build() {
    final _$result = _$v ??
        _$ConsultationReadyToBookItem._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ConsultationReadyToBookItem', 'id'),
          customerId: BuiltValueNullFieldError.checkNotNull(
              customerId, r'ConsultationReadyToBookItem', 'customerId'),
          customerName: BuiltValueNullFieldError.checkNotNull(
              customerName, r'ConsultationReadyToBookItem', 'customerName'),
          customerPhone: BuiltValueNullFieldError.checkNotNull(
              customerPhone, r'ConsultationReadyToBookItem', 'customerPhone'),
          operatorId: BuiltValueNullFieldError.checkNotNull(
              operatorId, r'ConsultationReadyToBookItem', 'operatorId'),
          operatorName: BuiltValueNullFieldError.checkNotNull(
              operatorName, r'ConsultationReadyToBookItem', 'operatorName'),
          serviceId: BuiltValueNullFieldError.checkNotNull(
              serviceId, r'ConsultationReadyToBookItem', 'serviceId'),
          serviceName: BuiltValueNullFieldError.checkNotNull(
              serviceName, r'ConsultationReadyToBookItem', 'serviceName'),
          finalDescription: BuiltValueNullFieldError.checkNotNull(
              finalDescription,
              r'ConsultationReadyToBookItem',
              'finalDescription'),
          serviceStepsSnapshot: serviceStepsSnapshot,
          totalDuration: totalDuration,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ConsultationReadyToBookItem', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'ConsultationReadyToBookItem', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
