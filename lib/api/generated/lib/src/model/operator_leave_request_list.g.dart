// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_leave_request_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorLeaveRequestList extends OperatorLeaveRequestList {
  @override
  final int id;
  @override
  final Date startDate;
  @override
  final Date endDate;
  @override
  final String? reason;
  @override
  final String status;
  @override
  final DateTime createdAt;

  factory _$OperatorLeaveRequestList(
          [void Function(OperatorLeaveRequestListBuilder)? updates]) =>
      (OperatorLeaveRequestListBuilder()..update(updates))._build();

  _$OperatorLeaveRequestList._(
      {required this.id,
      required this.startDate,
      required this.endDate,
      this.reason,
      required this.status,
      required this.createdAt})
      : super._();
  @override
  OperatorLeaveRequestList rebuild(
          void Function(OperatorLeaveRequestListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorLeaveRequestListBuilder toBuilder() =>
      OperatorLeaveRequestListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorLeaveRequestList &&
        id == other.id &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        reason == other.reason &&
        status == other.status &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorLeaveRequestList')
          ..add('id', id)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('reason', reason)
          ..add('status', status)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class OperatorLeaveRequestListBuilder
    implements
        Builder<OperatorLeaveRequestList, OperatorLeaveRequestListBuilder> {
  _$OperatorLeaveRequestList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  OperatorLeaveRequestListBuilder() {
    OperatorLeaveRequestList._defaults(this);
  }

  OperatorLeaveRequestListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _reason = $v.reason;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorLeaveRequestList other) {
    _$v = other as _$OperatorLeaveRequestList;
  }

  @override
  void update(void Function(OperatorLeaveRequestListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorLeaveRequestList build() => _build();

  _$OperatorLeaveRequestList _build() {
    final _$result = _$v ??
        _$OperatorLeaveRequestList._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'OperatorLeaveRequestList', 'id'),
          startDate: BuiltValueNullFieldError.checkNotNull(
              startDate, r'OperatorLeaveRequestList', 'startDate'),
          endDate: BuiltValueNullFieldError.checkNotNull(
              endDate, r'OperatorLeaveRequestList', 'endDate'),
          reason: reason,
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'OperatorLeaveRequestList', 'status'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'OperatorLeaveRequestList', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
