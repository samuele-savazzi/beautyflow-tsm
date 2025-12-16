// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disability_update_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisabilityUpdateResponse extends DisabilityUpdateResponse {
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

  factory _$DisabilityUpdateResponse(
          [void Function(DisabilityUpdateResponseBuilder)? updates]) =>
      (DisabilityUpdateResponseBuilder()..update(updates))._build();

  _$DisabilityUpdateResponse._(
      {required this.id,
      required this.workstation,
      required this.reason,
      required this.startDate,
      this.endDate,
      required this.timeSlots,
      required this.createdAt})
      : super._();
  @override
  DisabilityUpdateResponse rebuild(
          void Function(DisabilityUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisabilityUpdateResponseBuilder toBuilder() =>
      DisabilityUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisabilityUpdateResponse &&
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
    return (newBuiltValueToStringHelper(r'DisabilityUpdateResponse')
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

class DisabilityUpdateResponseBuilder
    implements
        Builder<DisabilityUpdateResponse, DisabilityUpdateResponseBuilder> {
  _$DisabilityUpdateResponse? _$v;

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

  DisabilityUpdateResponseBuilder() {
    DisabilityUpdateResponse._defaults(this);
  }

  DisabilityUpdateResponseBuilder get _$this {
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
  void replace(DisabilityUpdateResponse other) {
    _$v = other as _$DisabilityUpdateResponse;
  }

  @override
  void update(void Function(DisabilityUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisabilityUpdateResponse build() => _build();

  _$DisabilityUpdateResponse _build() {
    _$DisabilityUpdateResponse _$result;
    try {
      _$result = _$v ??
          _$DisabilityUpdateResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DisabilityUpdateResponse', 'id'),
            workstation: workstation.build(),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'DisabilityUpdateResponse', 'reason'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'DisabilityUpdateResponse', 'startDate'),
            endDate: endDate,
            timeSlots: timeSlots.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'DisabilityUpdateResponse', 'createdAt'),
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
            r'DisabilityUpdateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
