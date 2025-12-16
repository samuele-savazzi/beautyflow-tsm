// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceCreated extends ServiceCreated {
  @override
  final int id;
  @override
  final String message;

  factory _$ServiceCreated([void Function(ServiceCreatedBuilder)? updates]) =>
      (ServiceCreatedBuilder()..update(updates))._build();

  _$ServiceCreated._({required this.id, required this.message}) : super._();
  @override
  ServiceCreated rebuild(void Function(ServiceCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceCreatedBuilder toBuilder() => ServiceCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceCreated &&
        id == other.id &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceCreated')
          ..add('id', id)
          ..add('message', message))
        .toString();
  }
}

class ServiceCreatedBuilder
    implements Builder<ServiceCreated, ServiceCreatedBuilder> {
  _$ServiceCreated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ServiceCreatedBuilder() {
    ServiceCreated._defaults(this);
  }

  ServiceCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceCreated other) {
    _$v = other as _$ServiceCreated;
  }

  @override
  void update(void Function(ServiceCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceCreated build() => _build();

  _$ServiceCreated _build() {
    final _$result = _$v ??
        _$ServiceCreated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ServiceCreated', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'ServiceCreated', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
