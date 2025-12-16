//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:beautyflow_api/src/serializers.dart';
import 'package:beautyflow_api/src/auth/api_key_auth.dart';
import 'package:beautyflow_api/src/auth/basic_auth.dart';
import 'package:beautyflow_api/src/auth/bearer_auth.dart';
import 'package:beautyflow_api/src/auth/oauth.dart';
import 'package:beautyflow_api/src/api/account_information_api.dart';
import 'package:beautyflow_api/src/api/aperture_e_chiusure_api.dart';
import 'package:beautyflow_api/src/api/areas_api.dart';
import 'package:beautyflow_api/src/api/aree_api.dart';
import 'package:beautyflow_api/src/api/autenticazione_cliente_api.dart';
import 'package:beautyflow_api/src/api/auth_api.dart';
import 'package:beautyflow_api/src/api/authentication_api.dart';
import 'package:beautyflow_api/src/api/authorization_api.dart';
import 'package:beautyflow_api/src/api/availability_api.dart';
import 'package:beautyflow_api/src/api/biometric_api.dart';
import 'package:beautyflow_api/src/api/booking_api.dart';
import 'package:beautyflow_api/src/api/calendar_api.dart';
import 'package:beautyflow_api/src/api/config_api.dart';
import 'package:beautyflow_api/src/api/consultations_ready_to_book_api.dart';
import 'package:beautyflow_api/src/api/consultations_regular_customers_api.dart';
import 'package:beautyflow_api/src/api/consultazioni_api.dart';
import 'package:beautyflow_api/src/api/consumer_api.dart';
import 'package:beautyflow_api/src/api/consumer_profile_api.dart';
import 'package:beautyflow_api/src/api/customers_api.dart';
import 'package:beautyflow_api/src/api/dashboard_api.dart';
import 'package:beautyflow_api/src/api/disabilitazioni_operatori_api.dart';
import 'package:beautyflow_api/src/api/disabilitazioni_postazioni_api.dart';
import 'package:beautyflow_api/src/api/dispositivi_api.dart';
import 'package:beautyflow_api/src/api/ferie_api.dart';
import 'package:beautyflow_api/src/api/festivit_api.dart';
import 'package:beautyflow_api/src/api/flow_template_api.dart';
import 'package:beautyflow_api/src/api/forgot_password_api.dart';
import 'package:beautyflow_api/src/api/inviti_clienti_api.dart';
import 'package:beautyflow_api/src/api/manage_invitation_api.dart';
import 'package:beautyflow_api/src/api/modifiche_programmate_api.dart';
import 'package:beautyflow_api/src/api/notifiche_api.dart';
import 'package:beautyflow_api/src/api/operatori_api.dart';
import 'package:beautyflow_api/src/api/orari_api.dart';
import 'package:beautyflow_api/src/api/orari_apertura_api.dart';
import 'package:beautyflow_api/src/api/permessi_api.dart';
import 'package:beautyflow_api/src/api/postazioni_api.dart';
import 'package:beautyflow_api/src/api/premium_api.dart';
import 'package:beautyflow_api/src/api/privacy_gdpr_api.dart';
import 'package:beautyflow_api/src/api/prova_comunicazione_api.dart';
import 'package:beautyflow_api/src/api/qr_code_api.dart';
import 'package:beautyflow_api/src/api/revenue_api.dart';
import 'package:beautyflow_api/src/api/ruoli_api.dart';
import 'package:beautyflow_api/src/api/sconti_api.dart';
import 'package:beautyflow_api/src/api/service_history_api.dart';
import 'package:beautyflow_api/src/api/servizi_api.dart';
import 'package:beautyflow_api/src/api/step_api.dart';
import 'package:beautyflow_api/src/api/step_template_api.dart';
import 'package:beautyflow_api/src/api/tenant_admin_management_api.dart';
import 'package:beautyflow_api/src/api/tenant_management_api.dart';
import 'package:beautyflow_api/src/api/tenant_tier_management_api.dart';
import 'package:beautyflow_api/src/api/test_bulk_sms_api.dart';
import 'package:beautyflow_api/src/api/test_sms_api.dart';
import 'package:beautyflow_api/src/api/tier_management_api.dart';
import 'package:beautyflow_api/src/api/tipologia_notifiche_api.dart';
import 'package:beautyflow_api/src/api/token_api.dart';
import 'package:beautyflow_api/src/api/trusted_devices_api.dart';
import 'package:beautyflow_api/src/api/verifica_cliente_api.dart';
import 'package:beautyflow_api/src/api/warehouse_alerts_api.dart';
import 'package:beautyflow_api/src/api/warehouse_categories_api.dart';
import 'package:beautyflow_api/src/api/warehouse_movements_api.dart';
import 'package:beautyflow_api/src/api/warehouse_products_api.dart';
import 'package:beautyflow_api/src/api/warehouse_sales_api.dart';
import 'package:beautyflow_api/src/api/warehouse_suppliers_api.dart';

