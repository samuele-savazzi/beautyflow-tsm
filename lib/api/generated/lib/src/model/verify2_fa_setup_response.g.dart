// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify2_fa_setup_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Verify2FASetupResponse extends Verify2FASetupResponse {
  @override
  final String message;
  @override
  final BuiltList<String> backupCodes;
  @override
  final String warning;

  factory _$Verify2FASetupResponse(
          [void Function(Verify2FASetupResponseBuilder)? updates]) =>
      (Verify2FASetupResponseBuilder()..update(updates))._build();

  _$Verify2FASetupResponse._(
      {required this.message, required this.backupCodes, required this.warning})
      : super._();
  @override
  Verify2FASetupResponse rebuild(
          void Function(Verify2FASetupResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Verify2FASetupResponseBuilder toBuilder() =>
      Verify2FASetupResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Verify2FASetupResponse &&
        message == other.message &&
        backupCodes == other.backupCodes &&
        warning == other.warning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, backupCodes.hashCode);
    _$hash = $jc(_$hash, warning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Verify2FASetupResponse')
          ..add('message', message)
          ..add('backupCodes', backupCodes)
          ..add('warning', warning))
        .toString();
  }
}

class Verify2FASetupResponseBuilder
    implements Builder<Verify2FASetupResponse, Verify2FASetupResponseBuilder> {
  _$Verify2FASetupResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<String>? _backupCodes;
  ListBuilder<String> get backupCodes =>
      _$this._backupCodes ??= ListBuilder<String>();
  set backupCodes(ListBuilder<String>? backupCodes) =>
      _$this._backupCodes = backupCodes;

  String? _warning;
  String? get warning => _$this._warning;
  set warning(String? warning) => _$this._warning = warning;

  Verify2FASetupResponseBuilder() {
    Verify2FASetupResponse._defaults(this);
  }

  Verify2FASetupResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _backupCodes = $v.backupCodes.toBuilder();
      _warning = $v.warning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Verify2FASetupResponse other) {
    _$v = other as _$Verify2FASetupResponse;
  }

  @override
  void update(void Function(Verify2FASetupResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Verify2FASetupResponse build() => _build();

  _$Verify2FASetupResponse _build() {
    _$Verify2FASetupResponse _$result;
    try {
      _$result = _$v ??
          _$Verify2FASetupResponse._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'Verify2FASetupResponse', 'message'),
            backupCodes: backupCodes.build(),
            warning: BuiltValueNullFieldError.checkNotNull(
                warning, r'Verify2FASetupResponse', 'warning'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'backupCodes';
        backupCodes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Verify2FASetupResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
