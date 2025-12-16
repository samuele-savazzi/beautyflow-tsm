// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreaData extends AreaData {
  @override
  final int id;
  @override
  final String name;
  @override
  final BuiltList<AreaOperatorSecondary> activeOperators;
  @override
  final BuiltList<AreaWorkstation> activeWorkstations;

  factory _$AreaData([void Function(AreaDataBuilder)? updates]) =>
      (AreaDataBuilder()..update(updates))._build();

  _$AreaData._(
      {required this.id,
      required this.name,
      required this.activeOperators,
      required this.activeWorkstations})
      : super._();
  @override
  AreaData rebuild(void Function(AreaDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaDataBuilder toBuilder() => AreaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaData &&
        id == other.id &&
        name == other.name &&
        activeOperators == other.activeOperators &&
        activeWorkstations == other.activeWorkstations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, activeOperators.hashCode);
    _$hash = $jc(_$hash, activeWorkstations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreaData')
          ..add('id', id)
          ..add('name', name)
          ..add('activeOperators', activeOperators)
          ..add('activeWorkstations', activeWorkstations))
        .toString();
  }
}

class AreaDataBuilder implements Builder<AreaData, AreaDataBuilder> {
  _$AreaData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<AreaOperatorSecondary>? _activeOperators;
  ListBuilder<AreaOperatorSecondary> get activeOperators =>
      _$this._activeOperators ??= ListBuilder<AreaOperatorSecondary>();
  set activeOperators(ListBuilder<AreaOperatorSecondary>? activeOperators) =>
      _$this._activeOperators = activeOperators;

  ListBuilder<AreaWorkstation>? _activeWorkstations;
  ListBuilder<AreaWorkstation> get activeWorkstations =>
      _$this._activeWorkstations ??= ListBuilder<AreaWorkstation>();
  set activeWorkstations(ListBuilder<AreaWorkstation>? activeWorkstations) =>
      _$this._activeWorkstations = activeWorkstations;

  AreaDataBuilder() {
    AreaData._defaults(this);
  }

  AreaDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _activeOperators = $v.activeOperators.toBuilder();
      _activeWorkstations = $v.activeWorkstations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaData other) {
    _$v = other as _$AreaData;
  }

  @override
  void update(void Function(AreaDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaData build() => _build();

  _$AreaData _build() {
    _$AreaData _$result;
    try {
      _$result = _$v ??
          _$AreaData._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'AreaData', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AreaData', 'name'),
            activeOperators: activeOperators.build(),
            activeWorkstations: activeWorkstations.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activeOperators';
        activeOperators.build();
        _$failedField = 'activeWorkstations';
        activeWorkstations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AreaData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
