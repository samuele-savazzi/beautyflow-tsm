// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_with_steps_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceWithStepsUpdate extends ServiceWithStepsUpdate {
  @override
  final int id;
  @override
  final String? name;
  @override
  final double? price;
  @override
  final BuiltList<ServiceStepUpdate>? steps;

  factory _$ServiceWithStepsUpdate(
          [void Function(ServiceWithStepsUpdateBuilder)? updates]) =>
      (ServiceWithStepsUpdateBuilder()..update(updates))._build();

  _$ServiceWithStepsUpdate._(
      {required this.id, this.name, this.price, this.steps})
      : super._();
  @override
  ServiceWithStepsUpdate rebuild(
          void Function(ServiceWithStepsUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceWithStepsUpdateBuilder toBuilder() =>
      ServiceWithStepsUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceWithStepsUpdate &&
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
    return (newBuiltValueToStringHelper(r'ServiceWithStepsUpdate')
          ..add('id', id)
          ..add('name', name)
          ..add('price', price)
          ..add('steps', steps))
        .toString();
  }
}

class ServiceWithStepsUpdateBuilder
    implements Builder<ServiceWithStepsUpdate, ServiceWithStepsUpdateBuilder> {
  _$ServiceWithStepsUpdate? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  ListBuilder<ServiceStepUpdate>? _steps;
  ListBuilder<ServiceStepUpdate> get steps =>
      _$this._steps ??= ListBuilder<ServiceStepUpdate>();
  set steps(ListBuilder<ServiceStepUpdate>? steps) => _$this._steps = steps;

  ServiceWithStepsUpdateBuilder() {
    ServiceWithStepsUpdate._defaults(this);
  }

  ServiceWithStepsUpdateBuilder get _$this {
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
  void replace(ServiceWithStepsUpdate other) {
    _$v = other as _$ServiceWithStepsUpdate;
  }

  @override
  void update(void Function(ServiceWithStepsUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceWithStepsUpdate build() => _build();

  _$ServiceWithStepsUpdate _build() {
    _$ServiceWithStepsUpdate _$result;
    try {
      _$result = _$v ??
          _$ServiceWithStepsUpdate._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ServiceWithStepsUpdate', 'id'),
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
            r'ServiceWithStepsUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
