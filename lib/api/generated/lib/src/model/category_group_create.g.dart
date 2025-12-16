// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_group_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryGroupCreate extends CategoryGroupCreate {
  @override
  final String name;
  @override
  final BuiltList<CategoryCreate> categories;

  factory _$CategoryGroupCreate(
          [void Function(CategoryGroupCreateBuilder)? updates]) =>
      (CategoryGroupCreateBuilder()..update(updates))._build();

  _$CategoryGroupCreate._({required this.name, required this.categories})
      : super._();
  @override
  CategoryGroupCreate rebuild(
          void Function(CategoryGroupCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryGroupCreateBuilder toBuilder() =>
      CategoryGroupCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryGroupCreate &&
        name == other.name &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryGroupCreate')
          ..add('name', name)
          ..add('categories', categories))
        .toString();
  }
}

class CategoryGroupCreateBuilder
    implements Builder<CategoryGroupCreate, CategoryGroupCreateBuilder> {
  _$CategoryGroupCreate? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<CategoryCreate>? _categories;
  ListBuilder<CategoryCreate> get categories =>
      _$this._categories ??= ListBuilder<CategoryCreate>();
  set categories(ListBuilder<CategoryCreate>? categories) =>
      _$this._categories = categories;

  CategoryGroupCreateBuilder() {
    CategoryGroupCreate._defaults(this);
  }

  CategoryGroupCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _categories = $v.categories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryGroupCreate other) {
    _$v = other as _$CategoryGroupCreate;
  }

  @override
  void update(void Function(CategoryGroupCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryGroupCreate build() => _build();

  _$CategoryGroupCreate _build() {
    _$CategoryGroupCreate _$result;
    try {
      _$result = _$v ??
          _$CategoryGroupCreate._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CategoryGroupCreate', 'name'),
            categories: categories.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CategoryGroupCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
