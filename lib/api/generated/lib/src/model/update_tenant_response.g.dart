// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_tenant_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTenantResponse extends UpdateTenantResponse {
  @override
  final String message;
  @override
  final TenantInfo tenant;

  factory _$UpdateTenantResponse(
          [void Function(UpdateTenantResponseBuilder)? updates]) =>
      (UpdateTenantResponseBuilder()..update(updates))._build();

  _$UpdateTenantResponse._({required this.message, required this.tenant})
      : super._();
  @override
  UpdateTenantResponse rebuild(
          void Function(UpdateTenantResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTenantResponseBuilder toBuilder() =>
      UpdateTenantResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTenantResponse &&
        message == other.message &&
        tenant == other.tenant;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, tenant.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTenantResponse')
          ..add('message', message)
          ..add('tenant', tenant))
        .toString();
  }
}

class UpdateTenantResponseBuilder
    implements Builder<UpdateTenantResponse, UpdateTenantResponseBuilder> {
  _$UpdateTenantResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  TenantInfoBuilder? _tenant;
  TenantInfoBuilder get tenant => _$this._tenant ??= TenantInfoBuilder();
  set tenant(TenantInfoBuilder? tenant) => _$this._tenant = tenant;

  UpdateTenantResponseBuilder() {
    UpdateTenantResponse._defaults(this);
  }

  UpdateTenantResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _tenant = $v.tenant.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTenantResponse other) {
    _$v = other as _$UpdateTenantResponse;
  }

  @override
  void update(void Function(UpdateTenantResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTenantResponse build() => _build();

  _$UpdateTenantResponse _build() {
    _$UpdateTenantResponse _$result;
    try {
      _$result = _$v ??
          _$UpdateTenantResponse._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'UpdateTenantResponse', 'message'),
            tenant: tenant.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tenant';
        tenant.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateTenantResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
