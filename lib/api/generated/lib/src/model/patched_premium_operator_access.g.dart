// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_premium_operator_access.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedPremiumOperatorAccess extends PatchedPremiumOperatorAccess {
  @override
  final int? id;
  @override
  final PatchedPremiumOperatorAccessPremiumType? premiumType;
  @override
  final int? premiumTypeId;
  @override
  final PatchedPremiumOperatorAccessOperator? operator_;
  @override
  final int? operatorId;
  @override
  final int? extraDays;
  @override
  final bool? active;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$PatchedPremiumOperatorAccess(
          [void Function(PatchedPremiumOperatorAccessBuilder)? updates]) =>
      (PatchedPremiumOperatorAccessBuilder()..update(updates))._build();

  _$PatchedPremiumOperatorAccess._(
      {this.id,
      this.premiumType,
      this.premiumTypeId,
      this.operator_,
      this.operatorId,
      this.extraDays,
      this.active,
      this.createdAt,
      this.updatedAt})
      : super._();
  @override
  PatchedPremiumOperatorAccess rebuild(
          void Function(PatchedPremiumOperatorAccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedPremiumOperatorAccessBuilder toBuilder() =>
      PatchedPremiumOperatorAccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedPremiumOperatorAccess &&
        id == other.id &&
        premiumType == other.premiumType &&
        premiumTypeId == other.premiumTypeId &&
        operator_ == other.operator_ &&
        operatorId == other.operatorId &&
        extraDays == other.extraDays &&
        active == other.active &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, premiumType.hashCode);
    _$hash = $jc(_$hash, premiumTypeId.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, extraDays.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedPremiumOperatorAccess')
          ..add('id', id)
          ..add('premiumType', premiumType)
          ..add('premiumTypeId', premiumTypeId)
          ..add('operator_', operator_)
          ..add('operatorId', operatorId)
          ..add('extraDays', extraDays)
          ..add('active', active)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PatchedPremiumOperatorAccessBuilder
    implements
        Builder<PatchedPremiumOperatorAccess,
            PatchedPremiumOperatorAccessBuilder> {
  _$PatchedPremiumOperatorAccess? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  PatchedPremiumOperatorAccessPremiumTypeBuilder? _premiumType;
  PatchedPremiumOperatorAccessPremiumTypeBuilder get premiumType =>
      _$this._premiumType ??= PatchedPremiumOperatorAccessPremiumTypeBuilder();
  set premiumType(
          PatchedPremiumOperatorAccessPremiumTypeBuilder? premiumType) =>
      _$this._premiumType = premiumType;

  int? _premiumTypeId;
  int? get premiumTypeId => _$this._premiumTypeId;
  set premiumTypeId(int? premiumTypeId) =>
      _$this._premiumTypeId = premiumTypeId;

  PatchedPremiumOperatorAccessOperatorBuilder? _operator_;
  PatchedPremiumOperatorAccessOperatorBuilder get operator_ =>
      _$this._operator_ ??= PatchedPremiumOperatorAccessOperatorBuilder();
  set operator_(PatchedPremiumOperatorAccessOperatorBuilder? operator_) =>
      _$this._operator_ = operator_;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  int? _extraDays;
  int? get extraDays => _$this._extraDays;
  set extraDays(int? extraDays) => _$this._extraDays = extraDays;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PatchedPremiumOperatorAccessBuilder() {
    PatchedPremiumOperatorAccess._defaults(this);
  }

  PatchedPremiumOperatorAccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _premiumType = $v.premiumType?.toBuilder();
      _premiumTypeId = $v.premiumTypeId;
      _operator_ = $v.operator_?.toBuilder();
      _operatorId = $v.operatorId;
      _extraDays = $v.extraDays;
      _active = $v.active;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedPremiumOperatorAccess other) {
    _$v = other as _$PatchedPremiumOperatorAccess;
  }

  @override
  void update(void Function(PatchedPremiumOperatorAccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedPremiumOperatorAccess build() => _build();

  _$PatchedPremiumOperatorAccess _build() {
    _$PatchedPremiumOperatorAccess _$result;
    try {
      _$result = _$v ??
          _$PatchedPremiumOperatorAccess._(
            id: id,
            premiumType: _premiumType?.build(),
            premiumTypeId: premiumTypeId,
            operator_: _operator_?.build(),
            operatorId: operatorId,
            extraDays: extraDays,
            active: active,
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'premiumType';
        _premiumType?.build();

        _$failedField = 'operator_';
        _operator_?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PatchedPremiumOperatorAccess', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
