// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTokenResponse extends DeleteTokenResponse {
  @override
  final bool success;
  @override
  final String message;

  factory _$DeleteTokenResponse(
          [void Function(DeleteTokenResponseBuilder)? updates]) =>
      (DeleteTokenResponseBuilder()..update(updates))._build();

  _$DeleteTokenResponse._({required this.success, required this.message})
      : super._();
  @override
  DeleteTokenResponse rebuild(
          void Function(DeleteTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTokenResponseBuilder toBuilder() =>
      DeleteTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTokenResponse &&
        success == other.success &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteTokenResponse')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class DeleteTokenResponseBuilder
    implements Builder<DeleteTokenResponse, DeleteTokenResponseBuilder> {
  _$DeleteTokenResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DeleteTokenResponseBuilder() {
    DeleteTokenResponse._defaults(this);
  }

  DeleteTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTokenResponse other) {
    _$v = other as _$DeleteTokenResponse;
  }

  @override
  void update(void Function(DeleteTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTokenResponse build() => _build();

  _$DeleteTokenResponse _build() {
    final _$result = _$v ??
        _$DeleteTokenResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'DeleteTokenResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'DeleteTokenResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
