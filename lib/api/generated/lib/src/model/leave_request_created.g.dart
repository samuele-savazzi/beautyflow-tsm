// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LeaveRequestCreated extends LeaveRequestCreated {
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

  factory _$LeaveRequestCreated(
          [void Function(LeaveRequestCreatedBuilder)? updates]) =>
      (LeaveRequestCreatedBuilder()..update(updates))._build();

  _$LeaveRequestCreated._(
      {required this.id,
      required this.startDate,
      required this.endDate,
      this.reason,
      required this.status})
      : super._();
  @override
  LeaveRequestCreated rebuild(
          void Function(LeaveRequestCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaveRequestCreatedBuilder toBuilder() =>
      LeaveRequestCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeaveRequestCreated &&
        id == other.id &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        reason == other.reason &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeaveRequestCreated')
          ..add('id', id)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('reason', reason)
          ..add('status', status))
        .toString();
  }
}

class LeaveRequestCreatedBuilder
    implements Builder<LeaveRequestCreated, LeaveRequestCreatedBuilder> {
  _$LeaveRequestCreated? _$v;

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

  LeaveRequestCreatedBuilder() {
    LeaveRequestCreated._defaults(this);
  }

  LeaveRequestCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _reason = $v.reason;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeaveRequestCreated other) {
    _$v = other as _$LeaveRequestCreated;
  }

  @override
  void update(void Function(LeaveRequestCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeaveRequestCreated build() => _build();

  _$LeaveRequestCreated _build() {
    final _$result = _$v ??
        _$LeaveRequestCreated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'LeaveRequestCreated', 'id'),
          startDate: BuiltValueNullFieldError.checkNotNull(
              startDate, r'LeaveRequestCreated', 'startDate'),
          endDate: BuiltValueNullFieldError.checkNotNull(
              endDate, r'LeaveRequestCreated', 'endDate'),
          reason: reason,
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'LeaveRequestCreated', 'status'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
