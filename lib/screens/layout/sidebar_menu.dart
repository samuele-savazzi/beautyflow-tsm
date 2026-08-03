import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../config/theme.dart';
import '../../models/admin_user.dart';
import '../../providers/auth_provider.dart';
import '../../providers/navigation_provider.dart';

class SidebarMenu extends StatelessWidget {
  final AdminUser? currentUser;

  const SidebarMenu({super.key, this.currentUser});

  @override
  Widget build(BuildContext context) {
    final user = currentUser;
    final navProvider = context.watch<NavigationProvider>();

    return Container(
      width: 260,
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border(
          right: BorderSide(
            color: AppColors.border,
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Logo & App Name
          Container(
            height: 64,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.border,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.spa,
                  size: 28,
                  color: AppColors.primary,
                ),
                const SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'BeautyFlow',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    Text(
                      'TSM',
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Menu Items
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 12),
              children: [
                _MenuItem(
                  icon: Icons.dashboard,
                  label: 'Dashboard',
                  section: AppSection.dashboard,
                  isSelected: navProvider.currentSection == AppSection.dashboard,
                  onTap: () => navProvider.navigateTo(AppSection.dashboard),
                ),

                _MenuItem(
                  icon: Icons.business,
                  label: 'Tenants',
                  section: AppSection.tenants,
                  isSelected: navProvider.currentSection == AppSection.tenants,
                  onTap: () => navProvider.navigateTo(AppSection.tenants),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Divider(),
                ),

                // ----- Commerciale: admin e commerciale -----
                const _SectionLabel('Commerciale'),

                _MenuItem(
                  icon: Icons.description,
                  label: 'Contratti',
                  section: AppSection.contracts,
                  isSelected: navProvider.currentSection == AppSection.contracts,
                  onTap: () => navProvider.navigateTo(AppSection.contracts),
                ),

                _MenuItem(
                  icon: Icons.event_available,
                  label: 'Scadenzario',
                  section: AppSection.installments,
                  isSelected:
                      navProvider.currentSection == AppSection.installments,
                  onTap: () => navProvider.navigateTo(AppSection.installments),
                ),

                _MenuItem(
                  icon: Icons.receipt_long,
                  label: 'Fatture',
                  section: AppSection.invoices,
                  isSelected: navProvider.currentSection == AppSection.invoices,
                  onTap: () => navProvider.navigateTo(AppSection.invoices),
                ),

                _MenuItem(
                  icon: Icons.handshake,
                  label: 'Provvigioni',
                  section: AppSection.commissions,
                  isSelected:
                      navProvider.currentSection == AppSection.commissions,
                  onTap: () => navProvider.navigateTo(AppSection.commissions),
                ),

                // ----- Amministrazione: solo admin -----
                // Il backend risponde comunque 403 al commerciale, ma non ha
                // senso mostrargli voci su cui non può entrare
                if (user?.isAdmin ?? false) ...[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Divider(),
                  ),
                  const _SectionLabel('Amministrazione'),

                  _MenuItem(
                    icon: Icons.query_stats,
                    label: 'Andamento',
                    section: AppSection.financeDashboard,
                    isSelected: navProvider.currentSection ==
                        AppSection.financeDashboard,
                    onTap: () =>
                        navProvider.navigateTo(AppSection.financeDashboard),
                  ),

                  _MenuItem(
                    icon: Icons.payments,
                    label: 'Costi',
                    section: AppSection.expenses,
                    isSelected: navProvider.currentSection == AppSection.expenses,
                    onTap: () => navProvider.navigateTo(AppSection.expenses),
                  ),

                  _MenuItem(
                    icon: Icons.account_balance_wallet,
                    label: 'Liquidità',
                    section: AppSection.cash,
                    isSelected: navProvider.currentSection == AppSection.cash,
                    onTap: () => navProvider.navigateTo(AppSection.cash),
                  ),

                  _MenuItem(
                    icon: Icons.account_balance,
                    label: 'IVA e imposte',
                    section: AppSection.vat,
                    isSelected: navProvider.currentSection == AppSection.vat,
                    onTap: () => navProvider.navigateTo(AppSection.vat),
                  ),

                  _MenuItem(
                    icon: Icons.insights,
                    label: 'Conto economico',
                    section: AppSection.reports,
                    isSelected: navProvider.currentSection == AppSection.reports,
                    onTap: () => navProvider.navigateTo(AppSection.reports),
                  ),

                  _MenuItem(
                    icon: Icons.category,
                    label: 'Piani e moduli',
                    section: AppSection.tiers,
                    isSelected: navProvider.currentSection == AppSection.tiers,
                    onTap: () => navProvider.navigateTo(AppSection.tiers),
                  ),

                  _MenuItem(
                    icon: Icons.sell,
                    label: 'Listini',
                    section: AppSection.priceLists,
                    isSelected:
                        navProvider.currentSection == AppSection.priceLists,
                    onTap: () => navProvider.navigateTo(AppSection.priceLists),
                  ),

                  _MenuItem(
                    icon: Icons.badge,
                    label: 'Commerciali',
                    section: AppSection.salespeople,
                    isSelected:
                        navProvider.currentSection == AppSection.salespeople,
                    onTap: () => navProvider.navigateTo(AppSection.salespeople),
                  ),

                  _MenuItem(
                    icon: Icons.settings_suggest,
                    label: 'Impostazioni fiscali',
                    section: AppSection.fiscalSettings,
                    isSelected:
                        navProvider.currentSection == AppSection.fiscalSettings,
                    onTap: () =>
                        navProvider.navigateTo(AppSection.fiscalSettings),
                  ),
                ],

                /*_MenuItem(
                  icon: Icons.person,
                  label: 'Profilo',
                  section: AppSection.profile,
                  isSelected: navProvider.currentSection == AppSection.profile,
                  onTap: () => navProvider.navigateTo(AppSection.profile),
                ),*/
              ],
            ),
          ),

          // Logout Button
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: AppColors.border,
                  width: 1,
                ),
              ),
            ),
            child: ElevatedButton.icon(
              onPressed: () {
                _showLogoutConfirmation(context);
              },
              icon: const Icon(Icons.logout, size: 18),
              label: const Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.error,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Conferma Logout'),
        content: const Text('Sei sicuro di voler uscire?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annulla'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<AuthProvider>().logout();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
            ),
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final AppSection section;
  final bool isSelected;
  final VoidCallback onTap;

  const _MenuItem({
    required this.icon,
    required this.label,
    required this.section,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      child: Material(
        color: isSelected ? AppColors.primary.withOpacity(0.1) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 20,
                  color: isSelected ? AppColors.primary : AppColors.textSecondary,
                ),
                const SizedBox(width: 12),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                    color: isSelected ? AppColors.primary : AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Intestazione di gruppo nel menu laterale.
class _SectionLabel extends StatelessWidget {
  final String label;

  const _SectionLabel(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 16, 4),
      child: Text(
        label.toUpperCase(),
        style: TextStyle(
          fontSize: 11,
          letterSpacing: 0.8,
          fontWeight: FontWeight.w600,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}
