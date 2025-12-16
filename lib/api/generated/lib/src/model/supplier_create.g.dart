// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupplierCreate extends SupplierCreate {
  @override
  final String object;
  @override
  final String name;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? website;
  @override
  final String? notes;

  factory _$SupplierCreate([void Function(SupplierCreateBuilder)? updates]) =>
      (SupplierCreateBuilder()..update(updates))._build();

  _$SupplierCreate._(
      {required this.object,
      required this.name,
      this.phone,
      this.email,
      this.website,
      this.notes})
      : super._();
  @override
  SupplierCreate rebuild(void Function(SupplierCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplierCreateBuilder toBuilder() => SupplierCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplierCreate &&
        object == other.object &&
        name == other.name &&
        phone == other.phone &&
        email == other.email &&
        website == other.website &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, object.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, website.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplierCreate')
          ..add('object', object)
          ..add('name', name)
          ..add('phone', phone)
          ..add('email', email)
          ..add('website', website)
          ..add('notes', notes))
        .toString();
  }
}

class SupplierCreateBuilder
    implements Builder<SupplierCreate, SupplierCreateBuilder> {
  _$SupplierCreate? _$v;

  String? _object;
  String? get object => _$this._object;
  set object(String? object) => _$this._object = object;

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

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  SupplierCreateBuilder() {
    SupplierCreate._defaults(this);
  }

  SupplierCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _object = $v.object;
      _name = $v.name;
      _phone = $v.phone;
      _email = $v.email;
      _website = $v.website;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplierCreate other) {
    _$v = other as _$SupplierCreate;
  }

  @override
  void update(void Function(SupplierCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplierCreate build() => _build();

  _$SupplierCreate _build() {
    final _$result = _$v ??
        _$SupplierCreate._(
          object: BuiltValueNullFieldError.checkNotNull(
              object, r'SupplierCreate', 'object'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'SupplierCreate', 'name'),
          phone: phone,
          email: email,
          website: website,
          notes: notes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
