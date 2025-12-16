import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/navigation_provider.dart';
import 'home/dashboard_screen.dart';
import 'tenants/tenant_list_screen.dart';
import 'tenants/tenant_detail_screen.dart';

class AppRouter extends StatelessWidget {
  const AppRouter({super.key});

  @override
  Widget build(BuildContext context) {
    final navProvider = context.watch<NavigationProvider>();

    switch (navProvider.currentSection) {
      case AppSection.dashboard:
        return const DashboardScreen();

      case AppSection.tenants:
        // Show tenant detail if a tenant is selected
        if (navProvider.selectedTenantId != null) {
          return TenantDetailScreen(
            tenantId: navProvider.selectedTenantId!,
          );
        }
        return const TenantListScreen();

      case AppSection.tiers:
        return const Scaffold(
          body: Center(
            child: Text('Tiers Screen - In sviluppo'),
          ),
        );

      case AppSection.admins:
        return const Scaffold(
          body: Center(
            child: Text('Admins Screen - In sviluppo'),
          ),
        );

      case AppSection.profile:
        return const Scaffold(
          body: Center(
            child: Text('Profile Screen - In sviluppo'),
          ),
        );
    }
  }
}
