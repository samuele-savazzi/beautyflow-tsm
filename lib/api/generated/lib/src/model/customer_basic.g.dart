// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_basic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerBasic extends CustomerBasic {
  @override
  final int id;
  @override
  final String fullName;
  @override
  final String email;

  factory _$CustomerBasic([void Function(CustomerBasicBuilder)? updates]) =>
      (CustomerBasicBuilder()..update(updates))._build();

  _$CustomerBasic._(
      {required this.id, required this.fullName, required this.email})
      : super._();
  @override
  CustomerBasic rebuild(void Function(CustomerBasicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerBasicBuilder toBuilder() => CustomerBasicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerBasic &&
        id == other.id &&
        fullName == other.fullName &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerBasic')
          ..add('id', id)
          ..add('fullName', fullName)
          ..add('email', email))
        .toString();
  }
}

class CustomerBasicBuilder
    implements Builder<CustomerBasic, CustomerBasicBuilder> {
  _$CustomerBasic? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  CustomerBasicBuilder() {
    CustomerBasic._defaults(this);
  }

  CustomerBasicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fullName = $v.fullName;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerBasic other) {
    _$v = other as _$CustomerBasic;
  }

  @override
  void update(void Function(CustomerBasicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerBasic build() => _build();

  _$CustomerBasic _build() {
    final _$result = _$v ??
        _$CustomerBasic._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'CustomerBasic', 'id'),
          fullName: BuiltValueNullFieldError.checkNotNull(
              fullName, r'CustomerBasic', 'fullName'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'CustomerBasic', 'email'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
