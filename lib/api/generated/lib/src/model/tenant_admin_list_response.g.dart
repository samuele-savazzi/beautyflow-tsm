// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_admin_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantAdminListResponse extends TenantAdminListResponse {
  @override
  final int count;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final BuiltList<TenantAdminDetail> results;

  factory _$TenantAdminListResponse(
          [void Function(TenantAdminListResponseBuilder)? updates]) =>
      (TenantAdminListResponseBuilder()..update(updates))._build();

  _$TenantAdminListResponse._(
      {required this.count,
      required this.page,
      required this.pageSize,
      required this.results})
      : super._();
  @override
  TenantAdminListResponse rebuild(
          void Function(TenantAdminListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantAdminListResponseBuilder toBuilder() =>
      TenantAdminListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantAdminListResponse &&
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
    return (newBuiltValueToStringHelper(r'TenantAdminListResponse')
          ..add('count', count)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('results', results))
        .toString();
  }
}

class TenantAdminListResponseBuilder
    implements
        Builder<TenantAdminListResponse, TenantAdminListResponseBuilder> {
  _$TenantAdminListResponse? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  ListBuilder<TenantAdminDetail>? _results;
  ListBuilder<TenantAdminDetail> get results =>
      _$this._results ??= ListBuilder<TenantAdminDetail>();
  set results(ListBuilder<TenantAdminDetail>? results) =>
      _$this._results = results;

  TenantAdminListResponseBuilder() {
    TenantAdminListResponse._defaults(this);
  }

  TenantAdminListResponseBuilder get _$this {
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
  void replace(TenantAdminListResponse other) {
    _$v = other as _$TenantAdminListResponse;
  }

  @override
  void update(void Function(TenantAdminListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantAdminListResponse build() => _build();

  _$TenantAdminListResponse _build() {
    _$TenantAdminListResponse _$result;
    try {
      _$result = _$v ??
          _$TenantAdminListResponse._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'TenantAdminListResponse', 'count'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'TenantAdminListResponse', 'page'),
            pageSize: BuiltValueNullFieldError.checkNotNull(
                pageSize, r'TenantAdminListResponse', 'pageSize'),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TenantAdminListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
