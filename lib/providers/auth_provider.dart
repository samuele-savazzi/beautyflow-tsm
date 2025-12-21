import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import '../api/services/api_service.dart';
import '../models/admin_user.dart';
import '../models/auth_models.dart';
import '../config/environment.dart';

enum AuthStatus {
  initial,
  authenticated,
  unauthenticated,
  requires2FA,
  requires2FASetup,
  showBackupCodes, // Mostra backup codes dopo verify setup
  requiresPasswordChange,
}

class AuthProvider with ChangeNotifier {
  final ApiService _apiService;

  AuthStatus _status = AuthStatus.initial;
  AdminUser? _currentUser;
  String? _tempToken; // Token temporaneo pre-2FA
  List<String>? _backupCodes; // Backup codes da mostrare dopo setup

  AuthStatus get status => _status;
  AdminUser? get currentUser => _currentUser;
  bool get isAuthenticated => _status == AuthStatus.authenticated;
  List<String>? get backupCodes => _backupCodes;

  AuthProvider(this._apiService) {
    // Registra callback per gestire token scaduto
    _apiService.setTokenExpiredCallback(() {
      _handleTokenExpired();
    });

    _checkAuthStatus();
  }

  /// Chiamato quando il refresh token fallisce
  void _handleTokenExpired() {
    _status = AuthStatus.unauthenticated;
    _currentUser = null;
    _tempToken = null;
    _backupCodes = null;
    notifyListeners();
  }

  Future<void> _checkAuthStatus() async {
    try {
      final accessToken = await _apiService.getAccessToken();

      if (accessToken != null) {
        // Verifica token validity chiamando /auth/profile/
        final profile = await _getProfile();
        _currentUser = profile;

        if (profile.mustChangePassword) {
          _status = AuthStatus.requiresPasswordChange;
        } else {
          _status = AuthStatus.authenticated;
        }
      } else {
        _status = AuthStatus.unauthenticated;
      }
    } catch (_) {
      // Token invalido o refresh fallito, logout completo
      await _apiService.logout();
      _status = AuthStatus.unauthenticated;
      _currentUser = null;
      _tempToken = null;
      _backupCodes = null;
    }

    notifyListeners();
  }

  Future<AdminUser> _getProfile() async {
    final response = await _apiService.dio.get(
      '${EnvironmentConfig.adminApiPath}/auth/profile/',
    );
    return AdminUser.fromJson(response.data);
  }

  Future<void> login(String email, String password) async {
    try {
      final response = await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/auth/login/',
        data: {
          'email': email,
          'password': password,
        },
      );

      final loginResponse = LoginResponse.fromJson(response.data);
      _currentUser = loginResponse.admin;

      // CASO 1: Setup 2FA richiesto (primo accesso)
      if (loginResponse.requires2FASetup) {
        _tempToken = loginResponse.access; // Temporary token
        // Setup 2FA PRIMA di tutto (anche se must_change_password)
        _status = AuthStatus.requires2FASetup;
      }
      // CASO 2: Verifica 2FA richiesta
      else if (loginResponse.requires2FA) {
        _tempToken = loginResponse.access; // Temporary token
        _status = AuthStatus.requires2FA;
      }
      // CASO 3: Login completo (nessun 2FA richiesto - caso raro)
      else {
        // Salva full tokens
        if (loginResponse.refresh != null) {
          await _apiService.saveTokens(
            accessToken: loginResponse.access,
            refreshToken: loginResponse.refresh!,
          );
        }

        if (loginResponse.admin.mustChangePassword) {
          _status = AuthStatus.requiresPasswordChange;
        } else {
          _status = AuthStatus.authenticated;
        }
      }

      notifyListeners();
    } on DioException {
      _status = AuthStatus.unauthenticated;
      notifyListeners();
      rethrow;
    }
  }

  Future<void> verify2FA(String code, {bool isBackupCode = false}) async {
    if (_tempToken == null) {
      throw Exception('No temporary token available');
    }

    try {
      final response = await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/auth/verify-2fa-login/',
        data: isBackupCode ? {'backup_code': code} : {'code': code},
        options: Options(
          headers: {'Authorization': 'Bearer $_tempToken'},
        ),
      );

      final verify2FAResponse = Verify2FAResponse.fromJson(response.data);

      // Salva i full tokens
      await _apiService.saveTokens(
        accessToken: verify2FAResponse.tokens.access,
        refreshToken: verify2FAResponse.tokens.refresh,
      );

      _currentUser = verify2FAResponse.admin;
      _tempToken = null; // Scarta temp token

      if (verify2FAResponse.admin.mustChangePassword) {
        _status = AuthStatus.requiresPasswordChange;
      } else {
        _status = AuthStatus.authenticated;
      }

      notifyListeners();
    } on DioException {
      notifyListeners();
      rethrow;
    }
  }

  Future<Setup2FAResponse> setup2FA() async {
    if (_tempToken == null) {
      throw Exception('No temporary token available');
    }

    final response = await _apiService.dio.post(
      '${EnvironmentConfig.adminApiPath}/auth/setup-2fa/',
      options: Options(
        headers: {'Authorization': 'Bearer $_tempToken'},
      ),
    );

    return Setup2FAResponse.fromJson(response.data);
  }

  Future<void> verify2FASetup(String code) async {
    if (_tempToken == null) {
      throw Exception('No temporary token available');
    }

    try {
      final response = await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/auth/verify-2fa-setup/',
        data: {'code': code},
        options: Options(
          headers: {'Authorization': 'Bearer $_tempToken'},
        ),
      );

      final verify2FAResponse = Verify2FAResponse.fromJson(response.data);

      // Salva i full tokens
      await _apiService.saveTokens(
        accessToken: verify2FAResponse.tokens.access,
        refreshToken: verify2FAResponse.tokens.refresh,
      );

      _currentUser = verify2FAResponse.admin;
      _tempToken = null;

      // Salva backup codes per mostrarli
      _backupCodes = verify2FAResponse.backupCodes;

      // Mostra SEMPRE i backup codes dopo setup
      _status = AuthStatus.showBackupCodes;

      notifyListeners();
    } on DioException {
      notifyListeners();
      rethrow;
    }
  }

  /// Chiamato quando l'utente conferma di aver salvato i backup codes
  void confirmBackupCodesSaved() {
    _backupCodes = null; // Cancella i backup codes dalla memoria

    // Controlla se serve cambiare password
    if (_currentUser?.mustChangePassword ?? false) {
      _status = AuthStatus.requiresPasswordChange;
    } else {
      _status = AuthStatus.authenticated;
    }

    notifyListeners();
  }

  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    await _apiService.dio.post(
      '${EnvironmentConfig.adminApiPath}/auth/change-password/',
      data: {
        'current_password': oldPassword,
        'new_password': newPassword,
        'confirm_password': confirmPassword,
      },
    );

    // Aggiorna status
    if (_currentUser != null) {
      _currentUser = _currentUser!.copyWith(mustChangePassword: false);
      _status = AuthStatus.authenticated;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    await _apiService.logout();
    _status = AuthStatus.unauthenticated;
    _currentUser = null;
    _tempToken = null;
    _backupCodes = null;
    notifyListeners();
  }
}
