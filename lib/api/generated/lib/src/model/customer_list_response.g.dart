// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerListResponse extends CustomerListResponse {
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
  final CustomerStats stats;
  @override
  final BuiltList<CustomerListItem> results;

  factory _$CustomerListResponse(
          [void Function(CustomerListResponseBuilder)? updates]) =>
      (CustomerListResponseBuilder()..update(updates))._build();

  _$CustomerListResponse._(
      {required this.success,
      required this.count,
      required this.page,
      required this.pageSize,
      required this.totalPages,
      required this.hasNext,
      required this.hasPrevious,
      required this.stats,
      required this.results})
      : super._();
  @override
  CustomerListResponse rebuild(
          void Function(CustomerListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerListResponseBuilder toBuilder() =>
      CustomerListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerListResponse &&
        success == other.success &&
        count == other.count &&
        page == other.page &&
        pageSize == other.pageSize &&
        totalPages == other.totalPages &&
        hasNext == other.hasNext &&
        hasPrevious == other.hasPrevious &&
        stats == other.stats &&
        results == other.results;
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
    _$hash = $jc(_$hash, stats.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerListResponse')
          ..add('success', success)
          ..add('count', count)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('totalPages', totalPages)
          ..add('hasNext', hasNext)
          ..add('hasPrevious', hasPrevious)
          ..add('stats', stats)
          ..add('results', results))
        .toString();
  }
}

class CustomerListResponseBuilder
    implements Builder<CustomerListResponse, CustomerListResponseBuilder> {
  _$CustomerListResponse? _$v;

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

  CustomerStatsBuilder? _stats;
  CustomerStatsBuilder get stats => _$this._stats ??= CustomerStatsBuilder();
  set stats(CustomerStatsBuilder? stats) => _$this._stats = stats;

  ListBuilder<CustomerListItem>? _results;
  ListBuilder<CustomerListItem> get results =>
      _$this._results ??= ListBuilder<CustomerListItem>();
  set results(ListBuilder<CustomerListItem>? results) =>
      _$this._results = results;

  CustomerListResponseBuilder() {
    CustomerListResponse._defaults(this);
  }

  CustomerListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _count = $v.count;
      _page = $v.page;
      _pageSize = $v.pageSize;
      _totalPages = $v.totalPages;
      _hasNext = $v.hasNext;
      _hasPrevious = $v.hasPrevious;
      _stats = $v.stats.toBuilder();
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerListResponse other) {
    _$v = other as _$CustomerListResponse;
  }

  @override
  void update(void Function(CustomerListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerListResponse build() => _build();

  _$CustomerListResponse _build() {
    _$CustomerListResponse _$result;
    try {
      _$result = _$v ??
          _$CustomerListResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'CustomerListResponse', 'success'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'CustomerListResponse', 'count'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'CustomerListResponse', 'page'),
            pageSize: BuiltValueNullFieldError.checkNotNull(
                pageSize, r'CustomerListResponse', 'pageSize'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'CustomerListResponse', 'totalPages'),
            hasNext: BuiltValueNullFieldError.checkNotNull(
                hasNext, r'CustomerListResponse', 'hasNext'),
            hasPrevious: BuiltValueNullFieldError.checkNotNull(
                hasPrevious, r'CustomerListResponse', 'hasPrevious'),
            stats: stats.build(),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stats';
        stats.build();
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
