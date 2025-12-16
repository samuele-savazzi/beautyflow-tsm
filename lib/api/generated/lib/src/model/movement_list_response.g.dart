// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movement_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovementListResponse extends MovementListResponse {
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
  final BuiltList<MovementList> results;

  factory _$MovementListResponse(
          [void Function(MovementListResponseBuilder)? updates]) =>
      (MovementListResponseBuilder()..update(updates))._build();

  _$MovementListResponse._(
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
  MovementListResponse rebuild(
          void Function(MovementListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovementListResponseBuilder toBuilder() =>
      MovementListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovementListResponse &&
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
    return (newBuiltValueToStringHelper(r'MovementListResponse')
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

class MovementListResponseBuilder
    implements Builder<MovementListResponse, MovementListResponseBuilder> {
  _$MovementListResponse? _$v;

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

  ListBuilder<MovementList>? _results;
  ListBuilder<MovementList> get results =>
      _$this._results ??= ListBuilder<MovementList>();
  set results(ListBuilder<MovementList>? results) => _$this._results = results;

  MovementListResponseBuilder() {
    MovementListResponse._defaults(this);
  }

  MovementListResponseBuilder get _$this {
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
  void replace(MovementListResponse other) {
    _$v = other as _$MovementListResponse;
  }

  @override
  void update(void Function(MovementListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovementListResponse build() => _build();

  _$MovementListResponse _build() {
    _$MovementListResponse _$result;
    try {
      _$result = _$v ??
          _$MovementListResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'MovementListResponse', 'success'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'MovementListResponse', 'count'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'MovementListResponse', 'page'),
            pageSize: BuiltValueNullFieldError.checkNotNull(
                pageSize, r'MovementListResponse', 'pageSize'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'MovementListResponse', 'totalPages'),
            hasNext: BuiltValueNullFieldError.checkNotNull(
                hasNext, r'MovementListResponse', 'hasNext'),
            hasPrevious: BuiltValueNullFieldError.checkNotNull(
                hasPrevious, r'MovementListResponse', 'hasPrevious'),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MovementListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
