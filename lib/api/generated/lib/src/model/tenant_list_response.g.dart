// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantListResponse extends TenantListResponse {
  @override
  final int count;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final BuiltList<TenantInfo> results;

  factory _$TenantListResponse(
          [void Function(TenantListResponseBuilder)? updates]) =>
      (TenantListResponseBuilder()..update(updates))._build();

  _$TenantListResponse._(
      {required this.count,
      required this.page,
      required this.pageSize,
      required this.results})
      : super._();
  @override
  TenantListResponse rebuild(
          void Function(TenantListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantListResponseBuilder toBuilder() =>
      TenantListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantListResponse &&
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
    return (newBuiltValueToStringHelper(r'TenantListResponse')
          ..add('count', count)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('results', results))
        .toString();
  }
}

class TenantListResponseBuilder
    implements Builder<TenantListResponse, TenantListResponseBuilder> {
  _$TenantListResponse? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  ListBuilder<TenantInfo>? _results;
  ListBuilder<TenantInfo> get results =>
      _$this._results ??= ListBuilder<TenantInfo>();
  set results(ListBuilder<TenantInfo>? results) => _$this._results = results;

  TenantListResponseBuilder() {
    TenantListResponse._defaults(this);
  }

  TenantListResponseBuilder get _$this {
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
  void replace(TenantListResponse other) {
    _$v = other as _$TenantListResponse;
  }

  @override
  void update(void Function(TenantListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantListResponse build() => _build();

  _$TenantListResponse _build() {
    _$TenantListResponse _$result;
    try {
      _$result = _$v ??
          _$TenantListResponse._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'TenantListResponse', 'count'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'TenantListResponse', 'page'),
            pageSize: BuiltValueNullFieldError.checkNotNull(
                pageSize, r'TenantListResponse', 'pageSize'),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TenantListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
