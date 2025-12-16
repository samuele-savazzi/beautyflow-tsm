// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatedResponse extends CreatedResponse {
  @override
  final String status;
  @override
  final int id;
  @override
  final String message;

  factory _$CreatedResponse([void Function(CreatedResponseBuilder)? updates]) =>
      (CreatedResponseBuilder()..update(updates))._build();

  _$CreatedResponse._(
      {required this.status, required this.id, required this.message})
      : super._();
  @override
  CreatedResponse rebuild(void Function(CreatedResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatedResponseBuilder toBuilder() => CreatedResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatedResponse &&
        status == other.status &&
        id == other.id &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatedResponse')
          ..add('status', status)
          ..add('id', id)
          ..add('message', message))
        .toString();
  }
}

class CreatedResponseBuilder
    implements Builder<CreatedResponse, CreatedResponseBuilder> {
  _$CreatedResponse? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CreatedResponseBuilder() {
    CreatedResponse._defaults(this);
  }

  CreatedResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _id = $v.id;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatedResponse other) {
    _$v = other as _$CreatedResponse;
  }

  @override
  void update(void Function(CreatedResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatedResponse build() => _build();

  _$CreatedResponse _build() {
    final _$result = _$v ??
        _$CreatedResponse._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'CreatedResponse', 'status'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CreatedResponse', 'id'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'CreatedResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
