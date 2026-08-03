import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/billing_models.dart';

/// Anagrafica di un commerciale, con anteprima in tempo reale della fiscalità.
///
/// L'anteprima serve a evitare l'errore classico: pattuire "il 20%" e poi
/// scoprire che il bonifico è un altro numero.
class SalespersonFormDialog extends StatefulWidget {
  final Salesperson? salesperson;

  const SalespersonFormDialog({super.key, this.salesperson});

  @override
  State<SalespersonFormDialog> createState() => _SalespersonFormDialogState();
}

class _SalespersonFormDialogState extends State<SalespersonFormDialog> {
  final _formKey = GlobalKey<FormState>();
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');

  late final Map<String, TextEditingController> _controllers;
  String _contractType = 'agent';
  bool _appliesVat = true;
  bool _isActive = true;

  @override
  void initState() {
    super.initState();
    final person = widget.salesperson;
    _controllers = {
      'code': TextEditingController(text: person?.code ?? ''),
      'first_name': TextEditingController(text: person?.firstName ?? ''),
      'last_name': TextEditingController(text: person?.lastName ?? ''),
      'display_name': TextEditingController(text: person?.displayName ?? ''),
      'email': TextEditingController(text: person?.email ?? ''),
      'phone': TextEditingController(text: person?.phone ?? ''),
      'vat_number': TextEditingController(text: person?.vatNumber ?? ''),
      'fiscal_code': TextEditingController(text: person?.fiscalCode ?? ''),
      'iban': TextEditingController(text: person?.iban ?? ''),
      'vat_rate':
          TextEditingController(text: (person?.vatRate ?? 22).toStringAsFixed(2)),
      'withholding_rate': TextEditingController(
          text: (person?.withholdingRate ?? 23).toStringAsFixed(2)),
      'withholding_base_percent': TextEditingController(
          text: (person?.withholdingBasePercent ?? 50).toStringAsFixed(2)),
      'enasarco_agent_rate': TextEditingController(
          text: (person?.enasarcoAgentRate ?? 0).toStringAsFixed(2)),
      'enasarco_company_rate': TextEditingController(
          text: (person?.enasarcoCompanyRate ?? 0).toStringAsFixed(2)),
      'payment_terms_days': TextEditingController(
          text: '${person?.paymentTermsDays ?? 30}'),
    };

    if (person != null) {
      _contractType = person.contractType;
      _appliesVat = person.appliesVat;
      _isActive = person.isActive;
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  double _number(String key) =>
      double.tryParse(_controllers[key]!.text.replaceAll(',', '.')) ?? 0;

  /// Stesse formule del backend, applicate su 1.000 € di provvigione.
  Map<String, double> get _preview {
    const base = 1000.0;
    final vat = _appliesVat ? base * _number('vat_rate') / 100 : 0.0;
    final withholding = base *
        _number('withholding_base_percent') /
        100 *
        _number('withholding_rate') /
        100;
    final enasarcoAgent = base * _number('enasarco_agent_rate') / 100;
    final enasarcoCompany = base * _number('enasarco_company_rate') / 100;
    return {
      'vat': vat,
      'withholding': withholding,
      'enasarcoAgent': enasarcoAgent,
      'net': base + vat - withholding - enasarcoAgent,
      'companyCost': base + enasarcoCompany,
    };
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    Navigator.of(context).pop({
      'code': _controllers['code']!.text.trim(),
      'first_name': _controllers['first_name']!.text.trim(),
      'last_name': _controllers['last_name']!.text.trim(),
      'display_name': _controllers['display_name']!.text.trim(),
      'email': _controllers['email']!.text.trim(),
      'phone': _controllers['phone']!.text.trim(),
      'contract_type': _contractType,
      'vat_number': _controllers['vat_number']!.text.trim(),
      'fiscal_code': _controllers['fiscal_code']!.text.trim(),
      'iban': _controllers['iban']!.text.trim(),
      'payment_terms_days':
          int.tryParse(_controllers['payment_terms_days']!.text) ?? 30,
      'applies_vat': _appliesVat,
      'vat_rate': _number('vat_rate').toStringAsFixed(2),
      'withholding_rate': _number('withholding_rate').toStringAsFixed(2),
      'withholding_base_percent':
          _number('withholding_base_percent').toStringAsFixed(2),
      'enasarco_agent_rate': _number('enasarco_agent_rate').toStringAsFixed(2),
      'enasarco_company_rate':
          _number('enasarco_company_rate').toStringAsFixed(2),
      'is_active': _isActive,
    });
  }

  @override
  Widget build(BuildContext context) {
    final preview = _preview;

    return AlertDialog(
      title: Text(widget.salesperson == null
          ? 'Nuovo commerciale'
          : 'Modifica commerciale'),
      content: SizedBox(
        width: 620,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: _field('code', 'Codice *', required: true)),
                    const SizedBox(width: 12),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        initialValue: _contractType,
                        decoration: const InputDecoration(
                            labelText: 'Tipo rapporto',
                            border: OutlineInputBorder()),
                        items: const [
                          DropdownMenuItem(
                              value: 'agent', child: Text('Agente di commercio')),
                          DropdownMenuItem(
                              value: 'procacciatore',
                              child: Text('Procacciatore')),
                          DropdownMenuItem(
                              value: 'employee', child: Text('Dipendente')),
                          DropdownMenuItem(
                              value: 'occasional', child: Text('Occasionale')),
                        ],
                        onChanged: (value) =>
                            setState(() => _contractType = value ?? 'agent'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                        child: _field('first_name', 'Nome *', required: true)),
                    const SizedBox(width: 12),
                    Expanded(
                        child: _field('last_name', 'Cognome *', required: true)),
                  ],
                ),
                const SizedBox(height: 12),
                _field('display_name', 'Ragione sociale (se diversa)'),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(child: _field('email', 'Email')),
                    const SizedBox(width: 12),
                    Expanded(child: _field('phone', 'Telefono')),
                  ],
                ),
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
                    Expanded(flex: 2, child: _field('iban', 'IBAN')),
                    const SizedBox(width: 12),
                    Expanded(
                        child: _field('payment_terms_days', 'Termini (gg)')),
                  ],
                ),
                const Divider(height: 32),
                const Text('Fiscalità delle provvigioni',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                SwitchListTile(
                  value: _appliesVat,
                  onChanged: (value) => setState(() => _appliesVat = value),
                  title: const Text('Emette fattura con IVA'),
                  contentPadding: EdgeInsets.zero,
                ),
                Row(
                  children: [
                    Expanded(child: _numberField('vat_rate', 'IVA %')),
                    const SizedBox(width: 12),
                    Expanded(
                        child:
                            _numberField('withholding_rate', 'Ritenuta %')),
                    const SizedBox(width: 12),
                    Expanded(
                        child: _numberField(
                            'withholding_base_percent', 'Base ritenuta %')),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                        child: _numberField(
                            'enasarco_agent_rate', 'Enasarco agente %')),
                    const SizedBox(width: 12),
                    Expanded(
                        child: _numberField(
                            'enasarco_company_rate', 'Enasarco ditta %')),
                  ],
                ),
                const SizedBox(height: 16),
                _previewCard(preview),
                const SizedBox(height: 8),
                SwitchListTile(
                  value: _isActive,
                  onChanged: (value) => setState(() => _isActive = value),
                  title: const Text('Attivo'),
                  contentPadding: EdgeInsets.zero,
                ),
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

  Widget _previewCard(Map<String, double> preview) {
    return Card(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Su 1.000 € di provvigione maturata',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
            const SizedBox(height: 8),
            _previewRow('IVA', preview['vat']!),
            _previewRow('Ritenuta d\'acconto', -preview['withholding']!),
            if (preview['enasarcoAgent']! > 0)
              _previewRow('Enasarco agente', -preview['enasarcoAgent']!),
            const Divider(),
            _previewRow('Netto da bonificare', preview['net']!, bold: true),
            _previewRow('Costo azienda', preview['companyCost']!, bold: true),
          ],
        ),
      ),
    );
  }

  Widget _previewRow(String label, double value, {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                  fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
          Text(_currency.format(value),
              style: TextStyle(
                  fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }

  Widget _field(String key, String label, {bool required = false}) {
    return TextFormField(
      controller: _controllers[key],
      decoration:
          InputDecoration(labelText: label, border: const OutlineInputBorder()),
      validator: required
          ? (value) =>
              (value == null || value.trim().isEmpty) ? 'Obbligatorio' : null
          : null,
    );
  }

  Widget _numberField(String key, String label) {
    return TextFormField(
      controller: _controllers[key],
      keyboardType: TextInputType.number,
      decoration:
          InputDecoration(labelText: label, border: const OutlineInputBorder()),
      onChanged: (_) => setState(() {}),
    );
  }
}
