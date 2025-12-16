// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflict.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Conflict extends Conflict {
  @override
  final String type;
  @override
  final int? operatorId;
  @override
  final String? operatorName;
  @override
  final int? changeId;
  @override
  final String message;

  factory _$Conflict([void Function(ConflictBuilder)? updates]) =>
      (ConflictBuilder()..update(updates))._build();

  _$Conflict._(
      {required this.type,
      this.operatorId,
      this.operatorName,
      this.changeId,
      required this.message})
      : super._();
  @override
  Conflict rebuild(void Function(ConflictBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConflictBuilder toBuilder() => ConflictBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Conflict &&
        type == other.type &&
        operatorId == other.operatorId &&
        operatorName == other.operatorName &&
        changeId == other.changeId &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, changeId.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Conflict')
          ..add('type', type)
          ..add('operatorId', operatorId)
          ..add('operatorName', operatorName)
          ..add('changeId', changeId)
          ..add('message', message))
        .toString();
  }
}

class ConflictBuilder implements Builder<Conflict, ConflictBuilder> {
  _$Conflict? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _operatorName;
  String? get operatorName => _$this._operatorName;
  set operatorName(String? operatorName) => _$this._operatorName = operatorName;

  int? _changeId;
  int? get changeId => _$this._changeId;
  set changeId(int? changeId) => _$this._changeId = changeId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ConflictBuilder() {
    Conflict._defaults(this);
  }

  ConflictBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _operatorId = $v.operatorId;
      _operatorName = $v.operatorName;
      _changeId = $v.changeId;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Conflict other) {
    _$v = other as _$Conflict;
  }

  @override
  void update(void Function(ConflictBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Conflict build() => _build();

  _$Conflict _build() {
    final _$result = _$v ??
        _$Conflict._(
          type:
              BuiltValueNullFieldError.checkNotNull(type, r'Conflict', 'type'),
          operatorId: operatorId,
          operatorName: operatorName,
          changeId: changeId,
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'Conflict', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
