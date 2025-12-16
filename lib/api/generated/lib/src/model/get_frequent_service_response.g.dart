// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_frequent_service_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFrequentServiceResponse extends GetFrequentServiceResponse {
  @override
  final bool hasFrequentService;
  @override
  final ServiceBasic? service;
  @override
  final BuiltMap<String, CategoryDetail>? categories;
  @override
  final int? durationMinutes;
  @override
  final String? durationHumanReadable;
  @override
  final int? durationSlots;
  @override
  final DateTime? updatedAt;

  factory _$GetFrequentServiceResponse(
          [void Function(GetFrequentServiceResponseBuilder)? updates]) =>
      (GetFrequentServiceResponseBuilder()..update(updates))._build();

  _$GetFrequentServiceResponse._(
      {required this.hasFrequentService,
      this.service,
      this.categories,
      this.durationMinutes,
      this.durationHumanReadable,
      this.durationSlots,
      this.updatedAt})
      : super._();
  @override
  GetFrequentServiceResponse rebuild(
          void Function(GetFrequentServiceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFrequentServiceResponseBuilder toBuilder() =>
      GetFrequentServiceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFrequentServiceResponse &&
        hasFrequentService == other.hasFrequentService &&
        service == other.service &&
        categories == other.categories &&
        durationMinutes == other.durationMinutes &&
        durationHumanReadable == other.durationHumanReadable &&
        durationSlots == other.durationSlots &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hasFrequentService.hashCode);
    _$hash = $jc(_$hash, service.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jc(_$hash, durationMinutes.hashCode);
    _$hash = $jc(_$hash, durationHumanReadable.hashCode);
    _$hash = $jc(_$hash, durationSlots.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetFrequentServiceResponse')
          ..add('hasFrequentService', hasFrequentService)
          ..add('service', service)
          ..add('categories', categories)
          ..add('durationMinutes', durationMinutes)
          ..add('durationHumanReadable', durationHumanReadable)
          ..add('durationSlots', durationSlots)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GetFrequentServiceResponseBuilder
    implements
        Builder<GetFrequentServiceResponse, GetFrequentServiceResponseBuilder> {
  _$GetFrequentServiceResponse? _$v;

  bool? _hasFrequentService;
  bool? get hasFrequentService => _$this._hasFrequentService;
  set hasFrequentService(bool? hasFrequentService) =>
      _$this._hasFrequentService = hasFrequentService;

  ServiceBasicBuilder? _service;
  ServiceBasicBuilder get service => _$this._service ??= ServiceBasicBuilder();
  set service(ServiceBasicBuilder? service) => _$this._service = service;

  MapBuilder<String, CategoryDetail>? _categories;
  MapBuilder<String, CategoryDetail> get categories =>
      _$this._categories ??= MapBuilder<String, CategoryDetail>();
  set categories(MapBuilder<String, CategoryDetail>? categories) =>
      _$this._categories = categories;

  int? _durationMinutes;
  int? get durationMinutes => _$this._durationMinutes;
  set durationMinutes(int? durationMinutes) =>
      _$this._durationMinutes = durationMinutes;

  String? _durationHumanReadable;
  String? get durationHumanReadable => _$this._durationHumanReadable;
  set durationHumanReadable(String? durationHumanReadable) =>
      _$this._durationHumanReadable = durationHumanReadable;

  int? _durationSlots;
  int? get durationSlots => _$this._durationSlots;
  set durationSlots(int? durationSlots) =>
      _$this._durationSlots = durationSlots;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  GetFrequentServiceResponseBuilder() {
    GetFrequentServiceResponse._defaults(this);
  }

  GetFrequentServiceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hasFrequentService = $v.hasFrequentService;
      _service = $v.service?.toBuilder();
      _categories = $v.categories?.toBuilder();
      _durationMinutes = $v.durationMinutes;
      _durationHumanReadable = $v.durationHumanReadable;
      _durationSlots = $v.durationSlots;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFrequentServiceResponse other) {
    _$v = other as _$GetFrequentServiceResponse;
  }

  @override
  void update(void Function(GetFrequentServiceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFrequentServiceResponse build() => _build();

  _$GetFrequentServiceResponse _build() {
    _$GetFrequentServiceResponse _$result;
    try {
      _$result = _$v ??
          _$GetFrequentServiceResponse._(
            hasFrequentService: BuiltValueNullFieldError.checkNotNull(
                hasFrequentService,
                r'GetFrequentServiceResponse',
                'hasFrequentService'),
            service: _service?.build(),
            categories: _categories?.build(),
            durationMinutes: durationMinutes,
            durationHumanReadable: durationHumanReadable,
            durationSlots: durationSlots,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'service';
        _service?.build();
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetFrequentServiceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
