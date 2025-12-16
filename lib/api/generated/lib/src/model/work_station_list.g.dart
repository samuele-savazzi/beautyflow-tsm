// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_station_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkStationList extends WorkStationList {
  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
  @override
  final bool isActive;
  @override
  final bool isDisabled;
  @override
  final BuiltList<int> services;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? currentDisability;

  factory _$WorkStationList([void Function(WorkStationListBuilder)? updates]) =>
      (WorkStationListBuilder()..update(updates))._build();

  _$WorkStationList._(
      {required this.id,
      required this.name,
      required this.type,
      required this.isActive,
      required this.isDisabled,
      required this.services,
      this.currentDisability})
      : super._();
  @override
  WorkStationList rebuild(void Function(WorkStationListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkStationListBuilder toBuilder() => WorkStationListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkStationList &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        isActive == other.isActive &&
        isDisabled == other.isDisabled &&
        services == other.services &&
        currentDisability == other.currentDisability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, isDisabled.hashCode);
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jc(_$hash, currentDisability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkStationList')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('isActive', isActive)
          ..add('isDisabled', isDisabled)
          ..add('services', services)
          ..add('currentDisability', currentDisability))
        .toString();
  }
}

class WorkStationListBuilder
    implements Builder<WorkStationList, WorkStationListBuilder> {
  _$WorkStationList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

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

  WorkStationListBuilder() {
    WorkStationList._defaults(this);
  }

  WorkStationListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _isActive = $v.isActive;
      _isDisabled = $v.isDisabled;
      _services = $v.services.toBuilder();
      _currentDisability = $v.currentDisability?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkStationList other) {
    _$v = other as _$WorkStationList;
  }

  @override
  void update(void Function(WorkStationListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkStationList build() => _build();

  _$WorkStationList _build() {
    _$WorkStationList _$result;
    try {
      _$result = _$v ??
          _$WorkStationList._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'WorkStationList', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'WorkStationList', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'WorkStationList', 'type'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'WorkStationList', 'isActive'),
            isDisabled: BuiltValueNullFieldError.checkNotNull(
                isDisabled, r'WorkStationList', 'isDisabled'),
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
            r'WorkStationList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
