// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_updated.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceUpdated extends ServiceUpdated {
  @override
  final int id;
  @override
  final String message;

  factory _$ServiceUpdated([void Function(ServiceUpdatedBuilder)? updates]) =>
      (ServiceUpdatedBuilder()..update(updates))._build();

  _$ServiceUpdated._({required this.id, required this.message}) : super._();
  @override
  ServiceUpdated rebuild(void Function(ServiceUpdatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceUpdatedBuilder toBuilder() => ServiceUpdatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceUpdated &&
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
    return (newBuiltValueToStringHelper(r'ServiceUpdated')
          ..add('id', id)
          ..add('message', message))
        .toString();
  }
}

class ServiceUpdatedBuilder
    implements Builder<ServiceUpdated, ServiceUpdatedBuilder> {
  _$ServiceUpdated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ServiceUpdatedBuilder() {
    ServiceUpdated._defaults(this);
  }

  ServiceUpdatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceUpdated other) {
    _$v = other as _$ServiceUpdated;
  }

  @override
  void update(void Function(ServiceUpdatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceUpdated build() => _build();

  _$ServiceUpdated _build() {
    final _$result = _$v ??
        _$ServiceUpdated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ServiceUpdated', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'ServiceUpdated', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
