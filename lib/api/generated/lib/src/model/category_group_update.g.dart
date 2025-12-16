// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_group_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryGroupUpdate extends CategoryGroupUpdate {
  @override
  final int? id;
  @override
  final String name;
  @override
  final BuiltList<CategoryUpdate> categories;

  factory _$CategoryGroupUpdate(
          [void Function(CategoryGroupUpdateBuilder)? updates]) =>
      (CategoryGroupUpdateBuilder()..update(updates))._build();

  _$CategoryGroupUpdate._(
      {this.id, required this.name, required this.categories})
      : super._();
  @override
  CategoryGroupUpdate rebuild(
          void Function(CategoryGroupUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryGroupUpdateBuilder toBuilder() =>
      CategoryGroupUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryGroupUpdate &&
        id == other.id &&
        name == other.name &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryGroupUpdate')
          ..add('id', id)
          ..add('name', name)
          ..add('categories', categories))
        .toString();
  }
}

class CategoryGroupUpdateBuilder
    implements Builder<CategoryGroupUpdate, CategoryGroupUpdateBuilder> {
  _$CategoryGroupUpdate? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<CategoryUpdate>? _categories;
  ListBuilder<CategoryUpdate> get categories =>
      _$this._categories ??= ListBuilder<CategoryUpdate>();
  set categories(ListBuilder<CategoryUpdate>? categories) =>
      _$this._categories = categories;

  CategoryGroupUpdateBuilder() {
    CategoryGroupUpdate._defaults(this);
  }

  CategoryGroupUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _categories = $v.categories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryGroupUpdate other) {
    _$v = other as _$CategoryGroupUpdate;
  }

  @override
  void update(void Function(CategoryGroupUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryGroupUpdate build() => _build();

  _$CategoryGroupUpdate _build() {
    _$CategoryGroupUpdate _$result;
    try {
      _$result = _$v ??
          _$CategoryGroupUpdate._(
            id: id,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CategoryGroupUpdate', 'name'),
            categories: categories.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CategoryGroupUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
