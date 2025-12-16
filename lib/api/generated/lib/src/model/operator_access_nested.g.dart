// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_access_nested.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorAccessNested extends OperatorAccessNested {
  @override
  final int id;
  @override
  final OperatorBasic operator_;
  @override
  final int extraDays;
  @override
  final bool active;

  factory _$OperatorAccessNested(
          [void Function(OperatorAccessNestedBuilder)? updates]) =>
      (OperatorAccessNestedBuilder()..update(updates))._build();

  _$OperatorAccessNested._(
      {required this.id,
      required this.operator_,
      required this.extraDays,
      required this.active})
      : super._();
  @override
  OperatorAccessNested rebuild(
          void Function(OperatorAccessNestedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorAccessNestedBuilder toBuilder() =>
      OperatorAccessNestedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorAccessNested &&
        id == other.id &&
        operator_ == other.operator_ &&
        extraDays == other.extraDays &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, extraDays.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorAccessNested')
          ..add('id', id)
          ..add('operator_', operator_)
          ..add('extraDays', extraDays)
          ..add('active', active))
        .toString();
  }
}

class OperatorAccessNestedBuilder
    implements Builder<OperatorAccessNested, OperatorAccessNestedBuilder> {
  _$OperatorAccessNested? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  OperatorBasicBuilder? _operator_;
  OperatorBasicBuilder get operator_ =>
      _$this._operator_ ??= OperatorBasicBuilder();
  set operator_(OperatorBasicBuilder? operator_) =>
      _$this._operator_ = operator_;

  int? _extraDays;
  int? get extraDays => _$this._extraDays;
  set extraDays(int? extraDays) => _$this._extraDays = extraDays;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  OperatorAccessNestedBuilder() {
    OperatorAccessNested._defaults(this);
  }

  OperatorAccessNestedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _operator_ = $v.operator_.toBuilder();
      _extraDays = $v.extraDays;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorAccessNested other) {
    _$v = other as _$OperatorAccessNested;
  }

  @override
  void update(void Function(OperatorAccessNestedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorAccessNested build() => _build();

  _$OperatorAccessNested _build() {
    _$OperatorAccessNested _$result;
    try {
      _$result = _$v ??
          _$OperatorAccessNested._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'OperatorAccessNested', 'id'),
            operator_: operator_.build(),
            extraDays: BuiltValueNullFieldError.checkNotNull(
                extraDays, r'OperatorAccessNested', 'extraDays'),
            active: BuiltValueNullFieldError.checkNotNull(
                active, r'OperatorAccessNested', 'active'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operator_';
        operator_.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorAccessNested', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
