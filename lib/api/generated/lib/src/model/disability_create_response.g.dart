// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disability_create_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisabilityCreateResponse extends DisabilityCreateResponse {
  @override
  final int id;
  @override
  final BuiltMap<String, Map<String, dynamic>?> workstation;
  @override
  final String reason;
  @override
  final Date startDate;
  @override
  final Date? endDate;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> timeSlots;
  @override
  final DateTime createdAt;

  factory _$DisabilityCreateResponse(
          [void Function(DisabilityCreateResponseBuilder)? updates]) =>
      (DisabilityCreateResponseBuilder()..update(updates))._build();

  _$DisabilityCreateResponse._(
      {required this.id,
      required this.workstation,
      required this.reason,
      required this.startDate,
      this.endDate,
      required this.timeSlots,
      required this.createdAt})
      : super._();
  @override
  DisabilityCreateResponse rebuild(
          void Function(DisabilityCreateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisabilityCreateResponseBuilder toBuilder() =>
      DisabilityCreateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisabilityCreateResponse &&
        id == other.id &&
        workstation == other.workstation &&
        reason == other.reason &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        timeSlots == other.timeSlots &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, workstation.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DisabilityCreateResponse')
          ..add('id', id)
          ..add('workstation', workstation)
          ..add('reason', reason)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('timeSlots', timeSlots)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class DisabilityCreateResponseBuilder
    implements
        Builder<DisabilityCreateResponse, DisabilityCreateResponseBuilder> {
  _$DisabilityCreateResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  MapBuilder<String, Map<String, dynamic>?>? _workstation;
  MapBuilder<String, Map<String, dynamic>?> get workstation =>
      _$this._workstation ??= MapBuilder<String, Map<String, dynamic>?>();
  set workstation(MapBuilder<String, Map<String, dynamic>?>? workstation) =>
      _$this._workstation = workstation;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _timeSlots;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get timeSlots =>
      _$this._timeSlots ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set timeSlots(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DisabilityCreateResponseBuilder() {
    DisabilityCreateResponse._defaults(this);
  }

  DisabilityCreateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _workstation = $v.workstation.toBuilder();
      _reason = $v.reason;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _timeSlots = $v.timeSlots.toBuilder();
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisabilityCreateResponse other) {
    _$v = other as _$DisabilityCreateResponse;
  }

  @override
  void update(void Function(DisabilityCreateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisabilityCreateResponse build() => _build();

  _$DisabilityCreateResponse _build() {
    _$DisabilityCreateResponse _$result;
    try {
      _$result = _$v ??
          _$DisabilityCreateResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DisabilityCreateResponse', 'id'),
            workstation: workstation.build(),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'DisabilityCreateResponse', 'reason'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'DisabilityCreateResponse', 'startDate'),
            endDate: endDate,
            timeSlots: timeSlots.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'DisabilityCreateResponse', 'createdAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workstation';
        workstation.build();

        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DisabilityCreateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
