import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../models/finance_models.dart';
import '../../providers/finance_provider.dart';
import '../../widgets/wide_data_table.dart';
import '../../utils/error_handler.dart';
import '../layout/main_layout.dart';

/// Conti e movimenti: la fotografia della liquidità reale.
class CashScreen extends StatefulWidget {
  const CashScreen({super.key});

  @override
  State<CashScreen> createState() => _CashScreenState();
}

class _CashScreenState extends State<CashScreen> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  final _dateFormat = DateFormat('dd/MM/yyyy');

  int? _accountFilter;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = context.read<FinanceProvider>();
      provider.loadAccounts();
      provider.loadMovements();
      provider.loadCategories();
    });
  }

  Future<void> _transfer() async {
    final provider = context.read<FinanceProvider>();
    if (provider.accounts.length < 2) {
      ApiErrorHandler.showErrorMessage(
        context,
        'Servono almeno due conti per fare un giroconto',
      );
      return;
    }

    int? from = provider.accounts.first.id;
    int? to = provider.accounts[1].id;
    final amountController = TextEditingController();

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: const Text('Giroconto'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField<int>(
                initialValue: from,
                decoration: const InputDecoration(labelText: 'Dal conto'),
                items: provider.accounts
                    .map(
                      (account) => DropdownMenuItem(
                        value: account.id,
                        child: Text(account.name),
                      ),
                    )
                    .toList(),
                onChanged: (value) => setDialogState(() => from = value),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<int>(
                initialValue: to,
                decoration: const InputDecoration(labelText: 'Al conto'),
                items: provider.accounts
                    .map(
                      (account) => DropdownMenuItem(
                        value: account.id,
                        child: Text(account.name),
                      ),
                    )
                    .toList(),
                onChanged: (value) => setDialogState(() => to = value),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Importo'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: const Text('Annulla'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              child: const Text('Trasferisci'),
            ),
          ],
        ),
      ),
    );
    if (confirmed != true || !mounted) return;

    final ok = await provider.transfer({
      'from_account_id': from,
      'to_account_id': to,
      'amount': amountController.text.replaceAll(',', '.'),
      'value_date': DateFormat('yyyy-MM-dd').format(DateTime.now()),
    });
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Giroconto registrato');
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Giroconto non riuscito',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<FinanceProvider>();

    return MainLayout(
      title: 'Liquidità',
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Spacer(),
                OutlinedButton.icon(
                  onPressed: _transfer,
                  icon: const Icon(Icons.swap_horiz),
                  label: const Text('Giroconto'),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    provider.loadAccounts();
                    provider.loadMovements(accountId: _accountFilter);
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            _accountCards(provider),
            const SizedBox(height: 24),
            Text('Movimenti', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Expanded(child: _movementsTable(provider)),
          ],
        ),
      ),
    );
  }

  Widget _accountCards(FinanceProvider provider) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        ...provider.accounts.map((account) => _accountCard(account)),
        SizedBox(
          width: 220,
          child: Card(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Totale disponibile sui conti',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _currency.format(provider.accountsTotal),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _accountCard(CashAccount account) {
    final selected = _accountFilter == account.id;
    return SizedBox(
      width: 220,
      child: Card(
        elevation: selected ? 4 : 1,
        child: InkWell(
          onTap: () {
            setState(() => _accountFilter = selected ? null : account.id);
            context.read<FinanceProvider>().loadMovements(
              accountId: _accountFilter,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  account.name,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  account.kindDisplay,
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Text(
                  _currency.format(account.balance),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: account.balance < 0 ? Colors.red : null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _movementsTable(FinanceProvider provider) {
    if (provider.movements.isEmpty) {
      return const Center(child: Text('Nessun movimento'));
    }

    return Card(
      child: SingleChildScrollView(
        child: WideDataTable(
          columns: const [
            DataColumn(label: Text('Data')),
            DataColumn(label: Text('Conto')),
            DataColumn(label: Text('Descrizione')),
            DataColumn(label: Text('Tipo')),
            DataColumn(label: Text('Categoria')),
            DataColumn(label: Text('Importo'), numeric: true),
          ],
          rows: provider.movements.map((movement) {
            return DataRow(
              cells: [
                DataCell(
                  Text(
                    movement.valueDate == null
                        ? '-'
                        : _dateFormat.format(movement.valueDate!),
                  ),
                ),
                DataCell(Text(movement.accountName)),
                DataCell(Text(movement.description)),
                DataCell(Text(movement.kindDisplay)),
                DataCell(Text(movement.categoryName)),
                DataCell(
                  Text(
                    '${movement.isIncoming ? '+' : '-'}'
                    '${_currency.format(movement.amount)}',
                    style: TextStyle(
                      color: movement.isIncoming ? Colors.green : Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
