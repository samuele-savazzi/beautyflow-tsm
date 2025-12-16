// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_account_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ManageAccountResponse extends ManageAccountResponse {
  @override
  final String message;

  factory _$ManageAccountResponse(
          [void Function(ManageAccountResponseBuilder)? updates]) =>
      (ManageAccountResponseBuilder()..update(updates))._build();

  _$ManageAccountResponse._({required this.message}) : super._();
  @override
  ManageAccountResponse rebuild(
          void Function(ManageAccountResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ManageAccountResponseBuilder toBuilder() =>
      ManageAccountResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManageAccountResponse && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ManageAccountResponse')
          ..add('message', message))
        .toString();
  }
}

class ManageAccountResponseBuilder
    implements Builder<ManageAccountResponse, ManageAccountResponseBuilder> {
  _$ManageAccountResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ManageAccountResponseBuilder() {
    ManageAccountResponse._defaults(this);
  }

  ManageAccountResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ManageAccountResponse other) {
    _$v = other as _$ManageAccountResponse;
  }

  @override
  void update(void Function(ManageAccountResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ManageAccountResponse build() => _build();

  _$ManageAccountResponse _build() {
    final _$result = _$v ??
        _$ManageAccountResponse._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'ManageAccountResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
