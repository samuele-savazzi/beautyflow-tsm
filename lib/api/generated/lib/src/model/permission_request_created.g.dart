// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_request_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionRequestCreated extends PermissionRequestCreated {
  @override
  final int id;
  @override
  final Date date;
  @override
  final String? reason;
  @override
  final String status;
  @override
  final BuiltList<TimeSlotInfo> timeSlots;

  factory _$PermissionRequestCreated(
          [void Function(PermissionRequestCreatedBuilder)? updates]) =>
      (PermissionRequestCreatedBuilder()..update(updates))._build();

  _$PermissionRequestCreated._(
      {required this.id,
      required this.date,
      this.reason,
      required this.status,
      required this.timeSlots})
      : super._();
  @override
  PermissionRequestCreated rebuild(
          void Function(PermissionRequestCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionRequestCreatedBuilder toBuilder() =>
      PermissionRequestCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionRequestCreated &&
        id == other.id &&
        date == other.date &&
        reason == other.reason &&
        status == other.status &&
        timeSlots == other.timeSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PermissionRequestCreated')
          ..add('id', id)
          ..add('date', date)
          ..add('reason', reason)
          ..add('status', status)
          ..add('timeSlots', timeSlots))
        .toString();
  }
}

class PermissionRequestCreatedBuilder
    implements
        Builder<PermissionRequestCreated, PermissionRequestCreatedBuilder> {
  _$PermissionRequestCreated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<TimeSlotInfo>? _timeSlots;
  ListBuilder<TimeSlotInfo> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<TimeSlotInfo>();
  set timeSlots(ListBuilder<TimeSlotInfo>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  PermissionRequestCreatedBuilder() {
    PermissionRequestCreated._defaults(this);
  }

  PermissionRequestCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _date = $v.date;
      _reason = $v.reason;
      _status = $v.status;
      _timeSlots = $v.timeSlots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionRequestCreated other) {
    _$v = other as _$PermissionRequestCreated;
  }

  @override
  void update(void Function(PermissionRequestCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionRequestCreated build() => _build();

  _$PermissionRequestCreated _build() {
    _$PermissionRequestCreated _$result;
    try {
      _$result = _$v ??
          _$PermissionRequestCreated._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PermissionRequestCreated', 'id'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'PermissionRequestCreated', 'date'),
            reason: reason,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'PermissionRequestCreated', 'status'),
            timeSlots: timeSlots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PermissionRequestCreated', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
