import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../../../config/theme.dart';
import '../../../models/tenant.dart';
import '../../../providers/payment_provider.dart';
import '../../../providers/auth_provider.dart';
import '../../../utils/file_utils.dart';
import 'recharge_sms_dialog.dart';
import 'create_payment_dialog.dart';
import 'edit_payment_dialog.dart';

class TenantPaymentsTab extends StatefulWidget {
  final Tenant tenant;

  const TenantPaymentsTab({
    super.key,
    required this.tenant,
  });

  @override
  State<TenantPaymentsTab> createState() => _TenantPaymentsTabState();
}

class _TenantPaymentsTabState extends State<TenantPaymentsTab> {
  String? _transactionTypeFilter;
  String? _statusFilter;

  final List<Map<String, String>> _transactionTypes = [
    {'value': '', 'label': 'Tutti'},
    {'value': 'renew_plan', 'label': 'Rinnovo Piano'},
    {'value': 'recharge_sms', 'label': 'Ricarica SMS'},
    {'value': 'upgrade_plan', 'label': 'Upgrade Piano'},
    {'value': 'downgrade_plan', 'label': 'Downgrade Piano'},
    {'value': 'purchase_operators', 'label': 'Acquisto Operatori'},
    {'value': 'purchase_workstations', 'label': 'Acquisto Workstation'},
    {'value': 'refund', 'label': 'Rimborso'},
  ];

