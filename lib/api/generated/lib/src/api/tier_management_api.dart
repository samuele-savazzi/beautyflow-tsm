//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:beautyflow_api/src/api_util.dart';
import 'package:beautyflow_api/src/model/create_tier_request.dart';
import 'package:beautyflow_api/src/model/error_response.dart';
import 'package:beautyflow_api/src/model/message_response.dart';
import 'package:beautyflow_api/src/model/tier_list_response.dart';
import 'package:beautyflow_api/src/model/tier_response.dart';
import 'package:beautyflow_api/src/model/update_tier_request.dart';

class TierManagementApi {

  final Dio _dio;

  final Serializers _serializers;

  const TierManagementApi(this._dio, this._serializers);

  /// adminApiTiersCreate
  ///      **Crea nuovo Tier** (solo per role&#x3D;&#39;admin&#39;).      ### Operazioni eseguite:     1. Validazione codice univoco     2. Creazione Tier con pricing, limits, features     3. Gestione dipendenze tier (requires_tiers, conflicts_with)     4. Audit log      ### Dipendenze:     - &#x60;requires_tiers&#x60;: IDs dei tier che devono essere attivi prima di attivare questo     - &#x60;conflicts_with&#x60;: IDs dei tier che non possono essere attivi insieme a questo      ### Pricing:     - &#x60;billing_type&#x60;: one_time (acquisto unico), monthly (€/mese), yearly (€/anno)     - &#x60;setup_fee&#x60;: Costo iniziale una tantum      ### Usage Limits:     - Se &#x60;has_usage_limit&#x3D;True&#x60;, specificare &#x60;usage_limit&#x60; e &#x60;usage_unit&#x60;     - Esempio: &#x60;usage_limit&#x3D;1000&#x60;, &#x60;usage_unit&#x3D;&#39;messaggi WhatsApp&#39;&#x60;     
  ///
  /// Parameters:
  /// * [createTierRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TierResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TierResponse>> adminApiTiersCreate({ 
    required CreateTierRequest createTierRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tiers/';
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
      const _type = FullType(CreateTierRequest);
      _bodyData = _serializers.serialize(createTierRequest, specifiedType: _type);

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

    TierResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TierResponse),
      ) as TierResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TierResponse>(
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

  /// adminApiTiersDestroy
  ///      **Soft delete Tier** (solo per role&#x3D;&#39;admin&#39;).      ### Operazioni:     - Imposta &#x60;is_active&#x3D;False&#x60;     - Imposta &#x60;deleted_at&#x3D;now()&#x60;     - NON elimina fisicamente il record     - Crea audit log      ### Nota:     Se il tier è attivo su tenant, l&#39;eliminazione fallirà.     Disattivare prima tutti i TenantTier associati.     
  ///
  /// Parameters:
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
  Future<Response<MessageResponse>> adminApiTiersDestroy({ 
    required int tierId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tiers/{tier_id}/'.replaceAll('{' r'tier_id' '}', encodeQueryParameter(_serializers, tierId, const FullType(int)).toString());
    final _options = Options(
      method: r'DELETE',
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

  /// adminApiTiersRetrieve
  ///          **Lista tutti i Tier** con paginazione e filtri (solo per role&#x3D;&#39;admin&#39;).          ### Filtri disponibili:         - &#x60;is_active&#x60;: true/false (default: solo attivi)         - &#x60;is_public&#x60;: true/false (filtra tier marketplace)         - &#x60;category&#x60;: core, premium, integration, analytics, automation         - &#x60;search&#x60;: cerca in nome e codice          ### Ordinamento:         - Per category, sort_order, name         
  ///
  /// Parameters:
  /// * [category] - Filtra per categoria
  /// * [isActive] - Filtra per tier attivi
  /// * [isPublic] - Filtra per tier pubblici (marketplace)
  /// * [page] - Numero pagina (default: 1)
  /// * [pageSize] - Risultati per pagina (default: 20, max: 100)
  /// * [search] - Cerca per nome o codice
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TierListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TierListResponse>> adminApiTiersRetrieve({ 
    String? category,
    bool? isActive,
    bool? isPublic,
    int? page,
    int? pageSize,
    String? search,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tiers/';
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
      if (category != null) r'category': encodeQueryParameter(_serializers, category, const FullType(String)),
      if (isActive != null) r'is_active': encodeQueryParameter(_serializers, isActive, const FullType(bool)),
      if (isPublic != null) r'is_public': encodeQueryParameter(_serializers, isPublic, const FullType(bool)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (pageSize != null) r'page_size': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
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

    TierListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TierListResponse),
      ) as TierListResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TierListResponse>(
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

  /// adminApiTiersRetrieve2
  /// Dettagli completi di un Tier specifico (solo per role&#x3D;&#39;admin&#39;)
  ///
  /// Parameters:
  /// * [tierId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TierResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TierResponse>> adminApiTiersRetrieve2({ 
    required int tierId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tiers/{tier_id}/'.replaceAll('{' r'tier_id' '}', encodeQueryParameter(_serializers, tierId, const FullType(int)).toString());
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

    TierResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TierResponse),
      ) as TierResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TierResponse>(
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

  /// adminApiTiersUpdate
  ///      **Aggiorna Tier esistente** (solo per role&#x3D;&#39;admin&#39;).      ### Campi aggiornabili:     - Tutti i campi sono opzionali     - Solo i campi forniti verranno aggiornati     - &#x60;code&#x60; NON può essere modificato (univoco)      ### Audit log:     Crea automaticamente audit log con before/after changes     
  ///
  /// Parameters:
  /// * [tierId] 
  /// * [updateTierRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TierResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TierResponse>> adminApiTiersUpdate({ 
    required int tierId,
    UpdateTierRequest? updateTierRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tiers/{tier_id}/'.replaceAll('{' r'tier_id' '}', encodeQueryParameter(_serializers, tierId, const FullType(int)).toString());
    final _options = Options(
      method: r'PUT',
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
      const _type = FullType(UpdateTierRequest);
      _bodyData = updateTierRequest == null ? null : _serializers.serialize(updateTierRequest, specifiedType: _type);

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

    TierResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TierResponse),
      ) as TierResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TierResponse>(
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
