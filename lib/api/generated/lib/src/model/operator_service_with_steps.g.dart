// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_service_with_steps.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorServiceWithSteps extends OperatorServiceWithSteps {
  @override
  final int id;
  @override
  final String? name;
  @override
  final double? price;
  @override
  final BuiltList<ServiceStepCreate>? steps;

  factory _$OperatorServiceWithSteps(
          [void Function(OperatorServiceWithStepsBuilder)? updates]) =>
      (OperatorServiceWithStepsBuilder()..update(updates))._build();

  _$OperatorServiceWithSteps._(
      {required this.id, this.name, this.price, this.steps})
      : super._();
  @override
  OperatorServiceWithSteps rebuild(
          void Function(OperatorServiceWithStepsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorServiceWithStepsBuilder toBuilder() =>
      OperatorServiceWithStepsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorServiceWithSteps &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        steps == other.steps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, steps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorServiceWithSteps')
          ..add('id', id)
          ..add('name', name)
          ..add('price', price)
          ..add('steps', steps))
        .toString();
  }
}

class OperatorServiceWithStepsBuilder
    implements
        Builder<OperatorServiceWithSteps, OperatorServiceWithStepsBuilder> {
  _$OperatorServiceWithSteps? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  ListBuilder<ServiceStepCreate>? _steps;
  ListBuilder<ServiceStepCreate> get steps =>
      _$this._steps ??= ListBuilder<ServiceStepCreate>();
  set steps(ListBuilder<ServiceStepCreate>? steps) => _$this._steps = steps;

  OperatorServiceWithStepsBuilder() {
    OperatorServiceWithSteps._defaults(this);
  }

  OperatorServiceWithStepsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _price = $v.price;
      _steps = $v.steps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorServiceWithSteps other) {
    _$v = other as _$OperatorServiceWithSteps;
  }

  @override
  void update(void Function(OperatorServiceWithStepsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorServiceWithSteps build() => _build();

  _$OperatorServiceWithSteps _build() {
    _$OperatorServiceWithSteps _$result;
    try {
      _$result = _$v ??
          _$OperatorServiceWithSteps._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'OperatorServiceWithSteps', 'id'),
            name: name,
            price: price,
            steps: _steps?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'steps';
        _steps?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorServiceWithSteps', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