  final List<Map<String, String>> _statuses = [
    {'value': '', 'label': 'Tutti'},
    {'value': 'pending', 'label': 'In Attesa'},
    {'value': 'completed', 'label': 'Completato'},
    {'value': 'failed', 'label': 'Fallito'},
    {'value': 'cancelled', 'label': 'Annullato'},
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PaymentProvider>().loadTenantPayments(widget.tenant.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final paymentProvider = context.watch<PaymentProvider>();
    final authProvider = context.watch<AuthProvider>();
    final user = authProvider.currentUser;
    final payments = paymentProvider.payments;

    return Column(
      children: [
        // Action Bar
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
          child: Column(
            children: [
              // Buttons Row
              Row(
                children: [
                  // Ricarica SMS button (prominente)
                  if (user?.canCreate ?? false)
                    ElevatedButton.icon(
                      onPressed: () async {
                        final result = await showDialog<bool>(
                          context: context,
                          builder: (context) => RechargeSmsDialog(
                            tenant: widget.tenant,
                          ),
                        );

                        if (result == true && mounted) {
                          // Reload payments list
                          context.read<PaymentProvider>().loadTenantPayments(
                                widget.tenant.id,
                                refresh: true,
                              );
                        }
                      },
                      icon: const Icon(Icons.sms),
                      label: const Text('Ricarica SMS'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                    ),

                  const SizedBox(width: 12),

                  // Add Payment button
                  if (user?.canCreate ?? false)
                    OutlinedButton.icon(
                      onPressed: () async {
                        final result = await showDialog<bool>(
                          context: context,
                          builder: (context) => CreatePaymentDialog(
                            tenantId: widget.tenant.id,
                            tenantName: widget.tenant.name,
                          ),
                        );

                        if (result == true && mounted) {
                          context.read<PaymentProvider>().loadTenantPayments(
                                widget.tenant.id,
                                refresh: true,
                              );
                        }
                      },
                      icon: const Icon(Icons.add),
                      label: const Text('Aggiungi Pagamento'),
                    ),

                  const Spacer(),

                  // Pagination info
                  if (payments != null && payments.isNotEmpty)
                    Text(
                      'Totale: ${paymentProvider.count ?? 0} transazioni',
                      style: AppTextStyles.caption,
                    ),
                ],
              ),

              const SizedBox(height: 16),

              // Filters Row
              Row(
                children: [
                  const Text(
                    'Filtri:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Transaction Type Filter
                  Flexible(
                    flex: 2,
                    child: DropdownButtonFormField<String>(
                      initialValue: _transactionTypeFilter ?? '',
                      decoration: const InputDecoration(
                        labelText: 'Filtra per tipo',
                        prefixIcon: Icon(Icons.category, size: 20),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        isDense: true,
                      ),
                      items: _transactionTypes.map((type) {
                        return DropdownMenuItem(
                          value: type['value'],
                          child: Text(
                            type['label']!,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _transactionTypeFilter = value?.isEmpty == true ? null : value;
                        });
                        paymentProvider.loadTenantPayments(
                          widget.tenant.id,
                          transactionType: _transactionTypeFilter,
                          refresh: true,
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 12),

                  // Status Filter
                  Flexible(
                    flex: 1,
                    child: DropdownButtonFormField<String>(
                      initialValue: _statusFilter ?? '',
                      decoration: const InputDecoration(
                        labelText: 'Filtra per stato',
                        prefixIcon: Icon(Icons.check_circle, size: 20),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        isDense: true,
                      ),
                      items: _statuses.map((status) {
                        return DropdownMenuItem(
                          value: status['value'],
                          child: Text(
                            status['label']!,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _statusFilter = value?.isEmpty == true ? null : value;
                        });
                        paymentProvider.loadTenantPayments(
                          widget.tenant.id,
                          status: _statusFilter,
                          refresh: true,
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Clear filters button
                  if (_transactionTypeFilter != null || _statusFilter != null)
                    TextButton.icon(
                      onPressed: () {
                        setState(() {
                          _transactionTypeFilter = null;
                          _statusFilter = null;
                        });
                        paymentProvider.clearFilters(widget.tenant.id);
                      },
                      icon: const Icon(Icons.clear, size: 16),
                      label: const Text('Cancella'),
                    ),
                ],
              ),
            ],
          ),
        ),

        // Payments List
        Expanded(
          child: paymentProvider.isLoading && payments == null
              ? const Center(child: CircularProgressIndicator())
              : paymentProvider.error != null
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
                            paymentProvider.error!,
                            style: AppTextStyles.body,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton.icon(
                            onPressed: () {
                              paymentProvider.loadTenantPayments(widget.tenant.id);
                            },
                            icon: const Icon(Icons.refresh),
                            label: const Text('Riprova'),
                          ),
                        ],
                      ),
                    )
                  : payments == null || payments.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.receipt_long_outlined,
                                size: 64,
                                color: AppColors.textSecondary.withOpacity(0.5),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Nessuna transazione',
                                style: AppTextStyles.h3,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Crea la prima transazione per questo tenant',
                                style: AppTextStyles.caption,
                              ),
                            ],
                          ),
                        )
                      : RefreshIndicator(
                          onRefresh: () => paymentProvider.loadTenantPayments(
                            widget.tenant.id,
                            refresh: true,
                          ),
                          child: ListView.builder(
                            padding: const EdgeInsets.all(24),
                            itemCount: payments.length,
                            itemBuilder: (context, index) {
                              final payment = payments[index];
                              return _buildPaymentCard(context, payment, user);
                            },
                          ),
                        ),
        ),

        // Pagination
        if (payments != null && payments.isNotEmpty)
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.surface,
              border: Border(
                top: BorderSide(color: AppColors.border, width: 1),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pagina ${paymentProvider.currentPage} di ${paymentProvider.totalPages ?? 1}',
                  style: AppTextStyles.caption,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left),
                      onPressed: paymentProvider.hasPreviousPage
                          ? () => paymentProvider.loadPreviousPage(widget.tenant.id)
                          : null,
                    ),
                    IconButton(
                      icon: const Icon(Icons.chevron_right),
                      onPressed: paymentProvider.hasNextPage
                          ? () => paymentProvider.loadNextPage(widget.tenant.id)
                          : null,
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildPaymentCard(BuildContext context, Map<String, dynamic> payment, dynamic user) {
    final transactionType = payment['transaction_type']?.toString() ?? '';
    final status = payment['status']?.toString() ?? '';
    final amount = payment['amount']?.toString() ?? '0.00';
    final description = payment['description']?.toString() ?? '';
    final createdAt = payment['created_at']?.toString() ?? '';

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
                // Transaction Type Badge
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: _getTransactionTypeColor(transactionType).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      payment['transaction_type_display']?.toString() ?? transactionType,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: _getTransactionTypeColor(transactionType),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(width: 8),

                // Status Badge
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: _getStatusColor(status).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          _getStatusIcon(status),
                          size: 14,
                          color: _getStatusColor(status),
                        ),
                        const SizedBox(width: 6),
                        Flexible(
                          child: Text(
                            payment['status_display']?.toString() ?? status,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: _getStatusColor(status),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                // Amount
                Text(
                  '€$amount',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),

            if (description.isNotEmpty) ...[
              const SizedBox(height: 12),
              Text(
                description,
                style: AppTextStyles.body,
              ),
            ],

            // Specific Details
            if (_hasSpecificDetails(payment)) ...[
              const SizedBox(height: 12),
              Wrap(
                spacing: 16,
                runSpacing: 8,
                children: [
                  if (payment['sms_quantity'] != null)
                    _buildDetailChip(
                      Icons.sms,
                      '${payment['sms_quantity']} SMS',
                    ),
                  if (payment['operators_quantity'] != null)
                    _buildDetailChip(
                      Icons.people,
                      '${payment['operators_quantity']} Operatori',
                    ),
                  if (payment['workstations_quantity'] != null)
                    _buildDetailChip(
                      Icons.desktop_windows,
                      '${payment['workstations_quantity']} Workstation',
                    ),
                  if (payment['quota_type_name'] != null)
                    _buildDetailChip(
                      Icons.workspace_premium,
                      payment['quota_type_name'].toString(),
                    ),
                ],
              ),
            ],

            // Attachments Section
            if (payment['attachments'] != null &&
                payment['attachments'] is List &&
                (payment['attachments'] as List).isNotEmpty) ...[
              const SizedBox(height: 16),
              Row(
                children: [
                  const Icon(
                    Icons.attach_file,
                    size: 16,
                    color: AppColors.textSecondary,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Allegati (${(payment['attachments'] as List).length}):',
                    style: AppTextStyles.bodySmall.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: (payment['attachments'] as List)
                    .map((att) => _buildAttachmentChip(context, att))
                    .toList(),
              ),
            ],

            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 12),

            // Footer Row
            Row(
              children: [
                Icon(
                  Icons.event,
                  size: 16,
                  color: AppColors.textSecondary,
                ),
                const SizedBox(width: 6),
                Text(
                  'Creato: ${_formatDate(createdAt)}',
                  style: AppTextStyles.caption,
                ),
                if (payment['invoice_number'] != null) ...[
                  const SizedBox(width: 16),
                  Icon(
                    Icons.receipt,
                    size: 16,
                    color: AppColors.textSecondary,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    payment['invoice_number'].toString(),
                    style: AppTextStyles.caption,
                  ),
                ],
                const Spacer(),

                // Edit button
                if (user?.canEdit ?? false)
                  TextButton.icon(
                    onPressed: () => _showEditDialog(context, payment),
                    icon: const Icon(Icons.edit, size: 16),
                    label: const Text('Modifica'),
                  ),

                // Delete button
                if (user?.canDelete ?? false) ...[
                  const SizedBox(width: 8),
                  TextButton.icon(
                    onPressed: () => _showDeleteConfirmation(context, payment),
                    icon: const Icon(Icons.delete, size: 16),
                    label: const Text('Elimina'),
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.error,
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailChip(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: AppColors.textSecondary),
          const SizedBox(width: 6),
          Text(label, style: AppTextStyles.caption),
        ],
      ),
    );
  }

  bool _hasSpecificDetails(Map<String, dynamic> payment) {
    return payment['sms_quantity'] != null ||
        payment['operators_quantity'] != null ||
        payment['workstations_quantity'] != null ||
        payment['quota_type_name'] != null;
  }

  Color _getTransactionTypeColor(String type) {
    switch (type) {
      case 'recharge_sms':
        return Colors.blue;
      case 'renew_plan':
      case 'upgrade_plan':
        return AppColors.success;
      case 'downgrade_plan':
        return AppColors.warning;
      case 'refund':
        return AppColors.error;
      default:
        return AppColors.primary;
    }
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'completed':
        return AppColors.success;
      case 'pending':
        return AppColors.warning;
      case 'failed':
      case 'cancelled':
        return AppColors.error;
      default:
        return AppColors.textSecondary;
    }
  }

  IconData _getStatusIcon(String status) {
    switch (status) {
      case 'completed':
        return Icons.check_circle;
      case 'pending':
        return Icons.schedule;
      case 'failed':
        return Icons.error;
      case 'cancelled':
        return Icons.cancel;
      default:
        return Icons.info;
    }
  }

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return DateFormat('dd/MM/yyyy HH:mm').format(date);
    } catch (e) {
      return dateString;
    }
  }

  Widget _buildAttachmentChip(BuildContext context, Map<String, dynamic> attachment) {
    final fileName = attachment['file_name']?.toString() ?? 'File';
    final fileSize = attachment['file_size'] as int? ?? 0;
    final contentType = attachment['content_type']?.toString();
    final fileUrl = attachment['file_url']?.toString();

    return InkWell(
      onTap: fileUrl != null ? () => _openAttachment(context, fileUrl, fileName) : null,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: FileUtils.getFileColor(contentType).withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: FileUtils.getFileColor(contentType).withOpacity(0.3),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              FileUtils.getFileIcon(contentType),
              size: 16,
              color: FileUtils.getFileColor(contentType),
            ),
            const SizedBox(width: 8),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    FileUtils.shortenFilename(fileName, maxLength: 25),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    FileUtils.formatFileSize(fileSize),
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              Icons.download,
              size: 14,
              color: FileUtils.getFileColor(contentType),
            ),
          ],
        ),
      ),
    );
  }

  void _openAttachment(BuildContext context, String url, String fileName) async {
    await FileUtils.openUrl(url, context: context);
  }

  void _showEditDialog(BuildContext context, Map<String, dynamic> payment) async {
    // Save provider reference before dialog
    final paymentProvider = context.read<PaymentProvider>();

    final result = await showDialog<bool>(
      context: context,
      builder: (context) => EditPaymentDialog(
        tenantId: widget.tenant.id,
        payment: payment,
      ),
    );

    if (result == true && mounted) {
      paymentProvider.loadTenantPayments(widget.tenant.id);
    }
  }

  void _showDeleteConfirmation(BuildContext context, Map<String, dynamic> payment) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Conferma Eliminazione'),
        content: Text(
          'Sei sicuro di voler eliminare questa transazione?\n\n'
          'Tipo: ${payment['transaction_type_display']}\n'
          'Importo: €${payment['amount']}',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annulla'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);

              final success = await context.read<PaymentProvider>().deletePayment(
                    tenantId: widget.tenant.id,
                    paymentId: payment['id'],
                  );

              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      success
                          ? 'Transazione eliminata con successo'
                          : 'Errore durante l\'eliminazione',
                    ),
                    backgroundColor: success ? AppColors.success : AppColors.error,
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
            ),
            child: const Text('Elimina'),
          ),
        ],
      ),
    );
  }
}
