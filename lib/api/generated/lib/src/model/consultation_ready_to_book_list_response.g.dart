// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_ready_to_book_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsultationReadyToBookListResponse
    extends ConsultationReadyToBookListResponse {
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
  final BuiltList<ConsultationReadyToBookItem> results;

  factory _$ConsultationReadyToBookListResponse(
          [void Function(ConsultationReadyToBookListResponseBuilder)?
              updates]) =>
      (ConsultationReadyToBookListResponseBuilder()..update(updates))._build();

  _$ConsultationReadyToBookListResponse._(
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
  ConsultationReadyToBookListResponse rebuild(
          void Function(ConsultationReadyToBookListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationReadyToBookListResponseBuilder toBuilder() =>
      ConsultationReadyToBookListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultationReadyToBookListResponse &&
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
    return (newBuiltValueToStringHelper(r'ConsultationReadyToBookListResponse')
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

class ConsultationReadyToBookListResponseBuilder
    implements
        Builder<ConsultationReadyToBookListResponse,
            ConsultationReadyToBookListResponseBuilder> {
  _$ConsultationReadyToBookListResponse? _$v;

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

  ListBuilder<ConsultationReadyToBookItem>? _results;
  ListBuilder<ConsultationReadyToBookItem> get results =>
      _$this._results ??= ListBuilder<ConsultationReadyToBookItem>();
  set results(ListBuilder<ConsultationReadyToBookItem>? results) =>
      _$this._results = results;

  ConsultationReadyToBookListResponseBuilder() {
    ConsultationReadyToBookListResponse._defaults(this);
  }

  ConsultationReadyToBookListResponseBuilder get _$this {
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
  void replace(ConsultationReadyToBookListResponse other) {
    _$v = other as _$ConsultationReadyToBookListResponse;
  }

  @override
  void update(
      void Function(ConsultationReadyToBookListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsultationReadyToBookListResponse build() => _build();

  _$ConsultationReadyToBookListResponse _build() {
    _$ConsultationReadyToBookListResponse _$result;
    try {
      _$result = _$v ??
          _$ConsultationReadyToBookListResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'ConsultationReadyToBookListResponse', 'success'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'ConsultationReadyToBookListResponse', 'count'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'ConsultationReadyToBookListResponse', 'page'),
            pageSize: BuiltValueNullFieldError.checkNotNull(
                pageSize, r'ConsultationReadyToBookListResponse', 'pageSize'),
            totalPages: BuiltValueNullFieldError.checkNotNull(totalPages,
                r'ConsultationReadyToBookListResponse', 'totalPages'),
            hasNext: BuiltValueNullFieldError.checkNotNull(
                hasNext, r'ConsultationReadyToBookListResponse', 'hasNext'),
            hasPrevious: BuiltValueNullFieldError.checkNotNull(hasPrevious,
                r'ConsultationReadyToBookListResponse', 'hasPrevious'),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'ConsultationReadyToBookListResponse',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
