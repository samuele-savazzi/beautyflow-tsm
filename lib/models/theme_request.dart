/// Theme request per tenant con tutti i colori del tema
class ThemeRequest {
  final String primary;
  final String secondary;
  final String background;
  final String surface;
  final String border;
  final String text;
  final String textSecondary;
  final String shadow;
  final String btnBackground;
  final String btnText;

  ThemeRequest({
    required this.primary,
    required this.secondary,
    required this.background,
    required this.surface,
    required this.border,
    required this.text,
    required this.textSecondary,
    required this.shadow,
    required this.btnBackground,
    required this.btnText,
  });

  Map<String, dynamic> toJson() {
    return {
      'primary': primary,
      'secondary': secondary,
      'background': background,
      'surface': surface,
      'border': border,
      'text': text,
      'text_secondary': textSecondary,
      'shadow': shadow,
      'btn_background': btnBackground,
      'btn_text': btnText,
    };
  }

  factory ThemeRequest.fromJson(Map<String, dynamic> json) {
    return ThemeRequest(
      primary: json['primary'],
      secondary: json['secondary'],
      background: json['background'],
      surface: json['surface'],
      border: json['border'],
      text: json['text'],
      textSecondary: json['text_secondary'],
      shadow: json['shadow'],
      btnBackground: json['btn_background'],
      btnText: json['btn_text'],
    );
  }

  @override
  String toString() => 'Theme(primary: $primary, secondary: $secondary)';
}
