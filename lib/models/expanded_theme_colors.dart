/// Expanded theme colors (mirroring React ThemeEditor structure)
/// This represents the complete color palette derived from simple base colors
class ExpandedThemeColors {
  final String background;
  final String paper;
  final String textPrimary;
  final String textSecondary;
  final String primary;
  final String secondary;
  final String cardBorder;
  final String cardShadow;
  final String cardBackground;
  final String navbarText;
  final String navbarBorder;
  final String navbarBackground;
  final String sidebarText;
  final String sidebarHover;
  final String sidebarActive;
  final String sidebarBackground;
  final String formLabelText;
  final String formBackground;
  final String formHelperText;
  final String loginBackground;
  final String loginBoxBackground;
  final String loginBoxShadow;
  final String loginInputFocus;
  final String loginInputBorder;
  final String buttonPrimaryBg;
  final String buttonPrimaryText;
  final String buttonSecondaryBg;
  final String buttonSecondaryText;

  ExpandedThemeColors({
    required this.background,
    required this.paper,
    required this.textPrimary,
    required this.textSecondary,
    required this.primary,
    required this.secondary,
    required this.cardBorder,
    required this.cardShadow,
    required this.cardBackground,
    required this.navbarText,
    required this.navbarBorder,
    required this.navbarBackground,
    required this.sidebarText,
    required this.sidebarHover,
    required this.sidebarActive,
    required this.sidebarBackground,
    required this.formLabelText,
    required this.formBackground,
    required this.formHelperText,
    required this.loginBackground,
    required this.loginBoxBackground,
    required this.loginBoxShadow,
    required this.loginInputFocus,
    required this.loginInputBorder,
    required this.buttonPrimaryBg,
    required this.buttonPrimaryText,
    required this.buttonSecondaryBg,
    required this.buttonSecondaryText,
  });

  Map<String, dynamic> toJson() {
    return {
      'background': background,
      'paper': paper,
      'textPrimary': textPrimary,
      'textSecondary': textSecondary,
      'primary': primary,
      'secondary': secondary,
      'cardBorder': cardBorder,
      'cardShadow': cardShadow,
      'cardBackground': cardBackground,
      'navbarText': navbarText,
      'navbarBorder': navbarBorder,
      'navbarBackground': navbarBackground,
      'sidebarText': sidebarText,
      'sidebarHover': sidebarHover,
      'sidebarActive': sidebarActive,
      'sidebarBackground': sidebarBackground,
      'formLabelText': formLabelText,
      'formBackground': formBackground,
      'formHelperText': formHelperText,
      'loginBackground': loginBackground,
      'loginBoxBackground': loginBoxBackground,
      'loginBoxShadow': loginBoxShadow,
      'loginInputFocus': loginInputFocus,
      'loginInputBorder': loginInputBorder,
      'buttonPrimaryBg': buttonPrimaryBg,
      'buttonPrimaryText': buttonPrimaryText,
      'buttonSecondaryBg': buttonSecondaryBg,
      'buttonSecondaryText': buttonSecondaryText,
    };
  }
}
