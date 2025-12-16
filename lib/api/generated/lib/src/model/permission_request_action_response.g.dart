// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_request_action_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionRequestActionResponse
    extends PermissionRequestActionResponse {
  @override
  final bool success;
  @override
  final String message;

  factory _$PermissionRequestActionResponse(
          [void Function(PermissionRequestActionResponseBuilder)? updates]) =>
      (PermissionRequestActionResponseBuilder()..update(updates))._build();

  _$PermissionRequestActionResponse._(
      {required this.success, required this.message})
      : super._();
  @override
  PermissionRequestActionResponse rebuild(
          void Function(PermissionRequestActionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionRequestActionResponseBuilder toBuilder() =>
      PermissionRequestActionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionRequestActionResponse &&
        success == other.success &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PermissionRequestActionResponse')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class PermissionRequestActionResponseBuilder
    implements
        Builder<PermissionRequestActionResponse,
            PermissionRequestActionResponseBuilder> {
  _$PermissionRequestActionResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  PermissionRequestActionResponseBuilder() {
    PermissionRequestActionResponse._defaults(this);
  }

  PermissionRequestActionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionRequestActionResponse other) {
    _$v = other as _$PermissionRequestActionResponse;
  }

  @override
  void update(void Function(PermissionRequestActionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionRequestActionResponse build() => _build();

  _$PermissionRequestActionResponse _build() {
    final _$result = _$v ??
        _$PermissionRequestActionResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'PermissionRequestActionResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'PermissionRequestActionResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
