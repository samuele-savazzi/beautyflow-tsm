// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_order_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StepOrderUpdate extends StepOrderUpdate {
  @override
  final BuiltList<int> stepOrder;

  factory _$StepOrderUpdate([void Function(StepOrderUpdateBuilder)? updates]) =>
      (StepOrderUpdateBuilder()..update(updates))._build();

  _$StepOrderUpdate._({required this.stepOrder}) : super._();
  @override
  StepOrderUpdate rebuild(void Function(StepOrderUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StepOrderUpdateBuilder toBuilder() => StepOrderUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StepOrderUpdate && stepOrder == other.stepOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stepOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StepOrderUpdate')
          ..add('stepOrder', stepOrder))
        .toString();
  }
}

class StepOrderUpdateBuilder
    implements Builder<StepOrderUpdate, StepOrderUpdateBuilder> {
  _$StepOrderUpdate? _$v;

  ListBuilder<int>? _stepOrder;
  ListBuilder<int> get stepOrder => _$this._stepOrder ??= ListBuilder<int>();
  set stepOrder(ListBuilder<int>? stepOrder) => _$this._stepOrder = stepOrder;

  StepOrderUpdateBuilder() {
    StepOrderUpdate._defaults(this);
  }

  StepOrderUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stepOrder = $v.stepOrder.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StepOrderUpdate other) {
    _$v = other as _$StepOrderUpdate;
  }

  @override
  void update(void Function(StepOrderUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StepOrderUpdate build() => _build();

  _$StepOrderUpdate _build() {
    _$StepOrderUpdate _$result;
    try {
      _$result = _$v ??
          _$StepOrderUpdate._(
            stepOrder: stepOrder.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stepOrder';
        stepOrder.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StepOrderUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
