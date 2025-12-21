import 'package:flutter/foundation.dart';

class EnvironmentConfig {
  /// Determina il baseUrl in base al build mode:
  /// - Debug/Profile: localhost:8000 (sviluppo locale)
  /// - Release: public.beautyflowhub.it (produzione)
  static String get baseUrl {
    if (kDebugMode || kProfileMode) {
      return 'http://localhost:8000';
    } else {
      return 'https://public.beautyflowhub.it';
    }
  }

  static String get adminApiPath => '/admin-api';

  static Duration get tokenRefreshThreshold => const Duration(minutes: 5);

  static Duration get connectTimeout => const Duration(seconds: 30);

  static Duration get receiveTimeout => const Duration(seconds: 30);
}
