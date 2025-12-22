/// Theme settings
class ThemeSettings {
  final bool darkModeDefault;
  final bool allowDarkModeToggle;
  final bool autoDetectSystemTheme;

  ThemeSettings({
    this.darkModeDefault = false,
    this.allowDarkModeToggle = true,
    this.autoDetectSystemTheme = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'darkModeDefault': darkModeDefault,
      'allowDarkModeToggle': allowDarkModeToggle,
      'autoDetectSystemTheme': autoDetectSystemTheme,
    };
  }
}
