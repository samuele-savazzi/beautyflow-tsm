import 'token_storage.dart';

/// Manager per gestire la versione API selezionata dall'utente
/// Gestisce la persistenza della scelta tra "production" e "staging"
class ApiVersionManager {
  static const String _apiVersionKey = 'api_version';
  static const String defaultVersion = 'production';

  final TokenStorage _storage = TokenStorage();

  // Singleton pattern
  static final ApiVersionManager _instance = ApiVersionManager._internal();
  factory ApiVersionManager() => _instance;

  ApiVersionManager._internal();

  /// Ottiene la versione API corrente
  /// Ritorna "production" o "staging", default "production"
  Future<String> getApiVersion() async {
    final version = await _storage.read(key: _apiVersionKey);
    return version ?? defaultVersion;
  }

  /// Imposta la versione API
  /// @param version - "production" o "staging"
  Future<void> setApiVersion(String version) async {
    if (version != 'production' && version != 'staging') {
      throw ArgumentError('API version must be "production" or "staging"');
    }
    await _storage.write(key: _apiVersionKey, value: version);
  }

  /// Cancella la versione API (torna a default "production")
  Future<void> clearApiVersion() async {
    await _storage.delete(key: _apiVersionKey);
  }

  /// Verifica se la versione corrente è staging
  Future<bool> isStaging() async {
    final version = await getApiVersion();
    return version == 'staging';
  }

  /// Verifica se la versione corrente è production
  Future<bool> isProduction() async {
    final version = await getApiVersion();
    return version == 'production';
  }
}
