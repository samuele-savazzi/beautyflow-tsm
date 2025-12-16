// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_step_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceStepCreate extends ServiceStepCreate {
  @override
  final int id;
  @override
  final String? name;
  @override
  final int? time;
  @override
  final BuiltList<ServiceStepCategoryCreate>? categories;

  factory _$ServiceStepCreate(
          [void Function(ServiceStepCreateBuilder)? updates]) =>
      (ServiceStepCreateBuilder()..update(updates))._build();

  _$ServiceStepCreate._(
      {required this.id, this.name, this.time, this.categories})
      : super._();
  @override
  ServiceStepCreate rebuild(void Function(ServiceStepCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceStepCreateBuilder toBuilder() =>
      ServiceStepCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceStepCreate &&
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
    return (newBuiltValueToStringHelper(r'ServiceStepCreate')
          ..add('id', id)
          ..add('name', name)
          ..add('time', time)
          ..add('categories', categories))
        .toString();
  }
}

class ServiceStepCreateBuilder
    implements Builder<ServiceStepCreate, ServiceStepCreateBuilder> {
  _$ServiceStepCreate? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  ListBuilder<ServiceStepCategoryCreate>? _categories;
  ListBuilder<ServiceStepCategoryCreate> get categories =>
      _$this._categories ??= ListBuilder<ServiceStepCategoryCreate>();
  set categories(ListBuilder<ServiceStepCategoryCreate>? categories) =>
      _$this._categories = categories;

  ServiceStepCreateBuilder() {
    ServiceStepCreate._defaults(this);
  }

  ServiceStepCreateBuilder get _$this {
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
  void replace(ServiceStepCreate other) {
    _$v = other as _$ServiceStepCreate;
  }

  @override
  void update(void Function(ServiceStepCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceStepCreate build() => _build();

  _$ServiceStepCreate _build() {
    _$ServiceStepCreate _$result;
    try {
      _$result = _$v ??
          _$ServiceStepCreate._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ServiceStepCreate', 'id'),
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
            r'ServiceStepCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
