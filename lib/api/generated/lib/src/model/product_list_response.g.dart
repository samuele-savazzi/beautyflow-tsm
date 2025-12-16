// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductListResponse extends ProductListResponse {
  @override
  final bool success;
  @override
  final int count;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int totalPages;
  @override
  final bool hasNext;
  @override
  final bool hasPrevious;
  @override
  final BuiltList<ProductList> results;
  @override
  final CategoryAnalytics? analytics;

  factory _$ProductListResponse(
          [void Function(ProductListResponseBuilder)? updates]) =>
      (ProductListResponseBuilder()..update(updates))._build();

  _$ProductListResponse._(
      {required this.success,
      required this.count,
      required this.page,
      required this.pageSize,
      required this.totalPages,
      required this.hasNext,
      required this.hasPrevious,
      required this.results,
      this.analytics})
      : super._();
  @override
  ProductListResponse rebuild(
          void Function(ProductListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductListResponseBuilder toBuilder() =>
      ProductListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductListResponse &&
        success == other.success &&
        count == other.count &&
        page == other.page &&
        pageSize == other.pageSize &&
        totalPages == other.totalPages &&
        hasNext == other.hasNext &&
        hasPrevious == other.hasPrevious &&
        results == other.results &&
        analytics == other.analytics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, hasNext.hashCode);
    _$hash = $jc(_$hash, hasPrevious.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, analytics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductListResponse')
          ..add('success', success)
          ..add('count', count)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('totalPages', totalPages)
          ..add('hasNext', hasNext)
          ..add('hasPrevious', hasPrevious)
          ..add('results', results)
          ..add('analytics', analytics))
        .toString();
  }
}

class ProductListResponseBuilder
    implements Builder<ProductListResponse, ProductListResponseBuilder> {
  _$ProductListResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  bool? _hasNext;
  bool? get hasNext => _$this._hasNext;
  set hasNext(bool? hasNext) => _$this._hasNext = hasNext;

  bool? _hasPrevious;
  bool? get hasPrevious => _$this._hasPrevious;
  set hasPrevious(bool? hasPrevious) => _$this._hasPrevious = hasPrevious;

  ListBuilder<ProductList>? _results;
  ListBuilder<ProductList> get results =>
      _$this._results ??= ListBuilder<ProductList>();
  set results(ListBuilder<ProductList>? results) => _$this._results = results;

  CategoryAnalyticsBuilder? _analytics;
  CategoryAnalyticsBuilder get analytics =>
      _$this._analytics ??= CategoryAnalyticsBuilder();
  set analytics(CategoryAnalyticsBuilder? analytics) =>
      _$this._analytics = analytics;

  ProductListResponseBuilder() {
    ProductListResponse._defaults(this);
  }

  ProductListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _count = $v.count;
      _page = $v.page;
      _pageSize = $v.pageSize;
      _totalPages = $v.totalPages;
      _hasNext = $v.hasNext;
      _hasPrevious = $v.hasPrevious;
      _results = $v.results.toBuilder();
      _analytics = $v.analytics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductListResponse other) {
    _$v = other as _$ProductListResponse;
  }

  @override
  void update(void Function(ProductListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductListResponse build() => _build();

  _$ProductListResponse _build() {
    _$ProductListResponse _$result;
    try {
      _$result = _$v ??
          _$ProductListResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'ProductListResponse', 'success'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'ProductListResponse', 'count'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'ProductListResponse', 'page'),
            pageSize: BuiltValueNullFieldError.checkNotNull(
                pageSize, r'ProductListResponse', 'pageSize'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'ProductListResponse', 'totalPages'),
            hasNext: BuiltValueNullFieldError.checkNotNull(
                hasNext, r'ProductListResponse', 'hasNext'),
            hasPrevious: BuiltValueNullFieldError.checkNotNull(
                hasPrevious, r'ProductListResponse', 'hasPrevious'),
            results: results.build(),
            analytics: _analytics?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
        _$failedField = 'analytics';
        _analytics?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProductListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
