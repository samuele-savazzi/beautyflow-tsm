// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsultationDetail extends ConsultationDetail {
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
  final String customerEmail;
  @override
  final String customerPhone;
  @override
  final int serviceId;
  @override
  final String serviceName;
  @override
  final String serviceDescription;
  @override
  final Map<String, dynamic>? serviceQuestions;
  @override
  final Map<String, dynamic>? answers;
  @override
  final int? bookingId;
  @override
  final Date? bookingDate;
  @override
  final String? bookingStartTime;
  @override
  final String? bookingEndTime;
  @override
  final int? bookingDuration;
  @override
  final String status;
  @override
  final String statusDisplay;
  @override
  final String notes;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? completedAt;
  @override
  final bool canBeConverted;
  @override
  final bool canBeCancelled;

  factory _$ConsultationDetail(
          [void Function(ConsultationDetailBuilder)? updates]) =>
      (ConsultationDetailBuilder()..update(updates))._build();

  _$ConsultationDetail._(
      {required this.id,
      required this.operatorId,
      required this.operatorName,
      required this.customerId,
      required this.customerName,
      required this.customerEmail,
      required this.customerPhone,
      required this.serviceId,
      required this.serviceName,
      required this.serviceDescription,
      this.serviceQuestions,
      this.answers,
      this.bookingId,
      this.bookingDate,
      this.bookingStartTime,
      this.bookingEndTime,
      this.bookingDuration,
      required this.status,
      required this.statusDisplay,
      required this.notes,
      required this.createdAt,
      required this.updatedAt,
      this.completedAt,
      required this.canBeConverted,
      required this.canBeCancelled})
      : super._();
  @override
  ConsultationDetail rebuild(
          void Function(ConsultationDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationDetailBuilder toBuilder() =>
      ConsultationDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultationDetail &&
        id == other.id &&
        operatorId == other.operatorId &&
        operatorName == other.operatorName &&
        customerId == other.customerId &&
        customerName == other.customerName &&
        customerEmail == other.customerEmail &&
        customerPhone == other.customerPhone &&
        serviceId == other.serviceId &&
        serviceName == other.serviceName &&
        serviceDescription == other.serviceDescription &&
        serviceQuestions == other.serviceQuestions &&
        answers == other.answers &&
        bookingId == other.bookingId &&
        bookingDate == other.bookingDate &&
        bookingStartTime == other.bookingStartTime &&
        bookingEndTime == other.bookingEndTime &&
        bookingDuration == other.bookingDuration &&
        status == other.status &&
        statusDisplay == other.statusDisplay &&
        notes == other.notes &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        completedAt == other.completedAt &&
        canBeConverted == other.canBeConverted &&
        canBeCancelled == other.canBeCancelled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerEmail.hashCode);
    _$hash = $jc(_$hash, customerPhone.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, serviceDescription.hashCode);
    _$hash = $jc(_$hash, serviceQuestions.hashCode);
    _$hash = $jc(_$hash, answers.hashCode);
    _$hash = $jc(_$hash, bookingId.hashCode);
    _$hash = $jc(_$hash, bookingDate.hashCode);
    _$hash = $jc(_$hash, bookingStartTime.hashCode);
    _$hash = $jc(_$hash, bookingEndTime.hashCode);
    _$hash = $jc(_$hash, bookingDuration.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusDisplay.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jc(_$hash, canBeConverted.hashCode);
    _$hash = $jc(_$hash, canBeCancelled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsultationDetail')
          ..add('id', id)
          ..add('operatorId', operatorId)
          ..add('operatorName', operatorName)
          ..add('customerId', customerId)
          ..add('customerName', customerName)
          ..add('customerEmail', customerEmail)
          ..add('customerPhone', customerPhone)
          ..add('serviceId', serviceId)
          ..add('serviceName', serviceName)
          ..add('serviceDescription', serviceDescription)
          ..add('serviceQuestions', serviceQuestions)
          ..add('answers', answers)
          ..add('bookingId', bookingId)
          ..add('bookingDate', bookingDate)
          ..add('bookingStartTime', bookingStartTime)
          ..add('bookingEndTime', bookingEndTime)
          ..add('bookingDuration', bookingDuration)
          ..add('status', status)
          ..add('statusDisplay', statusDisplay)
          ..add('notes', notes)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('completedAt', completedAt)
          ..add('canBeConverted', canBeConverted)
          ..add('canBeCancelled', canBeCancelled))
        .toString();
  }
}

