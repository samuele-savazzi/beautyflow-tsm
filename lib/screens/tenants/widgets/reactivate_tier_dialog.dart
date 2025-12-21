import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';
import '../../../models/tier.dart';
import '../../../providers/tier_provider.dart';

/// Dialog per riattivare un tier precedentemente disattivato
class ReactivateTierDialog extends StatefulWidget {
  final int tenantId;
  final String tenantName;
  final Tier tier;

  const ReactivateTierDialog({
    super.key,
    required this.tenantId,
    required this.tenantName,
    required this.tier,
  });

  @override
  State<ReactivateTierDialog> createState() => _ReactivateTierDialogState();
}

class _ReactivateTierDialogState extends State<ReactivateTierDialog> {
  final _formKey = GlobalKey<FormState>();

  bool _isTrial = false;
  String _billingCycle = 'monthly';
  int? _customUsageLimit;
  bool _isActivating = false;

  Future<void> _reactivateTier() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isActivating = true;
    });

    try {
      final tierProvider = context.read<TierProvider>();
      final success = await tierProvider.activateTierForTenant(
        tenantId: widget.tenantId,
        tierId: widget.tier.id,
        isTrial: _isTrial,
        billingCycle: _billingCycle,
        customUsageLimit: _customUsageLimit,
      );

      if (mounted) {
        if (success) {
          Navigator.of(context).pop(true);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                tierProvider.error ?? 'Errore durante la riattivazione del tier',
              ),
              backgroundColor: AppColors.error,
            ),
          );
        }
      }
    } finally {
      if (mounted) {
        setState(() {
          _isActivating = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600, maxHeight: 700),
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.surface,
                border: Border(
                  bottom: BorderSide(color: AppColors.border, width: 1),
                ),
              ),
              child: Row(
                children: [
                  const Icon(Icons.refresh, color: AppColors.success),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Riattiva Tier',
                          style: AppTextStyles.h3,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Per: ${widget.tenantName}',
                          style: AppTextStyles.caption,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Tier Info (read-only)
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.stars, color: AppColors.primary),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.tier.name,
                                          style: AppTextStyles.h3,
                                        ),
                                        if (widget.tier.category.isNotEmpty)
                                          Text(
                                            widget.tier.category,
                                            style: AppTextStyles.caption,
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              if (widget.tier.description.isNotEmpty) ...[
                                const SizedBox(height: 12),
                                Text(
                                  widget.tier.description,
                                  style: AppTextStyles.bodySmall,
                                ),
                              ],
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.money,
                                    size: 16,
                                    color: AppColors.textSecondary,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Mensile: €${widget.tier.monthlyPrice}  |  Annuale: €${widget.tier.yearlyPrice}',
                                    style: AppTextStyles.caption,
                                  ),
                                ],
                              ),
                              if (widget.tier.hasUsageLimit) ...[
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.analytics,
                                      size: 16,
                                      color: AppColors.textSecondary,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Limite: ${widget.tier.usageLimit} ${widget.tier.usageUnit}',
                                      style: AppTextStyles.caption,
                                    ),
                                  ],
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Trial toggle (solo se tier supporta trial)
                      if (widget.tier.allowTrial)
                        SwitchListTile(
                          title: const Text('Attiva come Trial'),
                          subtitle: Text(
                            'Periodo trial: ${widget.tier.trialDays} giorni',
                          ),
                          value: _isTrial,
                          onChanged: (value) {
                            setState(() {
                              _isTrial = value;
                            });
                          },
                        ),

                      // Billing cycle (solo se non trial)
                      if (!_isTrial) ...[
                        const SizedBox(height: 16),
                        DropdownButtonFormField<String>(
                          value: _billingCycle,
                          decoration: const InputDecoration(
                            labelText: 'Ciclo di Fatturazione',
                            prefixIcon: Icon(Icons.calendar_month),
                          ),
                          items: const [
                            DropdownMenuItem(
                              value: 'monthly',
                              child: Text('Mensile'),
                            ),
                            DropdownMenuItem(
                              value: 'yearly',
                              child: Text('Annuale'),
                            ),
                          ],
                          onChanged: (value) {
                            if (value != null) {
                              setState(() {
                                _billingCycle = value;
                              });
                            }
                          },
                        ),
                      ],

                      // Custom usage limit (opzionale, solo se tier ha limite)
                      if (widget.tier.hasUsageLimit) ...[
                        const SizedBox(height: 16),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Limite Personalizzato (opzionale)',
                            hintText: 'Default: ${widget.tier.usageLimit}',
                            prefixIcon: const Icon(Icons.settings),
                          ),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            if (value.isEmpty) {
                              _customUsageLimit = null;
                            } else {
                              _customUsageLimit = int.tryParse(value);
                            }
                          },
                          validator: (value) {
                            if (value != null && value.isNotEmpty) {
                              final limit = int.tryParse(value);
                              if (limit == null || limit < 1) {
                                return 'Inserisci un numero valido';
                              }
                            }
                            return null;
                          },
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),

            // Footer
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.surface,
                border: Border(
                  top: BorderSide(color: AppColors.border, width: 1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: _isActivating ? null : () => Navigator.of(context).pop(),
                    child: const Text('Annulla'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: _isActivating ? null : _reactivateTier,
                    icon: _isActivating
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          )
                        : const Icon(Icons.check),
                    label: Text(_isActivating ? 'Riattivazione...' : 'Riattiva Tier'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.success,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
