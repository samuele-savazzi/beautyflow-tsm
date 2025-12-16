class Tier {
  final int id;
  final String name;
  final String code;
  final String slug;
  final String category;
  final String description;
  final String icon;
  final bool isActive;
  final bool isPublic;
  final String? monthlyPrice;
  final String? yearlyPrice;
  final bool hasUsageLimit;
  final int? usageLimit;
  final String? usageUnit;

  Tier({
    required this.id,
    required this.name,
    required this.code,
    required this.slug,
    required this.category,
    required this.description,
    required this.icon,
    required this.isActive,
    required this.isPublic,
    this.monthlyPrice,
    this.yearlyPrice,
    required this.hasUsageLimit,
    this.usageLimit,
    this.usageUnit,
  });

  factory Tier.fromJson(Map<String, dynamic> json) {
    return Tier(
      id: json['id'],
      name: json['name'],
      code: json['code'],
      slug: json['slug'],
      category: json['category'],
      description: json['description'] ?? '',
      icon: json['icon'] ?? 'star',
      isActive: json['is_active'] ?? true,
      isPublic: json['is_public'] ?? false,
      monthlyPrice: json['monthly_price'],
      yearlyPrice: json['yearly_price'],
      hasUsageLimit: json['has_usage_limit'] ?? false,
      usageLimit: json['usage_limit'],
      usageUnit: json['usage_unit'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'code': code,
      'slug': slug,
      'category': category,
      'description': description,
      'icon': icon,
      'is_active': isActive,
      'is_public': isPublic,
      'monthly_price': monthlyPrice,
      'yearly_price': yearlyPrice,
      'has_usage_limit': hasUsageLimit,
      'usage_limit': usageLimit,
      'usage_unit': usageUnit,
    };
  }
}

class TenantTier {
  final int id;
  final int tenantId;
  final Tier tier;
  final bool isActive;
  final bool isTrial;
  final DateTime activatedAt;
  final DateTime? expiresAt;
  final String billingCycle;
  final String? nextBillingDate;
  final int usageCount;
  final int? usageLimit;
  final bool canUse;

  TenantTier({
    required this.id,
    required this.tenantId,
    required this.tier,
    required this.isActive,
    required this.isTrial,
    required this.activatedAt,
    this.expiresAt,
    required this.billingCycle,
    this.nextBillingDate,
    required this.usageCount,
    this.usageLimit,
    required this.canUse,
  });

  factory TenantTier.fromJson(Map<String, dynamic> json) {
    return TenantTier(
      id: json['id'],
      tenantId: json['tenant_id'],
      tier: Tier.fromJson(json['tier']),
      isActive: json['is_active'] ?? false,
      isTrial: json['is_trial'] ?? false,
      activatedAt: DateTime.parse(json['activated_at']),
      expiresAt: json['expires_at'] != null
          ? DateTime.parse(json['expires_at'])
          : null,
      billingCycle: json['billing_cycle'] ?? 'monthly',
      nextBillingDate: json['next_billing_date'],
      usageCount: json['usage_count'] ?? 0,
      usageLimit: json['usage_limit'],
      canUse: json['can_use'] ?? true,
    );
  }

  int get remainingUsage {
    if (usageLimit == null) return -1; // Unlimited
    return usageLimit! - usageCount;
  }

  double get usagePercentage {
    if (usageLimit == null || usageLimit == 0) return 0;
    return (usageCount / usageLimit!) * 100;
  }
}
