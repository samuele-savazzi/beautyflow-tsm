// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_permission_request_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorPermissionRequestList extends OperatorPermissionRequestList {
  @override
  final int id;
  @override
  final Date date;
  @override
  final String? reason;
  @override
  final String status;
  @override
  final BuiltList<TimeSlotDetail> timeSlots;
  @override
  final DateTime createdAt;

  factory _$OperatorPermissionRequestList(
          [void Function(OperatorPermissionRequestListBuilder)? updates]) =>
      (OperatorPermissionRequestListBuilder()..update(updates))._build();

  _$OperatorPermissionRequestList._(
      {required this.id,
      required this.date,
      this.reason,
      required this.status,
      required this.timeSlots,
      required this.createdAt})
      : super._();
  @override
  OperatorPermissionRequestList rebuild(
          void Function(OperatorPermissionRequestListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorPermissionRequestListBuilder toBuilder() =>
      OperatorPermissionRequestListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorPermissionRequestList &&
        id == other.id &&
        date == other.date &&
        reason == other.reason &&
        status == other.status &&
        timeSlots == other.timeSlots &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorPermissionRequestList')
          ..add('id', id)
          ..add('date', date)
          ..add('reason', reason)
          ..add('status', status)
          ..add('timeSlots', timeSlots)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class OperatorPermissionRequestListBuilder
    implements
        Builder<OperatorPermissionRequestList,
            OperatorPermissionRequestListBuilder> {
  _$OperatorPermissionRequestList? _$v;

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

  ListBuilder<TimeSlotDetail>? _timeSlots;
  ListBuilder<TimeSlotDetail> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<TimeSlotDetail>();
  set timeSlots(ListBuilder<TimeSlotDetail>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  OperatorPermissionRequestListBuilder() {
    OperatorPermissionRequestList._defaults(this);
  }

  OperatorPermissionRequestListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _date = $v.date;
      _reason = $v.reason;
      _status = $v.status;
      _timeSlots = $v.timeSlots.toBuilder();
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorPermissionRequestList other) {
    _$v = other as _$OperatorPermissionRequestList;
  }

  @override
  void update(void Function(OperatorPermissionRequestListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorPermissionRequestList build() => _build();

  _$OperatorPermissionRequestList _build() {
    _$OperatorPermissionRequestList _$result;
    try {
      _$result = _$v ??
          _$OperatorPermissionRequestList._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'OperatorPermissionRequestList', 'id'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'OperatorPermissionRequestList', 'date'),
            reason: reason,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'OperatorPermissionRequestList', 'status'),
            timeSlots: timeSlots.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'OperatorPermissionRequestList', 'createdAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorPermissionRequestList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