class BeautyflowApi {
  static const String basePath = r'http://localhost';

  final Dio dio;
  final Serializers serializers;

  BeautyflowApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AccountInformationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AccountInformationApi getAccountInformationApi() {
    return AccountInformationApi(dio, serializers);
  }

  /// Get ApertureEChiusureApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ApertureEChiusureApi getApertureEChiusureApi() {
    return ApertureEChiusureApi(dio, serializers);
  }

  /// Get AreasApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AreasApi getAreasApi() {
    return AreasApi(dio, serializers);
  }

  /// Get AreeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AreeApi getAreeApi() {
    return AreeApi(dio, serializers);
  }

  /// Get AutenticazioneClienteApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AutenticazioneClienteApi getAutenticazioneClienteApi() {
    return AutenticazioneClienteApi(dio, serializers);
  }

  /// Get AuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthApi getAuthApi() {
    return AuthApi(dio, serializers);
  }

  /// Get AuthenticationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthenticationApi getAuthenticationApi() {
    return AuthenticationApi(dio, serializers);
  }

  /// Get AuthorizationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthorizationApi getAuthorizationApi() {
    return AuthorizationApi(dio, serializers);
  }

  /// Get AvailabilityApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AvailabilityApi getAvailabilityApi() {
    return AvailabilityApi(dio, serializers);
  }

  /// Get BiometricApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BiometricApi getBiometricApi() {
    return BiometricApi(dio, serializers);
  }

  /// Get BookingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BookingApi getBookingApi() {
    return BookingApi(dio, serializers);
  }

  /// Get CalendarApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CalendarApi getCalendarApi() {
    return CalendarApi(dio, serializers);
  }

  /// Get ConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConfigApi getConfigApi() {
    return ConfigApi(dio, serializers);
  }

  /// Get ConsultationsReadyToBookApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsultationsReadyToBookApi getConsultationsReadyToBookApi() {
    return ConsultationsReadyToBookApi(dio, serializers);
  }

  /// Get ConsultationsRegularCustomersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsultationsRegularCustomersApi getConsultationsRegularCustomersApi() {
    return ConsultationsRegularCustomersApi(dio, serializers);
  }

  /// Get ConsultazioniApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsultazioniApi getConsultazioniApi() {
    return ConsultazioniApi(dio, serializers);
  }

  /// Get ConsumerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerApi getConsumerApi() {
    return ConsumerApi(dio, serializers);
  }

  /// Get ConsumerProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsumerProfileApi getConsumerProfileApi() {
    return ConsumerProfileApi(dio, serializers);
  }

  /// Get CustomersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CustomersApi getCustomersApi() {
    return CustomersApi(dio, serializers);
  }

  /// Get DashboardApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DashboardApi getDashboardApi() {
    return DashboardApi(dio, serializers);
  }

  /// Get DisabilitazioniOperatoriApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DisabilitazioniOperatoriApi getDisabilitazioniOperatoriApi() {
    return DisabilitazioniOperatoriApi(dio, serializers);
  }

  /// Get DisabilitazioniPostazioniApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DisabilitazioniPostazioniApi getDisabilitazioniPostazioniApi() {
    return DisabilitazioniPostazioniApi(dio, serializers);
  }

  /// Get DispositiviApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DispositiviApi getDispositiviApi() {
    return DispositiviApi(dio, serializers);
  }

  /// Get FerieApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FerieApi getFerieApi() {
    return FerieApi(dio, serializers);
  }

  /// Get FestivitApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FestivitApi getFestivitApi() {
    return FestivitApi(dio, serializers);
  }

  /// Get FlowTemplateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FlowTemplateApi getFlowTemplateApi() {
    return FlowTemplateApi(dio, serializers);
  }

  /// Get ForgotPasswordApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ForgotPasswordApi getForgotPasswordApi() {
    return ForgotPasswordApi(dio, serializers);
  }

  /// Get InvitiClientiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InvitiClientiApi getInvitiClientiApi() {
    return InvitiClientiApi(dio, serializers);
  }

  /// Get ManageInvitationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ManageInvitationApi getManageInvitationApi() {
    return ManageInvitationApi(dio, serializers);
  }

  /// Get ModificheProgrammateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ModificheProgrammateApi getModificheProgrammateApi() {
    return ModificheProgrammateApi(dio, serializers);
  }

  /// Get NotificheApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NotificheApi getNotificheApi() {
    return NotificheApi(dio, serializers);
  }

  /// Get OperatoriApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OperatoriApi getOperatoriApi() {
    return OperatoriApi(dio, serializers);
  }

  /// Get OrariApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrariApi getOrariApi() {
    return OrariApi(dio, serializers);
  }

  /// Get OrariAperturaApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OrariAperturaApi getOrariAperturaApi() {
    return OrariAperturaApi(dio, serializers);
  }

  /// Get PermessiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PermessiApi getPermessiApi() {
    return PermessiApi(dio, serializers);
  }

  /// Get PostazioniApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PostazioniApi getPostazioniApi() {
    return PostazioniApi(dio, serializers);
  }

  /// Get PremiumApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PremiumApi getPremiumApi() {
    return PremiumApi(dio, serializers);
  }

  /// Get PrivacyGDPRApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PrivacyGDPRApi getPrivacyGDPRApi() {
    return PrivacyGDPRApi(dio, serializers);
  }

  /// Get ProvaComunicazioneApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProvaComunicazioneApi getProvaComunicazioneApi() {
    return ProvaComunicazioneApi(dio, serializers);
  }

  /// Get QRCodeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QRCodeApi getQRCodeApi() {
    return QRCodeApi(dio, serializers);
  }

  /// Get RevenueApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RevenueApi getRevenueApi() {
    return RevenueApi(dio, serializers);
  }

  /// Get RuoliApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RuoliApi getRuoliApi() {
    return RuoliApi(dio, serializers);
  }

  /// Get ScontiApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ScontiApi getScontiApi() {
    return ScontiApi(dio, serializers);
  }

  /// Get ServiceHistoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ServiceHistoryApi getServiceHistoryApi() {
    return ServiceHistoryApi(dio, serializers);
  }

  /// Get ServiziApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ServiziApi getServiziApi() {
    return ServiziApi(dio, serializers);
  }

  /// Get StepApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StepApi getStepApi() {
    return StepApi(dio, serializers);
  }

  /// Get StepTemplateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StepTemplateApi getStepTemplateApi() {
    return StepTemplateApi(dio, serializers);
  }

  /// Get TenantAdminManagementApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TenantAdminManagementApi getTenantAdminManagementApi() {
    return TenantAdminManagementApi(dio, serializers);
  }

  /// Get TenantManagementApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TenantManagementApi getTenantManagementApi() {
    return TenantManagementApi(dio, serializers);
  }

  /// Get TenantTierManagementApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TenantTierManagementApi getTenantTierManagementApi() {
    return TenantTierManagementApi(dio, serializers);
  }

  /// Get TestBulkSmsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TestBulkSmsApi getTestBulkSmsApi() {
    return TestBulkSmsApi(dio, serializers);
  }

  /// Get TestSmsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TestSmsApi getTestSmsApi() {
    return TestSmsApi(dio, serializers);
  }

  /// Get TierManagementApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TierManagementApi getTierManagementApi() {
    return TierManagementApi(dio, serializers);
  }

  /// Get TipologiaNotificheApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TipologiaNotificheApi getTipologiaNotificheApi() {
    return TipologiaNotificheApi(dio, serializers);
  }

  /// Get TokenApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TokenApi getTokenApi() {
    return TokenApi(dio, serializers);
  }

  /// Get TrustedDevicesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TrustedDevicesApi getTrustedDevicesApi() {
    return TrustedDevicesApi(dio, serializers);
  }

  /// Get VerificaClienteApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VerificaClienteApi getVerificaClienteApi() {
    return VerificaClienteApi(dio, serializers);
  }

  /// Get WarehouseAlertsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WarehouseAlertsApi getWarehouseAlertsApi() {
    return WarehouseAlertsApi(dio, serializers);
  }

  /// Get WarehouseCategoriesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WarehouseCategoriesApi getWarehouseCategoriesApi() {
    return WarehouseCategoriesApi(dio, serializers);
  }

  /// Get WarehouseMovementsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WarehouseMovementsApi getWarehouseMovementsApi() {
    return WarehouseMovementsApi(dio, serializers);
  }

  /// Get WarehouseProductsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WarehouseProductsApi getWarehouseProductsApi() {
    return WarehouseProductsApi(dio, serializers);
  }

  /// Get WarehouseSalesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WarehouseSalesApi getWarehouseSalesApi() {
    return WarehouseSalesApi(dio, serializers);
  }

  /// Get WarehouseSuppliersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WarehouseSuppliersApi getWarehouseSuppliersApi() {
    return WarehouseSuppliersApi(dio, serializers);
  }
}
