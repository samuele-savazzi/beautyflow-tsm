import 'dart:math';
import '../models/theme_request.dart';
import '../models/expanded_theme_colors.dart';

/// Utility functions for color manipulation (ported from React ThemeEditor)
class ColorUtils {
  /// Convert hex color to RGBA string with opacity
  /// Example: hexToRgba('#64748b', 0.5) => 'rgba(100, 116, 139, 0.5)'
  static String hexToRgba(String hex, double opacity) {
    // Remove # if present
    hex = hex.replaceAll('#', '');

    // Parse hex to RGB
    final r = int.parse(hex.substring(0, 2), radix: 16);
    final g = int.parse(hex.substring(2, 4), radix: 16);
    final b = int.parse(hex.substring(4, 6), radix: 16);

    return 'rgba($r, $g, $b, $opacity)';
  }

  /// Adjust color brightness by a percentage
  /// percent > 0: lighten
  /// percent < 0: darken
  /// isAbsolute: if true, adjust by absolute amount, otherwise by percentage
  static String adjustColor(String hex, int percent, [bool isAbsolute = false]) {
    // Remove # if present
    hex = hex.replaceAll('#', '');

    // Parse hex to RGB
    int r = int.parse(hex.substring(0, 2), radix: 16);
    int g = int.parse(hex.substring(2, 4), radix: 16);
    int b = int.parse(hex.substring(4, 6), radix: 16);

    if (isAbsolute) {
      // Absolute adjustment
      r = (r + percent).clamp(0, 255);
      g = (g + percent).clamp(0, 255);
      b = (b + percent).clamp(0, 255);
    } else {
      // Percentage adjustment
      final factor = 1 + (percent / 100);
      r = (r * factor).round().clamp(0, 255);
      g = (g * factor).round().clamp(0, 255);
      b = (b * factor).round().clamp(0, 255);
    }

    // Convert back to hex
    final rHex = r.toRadixString(16).padLeft(2, '0');
    final gHex = g.toRadixString(16).padLeft(2, '0');
    final bHex = b.toRadixString(16).padLeft(2, '0');

    return '#$rHex$gHex$bHex';
  }

  /// Lighten a color by percentage
  static String lighten(String hex, int percent) {
    return adjustColor(hex, percent);
  }

  /// Darken a color by percentage
  static String darken(String hex, int percent) {
    return adjustColor(hex, -percent);
  }

  /// Map simple base colors to complete expanded theme colors
  /// This mirrors the React ThemeEditor's mapSimpleToCompleteColors function
  static ExpandedThemeColors mapSimpleToCompleteColors(
    ThemeRequest simpleColors, {
    bool isDark = false,
  }) {
    final primary = simpleColors.primary;
    final secondary = simpleColors.secondary;
    final background = simpleColors.background;
    final surface = simpleColors.surface;
    final text = simpleColors.text;
    final textSecondary = simpleColors.textSecondary;
    final shadow = simpleColors.shadow;
    final btnBackground = simpleColors.btnBackground;
    final btnText = simpleColors.btnText;

    return ExpandedThemeColors(
      background: background,
      paper: surface,
      textPrimary: text,
      textSecondary: textSecondary,
      primary: primary,
      secondary: secondary,
      cardBorder: primary,
      cardShadow: hexToRgba(shadow, 0.4),
      cardBackground: surface,
      navbarText: adjustColor(secondary, 30),
      navbarBorder: primary,
      navbarBackground: surface,
      sidebarText: adjustColor(primary, 30),
      sidebarHover: adjustColor(surface, -20, true),
      sidebarActive: primary,
      sidebarBackground: surface,
      formLabelText: text,
      formBackground: surface,
      formHelperText: text,
      loginBackground: background,
      loginBoxBackground: surface,
      loginBoxShadow: hexToRgba(shadow, 0.5),
      loginInputFocus: text,
      loginInputBorder: primary,
      buttonPrimaryBg: btnBackground,
      buttonPrimaryText: btnText,
      buttonSecondaryBg: adjustColor(primary, -40, true),
      buttonSecondaryText: adjustColor(secondary, 30),
    );
  }
}
