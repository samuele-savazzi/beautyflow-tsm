// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movement_deleted.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovementDeleted extends MovementDeleted {
  @override
  final String message;
  @override
  final double restoredStock;

  factory _$MovementDeleted([void Function(MovementDeletedBuilder)? updates]) =>
      (MovementDeletedBuilder()..update(updates))._build();

  _$MovementDeleted._({required this.message, required this.restoredStock})
      : super._();
  @override
  MovementDeleted rebuild(void Function(MovementDeletedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovementDeletedBuilder toBuilder() => MovementDeletedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovementDeleted &&
        message == other.message &&
        restoredStock == other.restoredStock;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, restoredStock.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovementDeleted')
          ..add('message', message)
          ..add('restoredStock', restoredStock))
        .toString();
  }
}

class MovementDeletedBuilder
    implements Builder<MovementDeleted, MovementDeletedBuilder> {
  _$MovementDeleted? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  double? _restoredStock;
  double? get restoredStock => _$this._restoredStock;
  set restoredStock(double? restoredStock) =>
      _$this._restoredStock = restoredStock;

  MovementDeletedBuilder() {
    MovementDeleted._defaults(this);
  }

  MovementDeletedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _restoredStock = $v.restoredStock;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovementDeleted other) {
    _$v = other as _$MovementDeleted;
  }

  @override
  void update(void Function(MovementDeletedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovementDeleted build() => _build();

  _$MovementDeleted _build() {
    final _$result = _$v ??
        _$MovementDeleted._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'MovementDeleted', 'message'),
          restoredStock: BuiltValueNullFieldError.checkNotNull(
              restoredStock, r'MovementDeleted', 'restoredStock'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
