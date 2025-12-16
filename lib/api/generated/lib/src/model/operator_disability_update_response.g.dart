// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_disability_update_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorDisabilityUpdateResponse
    extends OperatorDisabilityUpdateResponse {
  @override
  final int id;
  @override
  final BuiltMap<String, Map<String, dynamic>?> operator_;
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

  factory _$OperatorDisabilityUpdateResponse(
          [void Function(OperatorDisabilityUpdateResponseBuilder)? updates]) =>
      (OperatorDisabilityUpdateResponseBuilder()..update(updates))._build();

  _$OperatorDisabilityUpdateResponse._(
      {required this.id,
      required this.operator_,
      required this.reason,
      required this.startDate,
      this.endDate,
      required this.timeSlots,
      required this.createdAt})
      : super._();
  @override
  OperatorDisabilityUpdateResponse rebuild(
          void Function(OperatorDisabilityUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorDisabilityUpdateResponseBuilder toBuilder() =>
      OperatorDisabilityUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorDisabilityUpdateResponse &&
        id == other.id &&
        operator_ == other.operator_ &&
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
    _$hash = $jc(_$hash, operator_.hashCode);
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
    return (newBuiltValueToStringHelper(r'OperatorDisabilityUpdateResponse')
          ..add('id', id)
          ..add('operator_', operator_)
          ..add('reason', reason)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('timeSlots', timeSlots)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class OperatorDisabilityUpdateResponseBuilder
    implements
        Builder<OperatorDisabilityUpdateResponse,
            OperatorDisabilityUpdateResponseBuilder> {
  _$OperatorDisabilityUpdateResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  MapBuilder<String, Map<String, dynamic>?>? _operator_;
  MapBuilder<String, Map<String, dynamic>?> get operator_ =>
      _$this._operator_ ??= MapBuilder<String, Map<String, dynamic>?>();
  set operator_(MapBuilder<String, Map<String, dynamic>?>? operator_) =>
      _$this._operator_ = operator_;

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

  OperatorDisabilityUpdateResponseBuilder() {
    OperatorDisabilityUpdateResponse._defaults(this);
  }

  OperatorDisabilityUpdateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _operator_ = $v.operator_.toBuilder();
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
  void replace(OperatorDisabilityUpdateResponse other) {
    _$v = other as _$OperatorDisabilityUpdateResponse;
  }

  @override
  void update(void Function(OperatorDisabilityUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorDisabilityUpdateResponse build() => _build();

  _$OperatorDisabilityUpdateResponse _build() {
    _$OperatorDisabilityUpdateResponse _$result;
    try {
      _$result = _$v ??
          _$OperatorDisabilityUpdateResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'OperatorDisabilityUpdateResponse', 'id'),
            operator_: operator_.build(),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'OperatorDisabilityUpdateResponse', 'reason'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'OperatorDisabilityUpdateResponse', 'startDate'),
            endDate: endDate,
            timeSlots: timeSlots.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'OperatorDisabilityUpdateResponse', 'createdAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operator_';
        operator_.build();

        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorDisabilityUpdateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
