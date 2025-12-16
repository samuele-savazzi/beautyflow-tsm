// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_step_category_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceStepCategoryUpdate extends ServiceStepCategoryUpdate {
  @override
  final int id;
  @override
  final String? name;
  @override
  final int? overtime;
  @override
  final double? overprice;

  factory _$ServiceStepCategoryUpdate(
          [void Function(ServiceStepCategoryUpdateBuilder)? updates]) =>
      (ServiceStepCategoryUpdateBuilder()..update(updates))._build();

  _$ServiceStepCategoryUpdate._(
      {required this.id, this.name, this.overtime, this.overprice})
      : super._();
  @override
  ServiceStepCategoryUpdate rebuild(
          void Function(ServiceStepCategoryUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceStepCategoryUpdateBuilder toBuilder() =>
      ServiceStepCategoryUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceStepCategoryUpdate &&
        id == other.id &&
        name == other.name &&
        overtime == other.overtime &&
        overprice == other.overprice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, overtime.hashCode);
    _$hash = $jc(_$hash, overprice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceStepCategoryUpdate')
          ..add('id', id)
          ..add('name', name)
          ..add('overtime', overtime)
          ..add('overprice', overprice))
        .toString();
  }
}

class ServiceStepCategoryUpdateBuilder
    implements
        Builder<ServiceStepCategoryUpdate, ServiceStepCategoryUpdateBuilder> {
  _$ServiceStepCategoryUpdate? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _overtime;
  int? get overtime => _$this._overtime;
  set overtime(int? overtime) => _$this._overtime = overtime;

  double? _overprice;
  double? get overprice => _$this._overprice;
  set overprice(double? overprice) => _$this._overprice = overprice;

  ServiceStepCategoryUpdateBuilder() {
    ServiceStepCategoryUpdate._defaults(this);
  }

  ServiceStepCategoryUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _overtime = $v.overtime;
      _overprice = $v.overprice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceStepCategoryUpdate other) {
    _$v = other as _$ServiceStepCategoryUpdate;
  }

  @override
  void update(void Function(ServiceStepCategoryUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceStepCategoryUpdate build() => _build();

  _$ServiceStepCategoryUpdate _build() {
    final _$result = _$v ??
        _$ServiceStepCategoryUpdate._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ServiceStepCategoryUpdate', 'id'),
          name: name,
          overtime: overtime,
          overprice: overprice,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
