// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_station_update_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkStationUpdateResponse extends WorkStationUpdateResponse {
  @override
  final int id;
  @override
  final String name;
  @override
  final bool isActive;
  @override
  final String type;
  @override
  final bool isDisabled;
  @override
  final BuiltList<int> services;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? currentDisability;

  factory _$WorkStationUpdateResponse(
          [void Function(WorkStationUpdateResponseBuilder)? updates]) =>
      (WorkStationUpdateResponseBuilder()..update(updates))._build();

  _$WorkStationUpdateResponse._(
      {required this.id,
      required this.name,
      required this.isActive,
      required this.type,
      required this.isDisabled,
      required this.services,
      this.currentDisability})
      : super._();
  @override
  WorkStationUpdateResponse rebuild(
          void Function(WorkStationUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkStationUpdateResponseBuilder toBuilder() =>
      WorkStationUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkStationUpdateResponse &&
        id == other.id &&
        name == other.name &&
        isActive == other.isActive &&
        type == other.type &&
        isDisabled == other.isDisabled &&
        services == other.services &&
        currentDisability == other.currentDisability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, isDisabled.hashCode);
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jc(_$hash, currentDisability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkStationUpdateResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('isActive', isActive)
          ..add('type', type)
          ..add('isDisabled', isDisabled)
          ..add('services', services)
          ..add('currentDisability', currentDisability))
        .toString();
  }
}

class WorkStationUpdateResponseBuilder
    implements
        Builder<WorkStationUpdateResponse, WorkStationUpdateResponseBuilder> {
  _$WorkStationUpdateResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  bool? _isDisabled;
  bool? get isDisabled => _$this._isDisabled;
  set isDisabled(bool? isDisabled) => _$this._isDisabled = isDisabled;

  ListBuilder<int>? _services;
  ListBuilder<int> get services => _$this._services ??= ListBuilder<int>();
  set services(ListBuilder<int>? services) => _$this._services = services;

  MapBuilder<String, Map<String, dynamic>?>? _currentDisability;
  MapBuilder<String, Map<String, dynamic>?> get currentDisability =>
      _$this._currentDisability ??= MapBuilder<String, Map<String, dynamic>?>();
  set currentDisability(
          MapBuilder<String, Map<String, dynamic>?>? currentDisability) =>
      _$this._currentDisability = currentDisability;

  WorkStationUpdateResponseBuilder() {
    WorkStationUpdateResponse._defaults(this);
  }

  WorkStationUpdateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _isActive = $v.isActive;
      _type = $v.type;
      _isDisabled = $v.isDisabled;
      _services = $v.services.toBuilder();
      _currentDisability = $v.currentDisability?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkStationUpdateResponse other) {
    _$v = other as _$WorkStationUpdateResponse;
  }

  @override
  void update(void Function(WorkStationUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkStationUpdateResponse build() => _build();

  _$WorkStationUpdateResponse _build() {
    _$WorkStationUpdateResponse _$result;
    try {
      _$result = _$v ??
          _$WorkStationUpdateResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'WorkStationUpdateResponse', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'WorkStationUpdateResponse', 'name'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'WorkStationUpdateResponse', 'isActive'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'WorkStationUpdateResponse', 'type'),
            isDisabled: BuiltValueNullFieldError.checkNotNull(
                isDisabled, r'WorkStationUpdateResponse', 'isDisabled'),
            services: services.build(),
            currentDisability: _currentDisability?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'services';
        services.build();
        _$failedField = 'currentDisability';
        _currentDisability?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkStationUpdateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
