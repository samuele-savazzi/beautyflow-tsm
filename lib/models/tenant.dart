import 'sms_info.dart';
import 'area_detail.dart';

class QuotaType {
  final int id;
  final String name;
  final String code;
  final String? description;
  final int? includedSms;
  final int? includedOperatorsPerArea;
  final int? includedWorkstationsPerOperator;
  final String? monthlyPrice;
  final String? yearlyPrice;
  final String? currency;
  final String? extraSmsPrice;
  final String? extraOperatorPrice;
  final String? extraWorkstationPrice;
  final bool? isActive;
  final bool? isFeatured;
  final int? displayOrder;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  QuotaType({
    required this.id,
    required this.name,
    required this.code,
    this.description,
    this.includedSms,
    this.includedOperatorsPerArea,
    this.includedWorkstationsPerOperator,
    this.monthlyPrice,
    this.yearlyPrice,
    this.currency,
    this.extraSmsPrice,
    this.extraOperatorPrice,
    this.extraWorkstationPrice,
    this.isActive,
    this.isFeatured,
    this.displayOrder,
    this.createdAt,
    this.updatedAt,
  });

  factory QuotaType.fromJson(Map<String, dynamic> json) {
    return QuotaType(
      id: json['id'],
      name: json['name'],
      code: json['code'],
      description: json['description'],
      includedSms: json['included_sms'],
      includedOperatorsPerArea: json['included_operators_per_area'],
      includedWorkstationsPerOperator: json['included_workstations_per_operator'],
      monthlyPrice: json['monthly_price'],
      yearlyPrice: json['yearly_price'],
      currency: json['currency'],
      extraSmsPrice: json['extra_sms_price'],
      extraOperatorPrice: json['extra_operator_price'],
      extraWorkstationPrice: json['extra_workstation_price'],
      isActive: json['is_active'],
      isFeatured: json['is_featured'],
      displayOrder: json['display_order'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }
}

class Tenant {
  final int id;
  final String name;
  final String domainUrl;
  final String schemaName;
  final String? type;
  final String? apiVersion;
  final String? registeredOffice;
  final String? paidUntil;
  final QuotaType? quotaType;
  final String? quotaName;
  final DateTime createdOn;
  final String? favicon;
  final String? logo;
  final String? darkLogo;
  final int activeTiersCount;
  final bool setupCompleted;
  final Map<String, dynamic>? configurationStatus;
  final SmsInfo? smsInfo;
  final List<AreaDetail> areas;

  Tenant({
    required this.id,
    required this.name,
    required this.domainUrl,
    required this.schemaName,
    this.type,
    this.apiVersion,
    this.registeredOffice,
    this.paidUntil,
    this.quotaType,
    this.quotaName,
    required this.createdOn,
    this.favicon,
    this.logo,
    this.darkLogo,
    required this.activeTiersCount,
    required this.setupCompleted,
    this.configurationStatus,
    this.smsInfo,
    this.areas = const [],
  });

  /// Calcola se il tenant è attivo in base alla data di scadenza
  bool get isActive {
    // Se non c'è paidUntil, consideriamo il tenant attivo (es: trial o piano gratuito)
    if (paidUntil == null) return true;

    try {
      final expiryDate = DateTime.parse(paidUntil!);
      final now = DateTime.now();
      // Attivo se la data di scadenza è oggi o nel futuro
      return expiryDate.isAfter(now) ||
             expiryDate.isAtSameMomentAs(now.copyWith(
               hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0
             ));
    } catch (e) {
      // In caso di errore nel parsing, consideriamo inattivo per sicurezza
      return false;
    }
  }

  factory Tenant.fromJson(Map<String, dynamic> json) {
    return Tenant(
      id: json['id'],
      name: json['name'],
      domainUrl: json['domain'],
      schemaName: json['schema_name'],
      type: json['type'],
      apiVersion: json['api_version'],
      registeredOffice: json['registered_office'],
      paidUntil: json['paid_until'],
      quotaType: json['quota_type'] != null
          ? QuotaType.fromJson(json['quota_type'])
          : null,
      quotaName: json['quota_name'],
      createdOn: DateTime.parse(json['created_on']),
      favicon: json['favicon_url'] ?? json['favicon'],
      logo: json['logo_url'] ?? json['logo'],
      darkLogo: json['dark_logo_url'] ?? json['dark_logo'],
      activeTiersCount: json['active_tiers_count'] ?? 0,
      setupCompleted: json['setup_completed'] ?? false,
      configurationStatus: json['configuration_status'] as Map<String, dynamic>?,
      smsInfo: json['sms_info'] != null
          ? SmsInfo.fromJson(json['sms_info'] as Map<String, dynamic>)
          : null,
      areas: (json['areas'] as List<dynamic>?)
              ?.map((area) => AreaDetail.fromJson(area as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'domain': domainUrl,
      'schema_name': schemaName,
      if (type != null) 'type': type,
      if (apiVersion != null) 'api_version': apiVersion,
      if (registeredOffice != null) 'registered_office': registeredOffice,
      'is_active': isActive,
      if (paidUntil != null) 'paid_until': paidUntil,
      if (quotaType != null) 'quota_type': quotaType!.toJson(),
      if (quotaName != null) 'quota_name': quotaName,
      'created_on': createdOn.toIso8601String(),
      if (favicon != null) 'favicon_url': favicon,
      if (logo != null) 'logo_url': logo,
      if (darkLogo != null) 'dark_logo_url': darkLogo,
      'active_tiers_count': activeTiersCount,
      'setup_completed': setupCompleted,
      if (configurationStatus != null) 'configuration_status': configurationStatus,
      if (smsInfo != null) 'sms_info': smsInfo!.toJson(),
      'areas': areas.map((area) => area.toJson()).toList(),
    };
  }

  Tenant copyWith({
    int? id,
    String? name,
    String? domainUrl,
    String? schemaName,
    String? type,
    String? apiVersion,
    String? registeredOffice,
    String? paidUntil,
    QuotaType? quotaType,
    String? quotaName,
    DateTime? createdOn,
    String? favicon,
    String? logo,
    String? darkLogo,
    int? activeTiersCount,
    bool? setupCompleted,
    Map<String, dynamic>? configurationStatus,
    SmsInfo? smsInfo,
    List<AreaDetail>? areas,
  }) {
    return Tenant(
      id: id ?? this.id,
      name: name ?? this.name,
      domainUrl: domainUrl ?? this.domainUrl,
      schemaName: schemaName ?? this.schemaName,
      type: type ?? this.type,
      apiVersion: apiVersion ?? this.apiVersion,
      registeredOffice: registeredOffice ?? this.registeredOffice,
      paidUntil: paidUntil ?? this.paidUntil,
      quotaType: quotaType ?? this.quotaType,
      quotaName: quotaName ?? this.quotaName,
      createdOn: createdOn ?? this.createdOn,
      favicon: favicon ?? this.favicon,
      logo: logo ?? this.logo,
      darkLogo: darkLogo ?? this.darkLogo,
      activeTiersCount: activeTiersCount ?? this.activeTiersCount,
      setupCompleted: setupCompleted ?? this.setupCompleted,
      configurationStatus: configurationStatus ?? this.configurationStatus,
      smsInfo: smsInfo ?? this.smsInfo,
      areas: areas ?? this.areas,
    );
  }
}

extension QuotaTypeExtension on QuotaType {
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'code': code,
      if (description != null) 'description': description,
      if (includedSms != null) 'included_sms': includedSms,
      if (includedOperatorsPerArea != null)
        'included_operators_per_area': includedOperatorsPerArea,
      if (includedWorkstationsPerOperator != null)
        'included_workstations_per_operator': includedWorkstationsPerOperator,
      if (monthlyPrice != null) 'monthly_price': monthlyPrice,
      if (yearlyPrice != null) 'yearly_price': yearlyPrice,
      if (currency != null) 'currency': currency,
      if (extraSmsPrice != null) 'extra_sms_price': extraSmsPrice,
      if (extraOperatorPrice != null) 'extra_operator_price': extraOperatorPrice,
      if (extraWorkstationPrice != null)
        'extra_workstation_price': extraWorkstationPrice,
      if (isActive != null) 'is_active': isActive,
      if (isFeatured != null) 'is_featured': isFeatured,
      if (displayOrder != null) 'display_order': displayOrder,
      if (createdAt != null) 'created_at': createdAt!.toIso8601String(),
      if (updatedAt != null) 'updated_at': updatedAt!.toIso8601String(),
    };
  }
}
