// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ThemeConfig extends ThemeConfig {
  @override
  final BuiltMap<String, Map<String, dynamic>?> theme;
  @override
  final String logo;
  @override
  final String darkLogo;

  factory _$ThemeConfig([void Function(ThemeConfigBuilder)? updates]) =>
      (ThemeConfigBuilder()..update(updates))._build();

  _$ThemeConfig._(
      {required this.theme, required this.logo, required this.darkLogo})
      : super._();
  @override
  ThemeConfig rebuild(void Function(ThemeConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThemeConfigBuilder toBuilder() => ThemeConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThemeConfig &&
        theme == other.theme &&
        logo == other.logo &&
        darkLogo == other.darkLogo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, darkLogo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ThemeConfig')
          ..add('theme', theme)
          ..add('logo', logo)
          ..add('darkLogo', darkLogo))
        .toString();
  }
}

class ThemeConfigBuilder implements Builder<ThemeConfig, ThemeConfigBuilder> {
  _$ThemeConfig? _$v;

  MapBuilder<String, Map<String, dynamic>?>? _theme;
  MapBuilder<String, Map<String, dynamic>?> get theme =>
      _$this._theme ??= MapBuilder<String, Map<String, dynamic>?>();
  set theme(MapBuilder<String, Map<String, dynamic>?>? theme) =>
      _$this._theme = theme;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _darkLogo;
  String? get darkLogo => _$this._darkLogo;
  set darkLogo(String? darkLogo) => _$this._darkLogo = darkLogo;

  ThemeConfigBuilder() {
    ThemeConfig._defaults(this);
  }

  ThemeConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _theme = $v.theme.toBuilder();
      _logo = $v.logo;
      _darkLogo = $v.darkLogo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThemeConfig other) {
    _$v = other as _$ThemeConfig;
  }

  @override
  void update(void Function(ThemeConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ThemeConfig build() => _build();

  _$ThemeConfig _build() {
    _$ThemeConfig _$result;
    try {
      _$result = _$v ??
          _$ThemeConfig._(
            theme: theme.build(),
            logo: BuiltValueNullFieldError.checkNotNull(
                logo, r'ThemeConfig', 'logo'),
            darkLogo: BuiltValueNullFieldError.checkNotNull(
                darkLogo, r'ThemeConfig', 'darkLogo'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'theme';
        theme.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ThemeConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
