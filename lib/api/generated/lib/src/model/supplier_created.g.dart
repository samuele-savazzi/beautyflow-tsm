// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupplierCreated extends SupplierCreated {
  @override
  final int id;
  @override
  final String message;

  factory _$SupplierCreated([void Function(SupplierCreatedBuilder)? updates]) =>
      (SupplierCreatedBuilder()..update(updates))._build();

  _$SupplierCreated._({required this.id, required this.message}) : super._();
  @override
  SupplierCreated rebuild(void Function(SupplierCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplierCreatedBuilder toBuilder() => SupplierCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplierCreated &&
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
    return (newBuiltValueToStringHelper(r'SupplierCreated')
          ..add('id', id)
          ..add('message', message))
        .toString();
  }
}

class SupplierCreatedBuilder
    implements Builder<SupplierCreated, SupplierCreatedBuilder> {
  _$SupplierCreated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SupplierCreatedBuilder() {
    SupplierCreated._defaults(this);
  }

  SupplierCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplierCreated other) {
    _$v = other as _$SupplierCreated;
  }

  @override
  void update(void Function(SupplierCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplierCreated build() => _build();

  _$SupplierCreated _build() {
    final _$result = _$v ??
        _$SupplierCreated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'SupplierCreated', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'SupplierCreated', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
