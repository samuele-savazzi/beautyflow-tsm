// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tenant_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTenantRequest extends CreateTenantRequest {
  @override
  final String name;
  @override
  final String domain;
  @override
  final TypeEnum type;
  @override
  final String? registeredOffice;
  @override
  final String adminEmail;
  @override
  final String adminPhone;
  @override
  final String adminFirstName;
  @override
  final String adminLastName;
  @override
  final String quotaTypeCode;
  @override
  final CreateTenantRequestBillingTypeEnum? billingType;
  @override
  final int? billingDuration;
  @override
  final BuiltList<AreaConfig> areas;
  @override
  final Map<String, dynamic>? theme;
  @override
  final String? favicon;
  @override
  final String? logo;
  @override
  final String? darkLogo;

  factory _$CreateTenantRequest(
          [void Function(CreateTenantRequestBuilder)? updates]) =>
      (CreateTenantRequestBuilder()..update(updates))._build();

  _$CreateTenantRequest._(
      {required this.name,
      required this.domain,
      required this.type,
      this.registeredOffice,
      required this.adminEmail,
      required this.adminPhone,
      required this.adminFirstName,
      required this.adminLastName,
      required this.quotaTypeCode,
      this.billingType,
      this.billingDuration,
      required this.areas,
      this.theme,
      this.favicon,
      this.logo,
      this.darkLogo})
      : super._();
  @override
  CreateTenantRequest rebuild(
          void Function(CreateTenantRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTenantRequestBuilder toBuilder() =>
      CreateTenantRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTenantRequest &&
        name == other.name &&
        domain == other.domain &&
        type == other.type &&
        registeredOffice == other.registeredOffice &&
        adminEmail == other.adminEmail &&
        adminPhone == other.adminPhone &&
        adminFirstName == other.adminFirstName &&
        adminLastName == other.adminLastName &&
        quotaTypeCode == other.quotaTypeCode &&
        billingType == other.billingType &&
        billingDuration == other.billingDuration &&
        areas == other.areas &&
        theme == other.theme &&
        favicon == other.favicon &&
        logo == other.logo &&
        darkLogo == other.darkLogo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, registeredOffice.hashCode);
    _$hash = $jc(_$hash, adminEmail.hashCode);
    _$hash = $jc(_$hash, adminPhone.hashCode);
    _$hash = $jc(_$hash, adminFirstName.hashCode);
    _$hash = $jc(_$hash, adminLastName.hashCode);
    _$hash = $jc(_$hash, quotaTypeCode.hashCode);
    _$hash = $jc(_$hash, billingType.hashCode);
    _$hash = $jc(_$hash, billingDuration.hashCode);
    _$hash = $jc(_$hash, areas.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, favicon.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, darkLogo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTenantRequest')
          ..add('name', name)
          ..add('domain', domain)
          ..add('type', type)
          ..add('registeredOffice', registeredOffice)
          ..add('adminEmail', adminEmail)
          ..add('adminPhone', adminPhone)
          ..add('adminFirstName', adminFirstName)
          ..add('adminLastName', adminLastName)
          ..add('quotaTypeCode', quotaTypeCode)
          ..add('billingType', billingType)
          ..add('billingDuration', billingDuration)
          ..add('areas', areas)
          ..add('theme', theme)
          ..add('favicon', favicon)
          ..add('logo', logo)
          ..add('darkLogo', darkLogo))
        .toString();
  }
}

