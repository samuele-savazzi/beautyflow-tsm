// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteResponse extends DeleteResponse {
  @override
  final String status;
  @override
  final String message;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? rollbackSummary;

  factory _$DeleteResponse([void Function(DeleteResponseBuilder)? updates]) =>
      (DeleteResponseBuilder()..update(updates))._build();

  _$DeleteResponse._(
      {required this.status, required this.message, this.rollbackSummary})
      : super._();
  @override
  DeleteResponse rebuild(void Function(DeleteResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteResponseBuilder toBuilder() => DeleteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteResponse &&
        status == other.status &&
        message == other.message &&
        rollbackSummary == other.rollbackSummary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, rollbackSummary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('rollbackSummary', rollbackSummary))
        .toString();
  }
}

class DeleteResponseBuilder
    implements Builder<DeleteResponse, DeleteResponseBuilder> {
  _$DeleteResponse? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  MapBuilder<String, Map<String, dynamic>?>? _rollbackSummary;
  MapBuilder<String, Map<String, dynamic>?> get rollbackSummary =>
      _$this._rollbackSummary ??= MapBuilder<String, Map<String, dynamic>?>();
  set rollbackSummary(
          MapBuilder<String, Map<String, dynamic>?>? rollbackSummary) =>
      _$this._rollbackSummary = rollbackSummary;

  DeleteResponseBuilder() {
    DeleteResponse._defaults(this);
  }

  DeleteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _rollbackSummary = $v.rollbackSummary?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteResponse other) {
    _$v = other as _$DeleteResponse;
  }

  @override
  void update(void Function(DeleteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteResponse build() => _build();

  _$DeleteResponse _build() {
    _$DeleteResponse _$result;
    try {
      _$result = _$v ??
          _$DeleteResponse._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'DeleteResponse', 'status'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'DeleteResponse', 'message'),
            rollbackSummary: _rollbackSummary?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rollbackSummary';
        _rollbackSummary?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeleteResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
