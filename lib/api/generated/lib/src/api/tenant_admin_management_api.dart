//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:beautyflow_api/src/api_util.dart';
import 'package:beautyflow_api/src/model/create_tenant_admin_request.dart';
import 'package:beautyflow_api/src/model/create_tenant_admin_response.dart';
import 'package:beautyflow_api/src/model/error_response.dart';
import 'package:beautyflow_api/src/model/tenant_admin_detail.dart';
import 'package:beautyflow_api/src/model/tenant_admin_list_response.dart';

class TenantAdminManagementApi {

  final Dio _dio;

  final Serializers _serializers;

  const TenantAdminManagementApi(this._dio, this._serializers);

  /// adminApiAdminsCreate
  ///      **Crea un nuovo TenantAdmin** (solo per role&#x3D;&#39;admin&#39;).      ### Operazioni eseguite:     1. Creazione User Django (username &#x3D; email)     2. Creazione TenantAdmin con password randomica     3. Imposta &#x60;must_change_password&#x3D;True&#x60; (cambio obbligatorio al primo login)     4. Imposta &#x60;totp_enabled&#x3D;False&#x60; (setup 2FA obbligatorio al primo login)     5. Invia email con credenziali temporanee     6. Crea audit log      ### Password Generata:     - Lunghezza: 12 caratteri     - Contiene: maiuscole, minuscole, numeri, caratteri speciali     - Mostrata SOLO in questa response (non recuperabile dopo)      ### Email Inviata:     Contiene:     - Credenziali di accesso     - Istruzioni primo login     - Warning sicurezza     - Link accesso      ### Primo Login Flow:     1. Login con credenziali temporanee     2. Setup 2FA obbligatorio (scansione QR code)     3. Cambio password obbligatorio     4. Accesso completo      ### Audit Log:     Crea automaticamente audit log con action &#x60;create_tenant_admin&#x60;     
  ///
  /// Parameters:
  /// * [createTenantAdminRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CreateTenantAdminResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CreateTenantAdminResponse>> adminApiAdminsCreate({ 
    required CreateTenantAdminRequest createTenantAdminRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/admins/';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(CreateTenantAdminRequest);
      _bodyData = _serializers.serialize(createTenantAdminRequest, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CreateTenantAdminResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CreateTenantAdminResponse),
      ) as CreateTenantAdminResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CreateTenantAdminResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// adminApiAdminsRetrieve
  /// Lista tutti i TenantAdmin con paginazione e filtri (solo per role&#x3D;&#39;admin&#39;)
  ///
  /// Parameters:
  /// * [isActive] - Filtra per stato attivo
  /// * [page] - Numero pagina (default: 1)
  /// * [pageSize] - Risultati per pagina (default: 20, max: 100)
  /// * [role] - Filtra per ruolo (admin, commerciale, support)
  /// * [search] - Cerca per email o nome
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TenantAdminListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TenantAdminListResponse>> adminApiAdminsRetrieve({ 
    bool? isActive,
    int? page,
    int? pageSize,
    String? role,
    String? search,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/admins/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (isActive != null) r'is_active': encodeQueryParameter(_serializers, isActive, const FullType(bool)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (pageSize != null) r'page_size': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      if (role != null) r'role': encodeQueryParameter(_serializers, role, const FullType(String)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TenantAdminListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TenantAdminListResponse),
      ) as TenantAdminListResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TenantAdminListResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// adminApiAdminsRetrieve2
  /// Dettagli completi di un TenantAdmin specifico (solo per role&#x3D;&#39;admin&#39;)
  ///
  /// Parameters:
  /// * [adminId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TenantAdminDetail] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TenantAdminDetail>> adminApiAdminsRetrieve2({ 
    required int adminId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/admins/{admin_id}/'.replaceAll('{' r'admin_id' '}', encodeQueryParameter(_serializers, adminId, const FullType(int)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TenantAdminDetail? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TenantAdminDetail),
      ) as TenantAdminDetail;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TenantAdminDetail>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
