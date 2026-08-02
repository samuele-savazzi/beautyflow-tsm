import 'dart:async';

import 'package:dio/dio.dart';
import '../../config/environment.dart';
import 'token_storage.dart';
import 'api_version_manager.dart';

class ApiService {
  late final Dio _dio;
  final TokenStorage _storage = TokenStorage();

  // Callback chiamata quando il refresh token fallisce
  void Function()? _onTokenExpired;

  // Refresh in corso: le altre richieste che prendono 401 si accodano qui
  // invece di fallire. La pagina dei tenant lancia piu' chiamate insieme e
  // prima la prima rinnovava il token mentre le altre venivano rifiutate.
  Completer<void>? _refreshCompleter;

  // Singleton pattern
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;

  ApiService._internal() {
    _dio = Dio(BaseOptions(
      baseUrl: EnvironmentConfig.baseUrl,
      connectTimeout: EnvironmentConfig.connectTimeout,
      receiveTimeout: EnvironmentConfig.receiveTimeout,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));

    _dio.interceptors.add(_authInterceptor());
    _dio.interceptors.add(_errorInterceptor());
  }

  Dio get dio => _dio;

  /// Registra callback da chiamare quando il token è scaduto e il refresh fallisce
  void setTokenExpiredCallback(void Function() callback) {
    _onTokenExpired = callback;
  }

  // Auth Interceptor - Auto-inject JWT token + API Version header
  InterceptorsWrapper _authInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        // JWT token
        final accessToken = await _storage.read(key: 'access_token');
        if (accessToken != null) {
          options.headers['Authorization'] = 'Bearer $accessToken';
        }

        // API Version header (solo se staging)
        final apiVersion = await ApiVersionManager().getApiVersion();
        if (apiVersion == 'staging') {
          options.headers['X-API-Version'] = 'staging';
        }

        return handler.next(options);
      },
    );
  }

  // Error Interceptor - Auto-refresh token on 401
  InterceptorsWrapper _errorInterceptor() {
    return InterceptorsWrapper(
      onError: (DioException error, handler) async {
        if (error.response?.statusCode == 401) {
          // Non tentare refresh se la richiesta è già per il refresh endpoint
          if (error.requestOptions.path.contains('/auth/refresh/')) {
            return handler.next(error);
          }

          try {
            await _ensureRefreshed();
          } catch (_) {
            // Refresh fallito: credenziali non piu' recuperabili.
            await logout();
            _onTokenExpired?.call();
            return handler.reject(error);
          }

          try {
            // Il retry ripassa dall'auth interceptor, che sovrascrive
            // l'header Authorization con il token appena rinnovato.
            final response = await _dio.request(
              error.requestOptions.path,
              options: Options(
                method: error.requestOptions.method,
                headers: error.requestOptions.headers,
              ),
              data: error.requestOptions.data,
              queryParameters: error.requestOptions.queryParameters,
            );
            return handler.resolve(response);
          } on DioException catch (retryError) {
            return handler.reject(retryError);
          }
        }

        return handler.next(error);
      },
    );
  }

  // Token Management
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await _storage.write(key: 'access_token', value: accessToken);
    await _storage.write(key: 'refresh_token', value: refreshToken);
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: 'access_token');
  }

  Future<String?> getRefreshToken() async {
    return await _storage.read(key: 'refresh_token');
  }

  /// Garantisce un solo refresh in volo: chi arriva dopo aspetta lo stesso
  /// esito invece di lanciarne un altro. Con ROTATE_REFRESH_TOKENS e
  /// BLACKLIST_AFTER_ROTATION lato backend, due refresh paralleli
  /// invaliderebbero a vicenda il token appena emesso.
  Future<void> _ensureRefreshed() {
    final inFlight = _refreshCompleter;
    if (inFlight != null) return inFlight.future;

    final completer = Completer<void>();
    _refreshCompleter = completer;

    refreshToken().then((_) {
      _refreshCompleter = null;
      completer.complete();
    }).catchError((e) {
      _refreshCompleter = null;
      completer.completeError(e);
    });

    return completer.future;
  }

  Future<void> refreshToken() async {
    final refreshToken = await _storage.read(key: 'refresh_token');
    if (refreshToken == null) {
      throw Exception('No refresh token available');
    }

    final response = await _dio.post(
      '${EnvironmentConfig.adminApiPath}/auth/refresh/',
      data: {'refresh': refreshToken},
    );

    if (response.statusCode == 200) {
      final data = response.data;
      await saveTokens(
        accessToken: data['access'],
        refreshToken: data['refresh'],
      );
    } else {
      throw Exception('Token refresh failed');
    }
  }

  Future<void> logout() async {
    await _storage.delete(key: 'access_token');
    await _storage.delete(key: 'refresh_token');
  }

  Future<bool> isAuthenticated() async {
    final accessToken = await _storage.read(key: 'access_token');
    return accessToken != null;
  }
}
