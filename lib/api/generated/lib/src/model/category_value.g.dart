// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryValue extends CategoryValue {
  @override
  final int id;
  @override
  final String name;
  @override
  final String overprice;
  @override
  final String? image;
  @override
  final int? time;

  factory _$CategoryValue([void Function(CategoryValueBuilder)? updates]) =>
      (CategoryValueBuilder()..update(updates))._build();

  _$CategoryValue._(
      {required this.id,
      required this.name,
      required this.overprice,
      this.image,
      this.time})
      : super._();
  @override
  CategoryValue rebuild(void Function(CategoryValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryValueBuilder toBuilder() => CategoryValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryValue &&
        id == other.id &&
        name == other.name &&
        overprice == other.overprice &&
        image == other.image &&
        time == other.time;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, overprice.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryValue')
          ..add('id', id)
          ..add('name', name)
          ..add('overprice', overprice)
          ..add('image', image)
          ..add('time', time))
        .toString();
  }
}

class CategoryValueBuilder
    implements Builder<CategoryValue, CategoryValueBuilder> {
  _$CategoryValue? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _overprice;
  String? get overprice => _$this._overprice;
  set overprice(String? overprice) => _$this._overprice = overprice;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  CategoryValueBuilder() {
    CategoryValue._defaults(this);
  }

  CategoryValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _overprice = $v.overprice;
      _image = $v.image;
      _time = $v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryValue other) {
    _$v = other as _$CategoryValue;
  }

  @override
  void update(void Function(CategoryValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryValue build() => _build();

  _$CategoryValue _build() {
    final _$result = _$v ??
        _$CategoryValue._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'CategoryValue', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CategoryValue', 'name'),
          overprice: BuiltValueNullFieldError.checkNotNull(
              overprice, r'CategoryValue', 'overprice'),
          image: image,
          time: time,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
