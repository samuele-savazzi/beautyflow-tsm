//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:beautyflow_api/src/api_util.dart';
import 'package:beautyflow_api/src/model/daily_revenue_response.dart';

class RevenueApi {

  final Dio _dio;

  final Serializers _serializers;

  const RevenueApi(this._dio, this._serializers);

  /// Ottieni revenue giornaliero
  /// Ritorna dati revenue per area o operatore in una data specifica (default: oggi)
  ///
  /// Parameters:
  /// * [areaId] - ID dell'area
  /// * [object] - Parametro oggetto richiesto per identificare il contesto
  /// * [date] - Data nel formato YYYY-MM-DD (default: oggi)
  /// * [operatorId] - ID dell'operatore (opzionale - se fornito ritorna dati operatore)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DailyRevenueResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<DailyRevenueResponse>> revenueDailyRetrieve({ 
    required int areaId,
    required String object,
    String? date,
    int? operatorId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/revenue/daily/';
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
      r'area_id': encodeQueryParameter(_serializers, areaId, const FullType(int)),
      if (date != null) r'date': encodeQueryParameter(_serializers, date, const FullType(String)),
      r'object': encodeQueryParameter(_serializers, object, const FullType(String)),
      if (operatorId != null) r'operator_id': encodeQueryParameter(_serializers, operatorId, const FullType(int)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    DailyRevenueResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(DailyRevenueResponse),
      ) as DailyRevenueResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<DailyRevenueResponse>(
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
