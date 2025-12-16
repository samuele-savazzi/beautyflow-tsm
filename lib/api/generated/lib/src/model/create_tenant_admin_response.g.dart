// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tenant_admin_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTenantAdminResponse extends CreateTenantAdminResponse {
  @override
  final String message;
  @override
  final TenantAdminInfo admin;
  @override
  final String temporaryPassword;
  @override
  final bool emailSent;

  factory _$CreateTenantAdminResponse(
          [void Function(CreateTenantAdminResponseBuilder)? updates]) =>
      (CreateTenantAdminResponseBuilder()..update(updates))._build();

  _$CreateTenantAdminResponse._(
      {required this.message,
      required this.admin,
      required this.temporaryPassword,
      required this.emailSent})
      : super._();
  @override
  CreateTenantAdminResponse rebuild(
          void Function(CreateTenantAdminResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTenantAdminResponseBuilder toBuilder() =>
      CreateTenantAdminResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTenantAdminResponse &&
        message == other.message &&
        admin == other.admin &&
        temporaryPassword == other.temporaryPassword &&
        emailSent == other.emailSent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, admin.hashCode);
    _$hash = $jc(_$hash, temporaryPassword.hashCode);
    _$hash = $jc(_$hash, emailSent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTenantAdminResponse')
          ..add('message', message)
          ..add('admin', admin)
          ..add('temporaryPassword', temporaryPassword)
          ..add('emailSent', emailSent))
        .toString();
  }
}

class CreateTenantAdminResponseBuilder
    implements
        Builder<CreateTenantAdminResponse, CreateTenantAdminResponseBuilder> {
  _$CreateTenantAdminResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  TenantAdminInfoBuilder? _admin;
  TenantAdminInfoBuilder get admin =>
      _$this._admin ??= TenantAdminInfoBuilder();
  set admin(TenantAdminInfoBuilder? admin) => _$this._admin = admin;

  String? _temporaryPassword;
  String? get temporaryPassword => _$this._temporaryPassword;
  set temporaryPassword(String? temporaryPassword) =>
      _$this._temporaryPassword = temporaryPassword;

  bool? _emailSent;
  bool? get emailSent => _$this._emailSent;
  set emailSent(bool? emailSent) => _$this._emailSent = emailSent;

  CreateTenantAdminResponseBuilder() {
    CreateTenantAdminResponse._defaults(this);
  }

  CreateTenantAdminResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _admin = $v.admin.toBuilder();
      _temporaryPassword = $v.temporaryPassword;
      _emailSent = $v.emailSent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTenantAdminResponse other) {
    _$v = other as _$CreateTenantAdminResponse;
  }

  @override
  void update(void Function(CreateTenantAdminResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTenantAdminResponse build() => _build();

  _$CreateTenantAdminResponse _build() {
    _$CreateTenantAdminResponse _$result;
    try {
      _$result = _$v ??
          _$CreateTenantAdminResponse._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'CreateTenantAdminResponse', 'message'),
            admin: admin.build(),
            temporaryPassword: BuiltValueNullFieldError.checkNotNull(
                temporaryPassword,
                r'CreateTenantAdminResponse',
                'temporaryPassword'),
            emailSent: BuiltValueNullFieldError.checkNotNull(
                emailSent, r'CreateTenantAdminResponse', 'emailSent'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'admin';
        admin.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateTenantAdminResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
