// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryGroup extends CategoryGroup {
  @override
  final String title;
  @override
  final BuiltList<CategoryValue> values;

  factory _$CategoryGroup([void Function(CategoryGroupBuilder)? updates]) =>
      (CategoryGroupBuilder()..update(updates))._build();

  _$CategoryGroup._({required this.title, required this.values}) : super._();
  @override
  CategoryGroup rebuild(void Function(CategoryGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryGroupBuilder toBuilder() => CategoryGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryGroup &&
        title == other.title &&
        values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryGroup')
          ..add('title', title)
          ..add('values', values))
        .toString();
  }
}

class CategoryGroupBuilder
    implements Builder<CategoryGroup, CategoryGroupBuilder> {
  _$CategoryGroup? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<CategoryValue>? _values;
  ListBuilder<CategoryValue> get values =>
      _$this._values ??= ListBuilder<CategoryValue>();
  set values(ListBuilder<CategoryValue>? values) => _$this._values = values;

  CategoryGroupBuilder() {
    CategoryGroup._defaults(this);
  }

  CategoryGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _values = $v.values.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryGroup other) {
    _$v = other as _$CategoryGroup;
  }

  @override
  void update(void Function(CategoryGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryGroup build() => _build();

  _$CategoryGroup _build() {
    _$CategoryGroup _$result;
    try {
      _$result = _$v ??
          _$CategoryGroup._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'CategoryGroup', 'title'),
            values: values.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CategoryGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
