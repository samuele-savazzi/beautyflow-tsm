import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../config/theme.dart';
import '../../../../providers/quota_type_provider.dart';

/// Step 2: Quota & Billing
class QuotaBillingStep extends StatefulWidget {
  final String initialQuotaTypeCode;
  final String initialBillingType;
  final int initialBillingDuration;
  final Function({
    required String quotaTypeCode,
    required String billingType,
    required int billingDuration,
  }) onNext;

  const QuotaBillingStep({
    super.key,
    required this.initialQuotaTypeCode,
    required this.initialBillingType,
    required this.initialBillingDuration,
    required this.onNext,
  });

  @override
  State<QuotaBillingStep> createState() => _QuotaBillingStepState();
}

class _QuotaBillingStepState extends State<QuotaBillingStep> {
  late String _selectedQuotaType;
  late String _selectedBillingType;
  late int _billingDuration;

  @override
  void initState() {
    super.initState();
    _selectedQuotaType = widget.initialQuotaTypeCode;
    _selectedBillingType = widget.initialBillingType;
    _billingDuration = widget.initialBillingDuration;

    // Load quota types when widget initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<QuotaTypeProvider>().loadQuotaTypes(isActive: true);
    });
  }

  void _handleNext() {
    widget.onNext(
      quotaTypeCode: _selectedQuotaType,
      billingType: _selectedBillingType,
      billingDuration: _billingDuration,
    );
  }

  String _getPrice(QuotaTypeProvider provider) {
    final quotaType = provider.getByCode(_selectedQuotaType);
    if (quotaType == null) return 'N/A';

    if (_selectedBillingType == 'trial') {
      return 'Gratuito (30 giorni)';
    } else if (_selectedBillingType == 'monthly') {
      return '€${quotaType.monthlyPrice ?? '0.00'}/mese';
    } else {
      return '€${quotaType.yearlyPrice ?? '0.00'}/anno';
    }
  }

  @override
  Widget build(BuildContext context) {
    final quotaTypeProvider = context.watch<QuotaTypeProvider>();
    final quotaTypes = quotaTypeProvider.quotaTypes ?? [];

    if (quotaTypeProvider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (quotaTypeProvider.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: AppColors.error),
            const SizedBox(height: 16),
            Text(quotaTypeProvider.error!, style: AppTextStyles.body),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                quotaTypeProvider.loadQuotaTypes(isActive: true);
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Riprova'),
            ),
          ],
        ),
      );
    }

    if (quotaTypes.isEmpty) {
      return const Center(
        child: Text(
          'Nessun piano disponibile',
          style: AppTextStyles.body,
        ),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Piano e Fatturazione',
            style: AppTextStyles.h3,
          ),
          const SizedBox(height: 8),
          const Text(
            'Seleziona il piano commerciale e il tipo di fatturazione',
            style: AppTextStyles.caption,
          ),
          const SizedBox(height: 32),

          // Quota Type Selection
          const Text(
            'Piano Commerciale',
            style: AppTextStyles.body,
          ),
          const SizedBox(height: 16),

          ...quotaTypes.map((quotaType) {
            final isSelected = _selectedQuotaType == quotaType.code;

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _selectedQuotaType = quotaType.code;
                  });
                },
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primary.withOpacity(0.05)
                        : AppColors.surface,
                    border: Border.all(
                      color: isSelected ? AppColors.primary : AppColors.border,
                      width: isSelected ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      // Radio
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isSelected ? AppColors.primary : AppColors.border,
                            width: 2,
                          ),
                        ),
                        child: isSelected
                            ? Center(
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.primary,
                                  ),
                                ),
                              )
                            : null,
                      ),
                      const SizedBox(width: 16),

                      // Info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  quotaType.name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '€${quotaType.monthlyPrice ?? '0.00'}/mese',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ],
                            ),
                            if (quotaType.description != null) ...[
                              const SizedBox(height: 4),
                              Text(
                                quotaType.description!,
                                style: AppTextStyles.caption,
                              ),
                            ],
                            const SizedBox(height: 12),
                            // Features
                            Wrap(
                              spacing: 16,
                              runSpacing: 8,
                              children: [
                                if (quotaType.includedSms != null)
                                  _buildFeature(
                                    Icons.sms,
                                    '${quotaType.includedSms} SMS',
                                  ),
                                if (quotaType.includedOperatorsPerArea != null)
                                  _buildFeature(
                                    Icons.people,
                                    '${quotaType.includedOperatorsPerArea} operatori/area',
                                  ),
                                if (quotaType.includedWorkstationsPerArea != null)
                                  _buildFeature(
                                    Icons.chair_outlined,
                                    '${quotaType.includedWorkstationsPerArea} postazioni/sede',
                                  ),
                                if (quotaType.includedWorkstationsPerOperator != null)
                                  _buildFeature(
                                    Icons.chair,
                                    '${quotaType.includedWorkstationsPerOperator} postazioni/operatore',
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),

          const SizedBox(height: 32),
          const Divider(),
          const SizedBox(height: 24),

          // Billing Type
          const Text(
            'Tipo di Fatturazione',
            style: AppTextStyles.body,
          ),
          const SizedBox(height: 16),

          _buildBillingTypeOption(
            'trial',
            'Trial 30 giorni',
            'Prova gratuita per 30 giorni',
            Icons.timer,
          ),
          const SizedBox(height: 12),
          _buildBillingTypeOption(
            'monthly',
            'Mensile',
            'Fatturazione mensile ricorrente',
            Icons.calendar_month,
          ),
          const SizedBox(height: 12),
          _buildBillingTypeOption(
            'yearly',
            'Annuale',
            'Fatturazione annuale (2 mesi gratis)',
            Icons.calendar_today,
          ),

          const SizedBox(height: 32),

          // Price Preview
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.primary.withOpacity(0.3)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Prezzo',
                      style: AppTextStyles.caption,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _getPrice(quotaTypeProvider),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                if (_selectedBillingType == 'yearly')
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.success,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Risparmi 2 mesi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(height: 32),

          // Next Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _handleNext,
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Avanti'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeature(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: AppColors.textSecondary),
        const SizedBox(width: 4),
        Text(
          text,
          style: AppTextStyles.bodySmall.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }

  Widget _buildBillingTypeOption(
    String value,
    String title,
    String description,
    IconData icon,
  ) {
    final isSelected = _selectedBillingType == value;

    return InkWell(
      onTap: () {
        setState(() {
          _selectedBillingType = value;
        });
      },
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primary.withOpacity(0.05)
              : AppColors.surface,
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.border,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.primary : AppColors.textSecondary,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: isSelected ? AppColors.primary : AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    description,
                    style: AppTextStyles.caption,
                  ),
                ],
              ),
            ),
            if (isSelected)
              const Icon(
                Icons.check_circle,
                color: AppColors.primary,
              ),
          ],
        ),
      ),
    );
  }
}
