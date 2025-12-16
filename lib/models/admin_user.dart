class AdminUser {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String role;
  final bool mustChangePassword;
  final bool totpEnabled;
  final bool isActive;
  final String? phoneNumber;
  final DateTime? lastLoginAt;

  AdminUser({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.role,
    required this.mustChangePassword,
    required this.totpEnabled,
    required this.isActive,
    this.phoneNumber,
    this.lastLoginAt,
  });

  factory AdminUser.fromJson(Map<String, dynamic> json) {
    return AdminUser(
      id: json['id'],
      email: json['email'],
      firstName: json['first_name'] ?? '',
      lastName: json['last_name'] ?? '',
      role: json['role'] ?? 'support',
      mustChangePassword: json['must_change_password'] ?? false,
      totpEnabled: json['totp_enabled'] ?? false,
      isActive: json['is_active'] ?? true,
      phoneNumber: json['phone_number'],
      lastLoginAt: json['last_login_at'] != null
          ? DateTime.parse(json['last_login_at'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'role': role,
      'must_change_password': mustChangePassword,
      'totp_enabled': totpEnabled,
      'is_active': isActive,
      'phone_number': phoneNumber,
      'last_login_at': lastLoginAt?.toIso8601String(),
    };
  }

  String get fullName => '$firstName $lastName';

  bool get isAdmin => role == 'admin';
  bool get isCommerciale => role == 'commerciale';
  bool get isSupport => role == 'support';

  bool get canCreate => isAdmin || isCommerciale;
  bool get canEdit => isAdmin || isCommerciale;
  bool get canDelete => isAdmin;
  bool get canManageAdmins => isAdmin;

  AdminUser copyWith({
    int? id,
    String? email,
    String? firstName,
    String? lastName,
    String? role,
    bool? mustChangePassword,
    bool? totpEnabled,
    bool? isActive,
    String? phoneNumber,
    DateTime? lastLoginAt,
  }) {
    return AdminUser(
      id: id ?? this.id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      role: role ?? this.role,
      mustChangePassword: mustChangePassword ?? this.mustChangePassword,
      totpEnabled: totpEnabled ?? this.totpEnabled,
      isActive: isActive ?? this.isActive,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      lastLoginAt: lastLoginAt ?? this.lastLoginAt,
    );
  }
}
