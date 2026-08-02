import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

/// Simple file-based token storage for macOS without code signing
/// Stores tokens in application support directory
///
/// SINGLETON, e non e' un dettaglio: il file e' uno solo e ogni `write`
/// riscrive l'intera mappa partendo dalla cache in memoria. Con due istanze
/// (ApiService per i token, ApiVersionManager per api_version) le cache
/// divergevano e l'ultima a scrivere resuscitava i valori vecchi dell'altra.
/// In pratica: dopo una rotazione del refresh token, `setApiVersion` al login
/// rimetteva su disco il refresh token precedente — che con
/// BLACKLIST_AFTER_ROTATION lato backend e' gia' invalidato. Al riavvio
/// l'utente veniva sbattuto fuori.
class TokenStorage {
  static const String _fileName = 'tokens.json';

  static final TokenStorage _instance = TokenStorage._internal();
  factory TokenStorage() => _instance;
  TokenStorage._internal();

  Map<String, String>? _cache;

  /// Serializza le scritture: due `write` concorrenti farebbero
  /// read-modify-write intrecciati sullo stesso file.
  Future<void> _writeQueue = Future.value();

  Future<File> _getTokenFile() async {
    final directory = await getApplicationSupportDirectory();
    return File('${directory.path}/$_fileName');
  }

  Future<Map<String, String>> _loadTokens() async {
    if (_cache != null) return _cache!;
    return _reloadFromDisk();
  }

  /// Rilegge sempre dal disco, ignorando la cache.
  Future<Map<String, String>> _reloadFromDisk() async {
    try {
      final file = await _getTokenFile();
      if (await file.exists()) {
        final contents = await file.readAsString();
        final Map<String, dynamic> json = jsonDecode(contents);
        _cache = json.map((key, value) => MapEntry(key, value.toString()));
        return _cache!;
      }
    } catch (e) {
      print('⚠️  Error loading tokens: $e');
    }

    _cache = {};
    return _cache!;
  }

  Future<void> _saveTokens(Map<String, String> tokens) async {
    try {
      final file = await _getTokenFile();
      await file.writeAsString(jsonEncode(tokens));
      _cache = tokens;
    } catch (e) {
      print('⚠️  Error saving tokens: $e');
      rethrow;
    }
  }

  /// Accoda una modifica atomica: rilegge il file, applica [mutate], risalva.
  /// La rilettura protegge anche dal caso di un secondo processo dell'app.
  Future<void> _mutate(void Function(Map<String, String>) mutate) {
    final operation = _writeQueue.then((_) async {
      final tokens = await _reloadFromDisk();
      mutate(tokens);
      await _saveTokens(tokens);
    });
    // La coda non deve interrompersi se una scrittura fallisce.
    _writeQueue = operation.catchError((_) {});
    return operation;
  }

  Future<void> write({required String key, required String value}) {
    return _mutate((tokens) => tokens[key] = value);
  }

  Future<String?> read({required String key}) async {
    final tokens = await _loadTokens();
    return tokens[key];
  }

  Future<void> delete({required String key}) {
    return _mutate((tokens) => tokens.remove(key));
  }

  Future<void> deleteAll() {
    return _writeQueue = _writeQueue.then((_) async {
      try {
        final file = await _getTokenFile();
        if (await file.exists()) {
          await file.delete();
        }
      } catch (e) {
        print('⚠️  Error deleting tokens: $e');
      }
      _cache = {};
    }).catchError((_) {});
  }
}
