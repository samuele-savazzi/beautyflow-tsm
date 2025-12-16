// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_subscription_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedSubscriptionResponse extends PaginatedSubscriptionResponse {
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
  final BuiltList<PremiumSubscription> results;

  factory _$PaginatedSubscriptionResponse(
          [void Function(PaginatedSubscriptionResponseBuilder)? updates]) =>
      (PaginatedSubscriptionResponseBuilder()..update(updates))._build();

  _$PaginatedSubscriptionResponse._(
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
  PaginatedSubscriptionResponse rebuild(
          void Function(PaginatedSubscriptionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedSubscriptionResponseBuilder toBuilder() =>
      PaginatedSubscriptionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedSubscriptionResponse &&
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
    return (newBuiltValueToStringHelper(r'PaginatedSubscriptionResponse')
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

class PaginatedSubscriptionResponseBuilder
    implements
        Builder<PaginatedSubscriptionResponse,
            PaginatedSubscriptionResponseBuilder> {
  _$PaginatedSubscriptionResponse? _$v;

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

  ListBuilder<PremiumSubscription>? _results;
  ListBuilder<PremiumSubscription> get results =>
      _$this._results ??= ListBuilder<PremiumSubscription>();
  set results(ListBuilder<PremiumSubscription>? results) =>
      _$this._results = results;

  PaginatedSubscriptionResponseBuilder() {
    PaginatedSubscriptionResponse._defaults(this);
  }

  PaginatedSubscriptionResponseBuilder get _$this {
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
  void replace(PaginatedSubscriptionResponse other) {
    _$v = other as _$PaginatedSubscriptionResponse;
  }

  @override
  void update(void Function(PaginatedSubscriptionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedSubscriptionResponse build() => _build();

  _$PaginatedSubscriptionResponse _build() {
    _$PaginatedSubscriptionResponse _$result;
    try {
      _$result = _$v ??
          _$PaginatedSubscriptionResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'PaginatedSubscriptionResponse', 'success'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedSubscriptionResponse', 'count'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'PaginatedSubscriptionResponse', 'page'),
            pageSize: BuiltValueNullFieldError.checkNotNull(
                pageSize, r'PaginatedSubscriptionResponse', 'pageSize'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'PaginatedSubscriptionResponse', 'totalPages'),
            hasNext: BuiltValueNullFieldError.checkNotNull(
                hasNext, r'PaginatedSubscriptionResponse', 'hasNext'),
            hasPrevious: BuiltValueNullFieldError.checkNotNull(
                hasPrevious, r'PaginatedSubscriptionResponse', 'hasPrevious'),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PaginatedSubscriptionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
