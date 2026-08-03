import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../models/billing_models.dart';
import '../../../providers/finance_provider.dart';

/// Registrazione dell'incasso di una rata.
///
/// Le tre spunte in fondo servono al recupero dello storico: quando si carica
/// un contratto già incassato in passato non ha senso rigenerare fattura,
/// provvigioni o movimento di cassa.
class MarkPaidDialog extends StatefulWidget {
  final Installment installment;

  const MarkPaidDialog({super.key, required this.installment});

  @override
  State<MarkPaidDialog> createState() => _MarkPaidDialogState();
}

class _MarkPaidDialogState extends State<MarkPaidDialog> {
  final _formKey = GlobalKey<FormState>();
  final _referenceController = TextEditingController();
  final _notesController = TextEditingController();
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  final _dateFormat = DateFormat('dd/MM/yyyy');

  DateTime _paidDate = DateTime.now();
  String _paymentMethod = 'bank_transfer';
  int? _cashAccountId;
  bool _generateInvoice = true;
  bool _generateCommission = true;
  bool _registerCash = true;
  bool _showAdvanced = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FinanceProvider>().loadAccounts();
    });
  }

  @override
  void dispose() {
    _referenceController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _paidDate,
      firstDate: DateTime(2020),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) setState(() => _paidDate = picked);
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    Navigator.of(context).pop({
      'payment_method': _paymentMethod,
      'paid_date': DateFormat('yyyy-MM-dd').format(_paidDate),
      'external_reference': _referenceController.text.trim(),
      'notes': _notesController.text.trim(),
      if (_cashAccountId != null) 'cash_account_id': _cashAccountId,
      'generate_invoice': _generateInvoice,
      'generate_commission': _generateCommission,
      'register_cash': _registerCash,
    });
  }

  @override
  Widget build(BuildContext context) {
    final installment = widget.installment;
    final accounts = context.watch<FinanceProvider>().accounts;

    return AlertDialog(
      title: const Text('Registra incasso'),
      content: SizedBox(
        width: 460,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _summary(installment),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  initialValue: _paymentMethod,
                  decoration: const InputDecoration(
                    labelText: 'Metodo di pagamento',
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'bank_transfer',
                      child: Text('Bonifico'),
                    ),
                    DropdownMenuItem(
                      value: 'credit_card',
                      child: Text('Carta di credito'),
                    ),
                    DropdownMenuItem(value: 'paypal', child: Text('PayPal')),
                    DropdownMenuItem(value: 'stripe', child: Text('Stripe')),
                    DropdownMenuItem(value: 'cash', child: Text('Contanti')),
                    DropdownMenuItem(value: 'manual', child: Text('Altro')),
                  ],
                  onChanged: (value) =>
                      setState(() => _paymentMethod = value ?? 'bank_transfer'),
                ),
                const SizedBox(height: 12),
                InkWell(
                  onTap: _pickDate,
                  child: InputDecorator(
                    decoration: const InputDecoration(
                      labelText: 'Data incasso',
                      border: OutlineInputBorder(),
                    ),
                    child: Text(_dateFormat.format(_paidDate)),
                  ),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<int>(
                  initialValue: _cashAccountId,
                  decoration: const InputDecoration(
                    labelText: 'Conto di accredito',
                    helperText: 'Se vuoto si usa il conto principale',
                    border: OutlineInputBorder(),
                  ),
                  items: accounts
                      .map(
                        (account) => DropdownMenuItem(
                          value: account.id,
                          child: Text(account.name),
                        ),
                      )
                      .toList(),
                  onChanged: (value) => setState(() => _cashAccountId = value),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _referenceController,
                  decoration: const InputDecoration(
                    labelText: 'Riferimento (CRO, ID transazione)',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _notesController,
                  maxLines: 2,
                  decoration: const InputDecoration(
                    labelText: 'Note',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                ExpansionTile(
                  title: const Text('Opzioni avanzate'),
                  subtitle: const Text(
                    'Solo per recuperare incassi storici',
                    style: TextStyle(fontSize: 12),
                  ),
                  initiallyExpanded: _showAdvanced,
                  onExpansionChanged: (value) =>
                      setState(() => _showAdvanced = value),
                  tilePadding: EdgeInsets.zero,
                  children: [
                    CheckboxListTile(
                      value: _generateInvoice,
                      onChanged: (value) =>
                          setState(() => _generateInvoice = value ?? true),
                      title: const Text('Emetti fattura se mancante'),
                      dense: true,
                    ),
                    CheckboxListTile(
                      value: _generateCommission,
                      onChanged: (value) =>
                          setState(() => _generateCommission = value ?? true),
                      title: const Text('Matura la provvigione'),
                      dense: true,
                    ),
                    CheckboxListTile(
                      value: _registerCash,
                      onChanged: (value) =>
                          setState(() => _registerCash = value ?? true),
                      title: const Text('Registra il movimento di cassa'),
                      dense: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Annulla'),
        ),
        FilledButton(onPressed: _submit, child: const Text('Registra incasso')),
      ],
    );
  }

  Widget _summary(Installment installment) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              installment.tenantName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'Rata ${installment.label} · ciclo ${installment.cycleNumber}',
            ),
            Text(
              'Imponibile ${_currency.format(installment.amount)} + IVA '
              '${_currency.format(installment.vatAmount)}',
            ),
            const SizedBox(height: 4),
            Text(
              _currency.format(installment.totalAmount),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            if (installment.periodEnd != null) ...[
              const SizedBox(height: 6),
              Text(
                'Copre il servizio fino al '
                '${_dateFormat.format(installment.periodEnd!)}',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
