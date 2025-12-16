// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_step_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceStepUpdate extends ServiceStepUpdate {
  @override
  final int id;
  @override
  final String? name;
  @override
  final int? time;
  @override
  final BuiltList<ServiceStepCategoryUpdate>? categories;

  factory _$ServiceStepUpdate(
          [void Function(ServiceStepUpdateBuilder)? updates]) =>
      (ServiceStepUpdateBuilder()..update(updates))._build();

  _$ServiceStepUpdate._(
      {required this.id, this.name, this.time, this.categories})
      : super._();
  @override
  ServiceStepUpdate rebuild(void Function(ServiceStepUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceStepUpdateBuilder toBuilder() =>
      ServiceStepUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceStepUpdate &&
        id == other.id &&
        name == other.name &&
        time == other.time &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceStepUpdate')
          ..add('id', id)
          ..add('name', name)
          ..add('time', time)
          ..add('categories', categories))
        .toString();
  }
}

class ServiceStepUpdateBuilder
    implements Builder<ServiceStepUpdate, ServiceStepUpdateBuilder> {
  _$ServiceStepUpdate? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  ListBuilder<ServiceStepCategoryUpdate>? _categories;
  ListBuilder<ServiceStepCategoryUpdate> get categories =>
      _$this._categories ??= ListBuilder<ServiceStepCategoryUpdate>();
  set categories(ListBuilder<ServiceStepCategoryUpdate>? categories) =>
      _$this._categories = categories;

  ServiceStepUpdateBuilder() {
    ServiceStepUpdate._defaults(this);
  }

  ServiceStepUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _time = $v.time;
      _categories = $v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceStepUpdate other) {
    _$v = other as _$ServiceStepUpdate;
  }

  @override
  void update(void Function(ServiceStepUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceStepUpdate build() => _build();

  _$ServiceStepUpdate _build() {
    _$ServiceStepUpdate _$result;
    try {
      _$result = _$v ??
          _$ServiceStepUpdate._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ServiceStepUpdate', 'id'),
            name: name,
            time: time,
            categories: _categories?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceStepUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
