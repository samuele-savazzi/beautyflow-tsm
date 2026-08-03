import 'package:flutter/material.dart';

import '../../../models/billing_models.dart';

/// Dati fiscali del cliente: senza questi la fattura non si può emettere.
class BillingProfileDialog extends StatefulWidget {
  final TenantBillingProfile? profile;
  final String tenantName;

  const BillingProfileDialog({
    super.key,
    this.profile,
    required this.tenantName,
  });

  @override
  State<BillingProfileDialog> createState() => _BillingProfileDialogState();
}

class _BillingProfileDialogState extends State<BillingProfileDialog> {
  final _formKey = GlobalKey<FormState>();
  late final Map<String, TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    final profile = widget.profile;
    _controllers = {
      'business_name': TextEditingController(
          text: profile?.businessName ?? widget.tenantName),
      'vat_number': TextEditingController(text: profile?.vatNumber ?? ''),
      'fiscal_code': TextEditingController(text: profile?.fiscalCode ?? ''),
      'sdi_code': TextEditingController(text: profile?.sdiCode ?? ''),
      'pec': TextEditingController(text: profile?.pec ?? ''),
      'billing_email': TextEditingController(text: profile?.billingEmail ?? ''),
      'address': TextEditingController(text: profile?.address ?? ''),
      'city': TextEditingController(text: profile?.city ?? ''),
      'zip_code': TextEditingController(text: profile?.zipCode ?? ''),
      'province': TextEditingController(text: profile?.province ?? ''),
      'country': TextEditingController(text: profile?.country ?? 'IT'),
      'notes': TextEditingController(text: profile?.notes ?? ''),
    };
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    Navigator.of(context).pop({
      for (final entry in _controllers.entries) entry.key: entry.value.text.trim(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Dati di fatturazione'),
      content: SizedBox(
        width: 540,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _field('business_name', 'Ragione sociale *', required: true),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(child: _field('vat_number', 'Partita IVA')),
                    const SizedBox(width: 12),
                    Expanded(child: _field('fiscal_code', 'Codice fiscale')),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(child: _field('sdi_code', 'Codice SDI')),
                    const SizedBox(width: 12),
                    Expanded(child: _field('pec', 'PEC')),
                  ],
                ),
                const SizedBox(height: 12),
                _field('billing_email', 'Email amministrativa',
                    helper: 'Riceve le fatture; se vuota si usano '
                        'admin, titolare e segreteria'),
                const SizedBox(height: 12),
                _field('address', 'Indirizzo'),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(flex: 2, child: _field('city', 'Città')),
                    const SizedBox(width: 12),
                    Expanded(child: _field('zip_code', 'CAP')),
                    const SizedBox(width: 12),
                    Expanded(child: _field('province', 'Prov.')),
                  ],
                ),
                const SizedBox(height: 12),
                _field('notes', 'Note'),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annulla')),
        FilledButton(onPressed: _submit, child: const Text('Salva')),
      ],
    );
  }

  Widget _field(String key, String label,
      {bool required = false, String? helper}) {
    return TextFormField(
      controller: _controllers[key],
      decoration: InputDecoration(
        labelText: label,
        helperText: helper,
        border: const OutlineInputBorder(),
      ),
      validator: required
          ? (value) =>
              (value == null || value.trim().isEmpty) ? 'Obbligatorio' : null
          : null,
    );
  }
}
