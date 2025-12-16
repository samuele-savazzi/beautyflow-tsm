// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantInfo extends TenantInfo {
  @override
  final int id;
  @override
  final String name;
  @override
  final String schemaName;
  @override
  final String type;
  @override
  final Date createdOn;
  @override
  final Date paidUntil;
  @override
  final String registeredOffice;
  @override
  final bool onlineConsultation;
  @override
  final Map<String, dynamic>? theme;
  @override
  final String? faviconUrl;
  @override
  final String? logoUrl;
  @override
  final String? darkLogoUrl;
  @override
  final bool setupCompleted;
  @override
  final Map<String, dynamic>? configurationStatus;
  @override
  final String domain;

  factory _$TenantInfo([void Function(TenantInfoBuilder)? updates]) =>
      (TenantInfoBuilder()..update(updates))._build();

  _$TenantInfo._(
      {required this.id,
      required this.name,
      required this.schemaName,
      required this.type,
      required this.createdOn,
      required this.paidUntil,
      required this.registeredOffice,
      required this.onlineConsultation,
      this.theme,
      this.faviconUrl,
      this.logoUrl,
      this.darkLogoUrl,
      required this.setupCompleted,
      this.configurationStatus,
      required this.domain})
      : super._();
  @override
  TenantInfo rebuild(void Function(TenantInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantInfoBuilder toBuilder() => TenantInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantInfo &&
        id == other.id &&
        name == other.name &&
        schemaName == other.schemaName &&
        type == other.type &&
        createdOn == other.createdOn &&
        paidUntil == other.paidUntil &&
        registeredOffice == other.registeredOffice &&
        onlineConsultation == other.onlineConsultation &&
        theme == other.theme &&
        faviconUrl == other.faviconUrl &&
        logoUrl == other.logoUrl &&
        darkLogoUrl == other.darkLogoUrl &&
        setupCompleted == other.setupCompleted &&
        configurationStatus == other.configurationStatus &&
        domain == other.domain;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, schemaName.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, paidUntil.hashCode);
    _$hash = $jc(_$hash, registeredOffice.hashCode);
    _$hash = $jc(_$hash, onlineConsultation.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, faviconUrl.hashCode);
    _$hash = $jc(_$hash, logoUrl.hashCode);
    _$hash = $jc(_$hash, darkLogoUrl.hashCode);
    _$hash = $jc(_$hash, setupCompleted.hashCode);
    _$hash = $jc(_$hash, configurationStatus.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TenantInfo')
          ..add('id', id)
          ..add('name', name)
          ..add('schemaName', schemaName)
          ..add('type', type)
          ..add('createdOn', createdOn)
          ..add('paidUntil', paidUntil)
          ..add('registeredOffice', registeredOffice)
          ..add('onlineConsultation', onlineConsultation)
          ..add('theme', theme)
          ..add('faviconUrl', faviconUrl)
          ..add('logoUrl', logoUrl)
          ..add('darkLogoUrl', darkLogoUrl)
          ..add('setupCompleted', setupCompleted)
          ..add('configurationStatus', configurationStatus)
          ..add('domain', domain))
        .toString();
  }
}

class TenantInfoBuilder implements Builder<TenantInfo, TenantInfoBuilder> {
  _$TenantInfo? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _schemaName;
  String? get schemaName => _$this._schemaName;
  set schemaName(String? schemaName) => _$this._schemaName = schemaName;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Date? _createdOn;
  Date? get createdOn => _$this._createdOn;
  set createdOn(Date? createdOn) => _$this._createdOn = createdOn;

  Date? _paidUntil;
  Date? get paidUntil => _$this._paidUntil;
  set paidUntil(Date? paidUntil) => _$this._paidUntil = paidUntil;

  String? _registeredOffice;
  String? get registeredOffice => _$this._registeredOffice;
  set registeredOffice(String? registeredOffice) =>
      _$this._registeredOffice = registeredOffice;

  bool? _onlineConsultation;
  bool? get onlineConsultation => _$this._onlineConsultation;
  set onlineConsultation(bool? onlineConsultation) =>
      _$this._onlineConsultation = onlineConsultation;

  Map<String, dynamic>? _theme;
  Map<String, dynamic>? get theme => _$this._theme;
  set theme(Map<String, dynamic>? theme) => _$this._theme = theme;

  String? _faviconUrl;
  String? get faviconUrl => _$this._faviconUrl;
  set faviconUrl(String? faviconUrl) => _$this._faviconUrl = faviconUrl;

  String? _logoUrl;
  String? get logoUrl => _$this._logoUrl;
  set logoUrl(String? logoUrl) => _$this._logoUrl = logoUrl;

  String? _darkLogoUrl;
  String? get darkLogoUrl => _$this._darkLogoUrl;
  set darkLogoUrl(String? darkLogoUrl) => _$this._darkLogoUrl = darkLogoUrl;

  bool? _setupCompleted;
  bool? get setupCompleted => _$this._setupCompleted;
  set setupCompleted(bool? setupCompleted) =>
      _$this._setupCompleted = setupCompleted;

  Map<String, dynamic>? _configurationStatus;
  Map<String, dynamic>? get configurationStatus => _$this._configurationStatus;
  set configurationStatus(Map<String, dynamic>? configurationStatus) =>
      _$this._configurationStatus = configurationStatus;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  TenantInfoBuilder() {
    TenantInfo._defaults(this);
  }

  TenantInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _schemaName = $v.schemaName;
      _type = $v.type;
      _createdOn = $v.createdOn;
      _paidUntil = $v.paidUntil;
      _registeredOffice = $v.registeredOffice;
      _onlineConsultation = $v.onlineConsultation;
      _theme = $v.theme;
      _faviconUrl = $v.faviconUrl;
      _logoUrl = $v.logoUrl;
      _darkLogoUrl = $v.darkLogoUrl;
      _setupCompleted = $v.setupCompleted;
      _configurationStatus = $v.configurationStatus;
      _domain = $v.domain;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TenantInfo other) {
    _$v = other as _$TenantInfo;
  }

  @override
  void update(void Function(TenantInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantInfo build() => _build();

  _$TenantInfo _build() {
    final _$result = _$v ??
        _$TenantInfo._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'TenantInfo', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'TenantInfo', 'name'),
          schemaName: BuiltValueNullFieldError.checkNotNull(
              schemaName, r'TenantInfo', 'schemaName'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'TenantInfo', 'type'),
          createdOn: BuiltValueNullFieldError.checkNotNull(
              createdOn, r'TenantInfo', 'createdOn'),
          paidUntil: BuiltValueNullFieldError.checkNotNull(
              paidUntil, r'TenantInfo', 'paidUntil'),
          registeredOffice: BuiltValueNullFieldError.checkNotNull(
              registeredOffice, r'TenantInfo', 'registeredOffice'),
          onlineConsultation: BuiltValueNullFieldError.checkNotNull(
              onlineConsultation, r'TenantInfo', 'onlineConsultation'),
          theme: theme,
          faviconUrl: faviconUrl,
          logoUrl: logoUrl,
          darkLogoUrl: darkLogoUrl,
          setupCompleted: BuiltValueNullFieldError.checkNotNull(
              setupCompleted, r'TenantInfo', 'setupCompleted'),
          configurationStatus: configurationStatus,
          domain: BuiltValueNullFieldError.checkNotNull(
              domain, r'TenantInfo', 'domain'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
