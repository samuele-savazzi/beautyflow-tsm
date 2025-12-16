// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tenant_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTenantResponse extends CreateTenantResponse {
  @override
  final String message;
  @override
  final TenantDetail tenant;
  @override
  final BuiltList<String>? warnings;

  factory _$CreateTenantResponse(
          [void Function(CreateTenantResponseBuilder)? updates]) =>
      (CreateTenantResponseBuilder()..update(updates))._build();

  _$CreateTenantResponse._(
      {required this.message, required this.tenant, this.warnings})
      : super._();
  @override
  CreateTenantResponse rebuild(
          void Function(CreateTenantResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTenantResponseBuilder toBuilder() =>
      CreateTenantResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTenantResponse &&
        message == other.message &&
        tenant == other.tenant &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, tenant.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTenantResponse')
          ..add('message', message)
          ..add('tenant', tenant)
          ..add('warnings', warnings))
        .toString();
  }
}

class CreateTenantResponseBuilder
    implements Builder<CreateTenantResponse, CreateTenantResponseBuilder> {
  _$CreateTenantResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  TenantDetailBuilder? _tenant;
  TenantDetailBuilder get tenant => _$this._tenant ??= TenantDetailBuilder();
  set tenant(TenantDetailBuilder? tenant) => _$this._tenant = tenant;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  CreateTenantResponseBuilder() {
    CreateTenantResponse._defaults(this);
  }

  CreateTenantResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _tenant = $v.tenant.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTenantResponse other) {
    _$v = other as _$CreateTenantResponse;
  }

  @override
  void update(void Function(CreateTenantResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTenantResponse build() => _build();

  _$CreateTenantResponse _build() {
    _$CreateTenantResponse _$result;
    try {
      _$result = _$v ??
          _$CreateTenantResponse._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'CreateTenantResponse', 'message'),
            tenant: tenant.build(),
            warnings: _warnings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tenant';
        tenant.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateTenantResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
