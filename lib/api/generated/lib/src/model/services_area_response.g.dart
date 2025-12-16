// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_area_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServicesAreaResponse extends ServicesAreaResponse {
  @override
  final BuiltList<ServiceArea> services;
  @override
  final Performance performance;
  @override
  final int areaId;
  @override
  final BuiltList<int> operatorIds;

  factory _$ServicesAreaResponse(
          [void Function(ServicesAreaResponseBuilder)? updates]) =>
      (ServicesAreaResponseBuilder()..update(updates))._build();

  _$ServicesAreaResponse._(
      {required this.services,
      required this.performance,
      required this.areaId,
      required this.operatorIds})
      : super._();
  @override
  ServicesAreaResponse rebuild(
          void Function(ServicesAreaResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServicesAreaResponseBuilder toBuilder() =>
      ServicesAreaResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServicesAreaResponse &&
        services == other.services &&
        performance == other.performance &&
        areaId == other.areaId &&
        operatorIds == other.operatorIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jc(_$hash, performance.hashCode);
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, operatorIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServicesAreaResponse')
          ..add('services', services)
          ..add('performance', performance)
          ..add('areaId', areaId)
          ..add('operatorIds', operatorIds))
        .toString();
  }
}

class ServicesAreaResponseBuilder
    implements Builder<ServicesAreaResponse, ServicesAreaResponseBuilder> {
  _$ServicesAreaResponse? _$v;

  ListBuilder<ServiceArea>? _services;
  ListBuilder<ServiceArea> get services =>
      _$this._services ??= ListBuilder<ServiceArea>();
  set services(ListBuilder<ServiceArea>? services) =>
      _$this._services = services;

  PerformanceBuilder? _performance;
  PerformanceBuilder get performance =>
      _$this._performance ??= PerformanceBuilder();
  set performance(PerformanceBuilder? performance) =>
      _$this._performance = performance;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  ListBuilder<int>? _operatorIds;
  ListBuilder<int> get operatorIds =>
      _$this._operatorIds ??= ListBuilder<int>();
  set operatorIds(ListBuilder<int>? operatorIds) =>
      _$this._operatorIds = operatorIds;

  ServicesAreaResponseBuilder() {
    ServicesAreaResponse._defaults(this);
  }

  ServicesAreaResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _services = $v.services.toBuilder();
      _performance = $v.performance.toBuilder();
      _areaId = $v.areaId;
      _operatorIds = $v.operatorIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServicesAreaResponse other) {
    _$v = other as _$ServicesAreaResponse;
  }

  @override
  void update(void Function(ServicesAreaResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServicesAreaResponse build() => _build();

  _$ServicesAreaResponse _build() {
    _$ServicesAreaResponse _$result;
    try {
      _$result = _$v ??
          _$ServicesAreaResponse._(
            services: services.build(),
            performance: performance.build(),
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'ServicesAreaResponse', 'areaId'),
            operatorIds: operatorIds.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'services';
        services.build();
        _$failedField = 'performance';
        performance.build();

        _$failedField = 'operatorIds';
        operatorIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServicesAreaResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
