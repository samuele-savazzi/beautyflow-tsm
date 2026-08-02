import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';
import '../../../models/tenant.dart';
import '../../../providers/tenant_provider.dart';
import '../../../models/area_detail.dart';
import '../../../models/operator_detail.dart';
import 'upload_logo_widget.dart';
import 'create_area_dialog.dart';
import 'edit_area_limit_dialog.dart';
import 'edit_area_workstation_limit_dialog.dart';
import 'edit_area_location_dialog.dart';
import 'edit_operator_limit_dialog.dart';

class TenantInfoTab extends StatelessWidget {
  final Tenant tenant;

  const TenantInfoTab({
    super.key,
    required this.tenant,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await context.read<TenantProvider>().loadTenantDetail(tenant.id);
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo Section
          _buildSection(
            title: 'Logo e Branding',
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo Display
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Logo',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: tenant.logo != null
                            ? Image.network(
                                tenant.logo!,
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => _buildDefaultLogo(),
                              )
                            : _buildDefaultLogo(),
                      ),
                      const SizedBox(height: 8),
                      OutlinedButton.icon(
                        onPressed: () => _showUploadDialog(
                          context,
                          'logo',
                          tenant.logo,
                        ),
                        icon: const Icon(Icons.upload, size: 16),
                        label: const Text('Carica Logo'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 32),
                  // Favicon Display
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Favicon',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.border),
                        ),
                        child: tenant.favicon != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  tenant.favicon!,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) =>
                                      const Icon(Icons.image, size: 32),
                                ),
                              )
                            : const Icon(
                                Icons.image_outlined,
                                size: 32,
                                color: AppColors.textSecondary,
                              ),
                      ),
                      const SizedBox(height: 8),
                      OutlinedButton.icon(
                        onPressed: () => _showUploadDialog(
                          context,
                          'favicon',
                          tenant.favicon,
                        ),
                        icon: const Icon(Icons.upload, size: 16),
                        label: const Text('Carica'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 32),
                  // Dark Logo Display
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Logo Dark',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColors.border),
                        ),
                        child: tenant.darkLogo != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  tenant.darkLogo!,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) =>
                                      const Icon(Icons.image, color: Colors.white),
                                ),
                              )
                            : const Icon(
                                Icons.image_outlined,
                                color: Colors.white,
                                size: 48,
                              ),
                      ),
                      const SizedBox(height: 8),
                      OutlinedButton.icon(
                        onPressed: () => _showUploadDialog(
                          context,
                          'dark_logo',
                          tenant.darkLogo,
                        ),
                        icon: const Icon(Icons.upload, size: 16),
                        label: const Text('Carica Dark'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 24),

          // SMS Info
          if (tenant.smsInfo != null) ...[
            _buildSection(
              title: 'Situazione SMS',
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${tenant.smsInfo!.smsQuotaUsed} / ${tenant.smsInfo!.smsQuotaLimit} SMS utilizzati',
                          style: AppTextStyles.body,
                        ),
                        Text(
                          '${tenant.smsInfo!.smsPercentageUsed.toStringAsFixed(1)}%',
                          style: AppTextStyles.body.copyWith(
                            fontWeight: FontWeight.bold,
                            color: _getSmsColor(tenant.smsInfo!.smsPercentageUsed),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: tenant.smsInfo!.smsPercentageUsed / 100,
                        minHeight: 8,
                        backgroundColor: AppColors.background,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          _getSmsColor(tenant.smsInfo!.smsPercentageUsed),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Icon(
                          Icons.sms,
                          size: 16,
                          color: AppColors.textSecondary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${tenant.smsInfo!.smsRemaining} SMS rimanenti',
                          style: AppTextStyles.caption,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
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
              if (tenant.type != null)
                _buildInfoRow('Tipo', tenant.type!),
              if (tenant.apiVersion != null)
                _buildInfoRow('Versione API', tenant.apiVersion!),
              if (tenant.registeredOffice != null)
                _buildInfoRow('Sede Legale', tenant.registeredOffice!),
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

          // Areas and Operators
          const SizedBox(height: 24),
          _buildSection(
            title: 'Sedi e Operatori',
            children: [
              if (tenant.areas.isEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'Nessuna sede configurata.',
                    style: AppTextStyles.caption,
                  ),
                ),
              ...tenant.areas.map((area) => _buildAreaCard(context, area)),
              Align(
                alignment: Alignment.centerLeft,
                child: OutlinedButton.icon(
                  onPressed: () => _showCreateAreaDialog(context),
                  icon: const Icon(Icons.add_location_alt_outlined, size: 18),
                  label: const Text('Aggiungi sede'),
                ),
              ),
            ],
          ),
        ],
        ),
      ),
    );
  }

  Widget _buildAreaCard(BuildContext context, AreaDetail area) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Area Header
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(7),
                topRight: Radius.circular(7),
              ),
            ),
            child: Row(
              children: [
                const Icon(Icons.room, size: 20, color: AppColors.primary),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    area.areaName,
                    style: AppTextStyles.body.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Limit info
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: area.currentOperators >= area.maxOperators
                        ? AppColors.error.withOpacity(0.1)
                        : AppColors.success.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${area.currentOperators}/${area.maxOperators}',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: area.currentOperators >= area.maxOperators
                              ? AppColors.error
                              : AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.people, size: 12),
                    ],
                  ),
                ),
                const SizedBox(width: 6),
                // Limite postazioni della sede (distinto da quello per operatore)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: area.currentWorkstations >= area.maxWorkstations
                        ? AppColors.error.withOpacity(0.1)
                        : AppColors.success.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${area.currentWorkstations}/${area.maxWorkstations}',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: area.currentWorkstations >= area.maxWorkstations
                              ? AppColors.error
                              : AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.chair_outlined, size: 12),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                // Edit button
                IconButton(
                  icon: const Icon(Icons.edit, size: 16),
                  iconSize: 16,
                  padding: const EdgeInsets.all(4),
                  constraints: const BoxConstraints(),
                  onPressed: () => _showEditAreaLimitDialog(context, area),
                  tooltip: 'Modifica limite operatori',
                ),
                IconButton(
                  icon: const Icon(Icons.chair_outlined, size: 16),
                  iconSize: 16,
                  padding: const EdgeInsets.all(4),
                  constraints: const BoxConstraints(),
                  onPressed: () =>
                      _showEditAreaWorkstationLimitDialog(context, area),
                  tooltip: 'Modifica limite postazioni',
                ),
                IconButton(
                  icon: const Icon(Icons.place_outlined, size: 16),
                  iconSize: 16,
                  padding: const EdgeInsets.all(4),
                  constraints: const BoxConstraints(),
                  onPressed: () => _showEditAreaLocationDialog(context, area),
                  tooltip: 'Modifica indirizzo',
                ),
              ],
            ),
          ),

          // Indirizzo: e' cio' che il cliente vede scegliendo dove prenotare,
          // quindi va evidenziato quando manca.
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.place_outlined,
                  size: 14,
                  color: area.fullAddress != null
                      ? AppColors.textSecondary
                      : AppColors.warning,
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    area.fullAddress ?? 'Indirizzo non impostato',
                    style: AppTextStyles.caption.copyWith(
                      color: area.fullAddress != null
                          ? AppColors.textSecondary
                          : AppColors.warning,
                      fontStyle: area.fullAddress != null
                          ? FontStyle.normal
                          : FontStyle.italic,
                    ),
                  ),
                ),
                if (area.hasCoordinates)
                  Tooltip(
                    message: '${area.latitude}, ${area.longitude}',
                    child: const Icon(
                      Icons.my_location,
                      size: 14,
                      color: AppColors.textSecondary,
                    ),
                  ),
              ],
            ),
          ),

          // Operators list
          if (area.operators.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Operatori:',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ...area.operators.map((operator) =>
                      _buildOperatorRow(context, operator)),
                ],
              ),
            )
          else
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Nessun operatore assegnato',
                style: AppTextStyles.caption,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildOperatorRow(BuildContext context, OperatorDetail operator) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: AppColors.border.withOpacity(0.5)),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 16,
            backgroundColor: AppColors.primary,
            child: Icon(Icons.person, size: 16, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  operator.fullName,
                  style: AppTextStyles.bodySmall.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  operator.email,
                  style: AppTextStyles.caption,
                ),
              ],
            ),
          ),
          // Workstation info
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            decoration: BoxDecoration(
              color: operator.currentWorkstations >= operator.maxWorkstations
                  ? AppColors.error.withOpacity(0.1)
                  : AppColors.success.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${operator.currentWorkstations}/${operator.maxWorkstations}',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color:
                        operator.currentWorkstations >= operator.maxWorkstations
                            ? AppColors.error
                            : AppColors.textPrimary,
                  ),
                ),
                const SizedBox(width: 3),
                const Icon(Icons.desktop_windows, size: 10),
              ],
            ),
          ),
          if (operator.isCustomLimit) ...[
            const SizedBox(width: 6),
            Tooltip(
              message: 'Limite personalizzato',
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: AppColors.warning.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.star,
                  size: 10,
                  color: AppColors.warning,
                ),
              ),
            ),
          ],
          const SizedBox(width: 6),
          // Edit button
          IconButton(
            icon: const Icon(Icons.edit, size: 14),
            iconSize: 14,
            padding: const EdgeInsets.all(4),
            constraints: const BoxConstraints(),
            onPressed: () => _showEditOperatorLimitDialog(context, operator),
            tooltip: 'Modifica limite workstation',
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

  Color _getSmsColor(double percentage) {
    if (percentage >= 90) return AppColors.error;
    if (percentage >= 75) return AppColors.warning;
    return AppColors.success;
  }

  void _showUploadDialog(
    BuildContext context,
    String uploadType,
    String? currentUrl,
  ) async {
    final tenantProvider = context.read<TenantProvider>();

    final result = await showDialog<bool>(
      context: context,
      builder: (_) => UploadLogoWidget(
        tenantId: tenant.id,
        currentLogoUrl: currentUrl,
        uploadType: uploadType,
        onUpload: (tenantId, filePath, uploadType) async {
          return await tenantProvider.uploadLogo(
            tenantId,
            filePath,
            uploadType,
          );
        },
      ),
    );

    // Refresh tenant detail if upload was successful
    if (result == true && context.mounted) {
      tenantProvider.loadTenantDetail(tenant.id);
    }
  }

  void _showEditAreaLimitDialog(BuildContext context, AreaDetail area) async {
    final tenantProvider = context.read<TenantProvider>();

    final result = await showDialog<bool>(
      context: context,
      builder: (_) => EditAreaLimitDialog(
        tenantId: tenant.id,
        area: area,
      ),
    );

    // Reload tenant detail after dialog closes if successful
    if (result == true && context.mounted) {
      await tenantProvider.loadTenantDetail(tenant.id);
    }
  }

  void _showEditAreaWorkstationLimitDialog(
    BuildContext context,
    AreaDetail area,
  ) async {
    final tenantProvider = context.read<TenantProvider>();

    final result = await showDialog<bool>(
      context: context,
      builder: (_) => EditAreaWorkstationLimitDialog(
        tenantId: tenant.id,
        area: area,
      ),
    );

    // Reload tenant detail after dialog closes if successful
    if (result == true && context.mounted) {
      await tenantProvider.loadTenantDetail(tenant.id);
    }
  }

  void _showEditAreaLocationDialog(BuildContext context, AreaDetail area) async {
    final tenantProvider = context.read<TenantProvider>();

    final result = await showDialog<bool>(
      context: context,
      builder: (_) => EditAreaLocationDialog(
        tenantId: tenant.id,
        area: area,
      ),
    );

    if (result == true && context.mounted) {
      await tenantProvider.loadTenantDetail(tenant.id);
    }
  }

  void _showCreateAreaDialog(BuildContext context) async {
    final tenantProvider = context.read<TenantProvider>();

    final result = await showDialog<bool>(
      context: context,
      builder: (_) => CreateAreaDialog(
        tenantId: tenant.id,
        tenantName: tenant.name,
      ),
    );

    if (result == true && context.mounted) {
      await tenantProvider.loadTenantDetail(tenant.id);
    }
  }

  void _showEditOperatorLimitDialog(
    BuildContext context,
    OperatorDetail operator,
  ) async {
    final tenantProvider = context.read<TenantProvider>();

    final result = await showDialog<bool>(
      context: context,
      builder: (_) => EditOperatorLimitDialog(
        tenantId: tenant.id,
        operator: operator,
      ),
    );

    // Reload tenant detail after dialog closes if successful
    if (result == true && context.mounted) {
      await tenantProvider.loadTenantDetail(tenant.id);
    }
  }
}
