// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_deleted.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupplierDeleted extends SupplierDeleted {
  @override
  final String message;

  factory _$SupplierDeleted([void Function(SupplierDeletedBuilder)? updates]) =>
      (SupplierDeletedBuilder()..update(updates))._build();

  _$SupplierDeleted._({required this.message}) : super._();
  @override
  SupplierDeleted rebuild(void Function(SupplierDeletedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplierDeletedBuilder toBuilder() => SupplierDeletedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplierDeleted && message == other.message;
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
    return (newBuiltValueToStringHelper(r'SupplierDeleted')
          ..add('message', message))
        .toString();
  }
}

class SupplierDeletedBuilder
    implements Builder<SupplierDeleted, SupplierDeletedBuilder> {
  _$SupplierDeleted? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SupplierDeletedBuilder() {
    SupplierDeleted._defaults(this);
  }

  SupplierDeletedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplierDeleted other) {
    _$v = other as _$SupplierDeleted;
  }

  @override
  void update(void Function(SupplierDeletedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplierDeleted build() => _build();

  _$SupplierDeleted _build() {
    final _$result = _$v ??
        _$SupplierDeleted._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'SupplierDeleted', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
