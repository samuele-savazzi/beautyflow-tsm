// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request_action_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LeaveRequestActionResponse extends LeaveRequestActionResponse {
  @override
  final bool success;
  @override
  final String message;

  factory _$LeaveRequestActionResponse(
          [void Function(LeaveRequestActionResponseBuilder)? updates]) =>
      (LeaveRequestActionResponseBuilder()..update(updates))._build();

  _$LeaveRequestActionResponse._({required this.success, required this.message})
      : super._();
  @override
  LeaveRequestActionResponse rebuild(
          void Function(LeaveRequestActionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaveRequestActionResponseBuilder toBuilder() =>
      LeaveRequestActionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeaveRequestActionResponse &&
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
    return (newBuiltValueToStringHelper(r'LeaveRequestActionResponse')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class LeaveRequestActionResponseBuilder
    implements
        Builder<LeaveRequestActionResponse, LeaveRequestActionResponseBuilder> {
  _$LeaveRequestActionResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  LeaveRequestActionResponseBuilder() {
    LeaveRequestActionResponse._defaults(this);
  }

  LeaveRequestActionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeaveRequestActionResponse other) {
    _$v = other as _$LeaveRequestActionResponse;
  }

  @override
  void update(void Function(LeaveRequestActionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeaveRequestActionResponse build() => _build();

  _$LeaveRequestActionResponse _build() {
    final _$result = _$v ??
        _$LeaveRequestActionResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'LeaveRequestActionResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'LeaveRequestActionResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
