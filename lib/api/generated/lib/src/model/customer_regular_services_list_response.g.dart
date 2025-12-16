// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_regular_services_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerRegularServicesListResponse
    extends CustomerRegularServicesListResponse {
  @override
  final int count;
  @override
  final BuiltList<CustomerRegularService> results;

  factory _$CustomerRegularServicesListResponse(
          [void Function(CustomerRegularServicesListResponseBuilder)?
              updates]) =>
      (CustomerRegularServicesListResponseBuilder()..update(updates))._build();

  _$CustomerRegularServicesListResponse._(
      {required this.count, required this.results})
      : super._();
  @override
  CustomerRegularServicesListResponse rebuild(
          void Function(CustomerRegularServicesListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerRegularServicesListResponseBuilder toBuilder() =>
      CustomerRegularServicesListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerRegularServicesListResponse &&
        count == other.count &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerRegularServicesListResponse')
          ..add('count', count)
          ..add('results', results))
        .toString();
  }
}

class CustomerRegularServicesListResponseBuilder
    implements
        Builder<CustomerRegularServicesListResponse,
            CustomerRegularServicesListResponseBuilder> {
  _$CustomerRegularServicesListResponse? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<CustomerRegularService>? _results;
  ListBuilder<CustomerRegularService> get results =>
      _$this._results ??= ListBuilder<CustomerRegularService>();
  set results(ListBuilder<CustomerRegularService>? results) =>
      _$this._results = results;

  CustomerRegularServicesListResponseBuilder() {
    CustomerRegularServicesListResponse._defaults(this);
  }

  CustomerRegularServicesListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerRegularServicesListResponse other) {
    _$v = other as _$CustomerRegularServicesListResponse;
  }

  @override
  void update(
      void Function(CustomerRegularServicesListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerRegularServicesListResponse build() => _build();

  _$CustomerRegularServicesListResponse _build() {
    _$CustomerRegularServicesListResponse _$result;
    try {
      _$result = _$v ??
          _$CustomerRegularServicesListResponse._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'CustomerRegularServicesListResponse', 'count'),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'CustomerRegularServicesListResponse',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
