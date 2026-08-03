import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/navigation_provider.dart';
import 'home/dashboard_screen.dart';
import 'tenants/tenant_list_screen.dart';
import 'tenants/tenant_detail_screen.dart';
import 'billing/contracts_screen.dart';
import 'billing/contract_detail_screen.dart';
import 'billing/installments_screen.dart';
import 'billing/invoices_screen.dart';
import 'billing/commissions_screen.dart';
import 'billing/price_lists_screen.dart';
import 'billing/salespeople_screen.dart';
import 'admin_finance/finance_dashboard_screen.dart';
import 'admin_finance/expenses_screen.dart';
import 'admin_finance/cash_screen.dart';
import 'admin_finance/vat_screen.dart';
import 'admin_finance/reports_screen.dart';
import 'admin_finance/fiscal_settings_screen.dart';
import 'catalog/plans_tiers_screen.dart';

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
        return const PlansTiersScreen();

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

      // ----- Commerciale -----
      case AppSection.contracts:
        if (navProvider.selectedContractId != null) {
          return ContractDetailScreen(
            contractId: navProvider.selectedContractId!,
          );
        }
        return const ContractsScreen();

      case AppSection.installments:
        return const InstallmentsScreen();

      case AppSection.invoices:
        return const InvoicesScreen();

      case AppSection.commissions:
        return const CommissionsScreen();

      // ----- Amministrazione -----
      case AppSection.financeDashboard:
        return const FinanceDashboardScreen();

      case AppSection.expenses:
        return const ExpensesScreen();

      case AppSection.cash:
        return const CashScreen();

      case AppSection.vat:
        return const VatScreen();

      case AppSection.reports:
        return const ReportsScreen();

      case AppSection.priceLists:
        return const PriceListsScreen();

      case AppSection.salespeople:
        return const SalespeopleScreen();

      case AppSection.fiscalSettings:
        return const FiscalSettingsScreen();
    }
  }
}
