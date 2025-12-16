// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_set_theme_theme_update200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigSetThemeThemeUpdate200Response
    extends ConfigSetThemeThemeUpdate200Response {
  @override
  final String? message;
  @override
  final Map<String, dynamic>? theme;
  @override
  final String? logo;
  @override
  final String? darkLogo;

  factory _$ConfigSetThemeThemeUpdate200Response(
          [void Function(ConfigSetThemeThemeUpdate200ResponseBuilder)?
              updates]) =>
      (ConfigSetThemeThemeUpdate200ResponseBuilder()..update(updates))._build();

  _$ConfigSetThemeThemeUpdate200Response._(
      {this.message, this.theme, this.logo, this.darkLogo})
      : super._();
  @override
  ConfigSetThemeThemeUpdate200Response rebuild(
          void Function(ConfigSetThemeThemeUpdate200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigSetThemeThemeUpdate200ResponseBuilder toBuilder() =>
      ConfigSetThemeThemeUpdate200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigSetThemeThemeUpdate200Response &&
        message == other.message &&
        theme == other.theme &&
        logo == other.logo &&
        darkLogo == other.darkLogo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, darkLogo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfigSetThemeThemeUpdate200Response')
          ..add('message', message)
          ..add('theme', theme)
          ..add('logo', logo)
          ..add('darkLogo', darkLogo))
        .toString();
  }
}

class ConfigSetThemeThemeUpdate200ResponseBuilder
    implements
        Builder<ConfigSetThemeThemeUpdate200Response,
            ConfigSetThemeThemeUpdate200ResponseBuilder> {
  _$ConfigSetThemeThemeUpdate200Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, dynamic>? _theme;
  Map<String, dynamic>? get theme => _$this._theme;
  set theme(Map<String, dynamic>? theme) => _$this._theme = theme;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _darkLogo;
  String? get darkLogo => _$this._darkLogo;
  set darkLogo(String? darkLogo) => _$this._darkLogo = darkLogo;

  ConfigSetThemeThemeUpdate200ResponseBuilder() {
    ConfigSetThemeThemeUpdate200Response._defaults(this);
  }

  ConfigSetThemeThemeUpdate200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _theme = $v.theme;
      _logo = $v.logo;
      _darkLogo = $v.darkLogo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigSetThemeThemeUpdate200Response other) {
    _$v = other as _$ConfigSetThemeThemeUpdate200Response;
  }

  @override
  void update(
      void Function(ConfigSetThemeThemeUpdate200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigSetThemeThemeUpdate200Response build() => _build();

  _$ConfigSetThemeThemeUpdate200Response _build() {
    final _$result = _$v ??
        _$ConfigSetThemeThemeUpdate200Response._(
          message: message,
          theme: theme,
          logo: logo,
          darkLogo: darkLogo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
