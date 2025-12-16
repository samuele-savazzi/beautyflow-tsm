// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_operator_access_bulk.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PremiumOperatorAccessBulk extends PremiumOperatorAccessBulk {
  @override
  final int premiumType;
  @override
  final BuiltList<BuiltMap<String, int>> operators;

  factory _$PremiumOperatorAccessBulk(
          [void Function(PremiumOperatorAccessBulkBuilder)? updates]) =>
      (PremiumOperatorAccessBulkBuilder()..update(updates))._build();

  _$PremiumOperatorAccessBulk._(
      {required this.premiumType, required this.operators})
      : super._();
  @override
  PremiumOperatorAccessBulk rebuild(
          void Function(PremiumOperatorAccessBulkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PremiumOperatorAccessBulkBuilder toBuilder() =>
      PremiumOperatorAccessBulkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PremiumOperatorAccessBulk &&
        premiumType == other.premiumType &&
        operators == other.operators;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, premiumType.hashCode);
    _$hash = $jc(_$hash, operators.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PremiumOperatorAccessBulk')
          ..add('premiumType', premiumType)
          ..add('operators', operators))
        .toString();
  }
}

class PremiumOperatorAccessBulkBuilder
    implements
        Builder<PremiumOperatorAccessBulk, PremiumOperatorAccessBulkBuilder> {
  _$PremiumOperatorAccessBulk? _$v;

  int? _premiumType;
  int? get premiumType => _$this._premiumType;
  set premiumType(int? premiumType) => _$this._premiumType = premiumType;

  ListBuilder<BuiltMap<String, int>>? _operators;
  ListBuilder<BuiltMap<String, int>> get operators =>
      _$this._operators ??= ListBuilder<BuiltMap<String, int>>();
  set operators(ListBuilder<BuiltMap<String, int>>? operators) =>
      _$this._operators = operators;

  PremiumOperatorAccessBulkBuilder() {
    PremiumOperatorAccessBulk._defaults(this);
  }

  PremiumOperatorAccessBulkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _premiumType = $v.premiumType;
      _operators = $v.operators.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PremiumOperatorAccessBulk other) {
    _$v = other as _$PremiumOperatorAccessBulk;
  }

  @override
  void update(void Function(PremiumOperatorAccessBulkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PremiumOperatorAccessBulk build() => _build();

  _$PremiumOperatorAccessBulk _build() {
    _$PremiumOperatorAccessBulk _$result;
    try {
      _$result = _$v ??
          _$PremiumOperatorAccessBulk._(
            premiumType: BuiltValueNullFieldError.checkNotNull(
                premiumType, r'PremiumOperatorAccessBulk', 'premiumType'),
            operators: operators.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operators';
        operators.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PremiumOperatorAccessBulk', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