class ConsultationDetailBuilder
    implements Builder<ConsultationDetail, ConsultationDetailBuilder> {
  _$ConsultationDetail? _$v;

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

  String? _customerEmail;
  String? get customerEmail => _$this._customerEmail;
  set customerEmail(String? customerEmail) =>
      _$this._customerEmail = customerEmail;

  String? _customerPhone;
  String? get customerPhone => _$this._customerPhone;
  set customerPhone(String? customerPhone) =>
      _$this._customerPhone = customerPhone;

  int? _serviceId;
  int? get serviceId => _$this._serviceId;
  set serviceId(int? serviceId) => _$this._serviceId = serviceId;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  String? _serviceDescription;
  String? get serviceDescription => _$this._serviceDescription;
  set serviceDescription(String? serviceDescription) =>
      _$this._serviceDescription = serviceDescription;

  Map<String, dynamic>? _serviceQuestions;
  Map<String, dynamic>? get serviceQuestions => _$this._serviceQuestions;
  set serviceQuestions(Map<String, dynamic>? serviceQuestions) =>
      _$this._serviceQuestions = serviceQuestions;

  Map<String, dynamic>? _answers;
  Map<String, dynamic>? get answers => _$this._answers;
  set answers(Map<String, dynamic>? answers) => _$this._answers = answers;

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

  int? _bookingDuration;
  int? get bookingDuration => _$this._bookingDuration;
  set bookingDuration(int? bookingDuration) =>
      _$this._bookingDuration = bookingDuration;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _statusDisplay;
  String? get statusDisplay => _$this._statusDisplay;
  set statusDisplay(String? statusDisplay) =>
      _$this._statusDisplay = statusDisplay;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _completedAt;
  DateTime? get completedAt => _$this._completedAt;
  set completedAt(DateTime? completedAt) => _$this._completedAt = completedAt;

  bool? _canBeConverted;
  bool? get canBeConverted => _$this._canBeConverted;
  set canBeConverted(bool? canBeConverted) =>
      _$this._canBeConverted = canBeConverted;

  bool? _canBeCancelled;
  bool? get canBeCancelled => _$this._canBeCancelled;
  set canBeCancelled(bool? canBeCancelled) =>
      _$this._canBeCancelled = canBeCancelled;

  ConsultationDetailBuilder() {
    ConsultationDetail._defaults(this);
  }

  ConsultationDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _operatorId = $v.operatorId;
      _operatorName = $v.operatorName;
      _customerId = $v.customerId;
      _customerName = $v.customerName;
      _customerEmail = $v.customerEmail;
      _customerPhone = $v.customerPhone;
      _serviceId = $v.serviceId;
      _serviceName = $v.serviceName;
      _serviceDescription = $v.serviceDescription;
      _serviceQuestions = $v.serviceQuestions;
      _answers = $v.answers;
      _bookingId = $v.bookingId;
      _bookingDate = $v.bookingDate;
      _bookingStartTime = $v.bookingStartTime;
      _bookingEndTime = $v.bookingEndTime;
      _bookingDuration = $v.bookingDuration;
      _status = $v.status;
      _statusDisplay = $v.statusDisplay;
      _notes = $v.notes;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _completedAt = $v.completedAt;
      _canBeConverted = $v.canBeConverted;
      _canBeCancelled = $v.canBeCancelled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsultationDetail other) {
    _$v = other as _$ConsultationDetail;
  }

  @override
  void update(void Function(ConsultationDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsultationDetail build() => _build();

  _$ConsultationDetail _build() {
    final _$result = _$v ??
        _$ConsultationDetail._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ConsultationDetail', 'id'),
          operatorId: BuiltValueNullFieldError.checkNotNull(
              operatorId, r'ConsultationDetail', 'operatorId'),
          operatorName: BuiltValueNullFieldError.checkNotNull(
              operatorName, r'ConsultationDetail', 'operatorName'),
          customerId: BuiltValueNullFieldError.checkNotNull(
              customerId, r'ConsultationDetail', 'customerId'),
          customerName: BuiltValueNullFieldError.checkNotNull(
              customerName, r'ConsultationDetail', 'customerName'),
          customerEmail: BuiltValueNullFieldError.checkNotNull(
              customerEmail, r'ConsultationDetail', 'customerEmail'),
          customerPhone: BuiltValueNullFieldError.checkNotNull(
              customerPhone, r'ConsultationDetail', 'customerPhone'),
          serviceId: BuiltValueNullFieldError.checkNotNull(
              serviceId, r'ConsultationDetail', 'serviceId'),
          serviceName: BuiltValueNullFieldError.checkNotNull(
              serviceName, r'ConsultationDetail', 'serviceName'),
          serviceDescription: BuiltValueNullFieldError.checkNotNull(
              serviceDescription, r'ConsultationDetail', 'serviceDescription'),
          serviceQuestions: serviceQuestions,
          answers: answers,
          bookingId: bookingId,
          bookingDate: bookingDate,
          bookingStartTime: bookingStartTime,
          bookingEndTime: bookingEndTime,
          bookingDuration: bookingDuration,
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ConsultationDetail', 'status'),
          statusDisplay: BuiltValueNullFieldError.checkNotNull(
              statusDisplay, r'ConsultationDetail', 'statusDisplay'),
          notes: BuiltValueNullFieldError.checkNotNull(
              notes, r'ConsultationDetail', 'notes'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ConsultationDetail', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'ConsultationDetail', 'updatedAt'),
          completedAt: completedAt,
          canBeConverted: BuiltValueNullFieldError.checkNotNull(
              canBeConverted, r'ConsultationDetail', 'canBeConverted'),
          canBeCancelled: BuiltValueNullFieldError.checkNotNull(
              canBeCancelled, r'ConsultationDetail', 'canBeCancelled'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
