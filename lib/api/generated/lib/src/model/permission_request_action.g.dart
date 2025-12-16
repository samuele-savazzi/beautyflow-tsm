// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_request_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionRequestAction extends PermissionRequestAction {
  @override
  final int requestId;
  @override
  final Action55fEnum action;

  factory _$PermissionRequestAction(
          [void Function(PermissionRequestActionBuilder)? updates]) =>
      (PermissionRequestActionBuilder()..update(updates))._build();

  _$PermissionRequestAction._({required this.requestId, required this.action})
      : super._();
  @override
  PermissionRequestAction rebuild(
          void Function(PermissionRequestActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionRequestActionBuilder toBuilder() =>
      PermissionRequestActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionRequestAction &&
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
    return (newBuiltValueToStringHelper(r'PermissionRequestAction')
          ..add('requestId', requestId)
          ..add('action', action))
        .toString();
  }
}

class PermissionRequestActionBuilder
    implements
        Builder<PermissionRequestAction, PermissionRequestActionBuilder> {
  _$PermissionRequestAction? _$v;

  int? _requestId;
  int? get requestId => _$this._requestId;
  set requestId(int? requestId) => _$this._requestId = requestId;

  Action55fEnum? _action;
  Action55fEnum? get action => _$this._action;
  set action(Action55fEnum? action) => _$this._action = action;

  PermissionRequestActionBuilder() {
    PermissionRequestAction._defaults(this);
  }

  PermissionRequestActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestId = $v.requestId;
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionRequestAction other) {
    _$v = other as _$PermissionRequestAction;
  }

  @override
  void update(void Function(PermissionRequestActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionRequestAction build() => _build();

  _$PermissionRequestAction _build() {
    final _$result = _$v ??
        _$PermissionRequestAction._(
          requestId: BuiltValueNullFieldError.checkNotNull(
              requestId, r'PermissionRequestAction', 'requestId'),
          action: BuiltValueNullFieldError.checkNotNull(
              action, r'PermissionRequestAction', 'action'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
