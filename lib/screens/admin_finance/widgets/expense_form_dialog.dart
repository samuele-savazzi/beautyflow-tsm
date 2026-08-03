import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../models/finance_models.dart';
import '../../../providers/finance_provider.dart';

/// Registrazione o modifica di un costo.
///
/// Il periodo di competenza è opzionale ma importante: senza, un canone annuale
/// pesa tutto sul mese in cui è stato emesso e falsa il conto economico.
class ExpenseFormDialog extends StatefulWidget {
  final Expense? expense;

  const ExpenseFormDialog({super.key, this.expense});

  @override
  State<ExpenseFormDialog> createState() => _ExpenseFormDialogState();
}

class _ExpenseFormDialogState extends State<ExpenseFormDialog> {
  final _formKey = GlobalKey<FormState>();
  final _dateFormat = DateFormat('dd/MM/yyyy');
  final _apiDate = DateFormat('yyyy-MM-dd');

  late TextEditingController _description;
  late TextEditingController _documentNumber;
  late TextEditingController _taxableAmount;
  late TextEditingController _vatRate;
  late TextEditingController _notes;

  int? _categoryId;
  int? _vendorId;
  DateTime _documentDate = DateTime.now();
  DateTime? _paymentDueDate;
  DateTime? _competenceStart;
  DateTime? _competenceEnd;
  bool _isRecurring = false;
  String _recurrenceRule = 'monthly';

  @override
  void initState() {
    super.initState();
    final expense = widget.expense;
    _description = TextEditingController(text: expense?.description ?? '');
    _documentNumber = TextEditingController(text: expense?.documentNumber ?? '');
    _taxableAmount = TextEditingController(
        text: expense == null ? '' : expense.taxableAmount.toStringAsFixed(2));
    _vatRate = TextEditingController(
        text: (expense?.vatRate ?? 22).toStringAsFixed(2));
    _notes = TextEditingController(text: expense?.notes ?? '');

    if (expense != null) {
      _categoryId = expense.categoryId;
      _vendorId = expense.vendorId;
      _documentDate = expense.documentDate ?? DateTime.now();
      _paymentDueDate = expense.paymentDueDate;
      _competenceStart = expense.competenceStart;
      _competenceEnd = expense.competenceEnd;
      _isRecurring = expense.isRecurring;
      if (expense.recurrenceRule.isNotEmpty) {
        _recurrenceRule = expense.recurrenceRule;
      }
    }
  }

  @override
  void dispose() {
    _description.dispose();
    _documentNumber.dispose();
    _taxableAmount.dispose();
    _vatRate.dispose();
    _notes.dispose();
    super.dispose();
  }

