import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

/// Simple file-based token storage for macOS without code signing
/// Stores tokens in application support directory
class TokenStorage {
  static const String _fileName = 'tokens.json';
  Map<String, String>? _cache;

  Future<File> _getTokenFile() async {
    final directory = await getApplicationSupportDirectory();
    return File('${directory.path}/$_fileName');
  }

  Future<Map<String, String>> _loadTokens() async {
    if (_cache != null) return _cache!;

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

  Future<void> write({required String key, required String value}) async {
    final tokens = await _loadTokens();
    tokens[key] = value;
    await _saveTokens(tokens);
  }

  Future<String?> read({required String key}) async {
    final tokens = await _loadTokens();
    return tokens[key];
  }

  Future<void> delete({required String key}) async {
    final tokens = await _loadTokens();
    tokens.remove(key);
    await _saveTokens(tokens);
  }

  Future<void> deleteAll() async {
    try {
      final file = await _getTokenFile();
      if (await file.exists()) {
        await file.delete();
      }
      _cache = {};
    } catch (e) {
      print('⚠️  Error deleting tokens: $e');
    }
  }
}
