// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingItem extends BookingItem {
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
  final double totalPrice;
  @override
  final String status;
  @override
  final String operatorName;
  @override
  final String? operatorPhoto;
  @override
  final String areaName;
  @override
  final String primaryServiceName;
  @override
  final String? additionalServiceName;
  @override
  final bool consultation;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>?
      serviceStepsSnapshot;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>?
      additionalServiceStepsSnapshot;

  factory _$BookingItem([void Function(BookingItemBuilder)? updates]) =>
      (BookingItemBuilder()..update(updates))._build();

  _$BookingItem._(
      {required this.id,
      required this.bookingDate,
      required this.startTime,
      required this.endTime,
      required this.durationMinutes,
      required this.totalPrice,
      required this.status,
      required this.operatorName,
      this.operatorPhoto,
      required this.areaName,
      required this.primaryServiceName,
      this.additionalServiceName,
      required this.consultation,
      this.serviceStepsSnapshot,
      this.additionalServiceStepsSnapshot})
      : super._();
  @override
  BookingItem rebuild(void Function(BookingItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingItemBuilder toBuilder() => BookingItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingItem &&
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
        consultation == other.consultation &&
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
    _$hash = $jc(_$hash, consultation.hashCode);
    _$hash = $jc(_$hash, serviceStepsSnapshot.hashCode);
    _$hash = $jc(_$hash, additionalServiceStepsSnapshot.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingItem')
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
          ..add('consultation', consultation)
          ..add('serviceStepsSnapshot', serviceStepsSnapshot)
          ..add(
              'additionalServiceStepsSnapshot', additionalServiceStepsSnapshot))
        .toString();
  }
}

class BookingItemBuilder implements Builder<BookingItem, BookingItemBuilder> {
  _$BookingItem? _$v;

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

  bool? _consultation;
  bool? get consultation => _$this._consultation;
  set consultation(bool? consultation) => _$this._consultation = consultation;

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

  BookingItemBuilder() {
    BookingItem._defaults(this);
  }

  BookingItemBuilder get _$this {
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
      _consultation = $v.consultation;
      _serviceStepsSnapshot = $v.serviceStepsSnapshot?.toBuilder();
      _additionalServiceStepsSnapshot =
          $v.additionalServiceStepsSnapshot?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingItem other) {
    _$v = other as _$BookingItem;
  }

  @override
  void update(void Function(BookingItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingItem build() => _build();

  _$BookingItem _build() {
    _$BookingItem _$result;
    try {
      _$result = _$v ??
          _$BookingItem._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'BookingItem', 'id'),
            bookingDate: BuiltValueNullFieldError.checkNotNull(
                bookingDate, r'BookingItem', 'bookingDate'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'BookingItem', 'startTime'),
            endTime: BuiltValueNullFieldError.checkNotNull(
                endTime, r'BookingItem', 'endTime'),
            durationMinutes: BuiltValueNullFieldError.checkNotNull(
                durationMinutes, r'BookingItem', 'durationMinutes'),
            totalPrice: BuiltValueNullFieldError.checkNotNull(
                totalPrice, r'BookingItem', 'totalPrice'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'BookingItem', 'status'),
            operatorName: BuiltValueNullFieldError.checkNotNull(
                operatorName, r'BookingItem', 'operatorName'),
            operatorPhoto: operatorPhoto,
            areaName: BuiltValueNullFieldError.checkNotNull(
                areaName, r'BookingItem', 'areaName'),
            primaryServiceName: BuiltValueNullFieldError.checkNotNull(
                primaryServiceName, r'BookingItem', 'primaryServiceName'),
            additionalServiceName: additionalServiceName,
            consultation: BuiltValueNullFieldError.checkNotNull(
                consultation, r'BookingItem', 'consultation'),
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
            r'BookingItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
