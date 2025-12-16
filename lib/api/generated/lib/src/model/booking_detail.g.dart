// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingDetail extends BookingDetail {
  @override
  final int id;
  @override
  final String bookingDate;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final int durationMinutes;
  @override
  final double totalPrice;
  @override
  final String status;
  @override
  final String operatorName;
  @override
  final String operatorPhoto;
  @override
  final String areaName;
  @override
  final String primaryServiceName;
  @override
  final String? additionalServiceName;
  @override
  final String workstationName;
  @override
  final String notes;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>?
      serviceStepsSnapshot;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>?
      additionalServiceStepsSnapshot;

  factory _$BookingDetail([void Function(BookingDetailBuilder)? updates]) =>
      (BookingDetailBuilder()..update(updates))._build();

  _$BookingDetail._(
      {required this.id,
      required this.bookingDate,
      required this.startTime,
      required this.endTime,
      required this.durationMinutes,
      required this.totalPrice,
      required this.status,
      required this.operatorName,
      required this.operatorPhoto,
      required this.areaName,
      required this.primaryServiceName,
      this.additionalServiceName,
      required this.workstationName,
      required this.notes,
      this.serviceStepsSnapshot,
      this.additionalServiceStepsSnapshot})
      : super._();
  @override
  BookingDetail rebuild(void Function(BookingDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingDetailBuilder toBuilder() => BookingDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingDetail &&
        id == other.id &&
        bookingDate == other.bookingDate &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        durationMinutes == other.durationMinutes &&
        totalPrice == other.totalPrice &&
        status == other.status &&
        operatorName == other.operatorName &&
        operatorPhoto == other.operatorPhoto &&
        areaName == other.areaName &&
        primaryServiceName == other.primaryServiceName &&
        additionalServiceName == other.additionalServiceName &&
        workstationName == other.workstationName &&
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
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, operatorPhoto.hashCode);
    _$hash = $jc(_$hash, areaName.hashCode);
    _$hash = $jc(_$hash, primaryServiceName.hashCode);
    _$hash = $jc(_$hash, additionalServiceName.hashCode);
    _$hash = $jc(_$hash, workstationName.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, serviceStepsSnapshot.hashCode);
    _$hash = $jc(_$hash, additionalServiceStepsSnapshot.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingDetail')
          ..add('id', id)
          ..add('bookingDate', bookingDate)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('durationMinutes', durationMinutes)
          ..add('totalPrice', totalPrice)
          ..add('status', status)
          ..add('operatorName', operatorName)
          ..add('operatorPhoto', operatorPhoto)
          ..add('areaName', areaName)
          ..add('primaryServiceName', primaryServiceName)
          ..add('additionalServiceName', additionalServiceName)
          ..add('workstationName', workstationName)
          ..add('notes', notes)
          ..add('serviceStepsSnapshot', serviceStepsSnapshot)
          ..add(
              'additionalServiceStepsSnapshot', additionalServiceStepsSnapshot))
        .toString();
  }
}

class BookingDetailBuilder
    implements Builder<BookingDetail, BookingDetailBuilder> {
  _$BookingDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _bookingDate;
  String? get bookingDate => _$this._bookingDate;
  set bookingDate(String? bookingDate) => _$this._bookingDate = bookingDate;

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

  double? _totalPrice;
  double? get totalPrice => _$this._totalPrice;
  set totalPrice(double? totalPrice) => _$this._totalPrice = totalPrice;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _operatorName;
  String? get operatorName => _$this._operatorName;
  set operatorName(String? operatorName) => _$this._operatorName = operatorName;

  String? _operatorPhoto;
  String? get operatorPhoto => _$this._operatorPhoto;
  set operatorPhoto(String? operatorPhoto) =>
      _$this._operatorPhoto = operatorPhoto;

  String? _areaName;
  String? get areaName => _$this._areaName;
  set areaName(String? areaName) => _$this._areaName = areaName;

  String? _primaryServiceName;
  String? get primaryServiceName => _$this._primaryServiceName;
  set primaryServiceName(String? primaryServiceName) =>
      _$this._primaryServiceName = primaryServiceName;

  String? _additionalServiceName;
  String? get additionalServiceName => _$this._additionalServiceName;
  set additionalServiceName(String? additionalServiceName) =>
      _$this._additionalServiceName = additionalServiceName;

  String? _workstationName;
  String? get workstationName => _$this._workstationName;
  set workstationName(String? workstationName) =>
      _$this._workstationName = workstationName;

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

  BookingDetailBuilder() {
    BookingDetail._defaults(this);
  }

  BookingDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _bookingDate = $v.bookingDate;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _durationMinutes = $v.durationMinutes;
      _totalPrice = $v.totalPrice;
      _status = $v.status;
      _operatorName = $v.operatorName;
      _operatorPhoto = $v.operatorPhoto;
      _areaName = $v.areaName;
      _primaryServiceName = $v.primaryServiceName;
      _additionalServiceName = $v.additionalServiceName;
      _workstationName = $v.workstationName;
      _notes = $v.notes;
      _serviceStepsSnapshot = $v.serviceStepsSnapshot?.toBuilder();
      _additionalServiceStepsSnapshot =
          $v.additionalServiceStepsSnapshot?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingDetail other) {
    _$v = other as _$BookingDetail;
  }

  @override
  void update(void Function(BookingDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingDetail build() => _build();

  _$BookingDetail _build() {
    _$BookingDetail _$result;
    try {
      _$result = _$v ??
          _$BookingDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'BookingDetail', 'id'),
            bookingDate: BuiltValueNullFieldError.checkNotNull(
                bookingDate, r'BookingDetail', 'bookingDate'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'BookingDetail', 'startTime'),
            endTime: BuiltValueNullFieldError.checkNotNull(
                endTime, r'BookingDetail', 'endTime'),
            durationMinutes: BuiltValueNullFieldError.checkNotNull(
                durationMinutes, r'BookingDetail', 'durationMinutes'),
            totalPrice: BuiltValueNullFieldError.checkNotNull(
                totalPrice, r'BookingDetail', 'totalPrice'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'BookingDetail', 'status'),
            operatorName: BuiltValueNullFieldError.checkNotNull(
                operatorName, r'BookingDetail', 'operatorName'),
            operatorPhoto: BuiltValueNullFieldError.checkNotNull(
                operatorPhoto, r'BookingDetail', 'operatorPhoto'),
            areaName: BuiltValueNullFieldError.checkNotNull(
                areaName, r'BookingDetail', 'areaName'),
            primaryServiceName: BuiltValueNullFieldError.checkNotNull(
                primaryServiceName, r'BookingDetail', 'primaryServiceName'),
            additionalServiceName: additionalServiceName,
            workstationName: BuiltValueNullFieldError.checkNotNull(
                workstationName, r'BookingDetail', 'workstationName'),
            notes: BuiltValueNullFieldError.checkNotNull(
                notes, r'BookingDetail', 'notes'),
            serviceStepsSnapshot: _serviceStepsSnapshot?.build(),
            additionalServiceStepsSnapshot:
                _additionalServiceStepsSnapshot?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceStepsSnapshot';
        _serviceStepsSnapshot?.build();
        _$failedField = 'additionalServiceStepsSnapshot';
        _additionalServiceStepsSnapshot?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BookingDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
