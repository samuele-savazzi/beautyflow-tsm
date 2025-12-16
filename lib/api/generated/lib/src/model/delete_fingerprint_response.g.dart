// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_fingerprint_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFingerprintResponse extends DeleteFingerprintResponse {
  @override
  final String message;
  @override
  final int accountsRemoved;

  factory _$DeleteFingerprintResponse(
          [void Function(DeleteFingerprintResponseBuilder)? updates]) =>
      (DeleteFingerprintResponseBuilder()..update(updates))._build();

  _$DeleteFingerprintResponse._(
      {required this.message, required this.accountsRemoved})
      : super._();
  @override
  DeleteFingerprintResponse rebuild(
          void Function(DeleteFingerprintResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFingerprintResponseBuilder toBuilder() =>
      DeleteFingerprintResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFingerprintResponse &&
        message == other.message &&
        accountsRemoved == other.accountsRemoved;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, accountsRemoved.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteFingerprintResponse')
          ..add('message', message)
          ..add('accountsRemoved', accountsRemoved))
        .toString();
  }
}

class DeleteFingerprintResponseBuilder
    implements
        Builder<DeleteFingerprintResponse, DeleteFingerprintResponseBuilder> {
  _$DeleteFingerprintResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _accountsRemoved;
  int? get accountsRemoved => _$this._accountsRemoved;
  set accountsRemoved(int? accountsRemoved) =>
      _$this._accountsRemoved = accountsRemoved;

  DeleteFingerprintResponseBuilder() {
    DeleteFingerprintResponse._defaults(this);
  }

  DeleteFingerprintResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _accountsRemoved = $v.accountsRemoved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFingerprintResponse other) {
    _$v = other as _$DeleteFingerprintResponse;
  }

  @override
  void update(void Function(DeleteFingerprintResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteFingerprintResponse build() => _build();

  _$DeleteFingerprintResponse _build() {
    final _$result = _$v ??
        _$DeleteFingerprintResponse._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'DeleteFingerprintResponse', 'message'),
          accountsRemoved: BuiltValueNullFieldError.checkNotNull(
              accountsRemoved, r'DeleteFingerprintResponse', 'accountsRemoved'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
