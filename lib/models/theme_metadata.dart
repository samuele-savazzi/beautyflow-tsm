/// Theme metadata
class ThemeMetadata {
  final String clientId;
  final String themeName;
  final String lastUpdated;
  final String themeVersion;
  final List<String> supportedModes;
  final bool isCustomTheme;
  final bool hasCustomDarkColors;

  ThemeMetadata({
    required this.clientId,
    required this.themeName,
    required this.lastUpdated,
    this.themeVersion = '2.1',
    this.supportedModes = const ['light', 'dark'],
    this.isCustomTheme = false,
    this.hasCustomDarkColors = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'clientId': clientId,
      'themeName': themeName,
      'lastUpdated': lastUpdated,
      'themeVersion': themeVersion,
      'supportedModes': supportedModes,
      'isCustomTheme': isCustomTheme,
      'hasCustomDarkColors': hasCustomDarkColors,
    };
  }
}
