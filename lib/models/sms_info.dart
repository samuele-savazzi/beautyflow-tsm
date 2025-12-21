/// Informazioni SMS per tenant
class SmsInfo {
  final int smsQuotaLimit;
  final int smsQuotaUsed;
  final int smsRemaining;
  final double smsPercentageUsed;

  SmsInfo({
    required this.smsQuotaLimit,
    required this.smsQuotaUsed,
    required this.smsRemaining,
    required this.smsPercentageUsed,
  });

  factory SmsInfo.fromJson(Map<String, dynamic> json) {
    return SmsInfo(
      smsQuotaLimit: json['sms_quota_limit'] ?? 0,
      smsQuotaUsed: json['sms_quota_used'] ?? 0,
      smsRemaining: json['sms_remaining'] ?? 0,
      smsPercentageUsed: (json['sms_percentage_used'] ?? 0.0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sms_quota_limit': smsQuotaLimit,
      'sms_quota_used': smsQuotaUsed,
      'sms_remaining': smsRemaining,
      'sms_percentage_used': smsPercentageUsed,
    };
  }
}
