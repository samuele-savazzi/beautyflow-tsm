import 'theme_request.dart';

/// Request per aggiornamento tenant
class UpdateTenantRequest {
  final int tenantId;
  final String? name;
  final String? registeredOffice;
  final String? apiVersion;
  final ThemeRequest? theme;

  UpdateTenantRequest({
    required this.tenantId,
    this.name,
    this.registeredOffice,
    this.apiVersion,
    this.theme,
  });

  Map<String, dynamic> toJson() {
    return {
      'tenant_id': tenantId,
      if (name != null) 'name': name,
      if (registeredOffice != null) 'registered_office': registeredOffice,
      if (apiVersion != null) 'api_version': apiVersion,
      if (theme != null) 'theme': theme!.toJson(),
    };
  }

  @override
  String toString() {
    return 'UpdateTenantRequest(tenantId: $tenantId, name: $name)';
  }
}
