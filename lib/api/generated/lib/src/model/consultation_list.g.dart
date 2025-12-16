// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsultationList extends ConsultationList {
  @override
  final int id;
  @override
  final int operatorId;
  @override
  final String operatorName;
  @override
  final int customerId;
  @override
  final String customerName;
  @override
  final int serviceId;
  @override
  final String serviceName;
  @override
  final String status;
  @override
  final String statusDisplay;
  @override
  final int? bookingId;
  @override
  final Date? bookingDate;
  @override
  final String? bookingStartTime;
  @override
  final String? bookingEndTime;
  @override
  final DateTime createdAt;
  @override
  final DateTime? completedAt;

  factory _$ConsultationList(
          [void Function(ConsultationListBuilder)? updates]) =>
      (ConsultationListBuilder()..update(updates))._build();

  _$ConsultationList._(
      {required this.id,
      required this.operatorId,
      required this.operatorName,
      required this.customerId,
      required this.customerName,
      required this.serviceId,
      required this.serviceName,
      required this.status,
      required this.statusDisplay,
      this.bookingId,
      this.bookingDate,
      this.bookingStartTime,
      this.bookingEndTime,
      required this.createdAt,
      this.completedAt})
      : super._();
  @override
  ConsultationList rebuild(void Function(ConsultationListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationListBuilder toBuilder() =>
      ConsultationListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultationList &&
        id == other.id &&
        operatorId == other.operatorId &&
        operatorName == other.operatorName &&
        customerId == other.customerId &&
        customerName == other.customerName &&
        serviceId == other.serviceId &&
        serviceName == other.serviceName &&
        status == other.status &&
        statusDisplay == other.statusDisplay &&
        bookingId == other.bookingId &&
        bookingDate == other.bookingDate &&
        bookingStartTime == other.bookingStartTime &&
        bookingEndTime == other.bookingEndTime &&
        createdAt == other.createdAt &&
        completedAt == other.completedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusDisplay.hashCode);
    _$hash = $jc(_$hash, bookingId.hashCode);
    _$hash = $jc(_$hash, bookingDate.hashCode);
    _$hash = $jc(_$hash, bookingStartTime.hashCode);
    _$hash = $jc(_$hash, bookingEndTime.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsultationList')
          ..add('id', id)
          ..add('operatorId', operatorId)
          ..add('operatorName', operatorName)
          ..add('customerId', customerId)
          ..add('customerName', customerName)
          ..add('serviceId', serviceId)
          ..add('serviceName', serviceName)
          ..add('status', status)
          ..add('statusDisplay', statusDisplay)
          ..add('bookingId', bookingId)
          ..add('bookingDate', bookingDate)
          ..add('bookingStartTime', bookingStartTime)
          ..add('bookingEndTime', bookingEndTime)
          ..add('createdAt', createdAt)
          ..add('completedAt', completedAt))
        .toString();
  }
}

class ConsultationListBuilder
    implements Builder<ConsultationList, ConsultationListBuilder> {
  _$ConsultationList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _operatorName;
  String? get operatorName => _$this._operatorName;
  set operatorName(String? operatorName) => _$this._operatorName = operatorName;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  int? _serviceId;
  int? get serviceId => _$this._serviceId;
  set serviceId(int? serviceId) => _$this._serviceId = serviceId;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _statusDisplay;
  String? get statusDisplay => _$this._statusDisplay;
  set statusDisplay(String? statusDisplay) =>
      _$this._statusDisplay = statusDisplay;

  int? _bookingId;
  int? get bookingId => _$this._bookingId;
  set bookingId(int? bookingId) => _$this._bookingId = bookingId;

  Date? _bookingDate;
  Date? get bookingDate => _$this._bookingDate;
  set bookingDate(Date? bookingDate) => _$this._bookingDate = bookingDate;

  String? _bookingStartTime;
  String? get bookingStartTime => _$this._bookingStartTime;
  set bookingStartTime(String? bookingStartTime) =>
      _$this._bookingStartTime = bookingStartTime;

  String? _bookingEndTime;
  String? get bookingEndTime => _$this._bookingEndTime;
  set bookingEndTime(String? bookingEndTime) =>
      _$this._bookingEndTime = bookingEndTime;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _completedAt;
  DateTime? get completedAt => _$this._completedAt;
  set completedAt(DateTime? completedAt) => _$this._completedAt = completedAt;

  ConsultationListBuilder() {
    ConsultationList._defaults(this);
  }

  ConsultationListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _operatorId = $v.operatorId;
      _operatorName = $v.operatorName;
      _customerId = $v.customerId;
      _customerName = $v.customerName;
      _serviceId = $v.serviceId;
      _serviceName = $v.serviceName;
      _status = $v.status;
      _statusDisplay = $v.statusDisplay;
      _bookingId = $v.bookingId;
      _bookingDate = $v.bookingDate;
      _bookingStartTime = $v.bookingStartTime;
      _bookingEndTime = $v.bookingEndTime;
      _createdAt = $v.createdAt;
      _completedAt = $v.completedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsultationList other) {
    _$v = other as _$ConsultationList;
  }

  @override
  void update(void Function(ConsultationListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsultationList build() => _build();

  _$ConsultationList _build() {
    final _$result = _$v ??
        _$ConsultationList._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ConsultationList', 'id'),
          operatorId: BuiltValueNullFieldError.checkNotNull(
              operatorId, r'ConsultationList', 'operatorId'),
          operatorName: BuiltValueNullFieldError.checkNotNull(
              operatorName, r'ConsultationList', 'operatorName'),
          customerId: BuiltValueNullFieldError.checkNotNull(
              customerId, r'ConsultationList', 'customerId'),
          customerName: BuiltValueNullFieldError.checkNotNull(
              customerName, r'ConsultationList', 'customerName'),
          serviceId: BuiltValueNullFieldError.checkNotNull(
              serviceId, r'ConsultationList', 'serviceId'),
          serviceName: BuiltValueNullFieldError.checkNotNull(
              serviceName, r'ConsultationList', 'serviceName'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ConsultationList', 'status'),
          statusDisplay: BuiltValueNullFieldError.checkNotNull(
              statusDisplay, r'ConsultationList', 'statusDisplay'),
          bookingId: bookingId,
          bookingDate: bookingDate,
          bookingStartTime: bookingStartTime,
          bookingEndTime: bookingEndTime,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ConsultationList', 'createdAt'),
          completedAt: completedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
