// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupplierList extends SupplierList {
  @override
  final int id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String website;
  @override
  final String contactInfo;
  @override
  final BuiltMap<String, Map<String, dynamic>?> productsCount;
  @override
  final bool isActive;

  factory _$SupplierList([void Function(SupplierListBuilder)? updates]) =>
      (SupplierListBuilder()..update(updates))._build();

  _$SupplierList._(
      {required this.id,
      required this.name,
      required this.phone,
      required this.email,
      required this.website,
      required this.contactInfo,
      required this.productsCount,
      required this.isActive})
      : super._();
  @override
  SupplierList rebuild(void Function(SupplierListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplierListBuilder toBuilder() => SupplierListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplierList &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        email == other.email &&
        website == other.website &&
        contactInfo == other.contactInfo &&
        productsCount == other.productsCount &&
        isActive == other.isActive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, website.hashCode);
    _$hash = $jc(_$hash, contactInfo.hashCode);
    _$hash = $jc(_$hash, productsCount.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplierList')
          ..add('id', id)
          ..add('name', name)
          ..add('phone', phone)
          ..add('email', email)
          ..add('website', website)
          ..add('contactInfo', contactInfo)
          ..add('productsCount', productsCount)
          ..add('isActive', isActive))
        .toString();
  }
}

class SupplierListBuilder
    implements Builder<SupplierList, SupplierListBuilder> {
  _$SupplierList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  String? _contactInfo;
  String? get contactInfo => _$this._contactInfo;
  set contactInfo(String? contactInfo) => _$this._contactInfo = contactInfo;

  MapBuilder<String, Map<String, dynamic>?>? _productsCount;
  MapBuilder<String, Map<String, dynamic>?> get productsCount =>
      _$this._productsCount ??= MapBuilder<String, Map<String, dynamic>?>();
  set productsCount(MapBuilder<String, Map<String, dynamic>?>? productsCount) =>
      _$this._productsCount = productsCount;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  SupplierListBuilder() {
    SupplierList._defaults(this);
  }

  SupplierListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _phone = $v.phone;
      _email = $v.email;
      _website = $v.website;
      _contactInfo = $v.contactInfo;
      _productsCount = $v.productsCount.toBuilder();
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplierList other) {
    _$v = other as _$SupplierList;
  }

  @override
  void update(void Function(SupplierListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplierList build() => _build();

  _$SupplierList _build() {
    _$SupplierList _$result;
    try {
      _$result = _$v ??
          _$SupplierList._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'SupplierList', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'SupplierList', 'name'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'SupplierList', 'phone'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'SupplierList', 'email'),
            website: BuiltValueNullFieldError.checkNotNull(
                website, r'SupplierList', 'website'),
            contactInfo: BuiltValueNullFieldError.checkNotNull(
                contactInfo, r'SupplierList', 'contactInfo'),
            productsCount: productsCount.build(),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'SupplierList', 'isActive'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'productsCount';
        productsCount.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SupplierList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
