// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_available_services_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAvailableServicesResponse extends GetAvailableServicesResponse {
  @override
  final BuiltList<AvailableService> services;

  factory _$GetAvailableServicesResponse(
          [void Function(GetAvailableServicesResponseBuilder)? updates]) =>
      (GetAvailableServicesResponseBuilder()..update(updates))._build();

  _$GetAvailableServicesResponse._({required this.services}) : super._();
  @override
  GetAvailableServicesResponse rebuild(
          void Function(GetAvailableServicesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAvailableServicesResponseBuilder toBuilder() =>
      GetAvailableServicesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAvailableServicesResponse && services == other.services;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetAvailableServicesResponse')
          ..add('services', services))
        .toString();
  }
}

class GetAvailableServicesResponseBuilder
    implements
        Builder<GetAvailableServicesResponse,
            GetAvailableServicesResponseBuilder> {
  _$GetAvailableServicesResponse? _$v;

  ListBuilder<AvailableService>? _services;
  ListBuilder<AvailableService> get services =>
      _$this._services ??= ListBuilder<AvailableService>();
  set services(ListBuilder<AvailableService>? services) =>
      _$this._services = services;

  GetAvailableServicesResponseBuilder() {
    GetAvailableServicesResponse._defaults(this);
  }

  GetAvailableServicesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _services = $v.services.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAvailableServicesResponse other) {
    _$v = other as _$GetAvailableServicesResponse;
  }

  @override
  void update(void Function(GetAvailableServicesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAvailableServicesResponse build() => _build();

  _$GetAvailableServicesResponse _build() {
    _$GetAvailableServicesResponse _$result;
    try {
      _$result = _$v ??
          _$GetAvailableServicesResponse._(
            services: services.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'services';
        services.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetAvailableServicesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
