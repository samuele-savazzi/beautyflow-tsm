/// Gradient configuration for a single color
class GradientConfig {
  final String main;
  final String light;
  final String state;

  GradientConfig({
    required this.main,
    required this.light,
    required this.state,
  });

  Map<String, dynamic> toJson() {
    return {
      'main': main,
      'light': light,
      'state': state,
    };
  }
}

/// Theme gradients
class ThemeGradients {
  final GradientConfig primary;
  final GradientConfig secondary;

  ThemeGradients({
    required this.primary,
    required this.secondary,
  });

  Map<String, dynamic> toJson() {
    return {
      'primary': primary.toJson(),
      'secondary': secondary.toJson(),
    };
  }
}
