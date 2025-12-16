// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingCreateRequest extends BookingCreateRequest {
  @override
  final int operatorId;
  @override
  final int areaId;
  @override
  final int? additionalOperatorId;
  @override
  final String bookingDate;
  @override
  final String startTime;
  @override
  final double totalPrice;
  @override
  final int primaryServiceId;
  @override
  final int? additionalServiceId;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> timesPrimaryService;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>?
      timesAdditionalService;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>?
      serviceStepsSnapshot;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>?
      additionalServiceStepsSnapshot;
  @override
  final int primaryIdWorkstation;
  @override
  final int? secondaryIdWorkstation;
  @override
  final int? customerId;
  @override
  final String? guestFirstName;
  @override
  final String? guestLastName;
  @override
  final String? guestPhoneNumber;
  @override
  final int? consultationId;
  @override
  final int? consultationServiceId;

  factory _$BookingCreateRequest(
          [void Function(BookingCreateRequestBuilder)? updates]) =>
      (BookingCreateRequestBuilder()..update(updates))._build();

  _$BookingCreateRequest._(
      {required this.operatorId,
      required this.areaId,
      this.additionalOperatorId,
      required this.bookingDate,
      required this.startTime,
      required this.totalPrice,
      required this.primaryServiceId,
      this.additionalServiceId,
      required this.timesPrimaryService,
      this.timesAdditionalService,
      this.serviceStepsSnapshot,
      this.additionalServiceStepsSnapshot,
      required this.primaryIdWorkstation,
      this.secondaryIdWorkstation,
      this.customerId,
      this.guestFirstName,
      this.guestLastName,
      this.guestPhoneNumber,
      this.consultationId,
      this.consultationServiceId})
      : super._();
  @override
  BookingCreateRequest rebuild(
          void Function(BookingCreateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingCreateRequestBuilder toBuilder() =>
      BookingCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingCreateRequest &&
        operatorId == other.operatorId &&
        areaId == other.areaId &&
        additionalOperatorId == other.additionalOperatorId &&
        bookingDate == other.bookingDate &&
        startTime == other.startTime &&
        totalPrice == other.totalPrice &&
        primaryServiceId == other.primaryServiceId &&
        additionalServiceId == other.additionalServiceId &&
        timesPrimaryService == other.timesPrimaryService &&
        timesAdditionalService == other.timesAdditionalService &&
        serviceStepsSnapshot == other.serviceStepsSnapshot &&
        additionalServiceStepsSnapshot ==
            other.additionalServiceStepsSnapshot &&
        primaryIdWorkstation == other.primaryIdWorkstation &&
        secondaryIdWorkstation == other.secondaryIdWorkstation &&
        customerId == other.customerId &&
        guestFirstName == other.guestFirstName &&
        guestLastName == other.guestLastName &&
        guestPhoneNumber == other.guestPhoneNumber &&
        consultationId == other.consultationId &&
        consultationServiceId == other.consultationServiceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, additionalOperatorId.hashCode);
    _$hash = $jc(_$hash, bookingDate.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jc(_$hash, primaryServiceId.hashCode);
    _$hash = $jc(_$hash, additionalServiceId.hashCode);
    _$hash = $jc(_$hash, timesPrimaryService.hashCode);
    _$hash = $jc(_$hash, timesAdditionalService.hashCode);
    _$hash = $jc(_$hash, serviceStepsSnapshot.hashCode);
    _$hash = $jc(_$hash, additionalServiceStepsSnapshot.hashCode);
    _$hash = $jc(_$hash, primaryIdWorkstation.hashCode);
    _$hash = $jc(_$hash, secondaryIdWorkstation.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, guestFirstName.hashCode);
    _$hash = $jc(_$hash, guestLastName.hashCode);
    _$hash = $jc(_$hash, guestPhoneNumber.hashCode);
    _$hash = $jc(_$hash, consultationId.hashCode);
    _$hash = $jc(_$hash, consultationServiceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingCreateRequest')
          ..add('operatorId', operatorId)
          ..add('areaId', areaId)
          ..add('additionalOperatorId', additionalOperatorId)
          ..add('bookingDate', bookingDate)
          ..add('startTime', startTime)
          ..add('totalPrice', totalPrice)
          ..add('primaryServiceId', primaryServiceId)
          ..add('additionalServiceId', additionalServiceId)
          ..add('timesPrimaryService', timesPrimaryService)
          ..add('timesAdditionalService', timesAdditionalService)
          ..add('serviceStepsSnapshot', serviceStepsSnapshot)
          ..add(
              'additionalServiceStepsSnapshot', additionalServiceStepsSnapshot)
          ..add('primaryIdWorkstation', primaryIdWorkstation)
          ..add('secondaryIdWorkstation', secondaryIdWorkstation)
          ..add('customerId', customerId)
          ..add('guestFirstName', guestFirstName)
          ..add('guestLastName', guestLastName)
          ..add('guestPhoneNumber', guestPhoneNumber)
          ..add('consultationId', consultationId)
          ..add('consultationServiceId', consultationServiceId))
        .toString();
  }
}

