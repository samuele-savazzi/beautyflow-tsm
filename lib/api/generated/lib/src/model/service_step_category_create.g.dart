// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_step_category_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceStepCategoryCreate extends ServiceStepCategoryCreate {
  @override
  final int id;
  @override
  final String? name;
  @override
  final int? overtime;
  @override
  final double? overprice;

  factory _$ServiceStepCategoryCreate(
          [void Function(ServiceStepCategoryCreateBuilder)? updates]) =>
      (ServiceStepCategoryCreateBuilder()..update(updates))._build();

  _$ServiceStepCategoryCreate._(
      {required this.id, this.name, this.overtime, this.overprice})
      : super._();
  @override
  ServiceStepCategoryCreate rebuild(
          void Function(ServiceStepCategoryCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceStepCategoryCreateBuilder toBuilder() =>
      ServiceStepCategoryCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceStepCategoryCreate &&
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
    return (newBuiltValueToStringHelper(r'ServiceStepCategoryCreate')
          ..add('id', id)
          ..add('name', name)
          ..add('overtime', overtime)
          ..add('overprice', overprice))
        .toString();
  }
}

class ServiceStepCategoryCreateBuilder
    implements
        Builder<ServiceStepCategoryCreate, ServiceStepCategoryCreateBuilder> {
  _$ServiceStepCategoryCreate? _$v;

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

  ServiceStepCategoryCreateBuilder() {
    ServiceStepCategoryCreate._defaults(this);
  }

  ServiceStepCategoryCreateBuilder get _$this {
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
  void replace(ServiceStepCategoryCreate other) {
    _$v = other as _$ServiceStepCategoryCreate;
  }

  @override
  void update(void Function(ServiceStepCategoryCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceStepCategoryCreate build() => _build();

  _$ServiceStepCategoryCreate _build() {
    final _$result = _$v ??
        _$ServiceStepCategoryCreate._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ServiceStepCategoryCreate', 'id'),
          name: name,
          overtime: overtime,
          overprice: overprice,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
