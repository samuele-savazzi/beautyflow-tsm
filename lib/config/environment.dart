enum Environment { dev, staging, production }

class EnvironmentConfig {
  static const Environment current = Environment.dev;

  static String get baseUrl {
    switch (current) {
      case Environment.dev:
        return 'http://localhost:8000';
      case Environment.staging:
        return 'https://staging-api.beautyflow.it';
      case Environment.production:
        return 'https://api.beautyflow.it';
    }
  }

  static String get adminApiPath => '/admin-api';

  static Duration get tokenRefreshThreshold => const Duration(minutes: 5);

  static Duration get connectTimeout => const Duration(seconds: 30);

  static Duration get receiveTimeout => const Duration(seconds: 30);
}
