import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import '../../../config/theme.dart';
import '../../../models/tenant.dart';

class TenantInfoTab extends StatelessWidget {
  final Tenant tenant;

  const TenantInfoTab({
    super.key,
    required this.tenant,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo Section
          if (tenant.logo != null) ...[
            const Text(
              'Logo',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                tenant.logo!,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => _buildDefaultLogo(),
              ),
            ),
            const SizedBox(height: 24),
          ],

          // Basic Information
          _buildSection(
            title: 'Informazioni Base',
            children: [
              _buildInfoRow('Nome', tenant.name),
              _buildInfoRow('Dominio', tenant.domainUrl, copyable: true),
              _buildInfoRow('Schema Database', tenant.schemaName, copyable: true),
              _buildInfoRow(
                'Stato',
                tenant.isActive ? 'Attivo' : 'Inattivo',
                valueWidget: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: tenant.isActive
                        ? AppColors.success.withOpacity(0.1)
                        : AppColors.error.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    tenant.isActive ? 'Attivo' : 'Inattivo',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: tenant.isActive ? AppColors.success : AppColors.error,
                    ),
                  ),
                ),
              ),
              _buildInfoRow(
                'Setup Completato',
                tenant.setupCompleted ? 'Sì' : 'No',
                valueWidget: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: tenant.setupCompleted
                        ? AppColors.success.withOpacity(0.1)
                        : AppColors.warning.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        tenant.setupCompleted ? Icons.check_circle : Icons.schedule,
                        size: 16,
                        color: tenant.setupCompleted ? AppColors.success : AppColors.warning,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        tenant.setupCompleted ? 'Completato' : 'In corso',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: tenant.setupCompleted ? AppColors.success : AppColors.warning,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Quota & Subscription
          _buildSection(
            title: 'Quota e Abbonamento',
            children: [
              if (tenant.quotaType != null) ...[
                _buildInfoRow(
                  'Tipo Quota',
                  tenant.quotaType!.name,
                  valueWidget: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.workspace_premium,
                          size: 16,
                          color: AppColors.primary,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          tenant.quotaType!.name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              if (tenant.paidUntil != null)
                _buildInfoRow(
                  'Pagato Fino Al',
                  _formatDate(tenant.paidUntil!),
                  valueWidget: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.event,
                        size: 16,
                        color: _isExpiringSoon(tenant.paidUntil!)
                            ? AppColors.warning
                            : AppColors.textSecondary,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        _formatDate(tenant.paidUntil!),
                        style: TextStyle(
                          fontSize: 14,
                          color: _isExpiringSoon(tenant.paidUntil!)
                              ? AppColors.warning
                              : AppColors.textPrimary,
                          fontWeight: _isExpiringSoon(tenant.paidUntil!)
                              ? FontWeight.w600
                              : FontWeight.normal,
                        ),
                      ),
                      if (_isExpiringSoon(tenant.paidUntil!)) ...[
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.warning.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'In scadenza',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.warning,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              _buildInfoRow(
                'Tiers Attivi',
                '${tenant.activeTiersCount}',
                valueWidget: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.secondary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.stars,
                        size: 16,
                        color: AppColors.secondary,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '${tenant.activeTiersCount} Tiers',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Dates
          _buildSection(
            title: 'Date',
            children: [
              _buildInfoRow(
                'Data Creazione',
                _formatDateTime(tenant.createdOn),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDefaultLogo() {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Icon(
        Icons.business,
        color: AppColors.primary,
        size: 64,
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required List<Widget> children,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(
    String label,
    String value, {
    Widget? valueWidget,
    bool copyable = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 180,
            child: Text(
              label,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: valueWidget ??
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        value,
                        style: AppTextStyles.body.copyWith(
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    if (copyable) ...[
                      const SizedBox(width: 8),
                      IconButton(
                        icon: const Icon(Icons.copy, size: 16),
                        iconSize: 16,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: value));
                        },
                        tooltip: 'Copia',
                      ),
                    ],
                  ],
                ),
          ),
        ],
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

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy HH:mm').format(dateTime);
  }

  bool _isExpiringSoon(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      final now = DateTime.now();
      final difference = date.difference(now).inDays;
      return difference <= 30 && difference >= 0;
    } catch (e) {
      return false;
    }
  }
}
