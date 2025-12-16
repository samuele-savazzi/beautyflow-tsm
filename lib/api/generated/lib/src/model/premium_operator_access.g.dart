// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_operator_access.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PremiumOperatorAccess extends PremiumOperatorAccess {
  @override
  final int id;
  @override
  final PatchedPremiumOperatorAccessPremiumType premiumType;
  @override
  final int premiumTypeId;
  @override
  final PatchedPremiumOperatorAccessOperator operator_;
  @override
  final int operatorId;
  @override
  final int? extraDays;
  @override
  final bool? active;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$PremiumOperatorAccess(
          [void Function(PremiumOperatorAccessBuilder)? updates]) =>
      (PremiumOperatorAccessBuilder()..update(updates))._build();

  _$PremiumOperatorAccess._(
      {required this.id,
      required this.premiumType,
      required this.premiumTypeId,
      required this.operator_,
      required this.operatorId,
      this.extraDays,
      this.active,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  PremiumOperatorAccess rebuild(
          void Function(PremiumOperatorAccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PremiumOperatorAccessBuilder toBuilder() =>
      PremiumOperatorAccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PremiumOperatorAccess &&
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
    return (newBuiltValueToStringHelper(r'PremiumOperatorAccess')
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

class PremiumOperatorAccessBuilder
    implements Builder<PremiumOperatorAccess, PremiumOperatorAccessBuilder> {
  _$PremiumOperatorAccess? _$v;

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

  PremiumOperatorAccessBuilder() {
    PremiumOperatorAccess._defaults(this);
  }

  PremiumOperatorAccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _premiumType = $v.premiumType.toBuilder();
      _premiumTypeId = $v.premiumTypeId;
      _operator_ = $v.operator_.toBuilder();
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
  void replace(PremiumOperatorAccess other) {
    _$v = other as _$PremiumOperatorAccess;
  }

  @override
  void update(void Function(PremiumOperatorAccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PremiumOperatorAccess build() => _build();

  _$PremiumOperatorAccess _build() {
    _$PremiumOperatorAccess _$result;
    try {
      _$result = _$v ??
          _$PremiumOperatorAccess._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PremiumOperatorAccess', 'id'),
            premiumType: premiumType.build(),
            premiumTypeId: BuiltValueNullFieldError.checkNotNull(
                premiumTypeId, r'PremiumOperatorAccess', 'premiumTypeId'),
            operator_: operator_.build(),
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'PremiumOperatorAccess', 'operatorId'),
            extraDays: extraDays,
            active: active,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'PremiumOperatorAccess', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'PremiumOperatorAccess', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'premiumType';
        premiumType.build();

        _$failedField = 'operator_';
        operator_.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PremiumOperatorAccess', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
