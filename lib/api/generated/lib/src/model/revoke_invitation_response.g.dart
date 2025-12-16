// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revoke_invitation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeInvitationResponse extends RevokeInvitationResponse {
  @override
  final bool success;
  @override
  final String message;

  factory _$RevokeInvitationResponse(
          [void Function(RevokeInvitationResponseBuilder)? updates]) =>
      (RevokeInvitationResponseBuilder()..update(updates))._build();

  _$RevokeInvitationResponse._({required this.success, required this.message})
      : super._();
  @override
  RevokeInvitationResponse rebuild(
          void Function(RevokeInvitationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeInvitationResponseBuilder toBuilder() =>
      RevokeInvitationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeInvitationResponse &&
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
    return (newBuiltValueToStringHelper(r'RevokeInvitationResponse')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class RevokeInvitationResponseBuilder
    implements
        Builder<RevokeInvitationResponse, RevokeInvitationResponseBuilder> {
  _$RevokeInvitationResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  RevokeInvitationResponseBuilder() {
    RevokeInvitationResponse._defaults(this);
  }

  RevokeInvitationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevokeInvitationResponse other) {
    _$v = other as _$RevokeInvitationResponse;
  }

  @override
  void update(void Function(RevokeInvitationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeInvitationResponse build() => _build();

  _$RevokeInvitationResponse _build() {
    final _$result = _$v ??
        _$RevokeInvitationResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'RevokeInvitationResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'RevokeInvitationResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
