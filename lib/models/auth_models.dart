import 'admin_user.dart';

class LoginResponse {
  final String access;
  final String? refresh;
  final bool requires2FA;
  final bool requires2FASetup;
  final AdminUser admin;
  final String? message;

  LoginResponse({
    required this.access,
    this.refresh,
    required this.requires2FA,
    required this.requires2FASetup,
    required this.admin,
    this.message,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    final requires2FA = json['requires_2fa'] ?? false;
    final requires2FASetup = json['requires_2fa_setup'] ?? false;
    final tokens = json['tokens'] as Map<String, dynamic>?;

    return LoginResponse(
      // Token: può essere temporary_token o tokens.access
      access: json['temporary_token'] ?? tokens?['access'] ?? '',
      refresh: tokens?['refresh'],
      requires2FA: requires2FA,
      requires2FASetup: requires2FASetup,
      admin: AdminUser.fromJson(json['admin']),
      message: json['message'],
    );
  }
}

class Tokens {
  final String access;
  final String refresh;

  Tokens({required this.access, required this.refresh});

  factory Tokens.fromJson(Map<String, dynamic> json) {
    return Tokens(
      access: json['access'],
      refresh: json['refresh'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'access': access,
      'refresh': refresh,
    };
  }
}

class Verify2FAResponse {
  final String message;
  final Tokens tokens;
  final AdminUser admin;
  final List<String>? backupCodes; // Solo per verify-2fa-setup
  final String? warning; // Solo per verify-2fa-setup

  Verify2FAResponse({
    required this.message,
    required this.tokens,
    required this.admin,
    this.backupCodes,
    this.warning,
  });

  factory Verify2FAResponse.fromJson(Map<String, dynamic> json) {
    return Verify2FAResponse(
      message: json['message'],
      tokens: Tokens.fromJson(json['tokens']),
      admin: AdminUser.fromJson(json['admin']),
      backupCodes: json['backup_codes'] != null
          ? List<String>.from(json['backup_codes'])
          : null,
      warning: json['warning'],
    );
  }
}

class Setup2FAResponse {
  final String qrCode;
  final String secret;
  final String? message;

  Setup2FAResponse({
    required this.qrCode,
    required this.secret,
    this.message,
  });

  factory Setup2FAResponse.fromJson(Map<String, dynamic> json) {
    return Setup2FAResponse(
      qrCode: json['qr_code'],
      secret: json['secret'],
      message: json['message'],
    );
  }
}
