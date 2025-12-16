// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_set_theme_theme_update400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigSetThemeThemeUpdate400Response
    extends ConfigSetThemeThemeUpdate400Response {
  @override
  final String? error;

  factory _$ConfigSetThemeThemeUpdate400Response(
          [void Function(ConfigSetThemeThemeUpdate400ResponseBuilder)?
              updates]) =>
      (ConfigSetThemeThemeUpdate400ResponseBuilder()..update(updates))._build();

  _$ConfigSetThemeThemeUpdate400Response._({this.error}) : super._();
  @override
  ConfigSetThemeThemeUpdate400Response rebuild(
          void Function(ConfigSetThemeThemeUpdate400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigSetThemeThemeUpdate400ResponseBuilder toBuilder() =>
      ConfigSetThemeThemeUpdate400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigSetThemeThemeUpdate400Response &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfigSetThemeThemeUpdate400Response')
          ..add('error', error))
        .toString();
  }
}

class ConfigSetThemeThemeUpdate400ResponseBuilder
    implements
        Builder<ConfigSetThemeThemeUpdate400Response,
            ConfigSetThemeThemeUpdate400ResponseBuilder> {
  _$ConfigSetThemeThemeUpdate400Response? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ConfigSetThemeThemeUpdate400ResponseBuilder() {
    ConfigSetThemeThemeUpdate400Response._defaults(this);
  }

  ConfigSetThemeThemeUpdate400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigSetThemeThemeUpdate400Response other) {
    _$v = other as _$ConfigSetThemeThemeUpdate400Response;
  }

  @override
  void update(
      void Function(ConfigSetThemeThemeUpdate400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigSetThemeThemeUpdate400Response build() => _build();

  _$ConfigSetThemeThemeUpdate400Response _build() {
    final _$result = _$v ??
        _$ConfigSetThemeThemeUpdate400Response._(
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
