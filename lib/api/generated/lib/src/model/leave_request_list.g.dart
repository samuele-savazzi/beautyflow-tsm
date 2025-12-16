// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LeaveRequestList extends LeaveRequestList {
  @override
  final int id;
  @override
  final OperatorInfo operator_;
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

  factory _$LeaveRequestList(
          [void Function(LeaveRequestListBuilder)? updates]) =>
      (LeaveRequestListBuilder()..update(updates))._build();

  _$LeaveRequestList._(
      {required this.id,
      required this.operator_,
      required this.startDate,
      required this.endDate,
      this.reason,
      required this.status,
      required this.createdAt})
      : super._();
  @override
  LeaveRequestList rebuild(void Function(LeaveRequestListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaveRequestListBuilder toBuilder() =>
      LeaveRequestListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeaveRequestList &&
        id == other.id &&
        operator_ == other.operator_ &&
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
    _$hash = $jc(_$hash, operator_.hashCode);
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
    return (newBuiltValueToStringHelper(r'LeaveRequestList')
          ..add('id', id)
          ..add('operator_', operator_)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('reason', reason)
          ..add('status', status)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class LeaveRequestListBuilder
    implements Builder<LeaveRequestList, LeaveRequestListBuilder> {
  _$LeaveRequestList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  OperatorInfoBuilder? _operator_;
  OperatorInfoBuilder get operator_ =>
      _$this._operator_ ??= OperatorInfoBuilder();
  set operator_(OperatorInfoBuilder? operator_) =>
      _$this._operator_ = operator_;

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

  LeaveRequestListBuilder() {
    LeaveRequestList._defaults(this);
  }

  LeaveRequestListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _operator_ = $v.operator_.toBuilder();
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
  void replace(LeaveRequestList other) {
    _$v = other as _$LeaveRequestList;
  }

  @override
  void update(void Function(LeaveRequestListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeaveRequestList build() => _build();

  _$LeaveRequestList _build() {
    _$LeaveRequestList _$result;
    try {
      _$result = _$v ??
          _$LeaveRequestList._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'LeaveRequestList', 'id'),
            operator_: operator_.build(),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'LeaveRequestList', 'startDate'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, r'LeaveRequestList', 'endDate'),
            reason: reason,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'LeaveRequestList', 'status'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'LeaveRequestList', 'createdAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operator_';
        operator_.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LeaveRequestList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
