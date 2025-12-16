// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_service.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvailableService extends AvailableService {
  @override
  final int id;
  @override
  final String name;
  @override
  final BuiltList<ServiceSteps> steps;

  factory _$AvailableService(
          [void Function(AvailableServiceBuilder)? updates]) =>
      (AvailableServiceBuilder()..update(updates))._build();

  _$AvailableService._(
      {required this.id, required this.name, required this.steps})
      : super._();
  @override
  AvailableService rebuild(void Function(AvailableServiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvailableServiceBuilder toBuilder() =>
      AvailableServiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailableService &&
        id == other.id &&
        name == other.name &&
        steps == other.steps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, steps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvailableService')
          ..add('id', id)
          ..add('name', name)
          ..add('steps', steps))
        .toString();
  }
}

class AvailableServiceBuilder
    implements Builder<AvailableService, AvailableServiceBuilder> {
  _$AvailableService? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<ServiceSteps>? _steps;
  ListBuilder<ServiceSteps> get steps =>
      _$this._steps ??= ListBuilder<ServiceSteps>();
  set steps(ListBuilder<ServiceSteps>? steps) => _$this._steps = steps;

  AvailableServiceBuilder() {
    AvailableService._defaults(this);
  }

  AvailableServiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _steps = $v.steps.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailableService other) {
    _$v = other as _$AvailableService;
  }

  @override
  void update(void Function(AvailableServiceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvailableService build() => _build();

  _$AvailableService _build() {
    _$AvailableService _$result;
    try {
      _$result = _$v ??
          _$AvailableService._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AvailableService', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AvailableService', 'name'),
            steps: steps.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'steps';
        steps.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AvailableService', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
