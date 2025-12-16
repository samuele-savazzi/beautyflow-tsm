// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_booking_slot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalendarBookingSlot extends CalendarBookingSlot {
  @override
  final int slotStartIndex;
  @override
  final int slotEndIndex;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final int? bookingId;
  @override
  final int? customerId;
  @override
  final String? customerName;
  @override
  final String? serviceName;
  @override
  final String? additionalServiceName;
  @override
  final String color;
  @override
  final bool? isDisabled;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>?
      serviceStepsSnapshot;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>?
      additionalServiceStepsSnapshot;

  factory _$CalendarBookingSlot(
          [void Function(CalendarBookingSlotBuilder)? updates]) =>
      (CalendarBookingSlotBuilder()..update(updates))._build();

  _$CalendarBookingSlot._(
      {required this.slotStartIndex,
      required this.slotEndIndex,
      required this.startTime,
      required this.endTime,
      this.bookingId,
      this.customerId,
      this.customerName,
      this.serviceName,
      this.additionalServiceName,
      required this.color,
      this.isDisabled,
      this.serviceStepsSnapshot,
      this.additionalServiceStepsSnapshot})
      : super._();
  @override
  CalendarBookingSlot rebuild(
          void Function(CalendarBookingSlotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarBookingSlotBuilder toBuilder() =>
      CalendarBookingSlotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarBookingSlot &&
        slotStartIndex == other.slotStartIndex &&
        slotEndIndex == other.slotEndIndex &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        bookingId == other.bookingId &&
        customerId == other.customerId &&
        customerName == other.customerName &&
        serviceName == other.serviceName &&
        additionalServiceName == other.additionalServiceName &&
        color == other.color &&
        isDisabled == other.isDisabled &&
        serviceStepsSnapshot == other.serviceStepsSnapshot &&
        additionalServiceStepsSnapshot == other.additionalServiceStepsSnapshot;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, slotStartIndex.hashCode);
    _$hash = $jc(_$hash, slotEndIndex.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, bookingId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, additionalServiceName.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, isDisabled.hashCode);
    _$hash = $jc(_$hash, serviceStepsSnapshot.hashCode);
    _$hash = $jc(_$hash, additionalServiceStepsSnapshot.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CalendarBookingSlot')
          ..add('slotStartIndex', slotStartIndex)
          ..add('slotEndIndex', slotEndIndex)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('bookingId', bookingId)
          ..add('customerId', customerId)
          ..add('customerName', customerName)
          ..add('serviceName', serviceName)
          ..add('additionalServiceName', additionalServiceName)
          ..add('color', color)
          ..add('isDisabled', isDisabled)
          ..add('serviceStepsSnapshot', serviceStepsSnapshot)
          ..add(
              'additionalServiceStepsSnapshot', additionalServiceStepsSnapshot))
        .toString();
  }
}

class CalendarBookingSlotBuilder
    implements Builder<CalendarBookingSlot, CalendarBookingSlotBuilder> {
  _$CalendarBookingSlot? _$v;

  int? _slotStartIndex;
  int? get slotStartIndex => _$this._slotStartIndex;
  set slotStartIndex(int? slotStartIndex) =>
      _$this._slotStartIndex = slotStartIndex;

  int? _slotEndIndex;
  int? get slotEndIndex => _$this._slotEndIndex;
  set slotEndIndex(int? slotEndIndex) => _$this._slotEndIndex = slotEndIndex;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  int? _bookingId;
  int? get bookingId => _$this._bookingId;
  set bookingId(int? bookingId) => _$this._bookingId = bookingId;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  String? _additionalServiceName;
  String? get additionalServiceName => _$this._additionalServiceName;
  set additionalServiceName(String? additionalServiceName) =>
      _$this._additionalServiceName = additionalServiceName;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  bool? _isDisabled;
  bool? get isDisabled => _$this._isDisabled;
  set isDisabled(bool? isDisabled) => _$this._isDisabled = isDisabled;

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

  CalendarBookingSlotBuilder() {
    CalendarBookingSlot._defaults(this);
  }

  CalendarBookingSlotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _slotStartIndex = $v.slotStartIndex;
      _slotEndIndex = $v.slotEndIndex;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _bookingId = $v.bookingId;
      _customerId = $v.customerId;
      _customerName = $v.customerName;
      _serviceName = $v.serviceName;
      _additionalServiceName = $v.additionalServiceName;
      _color = $v.color;
      _isDisabled = $v.isDisabled;
      _serviceStepsSnapshot = $v.serviceStepsSnapshot?.toBuilder();
      _additionalServiceStepsSnapshot =
          $v.additionalServiceStepsSnapshot?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarBookingSlot other) {
    _$v = other as _$CalendarBookingSlot;
  }

  @override
  void update(void Function(CalendarBookingSlotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalendarBookingSlot build() => _build();

  _$CalendarBookingSlot _build() {
    _$CalendarBookingSlot _$result;
    try {
      _$result = _$v ??
          _$CalendarBookingSlot._(
            slotStartIndex: BuiltValueNullFieldError.checkNotNull(
                slotStartIndex, r'CalendarBookingSlot', 'slotStartIndex'),
            slotEndIndex: BuiltValueNullFieldError.checkNotNull(
                slotEndIndex, r'CalendarBookingSlot', 'slotEndIndex'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'CalendarBookingSlot', 'startTime'),
            endTime: BuiltValueNullFieldError.checkNotNull(
                endTime, r'CalendarBookingSlot', 'endTime'),
            bookingId: bookingId,
            customerId: customerId,
            customerName: customerName,
            serviceName: serviceName,
            additionalServiceName: additionalServiceName,
            color: BuiltValueNullFieldError.checkNotNull(
                color, r'CalendarBookingSlot', 'color'),
            isDisabled: isDisabled,
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
            r'CalendarBookingSlot', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
