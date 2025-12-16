// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_analytics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryAnalytics extends CategoryAnalytics {
  @override
  final BuiltList<CategoryAnalyticsItem> categories;
  @override
  final CategoryAnalyticsTotals totals;

  factory _$CategoryAnalytics(
          [void Function(CategoryAnalyticsBuilder)? updates]) =>
      (CategoryAnalyticsBuilder()..update(updates))._build();

  _$CategoryAnalytics._({required this.categories, required this.totals})
      : super._();
  @override
  CategoryAnalytics rebuild(void Function(CategoryAnalyticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryAnalyticsBuilder toBuilder() =>
      CategoryAnalyticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryAnalytics &&
        categories == other.categories &&
        totals == other.totals;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jc(_$hash, totals.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryAnalytics')
          ..add('categories', categories)
          ..add('totals', totals))
        .toString();
  }
}

class CategoryAnalyticsBuilder
    implements Builder<CategoryAnalytics, CategoryAnalyticsBuilder> {
  _$CategoryAnalytics? _$v;

  ListBuilder<CategoryAnalyticsItem>? _categories;
  ListBuilder<CategoryAnalyticsItem> get categories =>
      _$this._categories ??= ListBuilder<CategoryAnalyticsItem>();
  set categories(ListBuilder<CategoryAnalyticsItem>? categories) =>
      _$this._categories = categories;

  CategoryAnalyticsTotalsBuilder? _totals;
  CategoryAnalyticsTotalsBuilder get totals =>
      _$this._totals ??= CategoryAnalyticsTotalsBuilder();
  set totals(CategoryAnalyticsTotalsBuilder? totals) => _$this._totals = totals;

  CategoryAnalyticsBuilder() {
    CategoryAnalytics._defaults(this);
  }

  CategoryAnalyticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categories = $v.categories.toBuilder();
      _totals = $v.totals.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryAnalytics other) {
    _$v = other as _$CategoryAnalytics;
  }

  @override
  void update(void Function(CategoryAnalyticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryAnalytics build() => _build();

  _$CategoryAnalytics _build() {
    _$CategoryAnalytics _$result;
    try {
      _$result = _$v ??
          _$CategoryAnalytics._(
            categories: categories.build(),
            totals: totals.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
        _$failedField = 'totals';
        totals.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CategoryAnalytics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
