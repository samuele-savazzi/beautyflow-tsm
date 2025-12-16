// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_station_create_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkStationCreateResponse extends WorkStationCreateResponse {
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

  factory _$WorkStationCreateResponse(
          [void Function(WorkStationCreateResponseBuilder)? updates]) =>
      (WorkStationCreateResponseBuilder()..update(updates))._build();

  _$WorkStationCreateResponse._(
      {required this.id,
      required this.name,
      required this.type,
      required this.isActive,
      required this.isDisabled,
      required this.services})
      : super._();
  @override
  WorkStationCreateResponse rebuild(
          void Function(WorkStationCreateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkStationCreateResponseBuilder toBuilder() =>
      WorkStationCreateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkStationCreateResponse &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        isActive == other.isActive &&
        isDisabled == other.isDisabled &&
        services == other.services;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkStationCreateResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('isActive', isActive)
          ..add('isDisabled', isDisabled)
          ..add('services', services))
        .toString();
  }
}

class WorkStationCreateResponseBuilder
    implements
        Builder<WorkStationCreateResponse, WorkStationCreateResponseBuilder> {
  _$WorkStationCreateResponse? _$v;

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

  WorkStationCreateResponseBuilder() {
    WorkStationCreateResponse._defaults(this);
  }

  WorkStationCreateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _isActive = $v.isActive;
      _isDisabled = $v.isDisabled;
      _services = $v.services.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkStationCreateResponse other) {
    _$v = other as _$WorkStationCreateResponse;
  }

  @override
  void update(void Function(WorkStationCreateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkStationCreateResponse build() => _build();

  _$WorkStationCreateResponse _build() {
    _$WorkStationCreateResponse _$result;
    try {
      _$result = _$v ??
          _$WorkStationCreateResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'WorkStationCreateResponse', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'WorkStationCreateResponse', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'WorkStationCreateResponse', 'type'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'WorkStationCreateResponse', 'isActive'),
            isDisabled: BuiltValueNullFieldError.checkNotNull(
                isDisabled, r'WorkStationCreateResponse', 'isDisabled'),
            services: services.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'services';
        services.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkStationCreateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
