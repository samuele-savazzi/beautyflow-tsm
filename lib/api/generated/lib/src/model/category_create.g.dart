// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryCreate extends CategoryCreate {
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

  factory _$CategoryCreate([void Function(CategoryCreateBuilder)? updates]) =>
      (CategoryCreateBuilder()..update(updates))._build();

  _$CategoryCreate._(
      {required this.name,
      required this.color,
      this.value,
      this.attachment,
      this.overprice})
      : super._();
  @override
  CategoryCreate rebuild(void Function(CategoryCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryCreateBuilder toBuilder() => CategoryCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryCreate &&
        name == other.name &&
        color == other.color &&
        value == other.value &&
        attachment == other.attachment &&
        overprice == other.overprice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    return (newBuiltValueToStringHelper(r'CategoryCreate')
          ..add('name', name)
          ..add('color', color)
          ..add('value', value)
          ..add('attachment', attachment)
          ..add('overprice', overprice))
        .toString();
  }
}

class CategoryCreateBuilder
    implements Builder<CategoryCreate, CategoryCreateBuilder> {
  _$CategoryCreate? _$v;

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

  CategoryCreateBuilder() {
    CategoryCreate._defaults(this);
  }

  CategoryCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(CategoryCreate other) {
    _$v = other as _$CategoryCreate;
  }

  @override
  void update(void Function(CategoryCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryCreate build() => _build();

  _$CategoryCreate _build() {
    final _$result = _$v ??
        _$CategoryCreate._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CategoryCreate', 'name'),
          color: BuiltValueNullFieldError.checkNotNull(
              color, r'CategoryCreate', 'color'),
          value: value,
          attachment: attachment,
          overprice: overprice,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
