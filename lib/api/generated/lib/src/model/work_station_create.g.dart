// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_station_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkStationCreate extends WorkStationCreate {
  @override
  final String name;
  @override
  final int areaId;
  @override
  final bool? isActive;
  @override
  final String type;
  @override
  final BuiltList<int>? services;

  factory _$WorkStationCreate(
          [void Function(WorkStationCreateBuilder)? updates]) =>
      (WorkStationCreateBuilder()..update(updates))._build();

  _$WorkStationCreate._(
      {required this.name,
      required this.areaId,
      this.isActive,
      required this.type,
      this.services})
      : super._();
  @override
  WorkStationCreate rebuild(void Function(WorkStationCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkStationCreateBuilder toBuilder() =>
      WorkStationCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkStationCreate &&
        name == other.name &&
        areaId == other.areaId &&
        isActive == other.isActive &&
        type == other.type &&
        services == other.services;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkStationCreate')
          ..add('name', name)
          ..add('areaId', areaId)
          ..add('isActive', isActive)
          ..add('type', type)
          ..add('services', services))
        .toString();
  }
}

class WorkStationCreateBuilder
    implements Builder<WorkStationCreate, WorkStationCreateBuilder> {
  _$WorkStationCreate? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<int>? _services;
  ListBuilder<int> get services => _$this._services ??= ListBuilder<int>();
  set services(ListBuilder<int>? services) => _$this._services = services;

  WorkStationCreateBuilder() {
    WorkStationCreate._defaults(this);
  }

  WorkStationCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _areaId = $v.areaId;
      _isActive = $v.isActive;
      _type = $v.type;
      _services = $v.services?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkStationCreate other) {
    _$v = other as _$WorkStationCreate;
  }

  @override
  void update(void Function(WorkStationCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkStationCreate build() => _build();

  _$WorkStationCreate _build() {
    _$WorkStationCreate _$result;
    try {
      _$result = _$v ??
          _$WorkStationCreate._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'WorkStationCreate', 'name'),
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'WorkStationCreate', 'areaId'),
            isActive: isActive,
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'WorkStationCreate', 'type'),
            services: _services?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'services';
        _services?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkStationCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
