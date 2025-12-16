// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_disability_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorDisabilityUpdate extends OperatorDisabilityUpdate {
  @override
  final String? reason;
  @override
  final Date? startDate;
  @override
  final Date? endDate;
  @override
  final BuiltList<TimeSlotUpdate>? timeSlots;

  factory _$OperatorDisabilityUpdate(
          [void Function(OperatorDisabilityUpdateBuilder)? updates]) =>
      (OperatorDisabilityUpdateBuilder()..update(updates))._build();

  _$OperatorDisabilityUpdate._(
      {this.reason, this.startDate, this.endDate, this.timeSlots})
      : super._();
  @override
  OperatorDisabilityUpdate rebuild(
          void Function(OperatorDisabilityUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorDisabilityUpdateBuilder toBuilder() =>
      OperatorDisabilityUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorDisabilityUpdate &&
        reason == other.reason &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        timeSlots == other.timeSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorDisabilityUpdate')
          ..add('reason', reason)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('timeSlots', timeSlots))
        .toString();
  }
}

class OperatorDisabilityUpdateBuilder
    implements
        Builder<OperatorDisabilityUpdate, OperatorDisabilityUpdateBuilder> {
  _$OperatorDisabilityUpdate? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

  ListBuilder<TimeSlotUpdate>? _timeSlots;
  ListBuilder<TimeSlotUpdate> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<TimeSlotUpdate>();
  set timeSlots(ListBuilder<TimeSlotUpdate>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  OperatorDisabilityUpdateBuilder() {
    OperatorDisabilityUpdate._defaults(this);
  }

  OperatorDisabilityUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _timeSlots = $v.timeSlots?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorDisabilityUpdate other) {
    _$v = other as _$OperatorDisabilityUpdate;
  }

  @override
  void update(void Function(OperatorDisabilityUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorDisabilityUpdate build() => _build();

  _$OperatorDisabilityUpdate _build() {
    _$OperatorDisabilityUpdate _$result;
    try {
      _$result = _$v ??
          _$OperatorDisabilityUpdate._(
            reason: reason,
            startDate: startDate,
            endDate: endDate,
            timeSlots: _timeSlots?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        _timeSlots?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorDisabilityUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
