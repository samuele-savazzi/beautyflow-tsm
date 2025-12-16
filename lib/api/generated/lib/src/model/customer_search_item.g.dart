// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_search_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerSearchItem extends CustomerSearchItem {
  @override
  final int id;
  @override
  final String name;

  factory _$CustomerSearchItem(
          [void Function(CustomerSearchItemBuilder)? updates]) =>
      (CustomerSearchItemBuilder()..update(updates))._build();

  _$CustomerSearchItem._({required this.id, required this.name}) : super._();
  @override
  CustomerSearchItem rebuild(
          void Function(CustomerSearchItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerSearchItemBuilder toBuilder() =>
      CustomerSearchItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerSearchItem && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerSearchItem')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class CustomerSearchItemBuilder
    implements Builder<CustomerSearchItem, CustomerSearchItemBuilder> {
  _$CustomerSearchItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CustomerSearchItemBuilder() {
    CustomerSearchItem._defaults(this);
  }

  CustomerSearchItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerSearchItem other) {
    _$v = other as _$CustomerSearchItem;
  }

  @override
  void update(void Function(CustomerSearchItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerSearchItem build() => _build();

  _$CustomerSearchItem _build() {
    final _$result = _$v ??
        _$CustomerSearchItem._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CustomerSearchItem', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CustomerSearchItem', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
