import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../config/theme.dart';
import '../../providers/tenant_provider.dart';
import '../../providers/auth_provider.dart';
import '../../providers/navigation_provider.dart';
import '../layout/main_layout.dart';
import 'widgets/tenant_card.dart';
import 'create_tenant/create_tenant_wizard.dart';

class TenantListScreen extends StatefulWidget {
  const TenantListScreen({super.key});

  @override
  State<TenantListScreen> createState() => _TenantListScreenState();
}

class _TenantListScreenState extends State<TenantListScreen> {
  final _searchController = TextEditingController();
  bool? _isActiveFilter;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TenantProvider>().loadTenants(refresh: true);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tenantProvider = context.watch<TenantProvider>();
    final authProvider = context.watch<AuthProvider>();
    final user = authProvider.currentUser;

    return MainLayout(
      title: 'Tenants',
      child: Column(
        children: [
          // Search & Filters Bar
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: AppColors.surface,
              border: Border(
                bottom: BorderSide(
                  color: AppColors.border,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                // Search Field
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Cerca per nome o dominio...',
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    onSubmitted: (value) {
                      tenantProvider.loadTenants(
                        search: value,
                        refresh: true,
                      );
                    },
                  ),
                ),
                const SizedBox(width: 16),

                // Active Filter Dropdown
                SizedBox(
                  width: 180,
                  child: DropdownButtonFormField<bool?>(
                    value: _isActiveFilter,
                    decoration: const InputDecoration(
                      labelText: 'Stato',
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(value: null, child: Text('Tutti')),
                      DropdownMenuItem(value: true, child: Text('Attivi')),
                      DropdownMenuItem(value: false, child: Text('Inattivi')),
                    ],
                    onChanged: (value) {
                      setState(() => _isActiveFilter = value);
                      tenantProvider.loadTenants(
                        isActive: value,
                        refresh: true,
                      );
                    },
                  ),
                ),
                const SizedBox(width: 16),

                // Clear Filters Button
                if (_searchController.text.isNotEmpty || _isActiveFilter != null)
                  TextButton.icon(
                    onPressed: () {
                      setState(() {
                        _searchController.clear();
                        _isActiveFilter = null;
                      });
                      tenantProvider.clearFilters();
                    },
                    icon: const Icon(Icons.clear),
                    label: const Text('Pulisci'),
                  ),

                const SizedBox(width: 16),

                // Create Button (only for admin/commerciale)
                if (user?.canCreate ?? false)
                  ElevatedButton.icon(
                    onPressed: () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const CreateTenantWizard(),
                        ),
                      );
                      // Refresh tenant list after wizard completes
                      if (mounted) {
                        tenantProvider.loadTenants(refresh: true);
                      }
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Nuovo Tenant'),
                  ),
              ],
            ),
          ),

          // Tenants List
          Expanded(
            child: tenantProvider.isLoading && tenantProvider.tenantsPage == null
                ? const Center(child: CircularProgressIndicator())
                : tenantProvider.error != null
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error_outline,
                              size: 64,
                              color: AppColors.error.withOpacity(0.5),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              tenantProvider.error!,
                              style: AppTextStyles.body,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton.icon(
                              onPressed: () {
                                tenantProvider.loadTenants(refresh: true);
                              },
                              icon: const Icon(Icons.refresh),
                              label: const Text('Riprova'),
                            ),
                          ],
                        ),
                      )
                    : tenantProvider.tenantsPage?.isEmpty ?? true
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.business_outlined,
                                  size: 64,
                                  color: AppColors.textSecondary.withOpacity(0.5),
                                ),
                                const SizedBox(height: 16),
                                const Text(
                                  'Nessun tenant trovato',
                                  style: AppTextStyles.h3,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Inizia creando il tuo primo tenant',
                                  style: AppTextStyles.caption,
                                ),
                              ],
                            ),
                          )
                        : RefreshIndicator(
                            onRefresh: () => tenantProvider.loadTenants(refresh: true),
                            child: ListView.builder(
                              padding: const EdgeInsets.all(24),
                              itemCount: tenantProvider.tenantsPage!.results.length + 1,
                              itemBuilder: (context, index) {
                                // Pagination controls at the end
                                if (index == tenantProvider.tenantsPage!.results.length) {
                                  return _buildPaginationControls(tenantProvider);
                                }

                                final tenant = tenantProvider.tenantsPage!.results[index];
                                return TenantCard(
                                  tenant: tenant,
                                  onTap: () {
                                    context.read<NavigationProvider>().navigateToTenantDetail(tenant.id);
                                  },
                                );
                              },
                            ),
                          ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaginationControls(TenantProvider provider) {
    final page = provider.tenantsPage!;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Previous Button
          ElevatedButton.icon(
            onPressed: provider.hasPreviousPage && !provider.isLoading
                ? () => provider.loadPreviousPage()
                : null,
            icon: const Icon(Icons.chevron_left),
            label: const Text('Precedente'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.surface,
              foregroundColor: AppColors.primary,
            ),
          ),

          const SizedBox(width: 24),

          // Page Info
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.border),
            ),
            child: Text(
              'Pagina ${provider.currentPage} di ${page.totalPages} • ${page.count} totali',
              style: AppTextStyles.body,
            ),
          ),

          const SizedBox(width: 24),

          // Next Button
          ElevatedButton.icon(
            onPressed: provider.hasNextPage && !provider.isLoading
                ? () => provider.loadNextPage()
                : null,
            icon: const Icon(Icons.chevron_right),
            label: const Text('Successiva'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.surface,
              foregroundColor: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
