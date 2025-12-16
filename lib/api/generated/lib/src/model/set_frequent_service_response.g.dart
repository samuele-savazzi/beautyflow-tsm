// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_frequent_service_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetFrequentServiceResponse extends SetFrequentServiceResponse {
  @override
  final bool success;
  @override
  final int operatorId;
  @override
  final BuiltMap<String, Map<String, dynamic>?> service;
  @override
  final int durationSlots;
  @override
  final int durationMinutes;
  @override
  final BuiltMap<String, Map<String, dynamic>?> categories;
  @override
  final DateTime updatedAt;

  factory _$SetFrequentServiceResponse(
          [void Function(SetFrequentServiceResponseBuilder)? updates]) =>
      (SetFrequentServiceResponseBuilder()..update(updates))._build();

  _$SetFrequentServiceResponse._(
      {required this.success,
      required this.operatorId,
      required this.service,
      required this.durationSlots,
      required this.durationMinutes,
      required this.categories,
      required this.updatedAt})
      : super._();
  @override
  SetFrequentServiceResponse rebuild(
          void Function(SetFrequentServiceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetFrequentServiceResponseBuilder toBuilder() =>
      SetFrequentServiceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetFrequentServiceResponse &&
        success == other.success &&
        operatorId == other.operatorId &&
        service == other.service &&
        durationSlots == other.durationSlots &&
        durationMinutes == other.durationMinutes &&
        categories == other.categories &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, service.hashCode);
    _$hash = $jc(_$hash, durationSlots.hashCode);
    _$hash = $jc(_$hash, durationMinutes.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetFrequentServiceResponse')
          ..add('success', success)
          ..add('operatorId', operatorId)
          ..add('service', service)
          ..add('durationSlots', durationSlots)
          ..add('durationMinutes', durationMinutes)
          ..add('categories', categories)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SetFrequentServiceResponseBuilder
    implements
        Builder<SetFrequentServiceResponse, SetFrequentServiceResponseBuilder> {
  _$SetFrequentServiceResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  MapBuilder<String, Map<String, dynamic>?>? _service;
  MapBuilder<String, Map<String, dynamic>?> get service =>
      _$this._service ??= MapBuilder<String, Map<String, dynamic>?>();
  set service(MapBuilder<String, Map<String, dynamic>?>? service) =>
      _$this._service = service;

  int? _durationSlots;
  int? get durationSlots => _$this._durationSlots;
  set durationSlots(int? durationSlots) =>
      _$this._durationSlots = durationSlots;

  int? _durationMinutes;
  int? get durationMinutes => _$this._durationMinutes;
  set durationMinutes(int? durationMinutes) =>
      _$this._durationMinutes = durationMinutes;

  MapBuilder<String, Map<String, dynamic>?>? _categories;
  MapBuilder<String, Map<String, dynamic>?> get categories =>
      _$this._categories ??= MapBuilder<String, Map<String, dynamic>?>();
  set categories(MapBuilder<String, Map<String, dynamic>?>? categories) =>
      _$this._categories = categories;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  SetFrequentServiceResponseBuilder() {
    SetFrequentServiceResponse._defaults(this);
  }

  SetFrequentServiceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _operatorId = $v.operatorId;
      _service = $v.service.toBuilder();
      _durationSlots = $v.durationSlots;
      _durationMinutes = $v.durationMinutes;
      _categories = $v.categories.toBuilder();
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetFrequentServiceResponse other) {
    _$v = other as _$SetFrequentServiceResponse;
  }

  @override
  void update(void Function(SetFrequentServiceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetFrequentServiceResponse build() => _build();

  _$SetFrequentServiceResponse _build() {
    _$SetFrequentServiceResponse _$result;
    try {
      _$result = _$v ??
          _$SetFrequentServiceResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'SetFrequentServiceResponse', 'success'),
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'SetFrequentServiceResponse', 'operatorId'),
            service: service.build(),
            durationSlots: BuiltValueNullFieldError.checkNotNull(
                durationSlots, r'SetFrequentServiceResponse', 'durationSlots'),
            durationMinutes: BuiltValueNullFieldError.checkNotNull(
                durationMinutes,
                r'SetFrequentServiceResponse',
                'durationMinutes'),
            categories: categories.build(),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'SetFrequentServiceResponse', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'service';
        service.build();

        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SetFrequentServiceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
