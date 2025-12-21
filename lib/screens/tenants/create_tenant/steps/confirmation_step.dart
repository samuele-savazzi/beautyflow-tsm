import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../config/theme.dart';
import '../../../../config/predefined_themes.dart';
import '../../../../models/area_request.dart';
import '../../../../models/theme_request.dart';
import '../../../../providers/tenant_provider.dart';

/// Step 5: Conferma - Riepilogo prima del submit
class ConfirmationStep extends StatelessWidget {
  final String name;
  final String domain;
  final String tenantType;
  final String adminEmail;
  final String adminPhone;
  final String adminFirstName;
  final String adminLastName;
  final String quotaTypeCode;
  final String billingType;
  final int billingDuration;
  final List<AreaRequest> areas;
  final String? registeredOffice;
  final ThemeRequest theme;
  final VoidCallback onSubmit;

  const ConfirmationStep({
    super.key,
    required this.name,
    required this.domain,
    required this.tenantType,
    required this.adminEmail,
    required this.adminPhone,
    required this.adminFirstName,
    required this.adminLastName,
    required this.quotaTypeCode,
    required this.billingType,
    required this.billingDuration,
    required this.areas,
    this.registeredOffice,
    required this.theme,
    required this.onSubmit,
  });

  String _getQuotaTypeName() {
    switch (quotaTypeCode) {
      case 'BASIC':
        return 'Piano BASIC';
      case 'PRO':
        return 'Piano PRO';
      case 'ENTERPRISE':
        return 'Piano ENTERPRISE';
      default:
        return quotaTypeCode;
    }
  }

  String _getBillingTypeName() {
    switch (billingType) {
      case 'trial':
        return 'Trial 30 giorni';
      case 'monthly':
        return 'Mensile';
      case 'yearly':
        return 'Annuale';
      default:
        return billingType;
    }
  }

  String _getTenantTypeName() {
    switch (tenantType) {
      case 'HAIRDRESSER':
        return 'Parrucchiere';
      case 'BARBER':
        return 'Barbiere';
      case 'BEAUTICIAN':
        return 'Estetista';
      case 'SPA':
        return 'Spa';
      default:
        return tenantType;
    }
  }

  String _getThemeName() {
    // Trova il tema predefinito corrispondente
    for (var predefinedTheme in predefinedThemes) {
      if (predefinedTheme.themeData.primary == theme.primary &&
          predefinedTheme.themeData.secondary == theme.secondary) {
        return predefinedTheme.name;
      }
    }
    return 'Tema Personalizzato';
  }

  @override
  Widget build(BuildContext context) {
    final tenantProvider = context.watch<TenantProvider>();

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Conferma e Crea',
                  style: AppTextStyles.h3,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Verifica i dati inseriti e conferma la creazione del tenant',
                  style: AppTextStyles.caption,
                ),
                const SizedBox(height: 32),

                // Tenant Info Section
                _buildSection(
                  title: 'Informazioni Tenant',
                  icon: Icons.business,
                  children: [
                    _buildInfoRow('Nome', name),
                    _buildInfoRow('Dominio', '$domain.beautyflow.it'),
                    _buildInfoRow('Tipo Attività', _getTenantTypeName()),
                    if (registeredOffice != null)
                      _buildInfoRow('Sede Legale', registeredOffice!),
                  ],
                ),

                const SizedBox(height: 24),

                // Admin Info Section
                _buildSection(
                  title: 'Amministratore',
                  icon: Icons.person,
                  children: [
                    _buildInfoRow('Nome Completo', '$adminFirstName $adminLastName'),
                    _buildInfoRow('Email', adminEmail),
                    _buildInfoRow('Telefono', adminPhone),
                  ],
                ),

                const SizedBox(height: 24),

                // Quota & Billing Section
                _buildSection(
                  title: 'Piano e Fatturazione',
                  icon: Icons.payment,
                  children: [
                    _buildInfoRow('Piano', _getQuotaTypeName()),
                    _buildInfoRow('Tipo Fatturazione', _getBillingTypeName()),
                  ],
                ),

                const SizedBox(height: 24),

                // Areas Section
                _buildSection(
                  title: 'Aree (${areas.length})',
                  icon: Icons.room,
                  children: areas
                      .asMap()
                      .entries
                      .map((entry) => _buildInfoRow(
                            entry.key == 0 ? 'Area Principale' : 'Area ${entry.key + 1}',
                            entry.value.name,
                          ))
                      .toList(),
                ),

                const SizedBox(height: 24),

                // Theme Section
                _buildSection(
                  title: 'Tema',
                  icon: Icons.palette,
                  children: [
                    _buildInfoRow('Nome Tema', _getThemeName()),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Text('Colore Primario'),
                        const Spacer(),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: _parseColor(theme.primary),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: AppColors.border),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          theme.primary,
                          style: AppTextStyles.bodySmall,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Text('Colore Secondario'),
                        const Spacer(),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: _parseColor(theme.secondary),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: AppColors.border),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          theme.secondary,
                          style: AppTextStyles.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 32),

                // Warning Info
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.warning.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.warning.withOpacity(0.3)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.info_outline, color: AppColors.warning),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Importante',
                              style: AppTextStyles.body.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.warning,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Verrà creato un tenant con schema database dedicato. '
                              'L\'amministratore riceverà una password temporanea via email che dovrà cambiare al primo accesso.',
                              style: AppTextStyles.bodySmall.copyWith(
                                color: AppColors.warning,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Info Box - Tempo di attesa
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.info.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.info.withOpacity(0.3)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.schedule, color: AppColors.info),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'La creazione del tenant può richiedere diversi minuti. '
                          'Attendere senza chiudere questa finestra.',
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.info,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // Submit Button
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: AppColors.surface,
            border: Border(
              top: BorderSide(color: AppColors.border, width: 1),
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: tenantProvider.isLoading ? null : onSubmit,
              icon: tenantProvider.isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : const Icon(Icons.check),
              label: Text(
                tenantProvider.isLoading
                    ? 'Creazione in corso...'
                    : 'Crea Tenant',
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSection({
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 20, color: AppColors.primary),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: AppTextStyles.h3,
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 12),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: AppTextStyles.caption,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: AppTextStyles.body,
            ),
          ),
        ],
      ),
    );
  }

  Color _parseColor(String hex) {
    try {
      return Color(int.parse(hex.replaceFirst('#', '0xFF')));
    } catch (_) {
      return AppColors.primary;
    }
  }
}