class BookingCreateRequestBuilder
    implements Builder<BookingCreateRequest, BookingCreateRequestBuilder> {
  _$BookingCreateRequest? _$v;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  int? _additionalOperatorId;
  int? get additionalOperatorId => _$this._additionalOperatorId;
  set additionalOperatorId(int? additionalOperatorId) =>
      _$this._additionalOperatorId = additionalOperatorId;

  String? _bookingDate;
  String? get bookingDate => _$this._bookingDate;
  set bookingDate(String? bookingDate) => _$this._bookingDate = bookingDate;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  double? _totalPrice;
  double? get totalPrice => _$this._totalPrice;
  set totalPrice(double? totalPrice) => _$this._totalPrice = totalPrice;

  int? _primaryServiceId;
  int? get primaryServiceId => _$this._primaryServiceId;
  set primaryServiceId(int? primaryServiceId) =>
      _$this._primaryServiceId = primaryServiceId;

  int? _additionalServiceId;
  int? get additionalServiceId => _$this._additionalServiceId;
  set additionalServiceId(int? additionalServiceId) =>
      _$this._additionalServiceId = additionalServiceId;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _timesPrimaryService;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>
      get timesPrimaryService => _$this._timesPrimaryService ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set timesPrimaryService(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>?
              timesPrimaryService) =>
      _$this._timesPrimaryService = timesPrimaryService;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _timesAdditionalService;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>
      get timesAdditionalService => _$this._timesAdditionalService ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set timesAdditionalService(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>?
              timesAdditionalService) =>
      _$this._timesAdditionalService = timesAdditionalService;

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

  int? _primaryIdWorkstation;
  int? get primaryIdWorkstation => _$this._primaryIdWorkstation;
  set primaryIdWorkstation(int? primaryIdWorkstation) =>
      _$this._primaryIdWorkstation = primaryIdWorkstation;

  int? _secondaryIdWorkstation;
  int? get secondaryIdWorkstation => _$this._secondaryIdWorkstation;
  set secondaryIdWorkstation(int? secondaryIdWorkstation) =>
      _$this._secondaryIdWorkstation = secondaryIdWorkstation;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  String? _guestFirstName;
  String? get guestFirstName => _$this._guestFirstName;
  set guestFirstName(String? guestFirstName) =>
      _$this._guestFirstName = guestFirstName;

  String? _guestLastName;
  String? get guestLastName => _$this._guestLastName;
  set guestLastName(String? guestLastName) =>
      _$this._guestLastName = guestLastName;

  String? _guestPhoneNumber;
  String? get guestPhoneNumber => _$this._guestPhoneNumber;
  set guestPhoneNumber(String? guestPhoneNumber) =>
      _$this._guestPhoneNumber = guestPhoneNumber;

  int? _consultationId;
  int? get consultationId => _$this._consultationId;
  set consultationId(int? consultationId) =>
      _$this._consultationId = consultationId;

  int? _consultationServiceId;
  int? get consultationServiceId => _$this._consultationServiceId;
  set consultationServiceId(int? consultationServiceId) =>
      _$this._consultationServiceId = consultationServiceId;

  BookingCreateRequestBuilder() {
    BookingCreateRequest._defaults(this);
  }

  BookingCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatorId = $v.operatorId;
      _areaId = $v.areaId;
      _additionalOperatorId = $v.additionalOperatorId;
      _bookingDate = $v.bookingDate;
      _startTime = $v.startTime;
      _totalPrice = $v.totalPrice;
      _primaryServiceId = $v.primaryServiceId;
      _additionalServiceId = $v.additionalServiceId;
      _timesPrimaryService = $v.timesPrimaryService.toBuilder();
      _timesAdditionalService = $v.timesAdditionalService?.toBuilder();
      _serviceStepsSnapshot = $v.serviceStepsSnapshot?.toBuilder();
      _additionalServiceStepsSnapshot =
          $v.additionalServiceStepsSnapshot?.toBuilder();
      _primaryIdWorkstation = $v.primaryIdWorkstation;
      _secondaryIdWorkstation = $v.secondaryIdWorkstation;
      _customerId = $v.customerId;
      _guestFirstName = $v.guestFirstName;
      _guestLastName = $v.guestLastName;
      _guestPhoneNumber = $v.guestPhoneNumber;
      _consultationId = $v.consultationId;
      _consultationServiceId = $v.consultationServiceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingCreateRequest other) {
    _$v = other as _$BookingCreateRequest;
  }

  @override
  void update(void Function(BookingCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingCreateRequest build() => _build();

  _$BookingCreateRequest _build() {
    _$BookingCreateRequest _$result;
    try {
      _$result = _$v ??
          _$BookingCreateRequest._(
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'BookingCreateRequest', 'operatorId'),
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'BookingCreateRequest', 'areaId'),
            additionalOperatorId: additionalOperatorId,
            bookingDate: BuiltValueNullFieldError.checkNotNull(
                bookingDate, r'BookingCreateRequest', 'bookingDate'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'BookingCreateRequest', 'startTime'),
            totalPrice: BuiltValueNullFieldError.checkNotNull(
                totalPrice, r'BookingCreateRequest', 'totalPrice'),
            primaryServiceId: BuiltValueNullFieldError.checkNotNull(
                primaryServiceId, r'BookingCreateRequest', 'primaryServiceId'),
            additionalServiceId: additionalServiceId,
            timesPrimaryService: timesPrimaryService.build(),
            timesAdditionalService: _timesAdditionalService?.build(),
            serviceStepsSnapshot: _serviceStepsSnapshot?.build(),
            additionalServiceStepsSnapshot:
                _additionalServiceStepsSnapshot?.build(),
            primaryIdWorkstation: BuiltValueNullFieldError.checkNotNull(
                primaryIdWorkstation,
                r'BookingCreateRequest',
                'primaryIdWorkstation'),
            secondaryIdWorkstation: secondaryIdWorkstation,
            customerId: customerId,
            guestFirstName: guestFirstName,
            guestLastName: guestLastName,
            guestPhoneNumber: guestPhoneNumber,
            consultationId: consultationId,
            consultationServiceId: consultationServiceId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timesPrimaryService';
        timesPrimaryService.build();
        _$failedField = 'timesAdditionalService';
        _timesAdditionalService?.build();
        _$failedField = 'serviceStepsSnapshot';
        _serviceStepsSnapshot?.build();
        _$failedField = 'additionalServiceStepsSnapshot';
        _additionalServiceStepsSnapshot?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BookingCreateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
