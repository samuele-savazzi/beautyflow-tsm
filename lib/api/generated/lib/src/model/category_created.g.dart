// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryCreated extends CategoryCreated {
  @override
  final int id;
  @override
  final String message;

  factory _$CategoryCreated([void Function(CategoryCreatedBuilder)? updates]) =>
      (CategoryCreatedBuilder()..update(updates))._build();

  _$CategoryCreated._({required this.id, required this.message}) : super._();
  @override
  CategoryCreated rebuild(void Function(CategoryCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryCreatedBuilder toBuilder() => CategoryCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryCreated &&
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
    return (newBuiltValueToStringHelper(r'CategoryCreated')
          ..add('id', id)
          ..add('message', message))
        .toString();
  }
}

class CategoryCreatedBuilder
    implements Builder<CategoryCreated, CategoryCreatedBuilder> {
  _$CategoryCreated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CategoryCreatedBuilder() {
    CategoryCreated._defaults(this);
  }

  CategoryCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryCreated other) {
    _$v = other as _$CategoryCreated;
  }

  @override
  void update(void Function(CategoryCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryCreated build() => _build();

  _$CategoryCreated _build() {
    final _$result = _$v ??
        _$CategoryCreated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CategoryCreated', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'CategoryCreated', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
