//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:beautyflow_api/src/api_util.dart';
import 'package:beautyflow_api/src/model/conflict_response.dart';
import 'package:beautyflow_api/src/model/created_response.dart';
import 'package:beautyflow_api/src/model/delete_response.dart';
import 'package:beautyflow_api/src/model/delete_validation_error.dart';
import 'package:beautyflow_api/src/model/error_response.dart';
import 'package:beautyflow_api/src/model/scheduled_time_change_list_response.dart';
import 'package:beautyflow_api/src/model/scheduled_time_change_request.dart';
import 'package:beautyflow_api/src/model/validation_response.dart';

class ModificheProgrammateApi {

  final Dio _dio;

  final Serializers _serializers;

  const ModificheProgrammateApi(this._dio, this._serializers);

  /// Validazione e creazione modifica programmata
  /// Endpoint per validare e potenzialmente creare una modifica programmata agli orari delle aree
  ///
  /// Parameters:
  /// * [scheduledTimeChangeRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ValidationResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ValidationResponse>> areeConfigScheduledChangesCreate({ 
    required ScheduledTimeChangeRequest scheduledTimeChangeRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/aree/config/scheduled-changes/';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'jwtAuth',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(ScheduledTimeChangeRequest);
      _bodyData = _serializers.serialize(scheduledTimeChangeRequest, specifiedType: _type);

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

    ValidationResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ValidationResponse),
      ) as ValidationResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ValidationResponse>(
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

  /// Elimina modifica programmata
  /// Elimina una modifica programmata e ripristina tutte le correzioni applicate
  ///
  /// Parameters:
  /// * [id] - ID della modifica programmata da eliminare
  /// * [object] - oggetto richiesto per identificare il contesto
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DeleteResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<DeleteResponse>> areeConfigScheduledChangesDestroy({ 
    required int id,
    required String object,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/aree/config/scheduled-changes/';
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'jwtAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'id': encodeQueryParameter(_serializers, id, const FullType(int)),
      r'object': encodeQueryParameter(_serializers, object, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    DeleteResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(DeleteResponse),
      ) as DeleteResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<DeleteResponse>(
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

  /// Lista modifiche programmate
  /// Endpoint per recuperare le modifiche programmate agli orari delle aree con filtri e paginazione
  ///
  /// Parameters:
  /// * [object] - oggetto richiesto per identificare il contesto
  /// * [areaId] - ID dell'area per filtrare le modifiche
  /// * [dayId] - ID del giorno della settimana (1-7)
  /// * [effectiveFromEnd] - Data di fine filtro (formato YYYY-MM-DD)
  /// * [effectiveFromStart] - Data di inizio filtro (formato YYYY-MM-DD)
  /// * [isActive] - Filtra per stato attivo (true/false)
  /// * [ordering] - Campo per ordinamento (effective_from, created_at, area__name). Usa - per desc
  /// * [page] - Numero di pagina
  /// * [pageSize] - Numero di elementi per pagina (max 100)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ScheduledTimeChangeListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ScheduledTimeChangeListResponse>> areeConfigScheduledChangesRetrieve({ 
    required String object,
    int? areaId,
    int? dayId,
    String? effectiveFromEnd,
    String? effectiveFromStart,
    bool? isActive,
    String? ordering,
    int? page,
    int? pageSize,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/aree/config/scheduled-changes/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'jwtAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (areaId != null) r'area_id': encodeQueryParameter(_serializers, areaId, const FullType(int)),
      if (dayId != null) r'day_id': encodeQueryParameter(_serializers, dayId, const FullType(int)),
      if (effectiveFromEnd != null) r'effective_from_end': encodeQueryParameter(_serializers, effectiveFromEnd, const FullType(String)),
      if (effectiveFromStart != null) r'effective_from_start': encodeQueryParameter(_serializers, effectiveFromStart, const FullType(String)),
      if (isActive != null) r'is_active': encodeQueryParameter(_serializers, isActive, const FullType(bool)),
      r'object': encodeQueryParameter(_serializers, object, const FullType(String)),
      if (ordering != null) r'ordering': encodeQueryParameter(_serializers, ordering, const FullType(String)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (pageSize != null) r'page_size': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ScheduledTimeChangeListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ScheduledTimeChangeListResponse),
      ) as ScheduledTimeChangeListResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ScheduledTimeChangeListResponse>(
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
