// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_theme_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantThemeUpdate extends TenantThemeUpdate {
  @override
  final Map<String, dynamic>? theme;
  @override
  final String? logo;
  @override
  final String? darkLogo;

  factory _$TenantThemeUpdate(
          [void Function(TenantThemeUpdateBuilder)? updates]) =>
      (TenantThemeUpdateBuilder()..update(updates))._build();

  _$TenantThemeUpdate._({this.theme, this.logo, this.darkLogo}) : super._();
  @override
  TenantThemeUpdate rebuild(void Function(TenantThemeUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantThemeUpdateBuilder toBuilder() =>
      TenantThemeUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantThemeUpdate &&
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
    return (newBuiltValueToStringHelper(r'TenantThemeUpdate')
          ..add('theme', theme)
          ..add('logo', logo)
          ..add('darkLogo', darkLogo))
        .toString();
  }
}

class TenantThemeUpdateBuilder
    implements Builder<TenantThemeUpdate, TenantThemeUpdateBuilder> {
  _$TenantThemeUpdate? _$v;

  Map<String, dynamic>? _theme;
  Map<String, dynamic>? get theme => _$this._theme;
  set theme(Map<String, dynamic>? theme) => _$this._theme = theme;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _darkLogo;
  String? get darkLogo => _$this._darkLogo;
  set darkLogo(String? darkLogo) => _$this._darkLogo = darkLogo;

  TenantThemeUpdateBuilder() {
    TenantThemeUpdate._defaults(this);
  }

  TenantThemeUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _theme = $v.theme;
      _logo = $v.logo;
      _darkLogo = $v.darkLogo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TenantThemeUpdate other) {
    _$v = other as _$TenantThemeUpdate;
  }

  @override
  void update(void Function(TenantThemeUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantThemeUpdate build() => _build();

  _$TenantThemeUpdate _build() {
    final _$result = _$v ??
        _$TenantThemeUpdate._(
          theme: theme,
          logo: logo,
          darkLogo: darkLogo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
