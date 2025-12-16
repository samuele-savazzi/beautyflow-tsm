// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_station_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkStationDetail extends WorkStationDetail {
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
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> services;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> disabilities;

  factory _$WorkStationDetail(
          [void Function(WorkStationDetailBuilder)? updates]) =>
      (WorkStationDetailBuilder()..update(updates))._build();

  _$WorkStationDetail._(
      {required this.id,
      required this.name,
      required this.type,
      required this.isActive,
      required this.isDisabled,
      required this.services,
      required this.disabilities})
      : super._();
  @override
  WorkStationDetail rebuild(void Function(WorkStationDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkStationDetailBuilder toBuilder() =>
      WorkStationDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkStationDetail &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        isActive == other.isActive &&
        isDisabled == other.isDisabled &&
        services == other.services &&
        disabilities == other.disabilities;
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
    _$hash = $jc(_$hash, disabilities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkStationDetail')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('isActive', isActive)
          ..add('isDisabled', isDisabled)
          ..add('services', services)
          ..add('disabilities', disabilities))
        .toString();
  }
}

class WorkStationDetailBuilder
    implements Builder<WorkStationDetail, WorkStationDetailBuilder> {
  _$WorkStationDetail? _$v;

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

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _services;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get services =>
      _$this._services ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set services(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? services) =>
      _$this._services = services;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _disabilities;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get disabilities =>
      _$this._disabilities ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set disabilities(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? disabilities) =>
      _$this._disabilities = disabilities;

  WorkStationDetailBuilder() {
    WorkStationDetail._defaults(this);
  }

  WorkStationDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _isActive = $v.isActive;
      _isDisabled = $v.isDisabled;
      _services = $v.services.toBuilder();
      _disabilities = $v.disabilities.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkStationDetail other) {
    _$v = other as _$WorkStationDetail;
  }

  @override
  void update(void Function(WorkStationDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkStationDetail build() => _build();

  _$WorkStationDetail _build() {
    _$WorkStationDetail _$result;
    try {
      _$result = _$v ??
          _$WorkStationDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'WorkStationDetail', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'WorkStationDetail', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'WorkStationDetail', 'type'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'WorkStationDetail', 'isActive'),
            isDisabled: BuiltValueNullFieldError.checkNotNull(
                isDisabled, r'WorkStationDetail', 'isDisabled'),
            services: services.build(),
            disabilities: disabilities.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'services';
        services.build();
        _$failedField = 'disabilities';
        disabilities.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkStationDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
