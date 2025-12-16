// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aree.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Aree extends Aree {
  @override
  final int id;
  @override
  final bool mainArea;
  @override
  final String name;

  factory _$Aree([void Function(AreeBuilder)? updates]) =>
      (AreeBuilder()..update(updates))._build();

  _$Aree._({required this.id, required this.mainArea, required this.name})
      : super._();
  @override
  Aree rebuild(void Function(AreeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreeBuilder toBuilder() => AreeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Aree &&
        id == other.id &&
        mainArea == other.mainArea &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, mainArea.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Aree')
          ..add('id', id)
          ..add('mainArea', mainArea)
          ..add('name', name))
        .toString();
  }
}

class AreeBuilder implements Builder<Aree, AreeBuilder> {
  _$Aree? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _mainArea;
  bool? get mainArea => _$this._mainArea;
  set mainArea(bool? mainArea) => _$this._mainArea = mainArea;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AreeBuilder() {
    Aree._defaults(this);
  }

  AreeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _mainArea = $v.mainArea;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Aree other) {
    _$v = other as _$Aree;
  }

  @override
  void update(void Function(AreeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Aree build() => _build();

  _$Aree _build() {
    final _$result = _$v ??
        _$Aree._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Aree', 'id'),
          mainArea: BuiltValueNullFieldError.checkNotNull(
              mainArea, r'Aree', 'mainArea'),
          name: BuiltValueNullFieldError.checkNotNull(name, r'Aree', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
