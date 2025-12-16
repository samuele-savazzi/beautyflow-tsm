// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regenerate_backup_codes_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegenerateBackupCodesResponse extends RegenerateBackupCodesResponse {
  @override
  final String message;
  @override
  final BuiltList<String> backupCodes;
  @override
  final String warning;

  factory _$RegenerateBackupCodesResponse(
          [void Function(RegenerateBackupCodesResponseBuilder)? updates]) =>
      (RegenerateBackupCodesResponseBuilder()..update(updates))._build();

  _$RegenerateBackupCodesResponse._(
      {required this.message, required this.backupCodes, required this.warning})
      : super._();
  @override
  RegenerateBackupCodesResponse rebuild(
          void Function(RegenerateBackupCodesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegenerateBackupCodesResponseBuilder toBuilder() =>
      RegenerateBackupCodesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegenerateBackupCodesResponse &&
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
    return (newBuiltValueToStringHelper(r'RegenerateBackupCodesResponse')
          ..add('message', message)
          ..add('backupCodes', backupCodes)
          ..add('warning', warning))
        .toString();
  }
}

class RegenerateBackupCodesResponseBuilder
    implements
        Builder<RegenerateBackupCodesResponse,
            RegenerateBackupCodesResponseBuilder> {
  _$RegenerateBackupCodesResponse? _$v;

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

  RegenerateBackupCodesResponseBuilder() {
    RegenerateBackupCodesResponse._defaults(this);
  }

  RegenerateBackupCodesResponseBuilder get _$this {
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
  void replace(RegenerateBackupCodesResponse other) {
    _$v = other as _$RegenerateBackupCodesResponse;
  }

  @override
  void update(void Function(RegenerateBackupCodesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegenerateBackupCodesResponse build() => _build();

  _$RegenerateBackupCodesResponse _build() {
    _$RegenerateBackupCodesResponse _$result;
    try {
      _$result = _$v ??
          _$RegenerateBackupCodesResponse._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'RegenerateBackupCodesResponse', 'message'),
            backupCodes: backupCodes.build(),
            warning: BuiltValueNullFieldError.checkNotNull(
                warning, r'RegenerateBackupCodesResponse', 'warning'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'backupCodes';
        backupCodes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RegenerateBackupCodesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