class CreateTenantRequestBuilder
    implements Builder<CreateTenantRequest, CreateTenantRequestBuilder> {
  _$CreateTenantRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  TypeEnum? _type;
  TypeEnum? get type => _$this._type;
  set type(TypeEnum? type) => _$this._type = type;

  String? _registeredOffice;
  String? get registeredOffice => _$this._registeredOffice;
  set registeredOffice(String? registeredOffice) =>
      _$this._registeredOffice = registeredOffice;

  String? _adminEmail;
  String? get adminEmail => _$this._adminEmail;
  set adminEmail(String? adminEmail) => _$this._adminEmail = adminEmail;

  String? _adminPhone;
  String? get adminPhone => _$this._adminPhone;
  set adminPhone(String? adminPhone) => _$this._adminPhone = adminPhone;

  String? _adminFirstName;
  String? get adminFirstName => _$this._adminFirstName;
  set adminFirstName(String? adminFirstName) =>
      _$this._adminFirstName = adminFirstName;

  String? _adminLastName;
  String? get adminLastName => _$this._adminLastName;
  set adminLastName(String? adminLastName) =>
      _$this._adminLastName = adminLastName;

  String? _quotaTypeCode;
  String? get quotaTypeCode => _$this._quotaTypeCode;
  set quotaTypeCode(String? quotaTypeCode) =>
      _$this._quotaTypeCode = quotaTypeCode;

  CreateTenantRequestBillingTypeEnum? _billingType;
  CreateTenantRequestBillingTypeEnum? get billingType => _$this._billingType;
  set billingType(CreateTenantRequestBillingTypeEnum? billingType) =>
      _$this._billingType = billingType;

  int? _billingDuration;
  int? get billingDuration => _$this._billingDuration;
  set billingDuration(int? billingDuration) =>
      _$this._billingDuration = billingDuration;

  ListBuilder<AreaConfig>? _areas;
  ListBuilder<AreaConfig> get areas =>
      _$this._areas ??= ListBuilder<AreaConfig>();
  set areas(ListBuilder<AreaConfig>? areas) => _$this._areas = areas;

  Map<String, dynamic>? _theme;
  Map<String, dynamic>? get theme => _$this._theme;
  set theme(Map<String, dynamic>? theme) => _$this._theme = theme;

  String? _favicon;
  String? get favicon => _$this._favicon;
  set favicon(String? favicon) => _$this._favicon = favicon;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _darkLogo;
  String? get darkLogo => _$this._darkLogo;
  set darkLogo(String? darkLogo) => _$this._darkLogo = darkLogo;

  CreateTenantRequestBuilder() {
    CreateTenantRequest._defaults(this);
  }

  CreateTenantRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _domain = $v.domain;
      _type = $v.type;
      _registeredOffice = $v.registeredOffice;
      _adminEmail = $v.adminEmail;
      _adminPhone = $v.adminPhone;
      _adminFirstName = $v.adminFirstName;
      _adminLastName = $v.adminLastName;
      _quotaTypeCode = $v.quotaTypeCode;
      _billingType = $v.billingType;
      _billingDuration = $v.billingDuration;
      _areas = $v.areas.toBuilder();
      _theme = $v.theme;
      _favicon = $v.favicon;
      _logo = $v.logo;
      _darkLogo = $v.darkLogo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTenantRequest other) {
    _$v = other as _$CreateTenantRequest;
  }

  @override
  void update(void Function(CreateTenantRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTenantRequest build() => _build();

  _$CreateTenantRequest _build() {
    _$CreateTenantRequest _$result;
    try {
      _$result = _$v ??
          _$CreateTenantRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateTenantRequest', 'name'),
            domain: BuiltValueNullFieldError.checkNotNull(
                domain, r'CreateTenantRequest', 'domain'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'CreateTenantRequest', 'type'),
            registeredOffice: registeredOffice,
            adminEmail: BuiltValueNullFieldError.checkNotNull(
                adminEmail, r'CreateTenantRequest', 'adminEmail'),
            adminPhone: BuiltValueNullFieldError.checkNotNull(
                adminPhone, r'CreateTenantRequest', 'adminPhone'),
            adminFirstName: BuiltValueNullFieldError.checkNotNull(
                adminFirstName, r'CreateTenantRequest', 'adminFirstName'),
            adminLastName: BuiltValueNullFieldError.checkNotNull(
                adminLastName, r'CreateTenantRequest', 'adminLastName'),
            quotaTypeCode: BuiltValueNullFieldError.checkNotNull(
                quotaTypeCode, r'CreateTenantRequest', 'quotaTypeCode'),
            billingType: billingType,
            billingDuration: billingDuration,
            areas: areas.build(),
            theme: theme,
            favicon: favicon,
            logo: logo,
            darkLogo: darkLogo,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'areas';
        areas.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateTenantRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