  Future<DateTime?> _pickDate(DateTime? initial) {
    return showDatePicker(
      context: context,
      initialDate: initial ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    if (_categoryId == null) return;

    Navigator.of(context).pop({
      'category': _categoryId,
      if (_vendorId != null) 'vendor': _vendorId,
      'description': _description.text.trim(),
      'document_date': _apiDate.format(_documentDate),
      'document_number': _documentNumber.text.trim(),
      'taxable_amount': _taxableAmount.text.replaceAll(',', '.'),
      'vat_rate': _vatRate.text.replaceAll(',', '.'),
      if (_competenceStart != null)
        'competence_start': _apiDate.format(_competenceStart!),
      if (_competenceEnd != null)
        'competence_end': _apiDate.format(_competenceEnd!),
      if (_paymentDueDate != null)
        'payment_due_date': _apiDate.format(_paymentDueDate!),
      'is_recurring': _isRecurring,
      'recurrence_rule': _isRecurring ? _recurrenceRule : '',
      'notes': _notes.text.trim(),
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<FinanceProvider>();

    return AlertDialog(
      title: Text(widget.expense == null ? 'Nuovo costo' : 'Modifica costo'),
      content: SizedBox(
        width: 520,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _description,
                  decoration: const InputDecoration(
                      labelText: 'Descrizione *', border: OutlineInputBorder()),
                  validator: (value) => (value == null || value.trim().isEmpty)
                      ? 'Campo obbligatorio'
                      : null,
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<int>(
                  initialValue: _categoryId,
                  decoration: const InputDecoration(
                      labelText: 'Categoria *', border: OutlineInputBorder()),
                  items: provider.categories
                      .map((category) => DropdownMenuItem(
                            value: category.id,
                            child: Text(
                              category.countsInPnl
                                  ? category.name
                                  : '${category.name}  (non è un costo)',
                            ),
                          ))
                      .toList(),
                  validator: (value) =>
                      value == null ? 'Scegli una categoria' : null,
                  onChanged: (value) => setState(() => _categoryId = value),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<int>(
                  initialValue: _vendorId,
                  decoration: const InputDecoration(
                      labelText: 'Fornitore', border: OutlineInputBorder()),
                  items: provider.vendors
                      .map((vendor) => DropdownMenuItem(
                          value: vendor.id, child: Text(vendor.name)))
                      .toList(),
                  onChanged: (value) => setState(() => _vendorId = value),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _taxableAmount,
                        decoration: const InputDecoration(
                            labelText: 'Imponibile *',
                            border: OutlineInputBorder()),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          final parsed = double.tryParse(
                              (value ?? '').replaceAll(',', '.'));
                          if (parsed == null || parsed <= 0) {
                            return 'Importo non valido';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextFormField(
                        controller: _vatRate,
                        decoration: const InputDecoration(
                            labelText: 'IVA %', border: OutlineInputBorder()),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: _dateField('Data documento', _documentDate,
                          (picked) => setState(() => _documentDate = picked)),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _dateField('Scadenza pagamento', _paymentDueDate,
                          (picked) => setState(() => _paymentDueDate = picked)),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: _dateField('Competenza dal', _competenceStart,
                          (picked) => setState(() => _competenceStart = picked)),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _dateField('Competenza al', _competenceEnd,
                          (picked) => setState(() => _competenceEnd = picked)),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    'Il periodo di competenza distribuisce il costo nel conto '
                    'economico: utile per canoni e licenze annuali.',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 8),
                SwitchListTile(
                  value: _isRecurring,
                  onChanged: (value) => setState(() => _isRecurring = value),
                  title: const Text('Costo ricorrente'),
                  subtitle: const Text(
                      'Verrà rigenerato automaticamente a ogni scadenza',
                      style: TextStyle(fontSize: 12)),
                  contentPadding: EdgeInsets.zero,
                ),
                if (_isRecurring)
                  DropdownButtonFormField<String>(
                    initialValue: _recurrenceRule,
                    decoration: const InputDecoration(
                        labelText: 'Periodicità', border: OutlineInputBorder()),
                    items: const [
                      DropdownMenuItem(value: 'monthly', child: Text('Mensile')),
                      DropdownMenuItem(
                          value: 'quarterly', child: Text('Trimestrale')),
                      DropdownMenuItem(value: 'yearly', child: Text('Annuale')),
                    ],
                    onChanged: (value) =>
                        setState(() => _recurrenceRule = value ?? 'monthly'),
                  ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _documentNumber,
                  decoration: const InputDecoration(
                      labelText: 'Numero documento',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _notes,
                  maxLines: 2,
                  decoration: const InputDecoration(
                      labelText: 'Note', border: OutlineInputBorder()),
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

  Widget _dateField(
      String label, DateTime? value, ValueChanged<DateTime> onPicked) {
    return InkWell(
      onTap: () async {
        final picked = await _pickDate(value);
        if (picked != null) onPicked(picked);
      },
      child: InputDecorator(
        decoration:
            InputDecoration(labelText: label, border: const OutlineInputBorder()),
        child: Text(value == null ? '—' : _dateFormat.format(value)),
      ),
    );
  }
}
