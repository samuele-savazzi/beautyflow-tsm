// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_opening_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecialOpeningCreated extends SpecialOpeningCreated {
  @override
  final String status;
  @override
  final int id;
  @override
  final String message;
  @override
  final int operatorsScheduled;

  factory _$SpecialOpeningCreated(
          [void Function(SpecialOpeningCreatedBuilder)? updates]) =>
      (SpecialOpeningCreatedBuilder()..update(updates))._build();

  _$SpecialOpeningCreated._(
      {required this.status,
      required this.id,
      required this.message,
      required this.operatorsScheduled})
      : super._();
  @override
  SpecialOpeningCreated rebuild(
          void Function(SpecialOpeningCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialOpeningCreatedBuilder toBuilder() =>
      SpecialOpeningCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialOpeningCreated &&
        status == other.status &&
        id == other.id &&
        message == other.message &&
        operatorsScheduled == other.operatorsScheduled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, operatorsScheduled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpecialOpeningCreated')
          ..add('status', status)
          ..add('id', id)
          ..add('message', message)
          ..add('operatorsScheduled', operatorsScheduled))
        .toString();
  }
}

class SpecialOpeningCreatedBuilder
    implements Builder<SpecialOpeningCreated, SpecialOpeningCreatedBuilder> {
  _$SpecialOpeningCreated? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _operatorsScheduled;
  int? get operatorsScheduled => _$this._operatorsScheduled;
  set operatorsScheduled(int? operatorsScheduled) =>
      _$this._operatorsScheduled = operatorsScheduled;

  SpecialOpeningCreatedBuilder() {
    SpecialOpeningCreated._defaults(this);
  }

  SpecialOpeningCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _id = $v.id;
      _message = $v.message;
      _operatorsScheduled = $v.operatorsScheduled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpecialOpeningCreated other) {
    _$v = other as _$SpecialOpeningCreated;
  }

  @override
  void update(void Function(SpecialOpeningCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialOpeningCreated build() => _build();

  _$SpecialOpeningCreated _build() {
    final _$result = _$v ??
        _$SpecialOpeningCreated._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'SpecialOpeningCreated', 'status'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'SpecialOpeningCreated', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'SpecialOpeningCreated', 'message'),
          operatorsScheduled: BuiltValueNullFieldError.checkNotNull(
              operatorsScheduled,
              r'SpecialOpeningCreated',
              'operatorsScheduled'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
