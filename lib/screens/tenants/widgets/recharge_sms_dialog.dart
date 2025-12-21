import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';
import '../../../models/tenant.dart';
import '../../../providers/payment_provider.dart';
import '../../../providers/tenant_provider.dart';

/// Dialog per ricarica SMS rapida
class RechargeSmsDialog extends StatefulWidget {
  final Tenant tenant;

  const RechargeSmsDialog({
    super.key,
    required this.tenant,
  });

  @override
  State<RechargeSmsDialog> createState() => _RechargeSmsDialogState();
}

class _RechargeSmsDialogState extends State<RechargeSmsDialog> {
  final _formKey = GlobalKey<FormState>();
  final _smsQuantityController = TextEditingController();
  final _amountController = TextEditingController();
  final _descriptionController = TextEditingController();

  String? _paymentMethod;
  bool _isRecharging = false;

  final List<Map<String, String>> _paymentMethods = [
    {'value': 'stripe', 'label': 'Stripe'},
    {'value': 'paypal', 'label': 'PayPal'},
    {'value': 'bank_transfer', 'label': 'Bonifico Bancario'},
    {'value': 'credit_card', 'label': 'Carta di Credito'},
    {'value': 'manual', 'label': 'Contanti'},
  ];

  @override
  void initState() {
    super.initState();
    // Pre-compila descrizione
    _smsQuantityController.addListener(_updateDescription);
  }

  void _updateDescription() {
    final quantity = int.tryParse(_smsQuantityController.text);
    if (quantity != null && quantity > 0) {
      _descriptionController.text = 'Ricarica $quantity SMS';
    }
  }

  @override
  void dispose() {
    _smsQuantityController.dispose();
    _amountController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _rechargeSms() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isRecharging = true;
    });

    try {
      final paymentProvider = context.read<PaymentProvider>();
      final success = await paymentProvider.rechargeSMS(
        tenantId: widget.tenant.id,
        smsQuantity: int.parse(_smsQuantityController.text),
        amount: _amountController.text,
        paymentMethod: _paymentMethod,
        description: _descriptionController.text.isNotEmpty
            ? _descriptionController.text
            : null,
      );

      if (mounted) {
        if (success) {
          // Ricarica anche i dati del tenant per aggiornare l'SMS gauge
          context.read<TenantProvider>().loadTenantDetail(widget.tenant.id);

          Navigator.of(context).pop(true);

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                '✅ ${_smsQuantityController.text} SMS ricaricati con successo!',
              ),
              backgroundColor: AppColors.success,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                paymentProvider.error ?? 'Errore durante la ricarica SMS',
              ),
              backgroundColor: AppColors.error,
            ),
          );
        }
      }
    } finally {
      if (mounted) {
        setState(() {
          _isRecharging = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500, maxHeight: 700),
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
                  const Icon(Icons.sms, color: AppColors.primary),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ricarica SMS',
                          style: AppTextStyles.h3,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Tenant: ${widget.tenant.name}',
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
                      // SMS Info Card (se disponibile)
                      if (widget.tenant.smsInfo != null) ...[
                        Card(
                          color: AppColors.background,
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'SMS Correnti',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        '${widget.tenant.smsInfo!.smsQuotaUsed} / ${widget.tenant.smsInfo!.smsQuotaLimit}',
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.textPrimary,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '${widget.tenant.smsInfo!.smsRemaining} rimanenti',
                                      style: AppTextStyles.caption,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: LinearProgressIndicator(
                                    value: widget.tenant.smsInfo!.smsPercentageUsed / 100,
                                    minHeight: 6,
                                    backgroundColor: Colors.grey[200],
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      widget.tenant.smsInfo!.smsPercentageUsed >= 90
                                          ? AppColors.error
                                          : widget.tenant.smsInfo!.smsPercentageUsed >= 75
                                              ? AppColors.warning
                                              : AppColors.success,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],

                      // SMS Quantity
                      TextFormField(
                        controller: _smsQuantityController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Quantità SMS da ricaricare *',
                          hintText: 'es. 500',
                          prefixIcon: Icon(Icons.add_circle_outline),
                          helperText: 'Gli SMS verranno aggiunti alla quota esistente',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Inserisci la quantità di SMS';
                          }
                          final quantity = int.tryParse(value);
                          if (quantity == null || quantity < 1) {
                            return 'Inserisci un numero valido (minimo 1)';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Amount
                      TextFormField(
                        controller: _amountController,
                        keyboardType: const TextInputType.numberWithOptions(decimal: true),
                        decoration: const InputDecoration(
                          labelText: 'Importo pagamento (€) *',
                          hintText: 'es. 50.00',
                          prefixIcon: Icon(Icons.euro),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Inserisci l\'importo';
                          }
                          final amount = double.tryParse(value);
                          if (amount == null || amount < 0.01) {
                            return 'Inserisci un importo valido (minimo 0.01)';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Payment Method (optional)
                      DropdownButtonFormField<String>(
                        value: _paymentMethod,
                        decoration: const InputDecoration(
                          labelText: 'Metodo di Pagamento (opzionale)',
                          prefixIcon: Icon(Icons.payment),
                        ),
                        items: [
                          const DropdownMenuItem<String>(
                            value: null,
                            child: Text('Nessuno'),
                          ),
                          ..._paymentMethods.map((method) {
                            return DropdownMenuItem<String>(
                              value: method['value'],
                              child: Text(method['label']!),
                            );
                          }),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _paymentMethod = value;
                          });
                        },
                      ),
                      const SizedBox(height: 16),

                      // Description (optional)
                      TextFormField(
                        controller: _descriptionController,
                        maxLines: 3,
                        decoration: const InputDecoration(
                          labelText: 'Descrizione (opzionale)',
                          hintText: 'Note aggiuntive sulla ricarica',
                          prefixIcon: Icon(Icons.notes),
                        ),
                      ),
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
                    onPressed: _isRecharging ? null : () => Navigator.of(context).pop(),
                    child: const Text('Annulla'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: _isRecharging ? null : _rechargeSms,
                    icon: _isRecharging
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          )
                        : const Icon(Icons.check),
                    label: Text(_isRecharging ? 'Ricarica in corso...' : 'Ricarica SMS'),
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
