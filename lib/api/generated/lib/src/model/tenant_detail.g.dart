// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantDetail extends TenantDetail {
  @override
  final int id;
  @override
  final String name;
  @override
  final String schemaName;
  @override
  final String domain;
  @override
  final String type;
  @override
  final Date createdOn;
  @override
  final int adminUserId;
  @override
  final BuiltList<String> areasCreated;
  @override
  final String quotaPlan;

  factory _$TenantDetail([void Function(TenantDetailBuilder)? updates]) =>
      (TenantDetailBuilder()..update(updates))._build();

  _$TenantDetail._(
      {required this.id,
      required this.name,
      required this.schemaName,
      required this.domain,
      required this.type,
      required this.createdOn,
      required this.adminUserId,
      required this.areasCreated,
      required this.quotaPlan})
      : super._();
  @override
  TenantDetail rebuild(void Function(TenantDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantDetailBuilder toBuilder() => TenantDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantDetail &&
        id == other.id &&
        name == other.name &&
        schemaName == other.schemaName &&
        domain == other.domain &&
        type == other.type &&
        createdOn == other.createdOn &&
        adminUserId == other.adminUserId &&
        areasCreated == other.areasCreated &&
        quotaPlan == other.quotaPlan;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, schemaName.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, createdOn.hashCode);
    _$hash = $jc(_$hash, adminUserId.hashCode);
    _$hash = $jc(_$hash, areasCreated.hashCode);
    _$hash = $jc(_$hash, quotaPlan.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TenantDetail')
          ..add('id', id)
          ..add('name', name)
          ..add('schemaName', schemaName)
          ..add('domain', domain)
          ..add('type', type)
          ..add('createdOn', createdOn)
          ..add('adminUserId', adminUserId)
          ..add('areasCreated', areasCreated)
          ..add('quotaPlan', quotaPlan))
        .toString();
  }
}

class TenantDetailBuilder
    implements Builder<TenantDetail, TenantDetailBuilder> {
  _$TenantDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _schemaName;
  String? get schemaName => _$this._schemaName;
  set schemaName(String? schemaName) => _$this._schemaName = schemaName;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Date? _createdOn;
  Date? get createdOn => _$this._createdOn;
  set createdOn(Date? createdOn) => _$this._createdOn = createdOn;

  int? _adminUserId;
  int? get adminUserId => _$this._adminUserId;
  set adminUserId(int? adminUserId) => _$this._adminUserId = adminUserId;

  ListBuilder<String>? _areasCreated;
  ListBuilder<String> get areasCreated =>
      _$this._areasCreated ??= ListBuilder<String>();
  set areasCreated(ListBuilder<String>? areasCreated) =>
      _$this._areasCreated = areasCreated;

  String? _quotaPlan;
  String? get quotaPlan => _$this._quotaPlan;
  set quotaPlan(String? quotaPlan) => _$this._quotaPlan = quotaPlan;

  TenantDetailBuilder() {
    TenantDetail._defaults(this);
  }

  TenantDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _schemaName = $v.schemaName;
      _domain = $v.domain;
      _type = $v.type;
      _createdOn = $v.createdOn;
      _adminUserId = $v.adminUserId;
      _areasCreated = $v.areasCreated.toBuilder();
      _quotaPlan = $v.quotaPlan;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TenantDetail other) {
    _$v = other as _$TenantDetail;
  }

  @override
  void update(void Function(TenantDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantDetail build() => _build();

  _$TenantDetail _build() {
    _$TenantDetail _$result;
    try {
      _$result = _$v ??
          _$TenantDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TenantDetail', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'TenantDetail', 'name'),
            schemaName: BuiltValueNullFieldError.checkNotNull(
                schemaName, r'TenantDetail', 'schemaName'),
            domain: BuiltValueNullFieldError.checkNotNull(
                domain, r'TenantDetail', 'domain'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'TenantDetail', 'type'),
            createdOn: BuiltValueNullFieldError.checkNotNull(
                createdOn, r'TenantDetail', 'createdOn'),
            adminUserId: BuiltValueNullFieldError.checkNotNull(
                adminUserId, r'TenantDetail', 'adminUserId'),
            areasCreated: areasCreated.build(),
            quotaPlan: BuiltValueNullFieldError.checkNotNull(
                quotaPlan, r'TenantDetail', 'quotaPlan'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'areasCreated';
        areasCreated.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TenantDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
