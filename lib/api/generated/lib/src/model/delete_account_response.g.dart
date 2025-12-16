// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteAccountResponse extends DeleteAccountResponse {
  @override
  final bool success;
  @override
  final String message;

  factory _$DeleteAccountResponse(
          [void Function(DeleteAccountResponseBuilder)? updates]) =>
      (DeleteAccountResponseBuilder()..update(updates))._build();

  _$DeleteAccountResponse._({required this.success, required this.message})
      : super._();
  @override
  DeleteAccountResponse rebuild(
          void Function(DeleteAccountResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteAccountResponseBuilder toBuilder() =>
      DeleteAccountResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteAccountResponse &&
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
    return (newBuiltValueToStringHelper(r'DeleteAccountResponse')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class DeleteAccountResponseBuilder
    implements Builder<DeleteAccountResponse, DeleteAccountResponseBuilder> {
  _$DeleteAccountResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DeleteAccountResponseBuilder() {
    DeleteAccountResponse._defaults(this);
  }

  DeleteAccountResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteAccountResponse other) {
    _$v = other as _$DeleteAccountResponse;
  }

  @override
  void update(void Function(DeleteAccountResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteAccountResponse build() => _build();

  _$DeleteAccountResponse _build() {
    final _$result = _$v ??
        _$DeleteAccountResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'DeleteAccountResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'DeleteAccountResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
