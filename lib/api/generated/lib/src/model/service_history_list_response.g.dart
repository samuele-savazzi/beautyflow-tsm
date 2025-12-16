// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_history_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceHistoryListResponse extends ServiceHistoryListResponse {
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
  final BuiltList<ServiceHistoryListItem> results;

  factory _$ServiceHistoryListResponse(
          [void Function(ServiceHistoryListResponseBuilder)? updates]) =>
      (ServiceHistoryListResponseBuilder()..update(updates))._build();

  _$ServiceHistoryListResponse._(
      {required this.success,
      required this.count,
      required this.page,
      required this.pageSize,
      required this.totalPages,
      required this.hasNext,
      required this.hasPrevious,
      required this.results})
      : super._();
  @override
  ServiceHistoryListResponse rebuild(
          void Function(ServiceHistoryListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceHistoryListResponseBuilder toBuilder() =>
      ServiceHistoryListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceHistoryListResponse &&
        success == other.success &&
        count == other.count &&
        page == other.page &&
        pageSize == other.pageSize &&
        totalPages == other.totalPages &&
        hasNext == other.hasNext &&
        hasPrevious == other.hasPrevious &&
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
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceHistoryListResponse')
          ..add('success', success)
          ..add('count', count)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('totalPages', totalPages)
          ..add('hasNext', hasNext)
          ..add('hasPrevious', hasPrevious)
          ..add('results', results))
        .toString();
  }
}

class ServiceHistoryListResponseBuilder
    implements
        Builder<ServiceHistoryListResponse, ServiceHistoryListResponseBuilder> {
  _$ServiceHistoryListResponse? _$v;

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

  ListBuilder<ServiceHistoryListItem>? _results;
  ListBuilder<ServiceHistoryListItem> get results =>
      _$this._results ??= ListBuilder<ServiceHistoryListItem>();
  set results(ListBuilder<ServiceHistoryListItem>? results) =>
      _$this._results = results;

  ServiceHistoryListResponseBuilder() {
    ServiceHistoryListResponse._defaults(this);
  }

  ServiceHistoryListResponseBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceHistoryListResponse other) {
    _$v = other as _$ServiceHistoryListResponse;
  }

  @override
  void update(void Function(ServiceHistoryListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceHistoryListResponse build() => _build();

  _$ServiceHistoryListResponse _build() {
    _$ServiceHistoryListResponse _$result;
    try {
      _$result = _$v ??
          _$ServiceHistoryListResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'ServiceHistoryListResponse', 'success'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'ServiceHistoryListResponse', 'count'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'ServiceHistoryListResponse', 'page'),
            pageSize: BuiltValueNullFieldError.checkNotNull(
                pageSize, r'ServiceHistoryListResponse', 'pageSize'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'ServiceHistoryListResponse', 'totalPages'),
            hasNext: BuiltValueNullFieldError.checkNotNull(
                hasNext, r'ServiceHistoryListResponse', 'hasNext'),
            hasPrevious: BuiltValueNullFieldError.checkNotNull(
                hasPrevious, r'ServiceHistoryListResponse', 'hasPrevious'),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceHistoryListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
