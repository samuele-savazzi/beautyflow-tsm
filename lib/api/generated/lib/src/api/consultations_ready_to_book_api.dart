//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:beautyflow_api/src/api_util.dart';
import 'package:beautyflow_api/src/model/consultation_ready_to_book_list_response.dart';

class ConsultationsReadyToBookApi {

  final Dio _dio;

  final Serializers _serializers;

  const ConsultationsReadyToBookApi(this._dio, this._serializers);

  /// Lista consultazioni pronte da prenotare
  /// Ottiene lista paginata delle consultazioni in stato &#39;ready_to_book&#39;. Include filtri per nome cliente, operatore, servizio e area.
  ///
  /// Parameters:
  /// * [object] - Parametro oggetto per Casbin (consultation)
  /// * [areaId] - Filtra per area/sede
  /// * [customerName] - Filtra per nome o cognome cliente (ricerca parziale)
  /// * [operatorName] - Filtra per nome o cognome operatore (ricerca parziale)
  /// * [page] - Numero pagina (default: 1)
  /// * [pageSize] - Elementi per pagina (default: 20, max: 100)
  /// * [serviceName] - Filtra per nome servizio (ricerca parziale)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ConsultationReadyToBookListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ConsultationReadyToBookListResponse>> consultationsReadyToBookListRetrieve({ 
    required String object,
    int? areaId,
    String? customerName,
    String? operatorName,
    int? page,
    int? pageSize,
    String? serviceName,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/consultations/ready-to-book-list/';
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
      if (customerName != null) r'customer_name': encodeQueryParameter(_serializers, customerName, const FullType(String)),
      r'object': encodeQueryParameter(_serializers, object, const FullType(String)),
      if (operatorName != null) r'operator_name': encodeQueryParameter(_serializers, operatorName, const FullType(String)),
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (pageSize != null) r'page_size': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      if (serviceName != null) r'service_name': encodeQueryParameter(_serializers, serviceName, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ConsultationReadyToBookListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ConsultationReadyToBookListResponse),
      ) as ConsultationReadyToBookListResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ConsultationReadyToBookListResponse>(
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
