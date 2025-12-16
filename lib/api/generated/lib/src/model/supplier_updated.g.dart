// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_updated.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupplierUpdated extends SupplierUpdated {
  @override
  final int id;
  @override
  final String message;

  factory _$SupplierUpdated([void Function(SupplierUpdatedBuilder)? updates]) =>
      (SupplierUpdatedBuilder()..update(updates))._build();

  _$SupplierUpdated._({required this.id, required this.message}) : super._();
  @override
  SupplierUpdated rebuild(void Function(SupplierUpdatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplierUpdatedBuilder toBuilder() => SupplierUpdatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplierUpdated &&
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
    return (newBuiltValueToStringHelper(r'SupplierUpdated')
          ..add('id', id)
          ..add('message', message))
        .toString();
  }
}

class SupplierUpdatedBuilder
    implements Builder<SupplierUpdated, SupplierUpdatedBuilder> {
  _$SupplierUpdated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SupplierUpdatedBuilder() {
    SupplierUpdated._defaults(this);
  }

  SupplierUpdatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplierUpdated other) {
    _$v = other as _$SupplierUpdated;
  }

  @override
  void update(void Function(SupplierUpdatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplierUpdated build() => _build();

  _$SupplierUpdated _build() {
    final _$result = _$v ??
        _$SupplierUpdated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'SupplierUpdated', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'SupplierUpdated', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
