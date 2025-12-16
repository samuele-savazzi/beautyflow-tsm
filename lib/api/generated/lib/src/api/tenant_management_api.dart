//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:beautyflow_api/src/api_util.dart';
import 'package:beautyflow_api/src/model/area_config.dart';
import 'package:beautyflow_api/src/model/create_tenant_request_billing_type_enum.dart';
import 'package:beautyflow_api/src/model/create_tenant_response.dart';
import 'package:beautyflow_api/src/model/error_response.dart';
import 'package:beautyflow_api/src/model/tenant_info.dart';
import 'package:beautyflow_api/src/model/tenant_list_response.dart';
import 'package:beautyflow_api/src/model/type_enum.dart';
import 'package:beautyflow_api/src/model/update_tenant_request.dart';
import 'package:beautyflow_api/src/model/update_tenant_response.dart';
import 'package:beautyflow_api/src/model/upload_image_response.dart';
import 'package:built_collection/built_collection.dart';

class TenantManagementApi {

  final Dio _dio;

  final Serializers _serializers;

  const TenantManagementApi(this._dio, this._serializers);

  /// adminApiTenantsCreate
  ///      **Crea un nuovo tenant completo seguendo RUOTINE_CREAZIONE_TENANT.**      ### Operazioni eseguite:     1. **Creazione tenant** + schema PostgreSQL (django-tenants)     2. **Setup PUBLIC schema**: StepTemplate (8), FlowTemplate (3), TenantQuota, TenantHistoryPayments     3. **Setup TENANT schema**:        - 5 Roles (admin, Operatore, Operatore autorizzato, Titolare, Segreteria)        - Admin user con password temporanea: &#x60;ChangeMe123!&#x60; ⚠️        - N Aree + DailySchedule (7 giorni per area)        - 7 NotificationTypes        - 4 DashboardWidgets + RoleDashboardConfiguration      ### Billing Flessibile:     - **trial**: 30 giorni gratuiti     - **monthly**: 1 mese (30 giorni)     - **yearly**: 1 anno o &#x60;billing_duration&#x60; anni     - **custom**: N anni (specificare &#x60;billing_duration&#x60;)      ### Upload Immagini (opzionali):     - **favicon**: PNG, ICO, SVG (max 2MB)     - **logo**: PNG, JPG, SVG (max 5MB)     - **dark_logo**: PNG, JPG, SVG (max 5MB)      Salvate in &#x60;media/favicon/&#x60; e &#x60;media/logo/&#x60;      ### Note importanti:     - **Password admin**: &#x60;ChangeMe123!&#x60; (DEVE essere cambiata al primo login)     - **Main area**: La prima area in &#x60;areas[]&#x60; sarà marcata come &#x60;main_area&#x3D;True&#x60;     - **Warnings**: Eventuali errori non-bloccanti (es. Authorization mancante) restituiti in array      ### Validazioni:     - Dominio univoco (non può esistere già)     - Almeno 1 area richiesta     - QuotaType deve esistere e essere attivo     - billing_duration obbligatorio per &#39;yearly&#39; e &#39;custom&#39;      ### Audit log:     Crea automaticamente audit log con action &#x60;create_tenant&#x60;     
  ///
  /// Parameters:
  /// * [name] - Nome tenant
  /// * [domain] - Dominio (es: cliente1)
  /// * [type] 
  /// * [adminEmail] - Email utente admin
  /// * [adminPhone] - Telefono admin
  /// * [adminFirstName] 
  /// * [adminLastName] 
  /// * [quotaTypeCode] - Codice piano (es: FREE, BASIC, PRO)
  /// * [areas] - Lista aree da creare
  /// * [registeredOffice] - Sede legale
  /// * [billingType] 
  /// * [billingDuration] - Durata in anni (solo per billing_type='custom' o 'yearly'). Default: 1 anno
  /// * [theme] 
  /// * [favicon] - File favicon (PNG, ICO, SVG) - max 2MB
  /// * [logo] - File logo (PNG, JPG, SVG) - max 5MB
  /// * [darkLogo] - File dark logo (PNG, JPG, SVG) - max 5MB
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CreateTenantResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CreateTenantResponse>> adminApiTenantsCreate({ 
    required String name,
    required String domain,
    required TypeEnum type,
    required String adminEmail,
    required String adminPhone,
    required String adminFirstName,
    required String adminLastName,
    required String quotaTypeCode,
    required BuiltList<AreaConfig> areas,
    String? registeredOffice,
    CreateTenantRequestBillingTypeEnum? billingType,
    int? billingDuration,
    Map<String, dynamic>? theme,
    String? favicon,
    String? logo,
    String? darkLogo,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tenants/';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'name': encodeFormParameter(_serializers, name, const FullType(String)),
        r'domain': encodeFormParameter(_serializers, domain, const FullType(String)),
        r'type': encodeFormParameter(_serializers, type, const FullType(TypeEnum)),
        if (registeredOffice != null) r'registered_office': encodeFormParameter(_serializers, registeredOffice, const FullType(String)),
        r'admin_email': encodeFormParameter(_serializers, adminEmail, const FullType(String)),
        r'admin_phone': encodeFormParameter(_serializers, adminPhone, const FullType(String)),
        r'admin_first_name': encodeFormParameter(_serializers, adminFirstName, const FullType(String)),
        r'admin_last_name': encodeFormParameter(_serializers, adminLastName, const FullType(String)),
        r'quota_type_code': encodeFormParameter(_serializers, quotaTypeCode, const FullType(String)),
        if (billingType != null) r'billing_type': encodeFormParameter(_serializers, billingType, const FullType(CreateTenantRequestBillingTypeEnum)),
        if (billingDuration != null) r'billing_duration': encodeFormParameter(_serializers, billingDuration, const FullType(int)),
        r'areas': encodeFormParameter(_serializers, areas, const FullType(BuiltList, [FullType(AreaConfig)])),
        r'theme': encodeFormParameter(_serializers, theme, const FullType(Map<String, dynamic>)),
        r'favicon': encodeFormParameter(_serializers, favicon, const FullType(String)),
        r'logo': encodeFormParameter(_serializers, logo, const FullType(String)),
        r'dark_logo': encodeFormParameter(_serializers, darkLogo, const FullType(String)),
      });

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

    CreateTenantResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CreateTenantResponse),
      ) as CreateTenantResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CreateTenantResponse>(
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

  /// adminApiTenantsListRetrieve
  /// Lista tutti i tenant con paginazione e filtri opzionali
  ///
  /// Parameters:
  /// * [page] - Numero pagina (default: 1)
  /// * [pageSize] - Risultati per pagina (default: 20, max: 100)
  /// * [search] - Cerca per nome (case-insensitive)
  /// * [type] - Filtra per tipo (HAIRDRESSER, BARBER, BEAUTICIAN, SPA)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TenantListResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TenantListResponse>> adminApiTenantsListRetrieve({ 
    int? page,
    int? pageSize,
    String? search,
    String? type,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tenants-list/';
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
      if (page != null) r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (pageSize != null) r'page_size': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      if (search != null) r'search': encodeQueryParameter(_serializers, search, const FullType(String)),
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TenantListResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TenantListResponse),
      ) as TenantListResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TenantListResponse>(
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

  /// adminApiTenantsRetrieve
  /// Dettagli completi di un tenant specifico
  ///
  /// Parameters:
  /// * [tenantId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TenantInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TenantInfo>> adminApiTenantsRetrieve({ 
    required int tenantId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tenants/{tenant_id}/'.replaceAll('{' r'tenant_id' '}', encodeQueryParameter(_serializers, tenantId, const FullType(int)).toString());
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

    TenantInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TenantInfo),
      ) as TenantInfo;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TenantInfo>(
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

  /// adminApiTenantsUpdateCreate
  ///      **Aggiorna informazioni generali del tenant.**      ### Campi modificabili:     - &#x60;tenant_id&#x60;: ID tenant da modificare (**obbligatorio**)     - &#x60;name&#x60;: Nome tenant     - &#x60;registered_office&#x60;: Sede legale     - &#x60;online_consultation&#x60;: Consultazione online abilitata     - &#x60;type&#x60;: Tipo business (HAIRDRESSER, BARBER, BEAUTICIAN, SPA)     - &#x60;theme&#x60;: JSONField tema personalizzato      ### Note:     - Almeno 1 campo (oltre tenant_id) deve essere fornito     - Per modificare favicon/logo/dark_logo usare gli endpoint dedicati &#x60;/upload-favicon/&#x60;, &#x60;/upload-logo/&#x60;, &#x60;/upload-dark-logo/&#x60;     - Crea automaticamente audit log con action &#x60;update_tenant&#x60; e tracking before/after      ### Validazioni:     - Tenant deve esistere     - tenant_id obbligatorio nel body     
  ///
  /// Parameters:
  /// * [updateTenantRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UpdateTenantResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UpdateTenantResponse>> adminApiTenantsUpdateCreate({ 
    required UpdateTenantRequest updateTenantRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tenants/update/';
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
      const _type = FullType(UpdateTenantRequest);
      _bodyData = _serializers.serialize(updateTenantRequest, specifiedType: _type);

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

    UpdateTenantResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(UpdateTenantResponse),
      ) as UpdateTenantResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UpdateTenantResponse>(
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

  /// adminApiTenantsUploadDarkLogoCreate
  ///      **Upload dark logo per tenant (versione per tema scuro, salvato in media/logo/).**      ### Formati supportati:     - PNG, JPG, SVG (stessi del logo normale)      ### Validazioni:     - Max size: 5MB      ### Storage:     File salvato in &#x60;media/logo/{filename}&#x60; (stesso folder di logo)     
  ///
  /// Parameters:
  /// * [tenantId] - ID del tenant
  /// * [image] - File immagine dark logo (PNG, JPG, SVG)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UploadImageResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UploadImageResponse>> adminApiTenantsUploadDarkLogoCreate({ 
    required int tenantId,
    required MultipartFile image,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tenants/upload-dark-logo/';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'tenant_id': encodeFormParameter(_serializers, tenantId, const FullType(int)),
        r'image': image,
      });

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

    UploadImageResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(UploadImageResponse),
      ) as UploadImageResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UploadImageResponse>(
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

  /// adminApiTenantsUploadFaviconCreate
  ///      **Upload favicon per tenant (salvato in media/favicon/).**      ### Formati supportati:     - PNG (image/png)     - ICO (image/x-icon, image/vnd.microsoft.icon)     - SVG (image/svg+xml)      ### Validazioni:     - Max size: 2MB     - Content-type deve essere valido      ### Storage:     - File salvato in &#x60;media/favicon/{filename}&#x60;     - Django ImageField gestisce l&#39;upload     - Restituisce absolute URL      ### Audit log:     Crea automaticamente audit log con before/after URL     
  ///
  /// Parameters:
  /// * [tenantId] - ID del tenant
  /// * [image] - File immagine favicon (PNG, ICO, SVG)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UploadImageResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UploadImageResponse>> adminApiTenantsUploadFaviconCreate({ 
    required int tenantId,
    required MultipartFile image,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tenants/upload-favicon/';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'tenant_id': encodeFormParameter(_serializers, tenantId, const FullType(int)),
        r'image': image,
      });

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

    UploadImageResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(UploadImageResponse),
      ) as UploadImageResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UploadImageResponse>(
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

  /// adminApiTenantsUploadLogoCreate
  ///      **Upload logo per tenant (salvato in media/logo/).**      ### Formati supportati:     - PNG (image/png)     - JPG/JPEG (image/jpeg, image/jpg)     - SVG (image/svg+xml)      ### Validazioni:     - Max size: 5MB     - Content-type deve essere valido      ### Storage:     File salvato in &#x60;media/logo/{filename}&#x60;     
  ///
  /// Parameters:
  /// * [tenantId] - ID del tenant
  /// * [image] - File immagine logo (PNG, JPG, SVG)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UploadImageResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UploadImageResponse>> adminApiTenantsUploadLogoCreate({ 
    required int tenantId,
    required MultipartFile image,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/admin-api/tenants/upload-logo/';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'tenant_id': encodeFormParameter(_serializers, tenantId, const FullType(int)),
        r'image': image,
      });

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

    UploadImageResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(UploadImageResponse),
      ) as UploadImageResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UploadImageResponse>(
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
