// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_history_update_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceHistoryUpdateResponse extends ServiceHistoryUpdateResponse {
  @override
  final bool success;
  @override
  final ServiceHistoryUpdated data;

  factory _$ServiceHistoryUpdateResponse(
          [void Function(ServiceHistoryUpdateResponseBuilder)? updates]) =>
      (ServiceHistoryUpdateResponseBuilder()..update(updates))._build();

  _$ServiceHistoryUpdateResponse._({required this.success, required this.data})
      : super._();
  @override
  ServiceHistoryUpdateResponse rebuild(
          void Function(ServiceHistoryUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceHistoryUpdateResponseBuilder toBuilder() =>
      ServiceHistoryUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceHistoryUpdateResponse &&
        success == other.success &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceHistoryUpdateResponse')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class ServiceHistoryUpdateResponseBuilder
    implements
        Builder<ServiceHistoryUpdateResponse,
            ServiceHistoryUpdateResponseBuilder> {
  _$ServiceHistoryUpdateResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ServiceHistoryUpdatedBuilder? _data;
  ServiceHistoryUpdatedBuilder get data =>
      _$this._data ??= ServiceHistoryUpdatedBuilder();
  set data(ServiceHistoryUpdatedBuilder? data) => _$this._data = data;

  ServiceHistoryUpdateResponseBuilder() {
    ServiceHistoryUpdateResponse._defaults(this);
  }

  ServiceHistoryUpdateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceHistoryUpdateResponse other) {
    _$v = other as _$ServiceHistoryUpdateResponse;
  }

  @override
  void update(void Function(ServiceHistoryUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceHistoryUpdateResponse build() => _build();

  _$ServiceHistoryUpdateResponse _build() {
    _$ServiceHistoryUpdateResponse _$result;
    try {
      _$result = _$v ??
          _$ServiceHistoryUpdateResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'ServiceHistoryUpdateResponse', 'success'),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceHistoryUpdateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
