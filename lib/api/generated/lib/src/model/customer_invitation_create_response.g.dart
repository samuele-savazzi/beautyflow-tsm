// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_invitation_create_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerInvitationCreateResponse
    extends CustomerInvitationCreateResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final String invitationId;
  @override
  final String invitationUrl;
  @override
  final DateTime expiresAt;

  factory _$CustomerInvitationCreateResponse(
          [void Function(CustomerInvitationCreateResponseBuilder)? updates]) =>
      (CustomerInvitationCreateResponseBuilder()..update(updates))._build();

  _$CustomerInvitationCreateResponse._(
      {required this.success,
      required this.message,
      required this.invitationId,
      required this.invitationUrl,
      required this.expiresAt})
      : super._();
  @override
  CustomerInvitationCreateResponse rebuild(
          void Function(CustomerInvitationCreateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerInvitationCreateResponseBuilder toBuilder() =>
      CustomerInvitationCreateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerInvitationCreateResponse &&
        success == other.success &&
        message == other.message &&
        invitationId == other.invitationId &&
        invitationUrl == other.invitationUrl &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, invitationId.hashCode);
    _$hash = $jc(_$hash, invitationUrl.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerInvitationCreateResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('invitationId', invitationId)
          ..add('invitationUrl', invitationUrl)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class CustomerInvitationCreateResponseBuilder
    implements
        Builder<CustomerInvitationCreateResponse,
            CustomerInvitationCreateResponseBuilder> {
  _$CustomerInvitationCreateResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _invitationId;
  String? get invitationId => _$this._invitationId;
  set invitationId(String? invitationId) => _$this._invitationId = invitationId;

  String? _invitationUrl;
  String? get invitationUrl => _$this._invitationUrl;
  set invitationUrl(String? invitationUrl) =>
      _$this._invitationUrl = invitationUrl;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  CustomerInvitationCreateResponseBuilder() {
    CustomerInvitationCreateResponse._defaults(this);
  }

  CustomerInvitationCreateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _invitationId = $v.invitationId;
      _invitationUrl = $v.invitationUrl;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerInvitationCreateResponse other) {
    _$v = other as _$CustomerInvitationCreateResponse;
  }

  @override
  void update(void Function(CustomerInvitationCreateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerInvitationCreateResponse build() => _build();

  _$CustomerInvitationCreateResponse _build() {
    final _$result = _$v ??
        _$CustomerInvitationCreateResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'CustomerInvitationCreateResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'CustomerInvitationCreateResponse', 'message'),
          invitationId: BuiltValueNullFieldError.checkNotNull(invitationId,
              r'CustomerInvitationCreateResponse', 'invitationId'),
          invitationUrl: BuiltValueNullFieldError.checkNotNull(invitationUrl,
              r'CustomerInvitationCreateResponse', 'invitationUrl'),
          expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt, r'CustomerInvitationCreateResponse', 'expiresAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
