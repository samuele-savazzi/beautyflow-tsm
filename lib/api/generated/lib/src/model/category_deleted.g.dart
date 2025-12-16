// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_deleted.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryDeleted extends CategoryDeleted {
  @override
  final String message;

  factory _$CategoryDeleted([void Function(CategoryDeletedBuilder)? updates]) =>
      (CategoryDeletedBuilder()..update(updates))._build();

  _$CategoryDeleted._({required this.message}) : super._();
  @override
  CategoryDeleted rebuild(void Function(CategoryDeletedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryDeletedBuilder toBuilder() => CategoryDeletedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryDeleted && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryDeleted')
          ..add('message', message))
        .toString();
  }
}

class CategoryDeletedBuilder
    implements Builder<CategoryDeleted, CategoryDeletedBuilder> {
  _$CategoryDeleted? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CategoryDeletedBuilder() {
    CategoryDeleted._defaults(this);
  }

  CategoryDeletedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryDeleted other) {
    _$v = other as _$CategoryDeleted;
  }

  @override
  void update(void Function(CategoryDeletedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryDeleted build() => _build();

  _$CategoryDeleted _build() {
    final _$result = _$v ??
        _$CategoryDeleted._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'CategoryDeleted', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
