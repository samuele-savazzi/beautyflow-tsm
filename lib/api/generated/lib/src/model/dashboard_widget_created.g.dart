// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_widget_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardWidgetCreated extends DashboardWidgetCreated {
  @override
  final int id;
  @override
  final String code;
  @override
  final String name;
  @override
  final String message;

  factory _$DashboardWidgetCreated(
          [void Function(DashboardWidgetCreatedBuilder)? updates]) =>
      (DashboardWidgetCreatedBuilder()..update(updates))._build();

  _$DashboardWidgetCreated._(
      {required this.id,
      required this.code,
      required this.name,
      required this.message})
      : super._();
  @override
  DashboardWidgetCreated rebuild(
          void Function(DashboardWidgetCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardWidgetCreatedBuilder toBuilder() =>
      DashboardWidgetCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardWidgetCreated &&
        id == other.id &&
        code == other.code &&
        name == other.name &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardWidgetCreated')
          ..add('id', id)
          ..add('code', code)
          ..add('name', name)
          ..add('message', message))
        .toString();
  }
}

class DashboardWidgetCreatedBuilder
    implements Builder<DashboardWidgetCreated, DashboardWidgetCreatedBuilder> {
  _$DashboardWidgetCreated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DashboardWidgetCreatedBuilder() {
    DashboardWidgetCreated._defaults(this);
  }

  DashboardWidgetCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _name = $v.name;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardWidgetCreated other) {
    _$v = other as _$DashboardWidgetCreated;
  }

  @override
  void update(void Function(DashboardWidgetCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardWidgetCreated build() => _build();

  _$DashboardWidgetCreated _build() {
    final _$result = _$v ??
        _$DashboardWidgetCreated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'DashboardWidgetCreated', 'id'),
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'DashboardWidgetCreated', 'code'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'DashboardWidgetCreated', 'name'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'DashboardWidgetCreated', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
