// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchResult extends BatchResult {
  @override
  final int index;
  @override
  final bool success;
  @override
  final OperatorDataResponse? data;
  @override
  final String? error;

  factory _$BatchResult([void Function(BatchResultBuilder)? updates]) =>
      (BatchResultBuilder()..update(updates))._build();

  _$BatchResult._(
      {required this.index, required this.success, this.data, this.error})
      : super._();
  @override
  BatchResult rebuild(void Function(BatchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchResultBuilder toBuilder() => BatchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchResult &&
        index == other.index &&
        success == other.success &&
        data == other.data &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchResult')
          ..add('index', index)
          ..add('success', success)
          ..add('data', data)
          ..add('error', error))
        .toString();
  }
}

class BatchResultBuilder implements Builder<BatchResult, BatchResultBuilder> {
  _$BatchResult? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  OperatorDataResponseBuilder? _data;
  OperatorDataResponseBuilder get data =>
      _$this._data ??= OperatorDataResponseBuilder();
  set data(OperatorDataResponseBuilder? data) => _$this._data = data;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  BatchResultBuilder() {
    BatchResult._defaults(this);
  }

  BatchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchResult other) {
    _$v = other as _$BatchResult;
  }

  @override
  void update(void Function(BatchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchResult build() => _build();

  _$BatchResult _build() {
    _$BatchResult _$result;
    try {
      _$result = _$v ??
          _$BatchResult._(
            index: BuiltValueNullFieldError.checkNotNull(
                index, r'BatchResult', 'index'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'BatchResult', 'success'),
            data: _data?.build(),
            error: error,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BatchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
