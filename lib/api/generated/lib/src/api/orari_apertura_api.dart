//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:beautyflow_api/src/api_util.dart';
import 'package:beautyflow_api/src/model/daily_hours_response.dart';

class OrariAperturaApi {

  final Dio _dio;

  final Serializers _serializers;

  const OrariAperturaApi(this._dio, this._serializers);

  /// Ottieni gli orari per una data specifica
  /// Restituisce gli orari di apertura per la data specificata, considerando orari standard, festività, aperture e chiusure speciali
  ///
  /// Parameters:
  /// * [date] - Data in formato YYYY-MM-DD per cui ottenere gli orari
  /// * [object] - Parametro oggetto richiesto per identificare il contesto
  /// * [areaId] - ID dell'area (opzionale - se non specificato, vengono restituite tutte le aree)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DailyHoursResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<DailyHoursResponse>> areeDailyHoursRetrieve({ 
    required String date,
    required String object,
    int? areaId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/aree/daily-hours/';
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
      r'date': encodeQueryParameter(_serializers, date, const FullType(String)),
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

    DailyHoursResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(DailyHoursResponse),
      ) as DailyHoursResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<DailyHoursResponse>(
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
