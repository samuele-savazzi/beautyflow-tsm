// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TierListResponse extends TierListResponse {
  @override
  final int count;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final BuiltList<TierListItem> results;

  factory _$TierListResponse(
          [void Function(TierListResponseBuilder)? updates]) =>
      (TierListResponseBuilder()..update(updates))._build();

  _$TierListResponse._(
      {required this.count,
      required this.page,
      required this.pageSize,
      required this.results})
      : super._();
  @override
  TierListResponse rebuild(void Function(TierListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TierListResponseBuilder toBuilder() =>
      TierListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TierListResponse &&
        count == other.count &&
        page == other.page &&
        pageSize == other.pageSize &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TierListResponse')
          ..add('count', count)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('results', results))
        .toString();
  }
}

class TierListResponseBuilder
    implements Builder<TierListResponse, TierListResponseBuilder> {
  _$TierListResponse? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  ListBuilder<TierListItem>? _results;
  ListBuilder<TierListItem> get results =>
      _$this._results ??= ListBuilder<TierListItem>();
  set results(ListBuilder<TierListItem>? results) => _$this._results = results;

  TierListResponseBuilder() {
    TierListResponse._defaults(this);
  }

  TierListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _page = $v.page;
      _pageSize = $v.pageSize;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TierListResponse other) {
    _$v = other as _$TierListResponse;
  }

  @override
  void update(void Function(TierListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TierListResponse build() => _build();

  _$TierListResponse _build() {
    _$TierListResponse _$result;
    try {
      _$result = _$v ??
          _$TierListResponse._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'TierListResponse', 'count'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'TierListResponse', 'page'),
            pageSize: BuiltValueNullFieldError.checkNotNull(
                pageSize, r'TierListResponse', 'pageSize'),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TierListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
