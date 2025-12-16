//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:beautyflow_api/src/api_util.dart';
import 'package:beautyflow_api/src/model/activate_tier_request.dart';
import 'package:beautyflow_api/src/model/error_response.dart';
import 'package:beautyflow_api/src/model/message_response.dart';
import 'package:beautyflow_api/src/model/tenant_tier_detail.dart';
import 'package:built_collection/built_collection.dart';

class TenantTierManagementApi {

  final Dio _dio;

  final Serializers _serializers;

  const TenantTierManagementApi(this._dio, this._serializers);

  /// adminApiTenantsTiersActivateCreate
  ///      **Attiva Tier per un tenant** (solo per role&#x3D;&#39;admin&#39;).      ### Operazioni:     1. Verifica che tier esista e sia attivo     2. Verifica dipendenze (requires_tiers)     3. Verifica conflitti (conflicts_with)     4. Crea TenantTier con billing info     5. Se is_trial&#x3D;True, calcola trial_ends_at     6. Crea audit log      ### Validazioni:     - Tier deve essere &#x60;is_active&#x3D;True&#x60;     - Se tier ha &#x60;requires_tiers&#x60;, devono essere tutti attivi per questo tenant     - Se tier ha &#x60;conflicts_with&#x60;, nessuno deve essere attivo per questo tenant      ### Trial:     Se &#x60;is_trial&#x3D;True&#x60;:     - &#x60;trial_ends_at&#x60; &#x3D; now + tier.trial_days     - &#x60;expires_at&#x60; &#x3D; trial_ends_at     - Nessun costo     
  ///
  /// Parameters:
  /// * [tenantId] 
  /// * [activateTierRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TenantTierDetail] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TenantTierDetail>> adminApiTenantsTiersActivateCreate({ 
    required int tenantId,
    required ActivateTierRequest activateTierRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tenants/{tenant_id}/tiers/activate/'.replaceAll('{' r'tenant_id' '}', encodeQueryParameter(_serializers, tenantId, const FullType(int)).toString());
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
      const _type = FullType(ActivateTierRequest);
      _bodyData = _serializers.serialize(activateTierRequest, specifiedType: _type);

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

    TenantTierDetail? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TenantTierDetail),
      ) as TenantTierDetail;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TenantTierDetail>(
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

  /// adminApiTenantsTiersDeactivateCreate
  ///      **Disattiva Tier per un tenant** (solo per role&#x3D;&#39;admin&#39;).      ### Operazioni:     1. Imposta &#x60;is_active&#x3D;False&#x60;     2. Imposta &#x60;cancelled_at&#x3D;now()&#x60;     3. Crea audit log      ### Nota:     Il tier rimane nel database per storico, ma non è più utilizzabile dal tenant.     
  ///
  /// Parameters:
  /// * [tenantId] 
  /// * [tierId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MessageResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MessageResponse>> adminApiTenantsTiersDeactivateCreate({ 
    required int tenantId,
    required int tierId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tenants/{tenant_id}/tiers/{tier_id}/deactivate/'.replaceAll('{' r'tenant_id' '}', encodeQueryParameter(_serializers, tenantId, const FullType(int)).toString()).replaceAll('{' r'tier_id' '}', encodeQueryParameter(_serializers, tierId, const FullType(int)).toString());
    final _options = Options(
      method: r'POST',
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

    MessageResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(MessageResponse),
      ) as MessageResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MessageResponse>(
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

  /// adminApiTenantsTiersIncrementUsageCreate
  ///      **Incrementa usage count per tier con limite** (solo per role&#x3D;&#39;admin&#39;).      ### Operazioni:     - Incrementa &#x60;usage_count&#x60; di 1     - Verifica se raggiunto il limite (&#x60;usage_count &gt;&#x3D; usage_limit&#x60;)     - Ritorna messaggio con usage status      ### Uso:     Da chiamare quando il tenant utilizza una funzionalità limitata     (es. invia un messaggio WhatsApp, genera un PDF, ecc.)     
  ///
  /// Parameters:
  /// * [tenantId] 
  /// * [tierId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MessageResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MessageResponse>> adminApiTenantsTiersIncrementUsageCreate({ 
    required int tenantId,
    required int tierId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tenants/{tenant_id}/tiers/{tier_id}/increment-usage/'.replaceAll('{' r'tenant_id' '}', encodeQueryParameter(_serializers, tenantId, const FullType(int)).toString()).replaceAll('{' r'tier_id' '}', encodeQueryParameter(_serializers, tierId, const FullType(int)).toString());
    final _options = Options(
      method: r'POST',
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

    MessageResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(MessageResponse),
      ) as MessageResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MessageResponse>(
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

  /// adminApiTenantsTiersList
  /// Lista tier attivi per un tenant specifico (solo per role&#x3D;&#39;admin&#39;)
  ///
  /// Parameters:
  /// * [tenantId] 
  /// * [isActive] - Filtra per tier attivi
  /// * [isTrial] - Filtra per tier in trial
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<TenantTierDetail>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<TenantTierDetail>>> adminApiTenantsTiersList({ 
    required int tenantId,
    bool? isActive,
    bool? isTrial,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tenants/{tenant_id}/tiers/'.replaceAll('{' r'tenant_id' '}', encodeQueryParameter(_serializers, tenantId, const FullType(int)).toString());
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
      if (isTrial != null) r'is_trial': encodeQueryParameter(_serializers, isTrial, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<TenantTierDetail>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(TenantTierDetail)]),
      ) as BuiltList<TenantTierDetail>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<TenantTierDetail>>(
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

  /// adminApiTenantsTiersResetUsageCreate
  ///      **Reset usage count per tier** (solo per role&#x3D;&#39;admin&#39;).      ### Operazioni:     - Imposta &#x60;usage_count&#x3D;0&#x60;     - Aggiorna &#x60;usage_reset_date&#x3D;now()&#x60;      ### Uso:     Da chiamare all&#39;inizio di un nuovo periodo billing     (es. inizio mese per tier mensili)     
  ///
  /// Parameters:
  /// * [tenantId] 
  /// * [tierId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [MessageResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<MessageResponse>> adminApiTenantsTiersResetUsageCreate({ 
    required int tenantId,
    required int tierId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tenants/{tenant_id}/tiers/{tier_id}/reset-usage/'.replaceAll('{' r'tenant_id' '}', encodeQueryParameter(_serializers, tenantId, const FullType(int)).toString()).replaceAll('{' r'tier_id' '}', encodeQueryParameter(_serializers, tierId, const FullType(int)).toString());
    final _options = Options(
      method: r'POST',
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

    MessageResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(MessageResponse),
      ) as MessageResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<MessageResponse>(
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
