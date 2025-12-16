import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../config/theme.dart';
import '../../models/admin_user.dart';
import '../../providers/auth_provider.dart';
import '../../providers/tenant_provider.dart';
import '../../providers/navigation_provider.dart';
import '../layout/main_layout.dart';
import 'widgets/tenant_info_tab.dart';
import 'widgets/tenant_tiers_tab.dart';

class TenantDetailScreen extends StatefulWidget {
  final int tenantId;

  const TenantDetailScreen({
    super.key,
    required this.tenantId,
  });

  @override
  State<TenantDetailScreen> createState() => _TenantDetailScreenState();
}

class _TenantDetailScreenState extends State<TenantDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    // Load tenant detail
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TenantProvider>().loadTenantDetail(widget.tenantId);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tenantProvider = context.watch<TenantProvider>();
    final authProvider = context.watch<AuthProvider>();
    final user = authProvider.currentUser;
    final tenant = tenantProvider.selectedTenant;

    return MainLayout(
      title: tenant?.name ?? 'Dettagli Tenant',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Back button and header
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    context.read<NavigationProvider>().clearSelection();
                  },
                  tooltip: 'Torna alla lista',
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            tenant?.name ?? 'Caricamento...',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(width: 12),
                          if (tenant != null)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: tenant.isActive
                                    ? AppColors.success.withOpacity(0.1)
                                    : AppColors.error.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                tenant.isActive ? 'Attivo' : 'Inattivo',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: tenant.isActive
                                      ? AppColors.success
                                      : AppColors.error,
                                ),
                              ),
                            ),
                        ],
                      ),
                      if (tenant != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          tenant.domainUrl,
                          style: AppTextStyles.body.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                if (tenant != null && (user?.canEdit ?? false)) ...[
                  const SizedBox(width: 16),
                  OutlinedButton.icon(
                    onPressed: () {
                      // TODO: Navigate to edit tenant screen
                    },
                    icon: const Icon(Icons.edit, size: 18),
                    label: const Text('Modifica'),
                  ),
                ],
              ],
            ),
          ),

          // Tabs
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TabBar(
              controller: _tabController,
              labelColor: AppColors.primary,
              unselectedLabelColor: AppColors.textSecondary,
              indicatorColor: AppColors.primary,
              tabs: const [
                Tab(text: 'Informazioni'),
                Tab(text: 'Tiers'),
              ],
            ),
          ),

          const Divider(height: 1),

          // Tab content
          Expanded(
            child: tenantProvider.isLoading && tenant == null
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : tenantProvider.error != null
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error_outline,
                              size: 64,
                              color: AppColors.error,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              tenantProvider.error!,
                              style: AppTextStyles.body,
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                tenantProvider.loadTenantDetail(widget.tenantId);
                              },
                              child: const Text('Riprova'),
                            ),
                          ],
                        ),
                      )
                    : tenant == null
                        ? const Center(
                            child: Text('Tenant non trovato'),
                          )
                        : TabBarView(
                            controller: _tabController,
                            children: [
                              TenantInfoTab(tenant: tenant),
                              TenantTiersTab(tenantId: tenant.id),
                            ],
                          ),
          ),
        ],
      ),
    );
  }
}
