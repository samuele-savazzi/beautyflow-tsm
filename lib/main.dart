import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

import 'config/theme.dart';
import 'api/services/api_service.dart';
import 'providers/auth_provider.dart';
import 'providers/tenant_provider.dart';
import 'providers/tier_provider.dart';
import 'providers/quota_type_provider.dart';
import 'providers/payment_provider.dart';
import 'providers/navigation_provider.dart';
import 'providers/dashboard_provider.dart';
import 'providers/audit_log_provider.dart';
import 'providers/billing_provider.dart';
import 'providers/finance_provider.dart';
import 'screens/auth/auth_wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Desktop window configuration
  await windowManager.ensureInitialized();

  const windowOptions = WindowOptions(
    size: Size(1280, 800),
    minimumSize: Size(1024, 768),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.normal,
    title: 'BeautyFlow TSM',
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final apiService = ApiService();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(apiService),
        ),
        ChangeNotifierProvider(
          create: (_) => TenantProvider(apiService),
        ),
        ChangeNotifierProvider(
          create: (_) => TierProvider(apiService),
        ),
        ChangeNotifierProvider(
          create: (_) => QuotaTypeProvider(apiService),
        ),
        ChangeNotifierProvider(
          create: (_) => PaymentProvider(apiService),
        ),
        ChangeNotifierProvider(
          create: (_) => DashboardProvider(apiService),
        ),
        ChangeNotifierProvider(
          create: (_) => AuditLogProvider(apiService),
        ),
        ChangeNotifierProvider(
          create: (_) => NavigationProvider(),
        ),
        // Amministrazione (backend: app internal_billing)
        ChangeNotifierProvider(
          create: (_) => BillingProvider(apiService),
        ),
        ChangeNotifierProvider(
          create: (_) => FinanceProvider(apiService),
        ),
      ],
      child: MaterialApp(
        title: 'BeautyFlow TSM',
        theme: AppTheme.theme,
        debugShowCheckedModeBanner: false,
        home: const AuthWrapper(),
      ),
    );
  }
}
