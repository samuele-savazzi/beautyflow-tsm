// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_availability_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HourlyAvailabilityResponse extends HourlyAvailabilityResponse {
  @override
  final bool success;
  @override
  final HourlyAvailabilityOperatorResponse data;
  @override
  final HourlyAvailabilityPerformanceResponse performance;

  factory _$HourlyAvailabilityResponse(
          [void Function(HourlyAvailabilityResponseBuilder)? updates]) =>
      (HourlyAvailabilityResponseBuilder()..update(updates))._build();

  _$HourlyAvailabilityResponse._(
      {required this.success, required this.data, required this.performance})
      : super._();
  @override
  HourlyAvailabilityResponse rebuild(
          void Function(HourlyAvailabilityResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HourlyAvailabilityResponseBuilder toBuilder() =>
      HourlyAvailabilityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HourlyAvailabilityResponse &&
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
    return (newBuiltValueToStringHelper(r'HourlyAvailabilityResponse')
          ..add('success', success)
          ..add('data', data)
          ..add('performance', performance))
        .toString();
  }
}

class HourlyAvailabilityResponseBuilder
    implements
        Builder<HourlyAvailabilityResponse, HourlyAvailabilityResponseBuilder> {
  _$HourlyAvailabilityResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  HourlyAvailabilityOperatorResponseBuilder? _data;
  HourlyAvailabilityOperatorResponseBuilder get data =>
      _$this._data ??= HourlyAvailabilityOperatorResponseBuilder();
  set data(HourlyAvailabilityOperatorResponseBuilder? data) =>
      _$this._data = data;

  HourlyAvailabilityPerformanceResponseBuilder? _performance;
  HourlyAvailabilityPerformanceResponseBuilder get performance =>
      _$this._performance ??= HourlyAvailabilityPerformanceResponseBuilder();
  set performance(HourlyAvailabilityPerformanceResponseBuilder? performance) =>
      _$this._performance = performance;

  HourlyAvailabilityResponseBuilder() {
    HourlyAvailabilityResponse._defaults(this);
  }

  HourlyAvailabilityResponseBuilder get _$this {
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
  void replace(HourlyAvailabilityResponse other) {
    _$v = other as _$HourlyAvailabilityResponse;
  }

  @override
  void update(void Function(HourlyAvailabilityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HourlyAvailabilityResponse build() => _build();

  _$HourlyAvailabilityResponse _build() {
    _$HourlyAvailabilityResponse _$result;
    try {
      _$result = _$v ??
          _$HourlyAvailabilityResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'HourlyAvailabilityResponse', 'success'),
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
            r'HourlyAvailabilityResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
