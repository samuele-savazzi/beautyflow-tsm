// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryUpdate extends CategoryUpdate {
  @override
  final int? id;
  @override
  final String name;
  @override
  final String color;
  @override
  final int? value;
  @override
  final String? attachment;
  @override
  final double? overprice;

  factory _$CategoryUpdate([void Function(CategoryUpdateBuilder)? updates]) =>
      (CategoryUpdateBuilder()..update(updates))._build();

  _$CategoryUpdate._(
      {this.id,
      required this.name,
      required this.color,
      this.value,
      this.attachment,
      this.overprice})
      : super._();
  @override
  CategoryUpdate rebuild(void Function(CategoryUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryUpdateBuilder toBuilder() => CategoryUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryUpdate &&
        id == other.id &&
        name == other.name &&
        color == other.color &&
        value == other.value &&
        attachment == other.attachment &&
        overprice == other.overprice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, attachment.hashCode);
    _$hash = $jc(_$hash, overprice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryUpdate')
          ..add('id', id)
          ..add('name', name)
          ..add('color', color)
          ..add('value', value)
          ..add('attachment', attachment)
          ..add('overprice', overprice))
        .toString();
  }
}

class CategoryUpdateBuilder
    implements Builder<CategoryUpdate, CategoryUpdateBuilder> {
  _$CategoryUpdate? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  String? _attachment;
  String? get attachment => _$this._attachment;
  set attachment(String? attachment) => _$this._attachment = attachment;

  double? _overprice;
  double? get overprice => _$this._overprice;
  set overprice(double? overprice) => _$this._overprice = overprice;

  CategoryUpdateBuilder() {
    CategoryUpdate._defaults(this);
  }

  CategoryUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _color = $v.color;
      _value = $v.value;
      _attachment = $v.attachment;
      _overprice = $v.overprice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryUpdate other) {
    _$v = other as _$CategoryUpdate;
  }

  @override
  void update(void Function(CategoryUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryUpdate build() => _build();

  _$CategoryUpdate _build() {
    final _$result = _$v ??
        _$CategoryUpdate._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CategoryUpdate', 'name'),
          color: BuiltValueNullFieldError.checkNotNull(
              color, r'CategoryUpdate', 'color'),
          value: value,
          attachment: attachment,
          overprice: overprice,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
