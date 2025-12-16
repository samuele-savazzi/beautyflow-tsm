// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_premium_operator_access_premium_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedPremiumOperatorAccessPremiumType
    extends PatchedPremiumOperatorAccessPremiumType {
  @override
  final int? id;
  @override
  final String? name;

  factory _$PatchedPremiumOperatorAccessPremiumType(
          [void Function(PatchedPremiumOperatorAccessPremiumTypeBuilder)?
              updates]) =>
      (PatchedPremiumOperatorAccessPremiumTypeBuilder()..update(updates))
          ._build();

  _$PatchedPremiumOperatorAccessPremiumType._({this.id, this.name}) : super._();
  @override
  PatchedPremiumOperatorAccessPremiumType rebuild(
          void Function(PatchedPremiumOperatorAccessPremiumTypeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedPremiumOperatorAccessPremiumTypeBuilder toBuilder() =>
      PatchedPremiumOperatorAccessPremiumTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedPremiumOperatorAccessPremiumType &&
        id == other.id &&
        name == other.name;
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
    return (newBuiltValueToStringHelper(
            r'PatchedPremiumOperatorAccessPremiumType')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class PatchedPremiumOperatorAccessPremiumTypeBuilder
    implements
        Builder<PatchedPremiumOperatorAccessPremiumType,
            PatchedPremiumOperatorAccessPremiumTypeBuilder> {
  _$PatchedPremiumOperatorAccessPremiumType? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PatchedPremiumOperatorAccessPremiumTypeBuilder() {
    PatchedPremiumOperatorAccessPremiumType._defaults(this);
  }

  PatchedPremiumOperatorAccessPremiumTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedPremiumOperatorAccessPremiumType other) {
    _$v = other as _$PatchedPremiumOperatorAccessPremiumType;
  }

  @override
  void update(
      void Function(PatchedPremiumOperatorAccessPremiumTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedPremiumOperatorAccessPremiumType build() => _build();

  _$PatchedPremiumOperatorAccessPremiumType _build() {
    final _$result = _$v ??
        _$PatchedPremiumOperatorAccessPremiumType._(
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
