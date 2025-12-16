// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movement_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovementCreated extends MovementCreated {
  @override
  final int id;
  @override
  final String message;
  @override
  final double newStock;

  factory _$MovementCreated([void Function(MovementCreatedBuilder)? updates]) =>
      (MovementCreatedBuilder()..update(updates))._build();

  _$MovementCreated._(
      {required this.id, required this.message, required this.newStock})
      : super._();
  @override
  MovementCreated rebuild(void Function(MovementCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovementCreatedBuilder toBuilder() => MovementCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovementCreated &&
        id == other.id &&
        message == other.message &&
        newStock == other.newStock;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, newStock.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovementCreated')
          ..add('id', id)
          ..add('message', message)
          ..add('newStock', newStock))
        .toString();
  }
}

class MovementCreatedBuilder
    implements Builder<MovementCreated, MovementCreatedBuilder> {
  _$MovementCreated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  double? _newStock;
  double? get newStock => _$this._newStock;
  set newStock(double? newStock) => _$this._newStock = newStock;

  MovementCreatedBuilder() {
    MovementCreated._defaults(this);
  }

  MovementCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _message = $v.message;
      _newStock = $v.newStock;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovementCreated other) {
    _$v = other as _$MovementCreated;
  }

  @override
  void update(void Function(MovementCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovementCreated build() => _build();

  _$MovementCreated _build() {
    final _$result = _$v ??
        _$MovementCreated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'MovementCreated', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'MovementCreated', 'message'),
          newStock: BuiltValueNullFieldError.checkNotNull(
              newStock, r'MovementCreated', 'newStock'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
