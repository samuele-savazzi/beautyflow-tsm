// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correction_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorrectionCreated extends CorrectionCreated {
  @override
  final int id;
  @override
  final String message;
  @override
  final int correctionMovementId;

  factory _$CorrectionCreated(
          [void Function(CorrectionCreatedBuilder)? updates]) =>
      (CorrectionCreatedBuilder()..update(updates))._build();

  _$CorrectionCreated._(
      {required this.id,
      required this.message,
      required this.correctionMovementId})
      : super._();
  @override
  CorrectionCreated rebuild(void Function(CorrectionCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorrectionCreatedBuilder toBuilder() =>
      CorrectionCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrectionCreated &&
        id == other.id &&
        message == other.message &&
        correctionMovementId == other.correctionMovementId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, correctionMovementId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorrectionCreated')
          ..add('id', id)
          ..add('message', message)
          ..add('correctionMovementId', correctionMovementId))
        .toString();
  }
}

class CorrectionCreatedBuilder
    implements Builder<CorrectionCreated, CorrectionCreatedBuilder> {
  _$CorrectionCreated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _correctionMovementId;
  int? get correctionMovementId => _$this._correctionMovementId;
  set correctionMovementId(int? correctionMovementId) =>
      _$this._correctionMovementId = correctionMovementId;

  CorrectionCreatedBuilder() {
    CorrectionCreated._defaults(this);
  }

  CorrectionCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _message = $v.message;
      _correctionMovementId = $v.correctionMovementId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrectionCreated other) {
    _$v = other as _$CorrectionCreated;
  }

  @override
  void update(void Function(CorrectionCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorrectionCreated build() => _build();

  _$CorrectionCreated _build() {
    final _$result = _$v ??
        _$CorrectionCreated._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CorrectionCreated', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'CorrectionCreated', 'message'),
          correctionMovementId: BuiltValueNullFieldError.checkNotNull(
              correctionMovementId,
              r'CorrectionCreated',
              'correctionMovementId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
