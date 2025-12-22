import 'expanded_theme_colors.dart';
import 'theme_gradients.dart';
import 'theme_metadata.dart';
import 'theme_settings.dart';

/// Complete theme structure matching React ThemeEditor format
class CompleteTheme {
  final ExpandedThemeColors dark;
  final ExpandedThemeColors light;
  final ThemeGradients gradients;
  final String navbarText;
  final String brandAccent;
  final String sidebarText;
  final String brandPrimary;
  final String sidebarActive;
  final String brandSecondary;
  final String buttonPrimaryBg;
  final String loginBackground;
  final String navbarBackground;
  final String sidebarBackground;
  final String loginBoxBackground;

  CompleteTheme({
    required this.dark,
    required this.light,
    required this.gradients,
    required this.navbarText,
    required this.brandAccent,
    required this.sidebarText,
    required this.brandPrimary,
    required this.sidebarActive,
    required this.brandSecondary,
    required this.buttonPrimaryBg,
    required this.loginBackground,
    required this.navbarBackground,
    required this.sidebarBackground,
    required this.loginBoxBackground,
  });

  Map<String, dynamic> toJson() {
    return {
      'dark': dark.toJson(),
      'light': light.toJson(),
      'gradients': gradients.toJson(),
      'navbarText': navbarText,
      'brandAccent': brandAccent,
      'sidebarText': sidebarText,
      'brandPrimary': brandPrimary,
      'sidebarActive': sidebarActive,
      'brandSecondary': brandSecondary,
      'buttonPrimaryBg': buttonPrimaryBg,
      'loginBackground': loginBackground,
      'navbarBackground': navbarBackground,
      'sidebarBackground': sidebarBackground,
      'loginBoxBackground': loginBoxBackground,
    };
  }
}

/// Complete theme request with theme, metadata, and settings
class CompleteThemeRequest {
  final CompleteTheme theme;
  final ThemeMetadata metadata;
  final ThemeSettings settings;

  CompleteThemeRequest({
    required this.theme,
    required this.metadata,
    required this.settings,
  });

  Map<String, dynamic> toJson() {
    return {
      'theme': theme.toJson(),
      'metadata': metadata.toJson(),
      'settings': settings.toJson(),
    };
  }
}
