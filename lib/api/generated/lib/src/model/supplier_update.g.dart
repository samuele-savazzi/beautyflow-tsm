// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupplierUpdate extends SupplierUpdate {
  @override
  final String object;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? website;
  @override
  final String? notes;
  @override
  final bool? isActive;

  factory _$SupplierUpdate([void Function(SupplierUpdateBuilder)? updates]) =>
      (SupplierUpdateBuilder()..update(updates))._build();

  _$SupplierUpdate._(
      {required this.object,
      this.name,
      this.phone,
      this.email,
      this.website,
      this.notes,
      this.isActive})
      : super._();
  @override
  SupplierUpdate rebuild(void Function(SupplierUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplierUpdateBuilder toBuilder() => SupplierUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplierUpdate &&
        object == other.object &&
        name == other.name &&
        phone == other.phone &&
        email == other.email &&
        website == other.website &&
        notes == other.notes &&
        isActive == other.isActive;
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
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplierUpdate')
          ..add('object', object)
          ..add('name', name)
          ..add('phone', phone)
          ..add('email', email)
          ..add('website', website)
          ..add('notes', notes)
          ..add('isActive', isActive))
        .toString();
  }
}

class SupplierUpdateBuilder
    implements Builder<SupplierUpdate, SupplierUpdateBuilder> {
  _$SupplierUpdate? _$v;

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

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  SupplierUpdateBuilder() {
    SupplierUpdate._defaults(this);
  }

  SupplierUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _object = $v.object;
      _name = $v.name;
      _phone = $v.phone;
      _email = $v.email;
      _website = $v.website;
      _notes = $v.notes;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplierUpdate other) {
    _$v = other as _$SupplierUpdate;
  }

  @override
  void update(void Function(SupplierUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplierUpdate build() => _build();

  _$SupplierUpdate _build() {
    final _$result = _$v ??
        _$SupplierUpdate._(
          object: BuiltValueNullFieldError.checkNotNull(
              object, r'SupplierUpdate', 'object'),
          name: name,
          phone: phone,
          email: email,
          website: website,
          notes: notes,
          isActive: isActive,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
