import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../config/theme.dart';
import '../../../models/tenant.dart';

class TenantCard extends StatelessWidget {
  final Tenant tenant;
  final VoidCallback onTap;

  const TenantCard({
    super.key,
    required this.tenant,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              Row(
                children: [
                  // Tenant Logo/Icon
                  if (tenant.logo != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        tenant.logo!,
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => _buildDefaultIcon(),
                      ),
                    )
                  else
                    _buildDefaultIcon(),

                  const SizedBox(width: 16),

                  // Tenant Name & Domain
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tenant.name,
                          style: AppTextStyles.h3,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          tenant.domainUrl,
                          style: AppTextStyles.caption,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
                      color: tenant.isActive
                          ? AppColors.success.withOpacity(0.1)
                          : AppColors.error.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          tenant.isActive ? Icons.check_circle : Icons.cancel,
                          size: 14,
                          color: tenant.isActive ? AppColors.success : AppColors.error,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          tenant.isActive ? 'Attivo' : 'Inattivo',
                          style: AppTextStyles.caption.copyWith(
                            color: tenant.isActive ? AppColors.success : AppColors.error,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),

              // Info Row
              Row(
                children: [
                  // Quota Type
                  if (tenant.quotaType != null) ...[
                    _InfoChip(
                      icon: Icons.workspace_premium,
                      label: tenant.quotaType!.name,
                      color: AppColors.primary,
                    ),
                    const SizedBox(width: 12),
                  ],

                  // Active Tiers Count
                  _InfoChip(
                    icon: Icons.stars,
                    label: '${tenant.activeTiersCount} Tiers',
                    color: AppColors.secondary,
                  ),
                  const SizedBox(width: 12),

                  // Setup Status
                  _InfoChip(
                    icon: tenant.setupCompleted ? Icons.check_circle : Icons.schedule,
                    label: tenant.setupCompleted ? 'Setup Completo' : 'In Setup',
                    color: tenant.setupCompleted ? AppColors.success : AppColors.warning,
                  ),

                  const Spacer(),

                  // Paid Until / Created Date
                  if (tenant.paidUntil != null) ...[
                    Icon(
                      Icons.event,
                      size: 16,
                      color: AppColors.textSecondary,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Scade: ${_formatDate(tenant.paidUntil!)}',
                      style: AppTextStyles.caption,
                    ),
                  ] else ...[
                    Icon(
                      Icons.calendar_today,
                      size: 16,
                      color: AppColors.textSecondary,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Creato: ${_formatDate(tenant.createdOn.toIso8601String())}',
                      style: AppTextStyles.caption,
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDefaultIcon() {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Icon(
        Icons.business,
        color: AppColors.primary,
        size: 28,
      ),
    );
  }

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return DateFormat('dd/MM/yyyy').format(date);
    } catch (e) {
      return dateString;
    }
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _InfoChip({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 6),
          Text(
            label,
            style: AppTextStyles.caption.copyWith(
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
