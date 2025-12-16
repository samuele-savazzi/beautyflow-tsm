// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_search_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerSearchResponse extends CustomerSearchResponse {
  @override
  final BuiltList<CustomerSearchItem> results;
  @override
  final int total;
  @override
  final bool hasMore;

  factory _$CustomerSearchResponse(
          [void Function(CustomerSearchResponseBuilder)? updates]) =>
      (CustomerSearchResponseBuilder()..update(updates))._build();

  _$CustomerSearchResponse._(
      {required this.results, required this.total, required this.hasMore})
      : super._();
  @override
  CustomerSearchResponse rebuild(
          void Function(CustomerSearchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerSearchResponseBuilder toBuilder() =>
      CustomerSearchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerSearchResponse &&
        results == other.results &&
        total == other.total &&
        hasMore == other.hasMore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, hasMore.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerSearchResponse')
          ..add('results', results)
          ..add('total', total)
          ..add('hasMore', hasMore))
        .toString();
  }
}

class CustomerSearchResponseBuilder
    implements Builder<CustomerSearchResponse, CustomerSearchResponseBuilder> {
  _$CustomerSearchResponse? _$v;

  ListBuilder<CustomerSearchItem>? _results;
  ListBuilder<CustomerSearchItem> get results =>
      _$this._results ??= ListBuilder<CustomerSearchItem>();
  set results(ListBuilder<CustomerSearchItem>? results) =>
      _$this._results = results;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  bool? _hasMore;
  bool? get hasMore => _$this._hasMore;
  set hasMore(bool? hasMore) => _$this._hasMore = hasMore;

  CustomerSearchResponseBuilder() {
    CustomerSearchResponse._defaults(this);
  }

  CustomerSearchResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results.toBuilder();
      _total = $v.total;
      _hasMore = $v.hasMore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerSearchResponse other) {
    _$v = other as _$CustomerSearchResponse;
  }

  @override
  void update(void Function(CustomerSearchResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerSearchResponse build() => _build();

  _$CustomerSearchResponse _build() {
    _$CustomerSearchResponse _$result;
    try {
      _$result = _$v ??
          _$CustomerSearchResponse._(
            results: results.build(),
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'CustomerSearchResponse', 'total'),
            hasMore: BuiltValueNullFieldError.checkNotNull(
                hasMore, r'CustomerSearchResponse', 'hasMore'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerSearchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
