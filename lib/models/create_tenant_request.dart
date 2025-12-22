import 'area_request.dart';
import 'theme_request.dart';
import 'complete_theme_request.dart';
import 'theme_gradients.dart';
import 'theme_metadata.dart';
import 'theme_settings.dart';
import '../utils/color_utils.dart';

/// Request per creazione tenant
class CreateTenantRequest {
  final String name;
  final String domain;
  final String type;
  final String adminEmail;
  final String adminPhone;
  final String adminFirstName;
  final String adminLastName;
  final String quotaTypeCode;
  final String billingType;
  final int billingDuration;
  final List<AreaRequest> areas;
  final String? registeredOffice;
  final ThemeRequest? theme;
  final String? apiVersion;

  CreateTenantRequest({
    required this.name,
    required this.domain,
    required this.type,
    required this.adminEmail,
    required this.adminPhone,
    required this.adminFirstName,
    required this.adminLastName,
    required this.quotaTypeCode,
    required this.billingType,
    required this.billingDuration,
    required this.areas,
    this.registeredOffice,
    this.theme,
    this.apiVersion,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'domain': domain,
      'type': type,
      'admin_email': adminEmail,
      'admin_phone': adminPhone,
      'admin_first_name': adminFirstName,
      'admin_last_name': adminLastName,
      'quota_type_code': quotaTypeCode,
      'billing_type': billingType,
      'billing_duration': billingDuration,
      'areas': areas.map((a) => a.toJson()).toList(),
      if (registeredOffice != null) 'registered_office': registeredOffice,
      if (theme != null) 'theme': theme!.toJson(),
      if (apiVersion != null) 'api_version': apiVersion,
    };
  }

  @override
  String toString() {
    return 'CreateTenantRequest(name: $name, domain: $domain, quotaType: $quotaTypeCode)';
  }
}
