import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/auth_provider.dart';
import 'splash_screen.dart';
import 'login_screen.dart';
import 'verify_2fa_screen.dart';
import 'setup_2fa_screen.dart';
import 'backup_codes_screen.dart';
import 'change_password_screen.dart';
import '../app_router.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProvider, _) {
        switch (authProvider.status) {
          case AuthStatus.initial:
            return const SplashScreen();

          case AuthStatus.unauthenticated:
            return const LoginScreen();

          case AuthStatus.requires2FA:
            return const Verify2FAScreen();

          case AuthStatus.requires2FASetup:
            return const Setup2FAScreen();

          case AuthStatus.showBackupCodes:
            return const BackupCodesScreen();

          case AuthStatus.requiresPasswordChange:
            return const ChangePasswordScreen();

          case AuthStatus.authenticated:
            return const AppRouter();
        }
      },
    );
  }
}
