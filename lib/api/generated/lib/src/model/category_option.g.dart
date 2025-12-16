// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_option.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryOption extends CategoryOption {
  @override
  final int id;
  @override
  final String name;
  @override
  final int? time;
  @override
  final String color;

  factory _$CategoryOption([void Function(CategoryOptionBuilder)? updates]) =>
      (CategoryOptionBuilder()..update(updates))._build();

  _$CategoryOption._(
      {required this.id, required this.name, this.time, required this.color})
      : super._();
  @override
  CategoryOption rebuild(void Function(CategoryOptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryOptionBuilder toBuilder() => CategoryOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryOption &&
        id == other.id &&
        name == other.name &&
        time == other.time &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryOption')
          ..add('id', id)
          ..add('name', name)
          ..add('time', time)
          ..add('color', color))
        .toString();
  }
}

class CategoryOptionBuilder
    implements Builder<CategoryOption, CategoryOptionBuilder> {
  _$CategoryOption? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  CategoryOptionBuilder() {
    CategoryOption._defaults(this);
  }

  CategoryOptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _time = $v.time;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryOption other) {
    _$v = other as _$CategoryOption;
  }

  @override
  void update(void Function(CategoryOptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryOption build() => _build();

  _$CategoryOption _build() {
    final _$result = _$v ??
        _$CategoryOption._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CategoryOption', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CategoryOption', 'name'),
          time: time,
          color: BuiltValueNullFieldError.checkNotNull(
              color, r'CategoryOption', 'color'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
