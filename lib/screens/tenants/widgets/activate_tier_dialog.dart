import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';
import '../../../models/tier.dart';
import '../../../providers/tier_provider.dart';

/// Dialog per attivare un tier su un tenant
class ActivateTierDialog extends StatefulWidget {
  final int tenantId;
  final String tenantName;
  final List<int> activeTierIds; // IDs tier già attivi (per filtrarli)

  const ActivateTierDialog({
    super.key,
    required this.tenantId,
    required this.tenantName,
    required this.activeTierIds,
  });

  @override
  State<ActivateTierDialog> createState() => _ActivateTierDialogState();
}

class _ActivateTierDialogState extends State<ActivateTierDialog> {
  final _formKey = GlobalKey<FormState>();

  List<Tier> _availableTiers = [];
  bool _isLoadingTiers = true;
  Tier? _selectedTier;
  bool _isTrial = false;
  String _billingCycle = 'monthly';
  int? _customUsageLimit;
  bool _isActivating = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadAvailableTiers();
    });
  }

  Future<void> _loadAvailableTiers() async {
    setState(() {
      _isLoadingTiers = true;
    });

    try {
      final tierProvider = context.read<TierProvider>();
      await tierProvider.loadTiers(isActive: true);

      // Filtra tier già attivi per questo tenant
      final allTiers = tierProvider.tiersPage?.results ?? [];
      _availableTiers = allTiers
          .where((tier) => !widget.activeTierIds.contains(tier.id))
          .toList();
    } finally {
      setState(() {
        _isLoadingTiers = false;
      });
    }
  }

  Future<void> _activateTier() async {
    if (!_formKey.currentState!.validate() || _selectedTier == null) {
      return;
    }

    setState(() {
      _isActivating = true;
    });

    try {
      final tierProvider = context.read<TierProvider>();
      final success = await tierProvider.activateTierForTenant(
        tenantId: widget.tenantId,
        tierId: _selectedTier!.id,
        isTrial: _isTrial,
        billingCycle: _billingCycle,
        customUsageLimit: _customUsageLimit,
      );

      if (mounted) {
        if (success) {
          Navigator.of(context).pop(true); // Ritorna success
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                tierProvider.error ?? 'Errore durante l\'attivazione del tier',
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
                  const Icon(Icons.add_circle, color: AppColors.primary),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Attiva Tier',
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
              child: _isLoadingTiers
                  ? const Center(child: CircularProgressIndicator())
                  : _availableTiers.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.info_outline,
                                size: 64,
                                color: AppColors.textSecondary,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Nessun tier disponibile',
                                style: AppTextStyles.h3,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Tutti i tier sono già attivi per questo tenant',
                                style: AppTextStyles.caption,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )
                      : SingleChildScrollView(
                          padding: const EdgeInsets.all(24),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Selezione Tier
                                DropdownButtonFormField<Tier>(
                                  initialValue: _selectedTier,
                                  decoration: const InputDecoration(
                                    labelText: 'Seleziona Tier *',
                                    prefixIcon: Icon(Icons.stars),
                                  ),
                                  itemHeight: 60,
                                  items: _availableTiers.map((tier) {
                                    return DropdownMenuItem(
                                      value: tier,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(tier.name),
                                          Text(
                                            tier.category,
                                            style: AppTextStyles.caption,
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                  selectedItemBuilder: (context) {
                                    return _availableTiers.map((tier) {
                                      return Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(tier.name),
                                      );
                                    }).toList();
                                  },
                                  onChanged: (tier) {
                                    setState(() {
                                      _selectedTier = tier;
                                      // Reset trial se tier non lo supporta
                                      if (tier != null && !tier.allowTrial) {
                                        _isTrial = false;
                                      }
                                    });
                                  },
                                  validator: (value) {
                                    if (value == null) {
                                      return 'Seleziona un tier';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 24),

                                // Dettagli tier selezionato
                                if (_selectedTier != null) ...[
                                  Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dettagli Tier',
                                            style: AppTextStyles.h3,
                                          ),
                                          const SizedBox(height: 12),
                                          if (_selectedTier!.description.isNotEmpty)
                                            Text(
                                              _selectedTier!.description,
                                              style: AppTextStyles.bodySmall,
                                            ),
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
                                                'Mensile: €${_selectedTier!.monthlyPrice}  |  Annuale: €${_selectedTier!.yearlyPrice}',
                                                style: AppTextStyles.caption,
                                              ),
                                            ],
                                          ),
                                          if (_selectedTier!.hasUsageLimit) ...[
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
                                                  'Limite: ${_selectedTier!.usageLimit} ${_selectedTier!.usageUnit}',
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
                                  if (_selectedTier!.allowTrial)
                                    SwitchListTile(
                                      title: const Text('Attiva come Trial'),
                                      subtitle: Text(
                                        'Periodo trial: ${_selectedTier!.trialDays} giorni',
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
                                      initialValue: _billingCycle,
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
                                  if (_selectedTier!.hasUsageLimit) ...[
                                    const SizedBox(height: 16),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Limite Personalizzato (opzionale)',
                                        hintText: 'Default: ${_selectedTier!.usageLimit}',
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
                    onPressed: _isActivating || _selectedTier == null
                        ? null
                        : _activateTier,
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
                    label: Text(_isActivating ? 'Attivazione...' : 'Attiva Tier'),
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
