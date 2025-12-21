/// Tenant data nella response di creazione
class CreatedTenantData {
  final int id;
  final String name;
  final String schemaName;
  final String domain;
  final String type;
  final String createdOn;
  final int adminUserId;
  final List<String> areasCreated;
  final String quotaPlan;

  CreatedTenantData({
    required this.id,
    required this.name,
    required this.schemaName,
    required this.domain,
    required this.type,
    required this.createdOn,
    required this.adminUserId,
    required this.areasCreated,
    required this.quotaPlan,
  });

  factory CreatedTenantData.fromJson(Map<String, dynamic> json) {
    return CreatedTenantData(
      id: json['id'] as int,
      name: json['name'] as String,
      schemaName: json['schema_name'] as String,
      domain: json['domain'] as String,
      type: json['type'] as String,
      createdOn: json['created_on'] as String,
      adminUserId: json['admin_user_id'] as int,
      areasCreated: List<String>.from(json['areas_created'] ?? []),
      quotaPlan: json['quota_plan'] as String,
    );
  }
}

/// Response dopo creazione tenant
class CreateTenantResponse {
  final String message;
  final CreatedTenantData tenant;
  final List<String> warnings;

  CreateTenantResponse({
    required this.message,
    required this.tenant,
    this.warnings = const [],
  });

  factory CreateTenantResponse.fromJson(Map<String, dynamic> json) {
    return CreateTenantResponse(
      message: json['message'] as String,
      tenant: CreatedTenantData.fromJson(json['tenant'] as Map<String, dynamic>),
      warnings: json['warnings'] != null
          ? List<String>.from(json['warnings'])
          : [],
    );
  }
}
