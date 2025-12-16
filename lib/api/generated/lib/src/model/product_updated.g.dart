// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_updated.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductUpdated extends ProductUpdated {
  @override
  final int id;
  @override
  final String message;

  factory _$ProductUpdated([void Function(ProductUpdatedBuilder)? updates]) =>
      (ProductUpdatedBuilder()..update(updates))._build();

  _$ProductUpdated._({required this.id, required this.message}) : super._();
  @override
  ProductUpdated rebuild(void Function(ProductUpdatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductUpdatedBuilder toBuilder() => ProductUpdatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductUpdated &&
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
    return (newBuiltValueToStringHelper(r'ProductUpdated')
          ..add('id', id)
          ..add('message', message))
        .toString();
  }
}

class ProductUpdatedBuilder
    implements Builder<ProductUpdated, ProductUpdatedBuilder> {
  _$ProductUpdated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ProductUpdatedBuilder() {
    ProductUpdated._defaults(this);
  }

  ProductUpdatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductUpdated other) {
    _$v = other as _$ProductUpdated;
  }

  @override
  void update(void Function(ProductUpdatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductUpdated build() => _build();

  _$ProductUpdated _build() {
    final _$result = _$v ??
        _$ProductUpdated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ProductUpdated', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'ProductUpdated', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
