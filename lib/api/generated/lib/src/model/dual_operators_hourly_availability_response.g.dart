// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dual_operators_hourly_availability_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DualOperatorsHourlyAvailabilityResponse
    extends DualOperatorsHourlyAvailabilityResponse {
  @override
  final bool success;
  @override
  final DualOperatorsHourlyAvailabilityData data;
  @override
  final DualOperatorsHourlyAvailabilityPerformance performance;

  factory _$DualOperatorsHourlyAvailabilityResponse(
          [void Function(DualOperatorsHourlyAvailabilityResponseBuilder)?
              updates]) =>
      (DualOperatorsHourlyAvailabilityResponseBuilder()..update(updates))
          ._build();

  _$DualOperatorsHourlyAvailabilityResponse._(
      {required this.success, required this.data, required this.performance})
      : super._();
  @override
  DualOperatorsHourlyAvailabilityResponse rebuild(
          void Function(DualOperatorsHourlyAvailabilityResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DualOperatorsHourlyAvailabilityResponseBuilder toBuilder() =>
      DualOperatorsHourlyAvailabilityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DualOperatorsHourlyAvailabilityResponse &&
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
    return (newBuiltValueToStringHelper(
            r'DualOperatorsHourlyAvailabilityResponse')
          ..add('success', success)
          ..add('data', data)
          ..add('performance', performance))
        .toString();
  }
}

class DualOperatorsHourlyAvailabilityResponseBuilder
    implements
        Builder<DualOperatorsHourlyAvailabilityResponse,
            DualOperatorsHourlyAvailabilityResponseBuilder> {
  _$DualOperatorsHourlyAvailabilityResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  DualOperatorsHourlyAvailabilityDataBuilder? _data;
  DualOperatorsHourlyAvailabilityDataBuilder get data =>
      _$this._data ??= DualOperatorsHourlyAvailabilityDataBuilder();
  set data(DualOperatorsHourlyAvailabilityDataBuilder? data) =>
      _$this._data = data;

  DualOperatorsHourlyAvailabilityPerformanceBuilder? _performance;
  DualOperatorsHourlyAvailabilityPerformanceBuilder get performance =>
      _$this._performance ??=
          DualOperatorsHourlyAvailabilityPerformanceBuilder();
  set performance(
          DualOperatorsHourlyAvailabilityPerformanceBuilder? performance) =>
      _$this._performance = performance;

  DualOperatorsHourlyAvailabilityResponseBuilder() {
    DualOperatorsHourlyAvailabilityResponse._defaults(this);
  }

  DualOperatorsHourlyAvailabilityResponseBuilder get _$this {
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
  void replace(DualOperatorsHourlyAvailabilityResponse other) {
    _$v = other as _$DualOperatorsHourlyAvailabilityResponse;
  }

  @override
  void update(
      void Function(DualOperatorsHourlyAvailabilityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DualOperatorsHourlyAvailabilityResponse build() => _build();

  _$DualOperatorsHourlyAvailabilityResponse _build() {
    _$DualOperatorsHourlyAvailabilityResponse _$result;
    try {
      _$result = _$v ??
          _$DualOperatorsHourlyAvailabilityResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'DualOperatorsHourlyAvailabilityResponse', 'success'),
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
            r'DualOperatorsHourlyAvailabilityResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
