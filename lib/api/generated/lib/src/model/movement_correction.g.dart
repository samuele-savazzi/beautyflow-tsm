// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movement_correction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovementCorrection extends MovementCorrection {
  @override
  final int movementId;
  @override
  final double newQuantity;
  @override
  final String? reason;

  factory _$MovementCorrection(
          [void Function(MovementCorrectionBuilder)? updates]) =>
      (MovementCorrectionBuilder()..update(updates))._build();

  _$MovementCorrection._(
      {required this.movementId, required this.newQuantity, this.reason})
      : super._();
  @override
  MovementCorrection rebuild(
          void Function(MovementCorrectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovementCorrectionBuilder toBuilder() =>
      MovementCorrectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovementCorrection &&
        movementId == other.movementId &&
        newQuantity == other.newQuantity &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, movementId.hashCode);
    _$hash = $jc(_$hash, newQuantity.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovementCorrection')
          ..add('movementId', movementId)
          ..add('newQuantity', newQuantity)
          ..add('reason', reason))
        .toString();
  }
}

class MovementCorrectionBuilder
    implements Builder<MovementCorrection, MovementCorrectionBuilder> {
  _$MovementCorrection? _$v;

  int? _movementId;
  int? get movementId => _$this._movementId;
  set movementId(int? movementId) => _$this._movementId = movementId;

  double? _newQuantity;
  double? get newQuantity => _$this._newQuantity;
  set newQuantity(double? newQuantity) => _$this._newQuantity = newQuantity;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  MovementCorrectionBuilder() {
    MovementCorrection._defaults(this);
  }

  MovementCorrectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movementId = $v.movementId;
      _newQuantity = $v.newQuantity;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovementCorrection other) {
    _$v = other as _$MovementCorrection;
  }

  @override
  void update(void Function(MovementCorrectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovementCorrection build() => _build();

  _$MovementCorrection _build() {
    final _$result = _$v ??
        _$MovementCorrection._(
          movementId: BuiltValueNullFieldError.checkNotNull(
              movementId, r'MovementCorrection', 'movementId'),
          newQuantity: BuiltValueNullFieldError.checkNotNull(
              newQuantity, r'MovementCorrection', 'newQuantity'),
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
