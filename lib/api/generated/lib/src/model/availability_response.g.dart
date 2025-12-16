// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvailabilityResponse extends AvailabilityResponse {
  @override
  final bool success;
  @override
  final OperatorDataResponse data;
  @override
  final PerformanceResponse performance;

  factory _$AvailabilityResponse(
          [void Function(AvailabilityResponseBuilder)? updates]) =>
      (AvailabilityResponseBuilder()..update(updates))._build();

  _$AvailabilityResponse._(
      {required this.success, required this.data, required this.performance})
      : super._();
  @override
  AvailabilityResponse rebuild(
          void Function(AvailabilityResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvailabilityResponseBuilder toBuilder() =>
      AvailabilityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailabilityResponse &&
        success == other.success &&
        data == other.data &&
        performance == other.performance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, performance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvailabilityResponse')
          ..add('success', success)
          ..add('data', data)
          ..add('performance', performance))
        .toString();
  }
}

class AvailabilityResponseBuilder
    implements Builder<AvailabilityResponse, AvailabilityResponseBuilder> {
  _$AvailabilityResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  OperatorDataResponseBuilder? _data;
  OperatorDataResponseBuilder get data =>
      _$this._data ??= OperatorDataResponseBuilder();
  set data(OperatorDataResponseBuilder? data) => _$this._data = data;

  PerformanceResponseBuilder? _performance;
  PerformanceResponseBuilder get performance =>
      _$this._performance ??= PerformanceResponseBuilder();
  set performance(PerformanceResponseBuilder? performance) =>
      _$this._performance = performance;

  AvailabilityResponseBuilder() {
    AvailabilityResponse._defaults(this);
  }

  AvailabilityResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data.toBuilder();
      _performance = $v.performance.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailabilityResponse other) {
    _$v = other as _$AvailabilityResponse;
  }

  @override
  void update(void Function(AvailabilityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvailabilityResponse build() => _build();

  _$AvailabilityResponse _build() {
    _$AvailabilityResponse _$result;
    try {
      _$result = _$v ??
          _$AvailabilityResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'AvailabilityResponse', 'success'),
            data: data.build(),
            performance: performance.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
        _$failedField = 'performance';
        performance.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AvailabilityResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
