import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../../config/theme.dart';
import '../../providers/dashboard_provider.dart';
import '../../providers/audit_log_provider.dart';
import '../layout/main_layout.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String? _selectedAction;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadData();
    });
  }

  Future<void> _loadData() async {
    final dashboardProvider = context.read<DashboardProvider>();
    final auditLogProvider = context.read<AuditLogProvider>();

    await Future.wait([
      dashboardProvider.loadDashboardStats(),
      auditLogProvider.loadAuditLogs(pageSize: 20, page: 1, refresh: true),
    ]);
  }

  Future<void> _loadNextPage() async {
    final auditLogProvider = context.read<AuditLogProvider>();
    if (auditLogProvider.hasNextPage && !auditLogProvider.isLoading) {
      await auditLogProvider.loadAuditLogs(
        page: auditLogProvider.currentPage + 1,
      );
    }
  }

  Future<void> _loadPreviousPage() async {
    final auditLogProvider = context.read<AuditLogProvider>();
    if (auditLogProvider.hasPreviousPage && !auditLogProvider.isLoading) {
      await auditLogProvider.loadAuditLogs(
        page: auditLogProvider.currentPage - 1,
      );
    }
  }

  Future<void> _applyFilter(String? action) async {
    setState(() {
      _selectedAction = action;
    });

    final auditLogProvider = context.read<AuditLogProvider>();
    await auditLogProvider.loadAuditLogs(
      pageSize: 20,
      page: 1,
      action: action,
      refresh: true,
    );
  }

  Future<void> _clearFilters() async {
    setState(() {
      _selectedAction = null;
    });

    final auditLogProvider = context.read<AuditLogProvider>();
    await auditLogProvider.clearFilters();
  }

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = context.watch<DashboardProvider>();
    final auditLogProvider = context.watch<AuditLogProvider>();

    return MainLayout(
      title: 'Dashboard',
      child: RefreshIndicator(
        onRefresh: _loadData,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Stats Cards Row
              Row(
                children: [
                  Expanded(
                    child: _StatCard(
                      icon: Icons.business,
                      label: 'Tenants Totali',
                      value: dashboardProvider.isLoading
                          ? '...'
                          : '${dashboardProvider.totalTenants}',
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _StatCard(
                      icon: Icons.check_circle,
                      label: 'Tenants Attivi',
                      value: dashboardProvider.isLoading
                          ? '...'
                          : '${dashboardProvider.activeTenants}',
                      color: AppColors.success,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Audit Logs Section
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header with title and pagination info
                      Row(
                        children: [
                          const Icon(
                            Icons.history,
                            size: 20,
                            color: AppColors.primary,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Audit Logs',
                            style: AppTextStyles.h3,
                          ),
                          const SizedBox(width: 12),
                          if (auditLogProvider.count != null)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.primary.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                '${auditLogProvider.count} totali',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          const Spacer(),
                          if (auditLogProvider.isLoading)
                            const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Divider(),
                      const SizedBox(height: 16),

                      // Filters
                      _buildFilters(),
                      const SizedBox(height: 16),

                      // Audit logs list or placeholder
                      if (auditLogProvider.error != null)
                        _buildErrorWidget(auditLogProvider.error!)
                      else if (auditLogProvider.auditLogs == null ||
                          auditLogProvider.auditLogs!.isEmpty)
                        _buildEmptyWidget()
                      else
                        _buildAuditLogsList(auditLogProvider.auditLogs!),

                      // Pagination controls
                      if (auditLogProvider.auditLogs != null &&
                          auditLogProvider.auditLogs!.isNotEmpty) ...[
                        const SizedBox(height: 16),
                        const Divider(),
                        const SizedBox(height: 16),
                        _buildPaginationControls(auditLogProvider),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilters() {
    final actions = [
      {'value': null, 'label': 'Tutte le azioni'},
      {'value': 'create_transaction', 'label': 'Creazione Transazione'},
      {'value': 'update_transaction', 'label': 'Modifica Transazione'},
      {'value': 'delete_transaction', 'label': 'Eliminazione Transazione'},
      {'value': 'create_attachment', 'label': 'Upload Allegato'},
      {'value': 'delete_attachment', 'label': 'Eliminazione Allegato'},
      {'value': 'recharge_sms', 'label': 'Ricarica SMS'},
      {'value': 'activate_tier', 'label': 'Attivazione Tier'},
      {'value': 'deactivate_tier', 'label': 'Disattivazione Tier'},
      {'value': 'update_tenant', 'label': 'Modifica Tenant'},
    ];

    return Row(
      children: [
        // Action filter
        Flexible(
          flex: 2,
          child: DropdownButtonFormField<String?>(
            value: _selectedAction,
            decoration: const InputDecoration(
              labelText: 'Filtra per azione',
              prefixIcon: Icon(Icons.filter_list, size: 20),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
            items: actions.map((action) {
              return DropdownMenuItem<String?>(
                value: action['value'],
                child: Text(
                  action['label']!,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14),
                ),
              );
            }).toList(),
            onChanged: (value) => _applyFilter(value),
          ),
        ),
        const SizedBox(width: 12),

        // Clear filters button
        if (_selectedAction != null)
          OutlinedButton.icon(
            onPressed: _clearFilters,
            icon: const Icon(Icons.clear, size: 16),
            label: const Text('Cancella'),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
          ),
      ],
    );
  }

  Widget _buildAuditLogsList(List<dynamic> auditLogs) {
    return Column(
      children: auditLogs.map((log) => _buildAuditLogItem(log)).toList(),
    );
  }

  Widget _buildAuditLogItem(Map<String, dynamic> log) {
    final admin = log['admin'] as Map<String, dynamic>?;
    final tenant = log['tenant'] as Map<String, dynamic>?;
    final action = log['action_display']?.toString() ?? log['action']?.toString() ?? 'Azione';
    final timestamp = log['timestamp']?.toString();
    final wasImpersonating = log['was_impersonating'] as bool? ?? false;

    DateTime? dateTime;
    if (timestamp != null) {
      try {
        dateTime = DateTime.parse(timestamp);
      } catch (e) {
        // Ignore parse error
      }
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          // Icon
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: _getActionColor(log['action']?.toString()).withOpacity(0.1),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(
              _getActionIcon(log['action']?.toString()),
              color: _getActionColor(log['action']?.toString()),
              size: 20,
            ),
          ),
          const SizedBox(width: 16),

          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        action,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    if (wasImpersonating)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: AppColors.warning.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'IMPERSONATING',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: AppColors.warning,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    if (admin != null) ...[
                      Icon(Icons.person, size: 12, color: Colors.grey[600]),
                      const SizedBox(width: 4),
                      Text(
                        '${admin['first_name'] ?? ''} ${admin['last_name'] ?? ''}'.trim(),
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                      if (tenant != null) ...[
                        const SizedBox(width: 8),
                        const Text('•', style: TextStyle(color: Colors.grey)),
                        const SizedBox(width: 8),
                      ],
                    ],
                    if (tenant != null) ...[
                      Icon(Icons.business, size: 12, color: Colors.grey[600]),
                      const SizedBox(width: 4),
                      Text(
                        tenant['name']?.toString() ?? 'N/A',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                    if (dateTime != null) ...[
                      const Spacer(),
                      Text(
                        _formatTimestamp(dateTime),
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyWidget() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Icon(
              Icons.inbox,
              size: 48,
              color: AppColors.textSecondary.withOpacity(0.5),
            ),
            const SizedBox(height: 12),
            Text(
              'Nessun audit log recente',
              style: AppTextStyles.caption,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorWidget(String error) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Icon(
              Icons.error_outline,
              size: 48,
              color: AppColors.error,
            ),
            const SizedBox(height: 12),
            Text(
              error,
              style: AppTextStyles.caption.copyWith(color: AppColors.error),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  IconData _getActionIcon(String? action) {
    if (action == null) return Icons.info;

    if (action.contains('create')) return Icons.add_circle;
    if (action.contains('update') || action.contains('modify')) return Icons.edit;
    if (action.contains('delete')) return Icons.delete;
    if (action.contains('activate')) return Icons.check_circle;
    if (action.contains('deactivate')) return Icons.cancel;
    if (action.contains('recharge')) return Icons.add_shopping_cart;

    return Icons.info;
  }

  Color _getActionColor(String? action) {
    if (action == null) return AppColors.textSecondary;

    if (action.contains('create')) return AppColors.success;
    if (action.contains('update') || action.contains('modify')) return AppColors.primary;
    if (action.contains('delete')) return AppColors.error;
    if (action.contains('activate')) return AppColors.success;
    if (action.contains('deactivate')) return AppColors.warning;
    if (action.contains('recharge')) return AppColors.secondary;

    return AppColors.textSecondary;
  }

  String _formatTimestamp(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inMinutes < 1) {
      return 'Ora';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes}m fa';
    } else if (difference.inDays < 1) {
      return '${difference.inHours}h fa';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}g fa';
    } else {
      return DateFormat('dd/MM/yyyy').format(dateTime);
    }
  }

  Widget _buildPaginationControls(AuditLogProvider provider) {
    final currentPage = provider.currentPage;
    final totalCount = provider.count ?? 0;
    final pageSize = 20; // Same as in _loadData

    // Calculate total pages
    final totalPages = (totalCount / pageSize).ceil();

    // Calculate range of items shown
    final startItem = totalCount > 0 ? (currentPage - 1) * pageSize + 1 : 0;
    final endItem = (currentPage * pageSize).clamp(0, totalCount);

    return Row(
      children: [
        // Page info
        Text(
          'Pagina $currentPage di $totalPages',
          style: AppTextStyles.caption,
        ),
        const SizedBox(width: 16),
        Text(
          'Visualizzati $startItem-$endItem di $totalCount',
          style: AppTextStyles.caption.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
        const Spacer(),

        // Previous button
        TextButton.icon(
          onPressed: provider.hasPreviousPage && !provider.isLoading
              ? _loadPreviousPage
              : null,
          icon: const Icon(Icons.chevron_left, size: 18),
          label: const Text('Precedente'),
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primary,
          ),
        ),
        const SizedBox(width: 8),

        // Next button
        TextButton.icon(
          onPressed: provider.hasNextPage && !provider.isLoading
              ? _loadNextPage
              : null,
          icon: const Icon(Icons.chevron_right, size: 18),
          label: const Text('Successivo'),
          iconAlignment: IconAlignment.end,
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primary,
          ),
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    icon,
                    color: color,
                    size: 24,
                  ),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              value,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: AppTextStyles.caption,
            ),
          ],
        ),
      ),
    );
  }
}
