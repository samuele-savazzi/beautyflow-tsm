// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_availability_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyAvailabilityResponse extends DailyAvailabilityResponse {
  @override
  final bool success;
  @override
  final DailyAvailabilityOperatorResponse data;
  @override
  final DailyAvailabilityPerformanceResponse performance;

  factory _$DailyAvailabilityResponse(
          [void Function(DailyAvailabilityResponseBuilder)? updates]) =>
      (DailyAvailabilityResponseBuilder()..update(updates))._build();

  _$DailyAvailabilityResponse._(
      {required this.success, required this.data, required this.performance})
      : super._();
  @override
  DailyAvailabilityResponse rebuild(
          void Function(DailyAvailabilityResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyAvailabilityResponseBuilder toBuilder() =>
      DailyAvailabilityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyAvailabilityResponse &&
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
    return (newBuiltValueToStringHelper(r'DailyAvailabilityResponse')
          ..add('success', success)
          ..add('data', data)
          ..add('performance', performance))
        .toString();
  }
}

class DailyAvailabilityResponseBuilder
    implements
        Builder<DailyAvailabilityResponse, DailyAvailabilityResponseBuilder> {
  _$DailyAvailabilityResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  DailyAvailabilityOperatorResponseBuilder? _data;
  DailyAvailabilityOperatorResponseBuilder get data =>
      _$this._data ??= DailyAvailabilityOperatorResponseBuilder();
  set data(DailyAvailabilityOperatorResponseBuilder? data) =>
      _$this._data = data;

  DailyAvailabilityPerformanceResponseBuilder? _performance;
  DailyAvailabilityPerformanceResponseBuilder get performance =>
      _$this._performance ??= DailyAvailabilityPerformanceResponseBuilder();
  set performance(DailyAvailabilityPerformanceResponseBuilder? performance) =>
      _$this._performance = performance;

  DailyAvailabilityResponseBuilder() {
    DailyAvailabilityResponse._defaults(this);
  }

  DailyAvailabilityResponseBuilder get _$this {
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
  void replace(DailyAvailabilityResponse other) {
    _$v = other as _$DailyAvailabilityResponse;
  }

  @override
  void update(void Function(DailyAvailabilityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyAvailabilityResponse build() => _build();

  _$DailyAvailabilityResponse _build() {
    _$DailyAvailabilityResponse _$result;
    try {
      _$result = _$v ??
          _$DailyAvailabilityResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'DailyAvailabilityResponse', 'success'),
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
            r'DailyAvailabilityResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
