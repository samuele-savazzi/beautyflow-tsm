import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../../../config/theme.dart';
import '../../../providers/tier_provider.dart';
import '../../../providers/auth_provider.dart';
import 'quota_widget.dart';
import 'activate_tier_dialog.dart';
import 'reactivate_tier_dialog.dart';

class TenantTiersTab extends StatefulWidget {
  final int tenantId;

  const TenantTiersTab({
    super.key,
    required this.tenantId,
  });

  @override
  State<TenantTiersTab> createState() => _TenantTiersTabState();
}

class _TenantTiersTabState extends State<TenantTiersTab> {
  bool? _isActiveFilter;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TierProvider>().loadTenantTiers(widget.tenantId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final tierProvider = context.watch<TierProvider>();
    final authProvider = context.watch<AuthProvider>();
    final user = authProvider.currentUser;
    final tiers = tierProvider.tenantTiers;

    return Column(
      children: [
        // Filter Bar
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
              const Text(
                'Filtro:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                width: 200,
                child: DropdownButtonFormField<bool?>(
                  value: _isActiveFilter,
                  decoration: const InputDecoration(
                    hintText: 'Tutti i tiers',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(value: null, child: Text('Tutti i tiers')),
                    DropdownMenuItem(value: true, child: Text('Solo attivi')),
                    DropdownMenuItem(value: false, child: Text('Solo inattivi')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _isActiveFilter = value;
                    });
                    tierProvider.loadTenantTiers(
                      widget.tenantId,
                      isActive: value,
                    );
                  },
                ),
              ),
              const Spacer(),
              if (user?.canCreate ?? false)
                ElevatedButton.icon(
                  onPressed: () async {
                    // Ottieni IDs tier già attivi (solo quelli con isActive=true)
                    final activeTierIds = tiers?.where((t) => t.isActive).map((t) => t.tier.id).toList() ?? [];

                    final result = await showDialog<bool>(
                      context: context,
                      builder: (context) => ActivateTierDialog(
                        tenantId: widget.tenantId,
                        tenantName: 'Tenant #${widget.tenantId}',
                        activeTierIds: activeTierIds,
                      ),
                    );

                    if (result == true && mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Tier attivato con successo'),
                          backgroundColor: AppColors.success,
                        ),
                      );
                    }
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Attiva Tier'),
                ),
            ],
          ),
        ),

        // Tiers List
        Expanded(
          child: tierProvider.isLoading && tiers == null
              ? const Center(child: CircularProgressIndicator())
              : tierProvider.error != null
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
                            tierProvider.error!,
                            style: AppTextStyles.body,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton.icon(
                            onPressed: () {
                              tierProvider.loadTenantTiers(widget.tenantId);
                            },
                            icon: const Icon(Icons.refresh),
                            label: const Text('Riprova'),
                          ),
                        ],
                      ),
                    )
                  : tiers == null || tiers.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.stars_outlined,
                                size: 64,
                                color: AppColors.textSecondary.withOpacity(0.5),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Nessun tier attivo',
                                style: AppTextStyles.h3,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Attiva i tier necessari per questo tenant',
                                style: AppTextStyles.caption,
                              ),
                            ],
                          ),
                        )
                      : RefreshIndicator(
                          onRefresh: () => tierProvider.loadTenantTiers(widget.tenantId),
                          child: ListView.builder(
                            padding: const EdgeInsets.all(24),
                            itemCount: tiers.length,
                            itemBuilder: (context, index) {
                              final tenantTier = tiers[index];
                              return _buildTierCard(context, tenantTier, user);
                            },
                          ),
                        ),
        ),
      ],
    );
  }

  Widget _buildTierCard(BuildContext context, dynamic tenantTier, dynamic user) {
    // Access tier info from tenantTier.tier
    final tier = tenantTier.tier;
    final isActive = tenantTier.isActive;
    final activatedOn = tenantTier.activatedAt;

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Row(
              children: [
                // Tier Icon
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColors.secondary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.stars,
                    color: AppColors.secondary,
                    size: 28,
                  ),
                ),
                const SizedBox(width: 16),

                // Tier Name & Category
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tier.name,
                        style: AppTextStyles.h3,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      if (tier.category != null)
                        Text(
                          tier.category!,
                          style: AppTextStyles.caption,
                        ),
                    ],
                  ),
                ),

                // Status Badge
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: isActive
                        ? AppColors.success.withOpacity(0.1)
                        : AppColors.error.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        isActive ? Icons.check_circle : Icons.cancel,
                        size: 14,
                        color: isActive ? AppColors.success : AppColors.error,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        isActive ? 'Attivo' : 'Inattivo',
                        style: AppTextStyles.caption.copyWith(
                          color: isActive ? AppColors.success : AppColors.error,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            if (tier.description != null) ...[
              const SizedBox(height: 12),
              Text(
                tier.description!,
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],

            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),

            // Usage Information
            Row(
              children: [
                Icon(
                  Icons.analytics_outlined,
                  size: 16,
                  color: AppColors.textSecondary,
                ),
                const SizedBox(width: 6),
                Text(
                  'Utilizzi: ${tenantTier.usageCount}${tenantTier.usageLimit != null ? '/${tenantTier.usageLimit}' : ''}',
                  style: AppTextStyles.caption,
                ),
                if (tenantTier.usageLimit != null) ...[
                  const SizedBox(width: 16),
                  Icon(
                    Icons.trending_up,
                    size: 16,
                    color: AppColors.textSecondary,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '${tenantTier.usagePercentage.toStringAsFixed(1)}%',
                    style: AppTextStyles.caption,
                  ),
                ],
              ],
            ),
            const SizedBox(height: 16),

            // Details Row
            Row(
              children: [
                if (activatedOn != null) ...[
                  Icon(
                    Icons.event,
                    size: 16,
                    color: AppColors.textSecondary,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Attivato: ${_formatDate(activatedOn)}',
                    style: AppTextStyles.caption,
                  ),
                ],
                const Spacer(),

                // Deactivate Button (tier attivi)
                if (isActive && (user?.canEdit ?? false))
                  TextButton.icon(
                    onPressed: () => _showDeactivateConfirmation(
                      context,
                      tenantTier,
                      tier.name,
                    ),
                    icon: const Icon(Icons.block, size: 16),
                    label: const Text('Disattiva'),
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.error,
                    ),
                  ),

                // Reactivate Button (tier inattivi)
                if (!isActive && (user?.canEdit ?? false))
                  ElevatedButton.icon(
                    onPressed: () => _showReactivateConfirmation(
                      context,
                      tenantTier,
                      tier.name,
                    ),
                    icon: const Icon(Icons.refresh, size: 16),
                    label: const Text('Riattiva'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.success,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showDeactivateConfirmation(
    BuildContext context,
    dynamic tenantTier,
    String tierName,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Conferma Disattivazione'),
        content: Text(
          'Sei sicuro di voler disattivare il tier "$tierName" per questo tenant?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annulla'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              final success = await context.read<TierProvider>().deactivateTierForTenant(
                    tenantId: widget.tenantId,
                    tierId: tenantTier.tier.id,
                  );

              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      success
                          ? 'Tier disattivato con successo'
                          : 'Errore durante la disattivazione',
                    ),
                    backgroundColor: success ? AppColors.success : AppColors.error,
                  ),
                );

                if (success) {
                  context.read<TierProvider>().loadTenantTiers(widget.tenantId);
                }
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
            ),
            child: const Text('Disattiva'),
          ),
        ],
      ),
    );
  }

  void _showReactivateConfirmation(
    BuildContext context,
    dynamic tenantTier,
    String tierName,
  ) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => ReactivateTierDialog(
        tenantId: widget.tenantId,
        tenantName: 'Tenant #${widget.tenantId}',
        tier: tenantTier.tier,
      ),
    );

    if (result == true && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Tier riattivato con successo'),
          backgroundColor: AppColors.success,
        ),
      );
      context.read<TierProvider>().loadTenantTiers(widget.tenantId);
    }
  }

  String _formatDate(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }
}
