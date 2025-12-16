// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupplierListResponse extends SupplierListResponse {
  @override
  final bool success;
  @override
  final int count;
  @override
  final BuiltList<SupplierList> results;

  factory _$SupplierListResponse(
          [void Function(SupplierListResponseBuilder)? updates]) =>
      (SupplierListResponseBuilder()..update(updates))._build();

  _$SupplierListResponse._(
      {required this.success, required this.count, required this.results})
      : super._();
  @override
  SupplierListResponse rebuild(
          void Function(SupplierListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplierListResponseBuilder toBuilder() =>
      SupplierListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplierListResponse &&
        success == other.success &&
        count == other.count &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplierListResponse')
          ..add('success', success)
          ..add('count', count)
          ..add('results', results))
        .toString();
  }
}

class SupplierListResponseBuilder
    implements Builder<SupplierListResponse, SupplierListResponseBuilder> {
  _$SupplierListResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<SupplierList>? _results;
  ListBuilder<SupplierList> get results =>
      _$this._results ??= ListBuilder<SupplierList>();
  set results(ListBuilder<SupplierList>? results) => _$this._results = results;

  SupplierListResponseBuilder() {
    SupplierListResponse._defaults(this);
  }

  SupplierListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _count = $v.count;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplierListResponse other) {
    _$v = other as _$SupplierListResponse;
  }

  @override
  void update(void Function(SupplierListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplierListResponse build() => _build();

  _$SupplierListResponse _build() {
    _$SupplierListResponse _$result;
    try {
      _$result = _$v ??
          _$SupplierListResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'SupplierListResponse', 'success'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'SupplierListResponse', 'count'),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SupplierListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
