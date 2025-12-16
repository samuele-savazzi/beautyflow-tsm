// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LeaveRequestAction extends LeaveRequestAction {
  @override
  final int requestId;
  @override
  final Action55fEnum action;

  factory _$LeaveRequestAction(
          [void Function(LeaveRequestActionBuilder)? updates]) =>
      (LeaveRequestActionBuilder()..update(updates))._build();

  _$LeaveRequestAction._({required this.requestId, required this.action})
      : super._();
  @override
  LeaveRequestAction rebuild(
          void Function(LeaveRequestActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaveRequestActionBuilder toBuilder() =>
      LeaveRequestActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeaveRequestAction &&
        requestId == other.requestId &&
        action == other.action;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeaveRequestAction')
          ..add('requestId', requestId)
          ..add('action', action))
        .toString();
  }
}

class LeaveRequestActionBuilder
    implements Builder<LeaveRequestAction, LeaveRequestActionBuilder> {
  _$LeaveRequestAction? _$v;

  int? _requestId;
  int? get requestId => _$this._requestId;
  set requestId(int? requestId) => _$this._requestId = requestId;

  Action55fEnum? _action;
  Action55fEnum? get action => _$this._action;
  set action(Action55fEnum? action) => _$this._action = action;

  LeaveRequestActionBuilder() {
    LeaveRequestAction._defaults(this);
  }

  LeaveRequestActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestId = $v.requestId;
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeaveRequestAction other) {
    _$v = other as _$LeaveRequestAction;
  }

  @override
  void update(void Function(LeaveRequestActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeaveRequestAction build() => _build();

  _$LeaveRequestAction _build() {
    final _$result = _$v ??
        _$LeaveRequestAction._(
          requestId: BuiltValueNullFieldError.checkNotNull(
              requestId, r'LeaveRequestAction', 'requestId'),
          action: BuiltValueNullFieldError.checkNotNull(
              action, r'LeaveRequestAction', 'action'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
