// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_tenant_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTenantRequest extends UpdateTenantRequest {
  @override
  final int tenantId;
  @override
  final String? name;
  @override
  final String? registeredOffice;
  @override
  final bool? onlineConsultation;
  @override
  final TypeEnum? type;
  @override
  final Map<String, dynamic>? theme;

  factory _$UpdateTenantRequest(
          [void Function(UpdateTenantRequestBuilder)? updates]) =>
      (UpdateTenantRequestBuilder()..update(updates))._build();

  _$UpdateTenantRequest._(
      {required this.tenantId,
      this.name,
      this.registeredOffice,
      this.onlineConsultation,
      this.type,
      this.theme})
      : super._();
  @override
  UpdateTenantRequest rebuild(
          void Function(UpdateTenantRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTenantRequestBuilder toBuilder() =>
      UpdateTenantRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTenantRequest &&
        tenantId == other.tenantId &&
        name == other.name &&
        registeredOffice == other.registeredOffice &&
        onlineConsultation == other.onlineConsultation &&
        type == other.type &&
        theme == other.theme;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, registeredOffice.hashCode);
    _$hash = $jc(_$hash, onlineConsultation.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTenantRequest')
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('registeredOffice', registeredOffice)
          ..add('onlineConsultation', onlineConsultation)
          ..add('type', type)
          ..add('theme', theme))
        .toString();
  }
}

class UpdateTenantRequestBuilder
    implements Builder<UpdateTenantRequest, UpdateTenantRequestBuilder> {
  _$UpdateTenantRequest? _$v;

  int? _tenantId;
  int? get tenantId => _$this._tenantId;
  set tenantId(int? tenantId) => _$this._tenantId = tenantId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _registeredOffice;
  String? get registeredOffice => _$this._registeredOffice;
  set registeredOffice(String? registeredOffice) =>
      _$this._registeredOffice = registeredOffice;

  bool? _onlineConsultation;
  bool? get onlineConsultation => _$this._onlineConsultation;
  set onlineConsultation(bool? onlineConsultation) =>
      _$this._onlineConsultation = onlineConsultation;

  TypeEnum? _type;
  TypeEnum? get type => _$this._type;
  set type(TypeEnum? type) => _$this._type = type;

  Map<String, dynamic>? _theme;
  Map<String, dynamic>? get theme => _$this._theme;
  set theme(Map<String, dynamic>? theme) => _$this._theme = theme;

  UpdateTenantRequestBuilder() {
    UpdateTenantRequest._defaults(this);
  }

  UpdateTenantRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantId = $v.tenantId;
      _name = $v.name;
      _registeredOffice = $v.registeredOffice;
      _onlineConsultation = $v.onlineConsultation;
      _type = $v.type;
      _theme = $v.theme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTenantRequest other) {
    _$v = other as _$UpdateTenantRequest;
  }

  @override
  void update(void Function(UpdateTenantRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTenantRequest build() => _build();

  _$UpdateTenantRequest _build() {
    final _$result = _$v ??
        _$UpdateTenantRequest._(
          tenantId: BuiltValueNullFieldError.checkNotNull(
              tenantId, r'UpdateTenantRequest', 'tenantId'),
          name: name,
          registeredOffice: registeredOffice,
          onlineConsultation: onlineConsultation,
          type: type,
          theme: theme,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
