// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_payment_history_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedPaymentHistoryResponse
    extends PaginatedPaymentHistoryResponse {
  @override
  final int count;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int totalPages;
  @override
  final BuiltList<PaymentRecord> results;

  factory _$PaginatedPaymentHistoryResponse(
          [void Function(PaginatedPaymentHistoryResponseBuilder)? updates]) =>
      (PaginatedPaymentHistoryResponseBuilder()..update(updates))._build();

  _$PaginatedPaymentHistoryResponse._(
      {required this.count,
      required this.page,
      required this.pageSize,
      required this.totalPages,
      required this.results})
      : super._();
  @override
  PaginatedPaymentHistoryResponse rebuild(
          void Function(PaginatedPaymentHistoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedPaymentHistoryResponseBuilder toBuilder() =>
      PaginatedPaymentHistoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedPaymentHistoryResponse &&
        count == other.count &&
        page == other.page &&
        pageSize == other.pageSize &&
        totalPages == other.totalPages &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaginatedPaymentHistoryResponse')
          ..add('count', count)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('totalPages', totalPages)
          ..add('results', results))
        .toString();
  }
}

class PaginatedPaymentHistoryResponseBuilder
    implements
        Builder<PaginatedPaymentHistoryResponse,
            PaginatedPaymentHistoryResponseBuilder> {
  _$PaginatedPaymentHistoryResponse? _$v;

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

  ListBuilder<PaymentRecord>? _results;
  ListBuilder<PaymentRecord> get results =>
      _$this._results ??= ListBuilder<PaymentRecord>();
  set results(ListBuilder<PaymentRecord>? results) => _$this._results = results;

  PaginatedPaymentHistoryResponseBuilder() {
    PaginatedPaymentHistoryResponse._defaults(this);
  }

  PaginatedPaymentHistoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _page = $v.page;
      _pageSize = $v.pageSize;
      _totalPages = $v.totalPages;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaginatedPaymentHistoryResponse other) {
    _$v = other as _$PaginatedPaymentHistoryResponse;
  }

  @override
  void update(void Function(PaginatedPaymentHistoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedPaymentHistoryResponse build() => _build();

  _$PaginatedPaymentHistoryResponse _build() {
    _$PaginatedPaymentHistoryResponse _$result;
    try {
      _$result = _$v ??
          _$PaginatedPaymentHistoryResponse._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedPaymentHistoryResponse', 'count'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'PaginatedPaymentHistoryResponse', 'page'),
            pageSize: BuiltValueNullFieldError.checkNotNull(
                pageSize, r'PaginatedPaymentHistoryResponse', 'pageSize'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'PaginatedPaymentHistoryResponse', 'totalPages'),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PaginatedPaymentHistoryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
