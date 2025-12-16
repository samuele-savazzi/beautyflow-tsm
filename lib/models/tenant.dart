class QuotaType {
  final int id;
  final String name;
  final String code;

  QuotaType({
    required this.id,
    required this.name,
    required this.code,
  });

  factory QuotaType.fromJson(Map<String, dynamic> json) {
    return QuotaType(
      id: json['id'],
      name: json['name'],
      code: json['code'],
    );
  }
}

class Tenant {
  final int id;
  final String name;
  final String domainUrl;
  final String schemaName;
  final bool isActive;
  final String? paidUntil;
  final QuotaType? quotaType;
  final DateTime createdOn;
  final String? favicon;
  final String? logo;
  final int activeTiersCount;
  final bool setupCompleted;

  Tenant({
    required this.id,
    required this.name,
    required this.domainUrl,
    required this.schemaName,
    required this.isActive,
    this.paidUntil,
    this.quotaType,
    required this.createdOn,
    this.favicon,
    this.logo,
    required this.activeTiersCount,
    required this.setupCompleted,
  });

  factory Tenant.fromJson(Map<String, dynamic> json) {
    return Tenant(
      id: json['id'],
      name: json['name'],
      domainUrl: json['domain'],
      schemaName: json['schema_name'],
      isActive: json['is_active'] ?? false,
      paidUntil: json['paid_until'],
      quotaType: json['quota_type'] != null
          ? QuotaType.fromJson(json['quota_type'])
          : null,
      createdOn: DateTime.parse(json['created_on']),
      favicon: json['favicon'],
      logo: json['logo'],
      activeTiersCount: json['active_tiers_count'] ?? 0,
      setupCompleted: json['setup_completed'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'domain_url': domainUrl,
      'schema_name': schemaName,
      'is_active': isActive,
      'paid_until': paidUntil,
      'quota_type': quotaType?.toJson(),
      'created_on': createdOn.toIso8601String(),
      'favicon': favicon,
      'logo': logo,
      'active_tiers_count': activeTiersCount,
      'setup_completed': setupCompleted,
    };
  }

  Tenant copyWith({
    int? id,
    String? name,
    String? domainUrl,
    String? schemaName,
    bool? isActive,
    String? paidUntil,
    QuotaType? quotaType,
    DateTime? createdOn,
    String? favicon,
    String? logo,
    int? activeTiersCount,
    bool? setupCompleted,
  }) {
    return Tenant(
      id: id ?? this.id,
      name: name ?? this.name,
      domainUrl: domainUrl ?? this.domainUrl,
      schemaName: schemaName ?? this.schemaName,
      isActive: isActive ?? this.isActive,
      paidUntil: paidUntil ?? this.paidUntil,
      quotaType: quotaType ?? this.quotaType,
      createdOn: createdOn ?? this.createdOn,
      favicon: favicon ?? this.favicon,
      logo: logo ?? this.logo,
      activeTiersCount: activeTiersCount ?? this.activeTiersCount,
      setupCompleted: setupCompleted ?? this.setupCompleted,
    );
  }
}

extension QuotaTypeExtension on QuotaType {
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'code': code,
    };
  }
}
