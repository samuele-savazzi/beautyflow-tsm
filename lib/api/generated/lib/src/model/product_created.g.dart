// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductCreated extends ProductCreated {
  @override
  final int id;
  @override
  final String message;

  factory _$ProductCreated([void Function(ProductCreatedBuilder)? updates]) =>
      (ProductCreatedBuilder()..update(updates))._build();

  _$ProductCreated._({required this.id, required this.message}) : super._();
  @override
  ProductCreated rebuild(void Function(ProductCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductCreatedBuilder toBuilder() => ProductCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductCreated &&
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
    return (newBuiltValueToStringHelper(r'ProductCreated')
          ..add('id', id)
          ..add('message', message))
        .toString();
  }
}

class ProductCreatedBuilder
    implements Builder<ProductCreated, ProductCreatedBuilder> {
  _$ProductCreated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ProductCreatedBuilder() {
    ProductCreated._defaults(this);
  }

  ProductCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductCreated other) {
    _$v = other as _$ProductCreated;
  }

  @override
  void update(void Function(ProductCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductCreated build() => _build();

  _$ProductCreated _build() {
    final _$result = _$v ??
        _$ProductCreated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ProductCreated', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'ProductCreated', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
