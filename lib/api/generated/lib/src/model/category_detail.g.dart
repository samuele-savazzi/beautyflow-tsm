// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryDetail extends CategoryDetail {
  @override
  final int id;
  @override
  final String name;
  @override
  final String stepName;

  factory _$CategoryDetail([void Function(CategoryDetailBuilder)? updates]) =>
      (CategoryDetailBuilder()..update(updates))._build();

  _$CategoryDetail._(
      {required this.id, required this.name, required this.stepName})
      : super._();
  @override
  CategoryDetail rebuild(void Function(CategoryDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryDetailBuilder toBuilder() => CategoryDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryDetail &&
        id == other.id &&
        name == other.name &&
        stepName == other.stepName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, stepName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryDetail')
          ..add('id', id)
          ..add('name', name)
          ..add('stepName', stepName))
        .toString();
  }
}

class CategoryDetailBuilder
    implements Builder<CategoryDetail, CategoryDetailBuilder> {
  _$CategoryDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _stepName;
  String? get stepName => _$this._stepName;
  set stepName(String? stepName) => _$this._stepName = stepName;

  CategoryDetailBuilder() {
    CategoryDetail._defaults(this);
  }

  CategoryDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _stepName = $v.stepName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryDetail other) {
    _$v = other as _$CategoryDetail;
  }

  @override
  void update(void Function(CategoryDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryDetail build() => _build();

  _$CategoryDetail _build() {
    final _$result = _$v ??
        _$CategoryDetail._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CategoryDetail', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CategoryDetail', 'name'),
          stepName: BuiltValueNullFieldError.checkNotNull(
              stepName, r'CategoryDetail', 'stepName'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
