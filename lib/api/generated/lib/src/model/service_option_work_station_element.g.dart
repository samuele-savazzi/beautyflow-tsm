// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_option_work_station_element.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceOptionWorkStationElement
    extends ServiceOptionWorkStationElement {
  @override
  final int id;
  @override
  final String name;
  @override
  final String gender;

  factory _$ServiceOptionWorkStationElement(
          [void Function(ServiceOptionWorkStationElementBuilder)? updates]) =>
      (ServiceOptionWorkStationElementBuilder()..update(updates))._build();

  _$ServiceOptionWorkStationElement._(
      {required this.id, required this.name, required this.gender})
      : super._();
  @override
  ServiceOptionWorkStationElement rebuild(
          void Function(ServiceOptionWorkStationElementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceOptionWorkStationElementBuilder toBuilder() =>
      ServiceOptionWorkStationElementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceOptionWorkStationElement &&
        id == other.id &&
        name == other.name &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceOptionWorkStationElement')
          ..add('id', id)
          ..add('name', name)
          ..add('gender', gender))
        .toString();
  }
}

class ServiceOptionWorkStationElementBuilder
    implements
        Builder<ServiceOptionWorkStationElement,
            ServiceOptionWorkStationElementBuilder> {
  _$ServiceOptionWorkStationElement? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  ServiceOptionWorkStationElementBuilder() {
    ServiceOptionWorkStationElement._defaults(this);
  }

  ServiceOptionWorkStationElementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceOptionWorkStationElement other) {
    _$v = other as _$ServiceOptionWorkStationElement;
  }

  @override
  void update(void Function(ServiceOptionWorkStationElementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceOptionWorkStationElement build() => _build();

  _$ServiceOptionWorkStationElement _build() {
    final _$result = _$v ??
        _$ServiceOptionWorkStationElement._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ServiceOptionWorkStationElement', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ServiceOptionWorkStationElement', 'name'),
          gender: BuiltValueNullFieldError.checkNotNull(
              gender, r'ServiceOptionWorkStationElement', 'gender'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
