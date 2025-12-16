// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workstation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Workstation extends Workstation {
  @override
  final int id;
  @override
  final String name;

  factory _$Workstation([void Function(WorkstationBuilder)? updates]) =>
      (WorkstationBuilder()..update(updates))._build();

  _$Workstation._({required this.id, required this.name}) : super._();
  @override
  Workstation rebuild(void Function(WorkstationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkstationBuilder toBuilder() => WorkstationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Workstation && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Workstation')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class WorkstationBuilder implements Builder<Workstation, WorkstationBuilder> {
  _$Workstation? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  WorkstationBuilder() {
    Workstation._defaults(this);
  }

  WorkstationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Workstation other) {
    _$v = other as _$Workstation;
  }

  @override
  void update(void Function(WorkstationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Workstation build() => _build();

  _$Workstation _build() {
    final _$result = _$v ??
        _$Workstation._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Workstation', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'Workstation', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
