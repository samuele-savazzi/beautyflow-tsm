// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_updated.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryUpdated extends CategoryUpdated {
  @override
  final int id;
  @override
  final String message;

  factory _$CategoryUpdated([void Function(CategoryUpdatedBuilder)? updates]) =>
      (CategoryUpdatedBuilder()..update(updates))._build();

  _$CategoryUpdated._({required this.id, required this.message}) : super._();
  @override
  CategoryUpdated rebuild(void Function(CategoryUpdatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryUpdatedBuilder toBuilder() => CategoryUpdatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryUpdated &&
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
    return (newBuiltValueToStringHelper(r'CategoryUpdated')
          ..add('id', id)
          ..add('message', message))
        .toString();
  }
}

class CategoryUpdatedBuilder
    implements Builder<CategoryUpdated, CategoryUpdatedBuilder> {
  _$CategoryUpdated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CategoryUpdatedBuilder() {
    CategoryUpdated._defaults(this);
  }

  CategoryUpdatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryUpdated other) {
    _$v = other as _$CategoryUpdated;
  }

  @override
  void update(void Function(CategoryUpdatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryUpdated build() => _build();

  _$CategoryUpdated _build() {
    final _$result = _$v ??
        _$CategoryUpdated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CategoryUpdated', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'CategoryUpdated', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
