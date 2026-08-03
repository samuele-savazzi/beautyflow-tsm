import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../models/finance_models.dart';
import '../../providers/finance_provider.dart';
import '../../utils/error_handler.dart';
import 'widgets/expense_form_dialog.dart';

/// Costi dell'azienda: registrazione, pagamento e ricorrenze.
class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final _dateFormat = DateFormat('dd/MM/yyyy');
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');

  String _statusFilter = 'to_pay';
  int _page = 1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = context.read<FinanceProvider>();
      provider.loadCategories();
      provider.loadVendors();
      provider.loadAccounts();
      _load();
    });
  }

  void _load() {
    context.read<FinanceProvider>().loadExpenses(
          page: _page,
          status: _statusFilter.isEmpty ? null : _statusFilter,
        );
  }

  Future<void> _openForm({Expense? expense}) async {
    final data = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (_) => ExpenseFormDialog(expense: expense),
    );
    if (data == null || !mounted) return;

    final provider = context.read<FinanceProvider>();
    final ok = await provider.saveExpense(data, id: expense?.id);
    if (!mounted) return;

    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Costo salvato');
    } else {
      ApiErrorHandler.showErrorMessage(
          context, provider.error ?? 'Salvataggio non riuscito');
    }
  }

  Future<void> _markPaid(Expense expense) async {
    final provider = context.read<FinanceProvider>();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Registra pagamento'),
        content: Text('Confermi il pagamento di '
            '${_currency.format(expense.totalAmount)} per "${expense.description}"?'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Annulla')),
          FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Conferma')),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;

    final ok = await provider.markExpensePaid(expense.id, {
      'paid_date': DateFormat('yyyy-MM-dd').format(DateTime.now()),
      'payment_method': 'bank_transfer',
    });
    if (!mounted) return;

    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Pagamento registrato');
    } else {
      ApiErrorHandler.showErrorMessage(
          context, provider.error ?? 'Registrazione non riuscita');
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<FinanceProvider>();

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Costi', style: Theme.of(context).textTheme.headlineSmall),
              const Spacer(),
              FilledButton.icon(
                onPressed: () => _openForm(),
                icon: const Icon(Icons.add),
                label: const Text('Nuovo costo'),
              ),
              const SizedBox(width: 8),
              IconButton(icon: const Icon(Icons.refresh), onPressed: _load),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: [
              _filterChip('Da pagare', 'to_pay'),
              _filterChip('Pagati', 'paid'),
              _filterChip('Tutti', ''),
            ],
          ),
          const SizedBox(height: 16),
          if (provider.isLoading)
            const LinearProgressIndicator()
          else if (provider.error != null)
            Text(provider.error!, style: const TextStyle(color: Colors.red))
          else if (provider.expenses.isEmpty)
            const Expanded(child: Center(child: Text('Nessun costo registrato')))
          else
            Expanded(child: _table(provider)),
        ],
      ),
    );
  }

  Widget _filterChip(String label, String value) {
    return ChoiceChip(
      label: Text(label),
      selected: _statusFilter == value,
      onSelected: (_) {
        setState(() {
          _statusFilter = value;
          _page = 1;
        });
        _load();
      },
    );
  }

  Widget _table(FinanceProvider provider) {
    return Card(
      child: SingleChildScrollView(
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Data')),
            DataColumn(label: Text('Descrizione')),
            DataColumn(label: Text('Fornitore')),
            DataColumn(label: Text('Categoria')),
            DataColumn(label: Text('Imponibile'), numeric: true),
            DataColumn(label: Text('Totale'), numeric: true),
            DataColumn(label: Text('Scadenza')),
            DataColumn(label: Text('Stato')),
            DataColumn(label: Text('')),
          ],
          rows: provider.expenses.map((expense) {
            return DataRow(cells: [
              DataCell(Text(expense.documentDate == null
                  ? '-'
                  : _dateFormat.format(expense.documentDate!))),
              DataCell(Row(
                children: [
                  Text(expense.description),
                  if (expense.isRecurring)
                    const Padding(
                      padding: EdgeInsets.only(left: 6),
                      child: Icon(Icons.autorenew, size: 14, color: Colors.grey),
                    ),
                ],
              )),
              DataCell(Text(expense.vendorName)),
              DataCell(_categoryChip(expense)),
              DataCell(Text(_currency.format(expense.taxableAmount))),
              DataCell(Text(_currency.format(expense.totalAmount))),
              DataCell(Text(expense.paymentDueDate == null
                  ? '-'
                  : _dateFormat.format(expense.paymentDueDate!))),
              DataCell(Text(expense.statusDisplay)),
              DataCell(Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (!expense.isPaid)
                    IconButton(
                      icon: const Icon(Icons.edit, size: 18),
                      onPressed: () => _openForm(expense: expense),
                    ),
                  if (!expense.isPaid)
                    FilledButton.tonal(
                      onPressed: () => _markPaid(expense),
                      child: const Text('Paga'),
                    ),
                ],
              )),
            ]);
          }).toList(),
        ),
      ),
    );
  }

  /// Le categorie che non entrano nel conto economico vanno riconosciute a
  /// colpo d'occhio: sono uscite di cassa, non costi d'esercizio.
  Widget _categoryChip(Expense expense) {
    if (expense.countsInPnl) return Text(expense.categoryName);
    return Tooltip(
      message: 'Uscita di cassa che non incide sull\'utile',
      child: Chip(
        label: Text(expense.categoryName, style: const TextStyle(fontSize: 11)),
        backgroundColor: Colors.grey.shade200,
        visualDensity: VisualDensity.compact,
      ),
    );
  }
}
