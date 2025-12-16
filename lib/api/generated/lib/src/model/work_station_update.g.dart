// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_station_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkStationUpdate extends WorkStationUpdate {
  @override
  final int id;
  @override
  final String? name;
  @override
  final bool? isActive;
  @override
  final String? type;
  @override
  final BuiltList<int>? services;

  factory _$WorkStationUpdate(
          [void Function(WorkStationUpdateBuilder)? updates]) =>
      (WorkStationUpdateBuilder()..update(updates))._build();

  _$WorkStationUpdate._(
      {required this.id, this.name, this.isActive, this.type, this.services})
      : super._();
  @override
  WorkStationUpdate rebuild(void Function(WorkStationUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkStationUpdateBuilder toBuilder() =>
      WorkStationUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkStationUpdate &&
        id == other.id &&
        name == other.name &&
        isActive == other.isActive &&
        type == other.type &&
        services == other.services;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkStationUpdate')
          ..add('id', id)
          ..add('name', name)
          ..add('isActive', isActive)
          ..add('type', type)
          ..add('services', services))
        .toString();
  }
}

class WorkStationUpdateBuilder
    implements Builder<WorkStationUpdate, WorkStationUpdateBuilder> {
  _$WorkStationUpdate? _$v;

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

  ListBuilder<int>? _services;
  ListBuilder<int> get services => _$this._services ??= ListBuilder<int>();
  set services(ListBuilder<int>? services) => _$this._services = services;

  WorkStationUpdateBuilder() {
    WorkStationUpdate._defaults(this);
  }

  WorkStationUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _isActive = $v.isActive;
      _type = $v.type;
      _services = $v.services?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkStationUpdate other) {
    _$v = other as _$WorkStationUpdate;
  }

  @override
  void update(void Function(WorkStationUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkStationUpdate build() => _build();

  _$WorkStationUpdate _build() {
    _$WorkStationUpdate _$result;
    try {
      _$result = _$v ??
          _$WorkStationUpdate._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'WorkStationUpdate', 'id'),
            name: name,
            isActive: isActive,
            type: type,
            services: _services?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'services';
        _services?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkStationUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
