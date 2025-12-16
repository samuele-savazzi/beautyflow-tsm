import 'package:dio/dio.dart';
import '../../config/environment.dart';
import 'token_storage.dart';

class ApiService {
  late final Dio _dio;
  final TokenStorage _storage = TokenStorage();

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

  // Auth Interceptor - Auto-inject JWT token
  InterceptorsWrapper _authInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        final accessToken = await _storage.read(key: 'access_token');
        if (accessToken != null) {
          options.headers['Authorization'] = 'Bearer $accessToken';
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
          // Token expired, try to refresh
          try {
            await refreshToken();

            // Retry the original request
            final options = Options(
              method: error.requestOptions.method,
              headers: error.requestOptions.headers,
            );

            final response = await _dio.request(
              error.requestOptions.path,
              options: options,
              data: error.requestOptions.data,
              queryParameters: error.requestOptions.queryParameters,
            );

            return handler.resolve(response);
          } catch (e) {
            // Refresh failed, user needs to login again
            await logout();
            return handler.reject(error);
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
