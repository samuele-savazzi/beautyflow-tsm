// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_closing_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecialClosingCreated extends SpecialClosingCreated {
  @override
  final int id;
  @override
  final String message;

  factory _$SpecialClosingCreated(
          [void Function(SpecialClosingCreatedBuilder)? updates]) =>
      (SpecialClosingCreatedBuilder()..update(updates))._build();

  _$SpecialClosingCreated._({required this.id, required this.message})
      : super._();
  @override
  SpecialClosingCreated rebuild(
          void Function(SpecialClosingCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialClosingCreatedBuilder toBuilder() =>
      SpecialClosingCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialClosingCreated &&
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
    return (newBuiltValueToStringHelper(r'SpecialClosingCreated')
          ..add('id', id)
          ..add('message', message))
        .toString();
  }
}

class SpecialClosingCreatedBuilder
    implements Builder<SpecialClosingCreated, SpecialClosingCreatedBuilder> {
  _$SpecialClosingCreated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SpecialClosingCreatedBuilder() {
    SpecialClosingCreated._defaults(this);
  }

  SpecialClosingCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpecialClosingCreated other) {
    _$v = other as _$SpecialClosingCreated;
  }

  @override
  void update(void Function(SpecialClosingCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialClosingCreated build() => _build();

  _$SpecialClosingCreated _build() {
    final _$result = _$v ??
        _$SpecialClosingCreated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'SpecialClosingCreated', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'SpecialClosingCreated', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
