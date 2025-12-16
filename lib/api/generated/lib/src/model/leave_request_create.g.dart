// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LeaveRequestCreate extends LeaveRequestCreate {
  @override
  final Date startDate;
  @override
  final Date endDate;
  @override
  final String? reason;

  factory _$LeaveRequestCreate(
          [void Function(LeaveRequestCreateBuilder)? updates]) =>
      (LeaveRequestCreateBuilder()..update(updates))._build();

  _$LeaveRequestCreate._(
      {required this.startDate, required this.endDate, this.reason})
      : super._();
  @override
  LeaveRequestCreate rebuild(
          void Function(LeaveRequestCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaveRequestCreateBuilder toBuilder() =>
      LeaveRequestCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeaveRequestCreate &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeaveRequestCreate')
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('reason', reason))
        .toString();
  }
}

class LeaveRequestCreateBuilder
    implements Builder<LeaveRequestCreate, LeaveRequestCreateBuilder> {
  _$LeaveRequestCreate? _$v;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  LeaveRequestCreateBuilder() {
    LeaveRequestCreate._defaults(this);
  }

  LeaveRequestCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeaveRequestCreate other) {
    _$v = other as _$LeaveRequestCreate;
  }

  @override
  void update(void Function(LeaveRequestCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeaveRequestCreate build() => _build();

  _$LeaveRequestCreate _build() {
    final _$result = _$v ??
        _$LeaveRequestCreate._(
          startDate: BuiltValueNullFieldError.checkNotNull(
              startDate, r'LeaveRequestCreate', 'startDate'),
          endDate: BuiltValueNullFieldError.checkNotNull(
              endDate, r'LeaveRequestCreate', 'endDate'),
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
