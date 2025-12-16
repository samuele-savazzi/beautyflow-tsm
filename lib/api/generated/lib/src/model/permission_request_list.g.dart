// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_request_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionRequestList extends PermissionRequestList {
  @override
  final int id;
  @override
  final OperatorInfo operator_;
  @override
  final Date date;
  @override
  final String? reason;
  @override
  final String status;
  @override
  final BuiltList<TimeSlotInfo> timeSlots;
  @override
  final DateTime createdAt;

  factory _$PermissionRequestList(
          [void Function(PermissionRequestListBuilder)? updates]) =>
      (PermissionRequestListBuilder()..update(updates))._build();

  _$PermissionRequestList._(
      {required this.id,
      required this.operator_,
      required this.date,
      this.reason,
      required this.status,
      required this.timeSlots,
      required this.createdAt})
      : super._();
  @override
  PermissionRequestList rebuild(
          void Function(PermissionRequestListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionRequestListBuilder toBuilder() =>
      PermissionRequestListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionRequestList &&
        id == other.id &&
        operator_ == other.operator_ &&
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
    _$hash = $jc(_$hash, operator_.hashCode);
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
    return (newBuiltValueToStringHelper(r'PermissionRequestList')
          ..add('id', id)
          ..add('operator_', operator_)
          ..add('date', date)
          ..add('reason', reason)
          ..add('status', status)
          ..add('timeSlots', timeSlots)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class PermissionRequestListBuilder
    implements Builder<PermissionRequestList, PermissionRequestListBuilder> {
  _$PermissionRequestList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  OperatorInfoBuilder? _operator_;
  OperatorInfoBuilder get operator_ =>
      _$this._operator_ ??= OperatorInfoBuilder();
  set operator_(OperatorInfoBuilder? operator_) =>
      _$this._operator_ = operator_;

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

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  PermissionRequestListBuilder() {
    PermissionRequestList._defaults(this);
  }

  PermissionRequestListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _operator_ = $v.operator_.toBuilder();
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
  void replace(PermissionRequestList other) {
    _$v = other as _$PermissionRequestList;
  }

  @override
  void update(void Function(PermissionRequestListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionRequestList build() => _build();

  _$PermissionRequestList _build() {
    _$PermissionRequestList _$result;
    try {
      _$result = _$v ??
          _$PermissionRequestList._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PermissionRequestList', 'id'),
            operator_: operator_.build(),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'PermissionRequestList', 'date'),
            reason: reason,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'PermissionRequestList', 'status'),
            timeSlots: timeSlots.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'PermissionRequestList', 'createdAt'),
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
            r'PermissionRequestList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
