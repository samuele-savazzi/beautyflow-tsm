import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../models/finance_models.dart';
import '../../providers/finance_provider.dart';
import '../../widgets/wide_data_table.dart';
import '../../utils/error_handler.dart';
import '../layout/main_layout.dart';

/// IVA e imposte: quanto tenere da parte e quando versarlo.
class VatScreen extends StatefulWidget {
  const VatScreen({super.key});

  @override
  State<VatScreen> createState() => _VatScreenState();
}

class _VatScreenState extends State<VatScreen> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  final _dateFormat = DateFormat('dd/MM/yyyy');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = context.read<FinanceProvider>();
      provider.loadVatSettlements();
      provider.loadTaxPayments();
    });
  }

  Future<void> _action(
    VatSettlement settlement,
    String action,
    String successMessage,
  ) async {
    final provider = context.read<FinanceProvider>();
    final ok = await provider.vatAction(settlement.id, action);
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, successMessage);
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Operazione non riuscita',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<FinanceProvider>();

    return MainLayout(
      title: 'IVA e imposte',
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    provider.loadVatSettlements();
                    provider.loadTaxPayments();
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            _setAsideCard(provider),
            const SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Liquidazioni IVA',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    _settlementsTable(provider),
                    const SizedBox(height: 24),
                    Text(
                      'Imposte',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    _taxTable(provider),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _setAsideCard(FinanceProvider provider) {
    final current = provider.currentSettlement;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'IVA da tenere da parte',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    _currency.format(provider.vatToSetAside),
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (current != null)
                    Text(
                      'Periodo in corso ${current.label}: '
                      'debito ${_currency.format(current.vatDebit)}, '
                      'credito ${_currency.format(current.vatCredit)}',
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Imposte stimate sull\'utile maturato',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    _currency.format(provider.estimatedIncomeTax),
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
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

  Widget _settlementsTable(FinanceProvider provider) {
    if (provider.settlements.isEmpty) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('Nessuna liquidazione registrata'),
        ),
      );
    }

    return Card(
      child: WideDataTable(
        columns: const [
          DataColumn(label: Text('Periodo')),
          DataColumn(label: Text('Debito'), numeric: true),
          DataColumn(label: Text('Credito'), numeric: true),
          DataColumn(label: Text('Credito prec.'), numeric: true),
          DataColumn(label: Text('Interessi'), numeric: true),
          DataColumn(label: Text('Da versare'), numeric: true),
          DataColumn(label: Text('Scadenza')),
          DataColumn(label: Text('Stato')),
          DataColumn(label: Text('')),
        ],
        rows: provider.settlements.map((settlement) {
          return DataRow(
            cells: [
              DataCell(Text(settlement.label)),
              DataCell(Text(_currency.format(settlement.vatDebit))),
              DataCell(Text(_currency.format(settlement.vatCredit))),
              DataCell(Text(_currency.format(settlement.previousCredit))),
              DataCell(Text(_currency.format(settlement.interestAmount))),
              DataCell(
                Text(
                  _currency.format(settlement.amountDue),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: settlement.isCredit ? Colors.green : null,
                  ),
                ),
              ),
              DataCell(
                Text(
                  settlement.dueDate == null
                      ? '-'
                      : _dateFormat.format(settlement.dueDate!),
                ),
              ),
              DataCell(Text(settlement.statusDisplay)),
              DataCell(
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.calculate, size: 18),
                      tooltip: 'Ricalcola dai documenti',
                      onPressed: () => _action(
                        settlement,
                        'recompute',
                        'Liquidazione ricalcolata',
                      ),
                    ),
                    if (settlement.status == 'open')
                      TextButton(
                        onPressed: () =>
                            _action(settlement, 'close', 'Periodo chiuso'),
                        child: const Text('Chiudi'),
                      ),
                    if (settlement.status == 'to_pay')
                      FilledButton.tonal(
                        onPressed: () => _action(
                          settlement,
                          'mark-paid',
                          'Versamento registrato',
                        ),
                        child: const Text('Versa'),
                      ),
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _taxTable(FinanceProvider provider) {
    if (provider.taxPayments.isEmpty) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('Nessuna imposta registrata'),
        ),
      );
    }

    return Card(
      child: WideDataTable(
        columns: const [
          DataColumn(label: Text('Tipo')),
          DataColumn(label: Text('Anno')),
          DataColumn(label: Text('Descrizione')),
          DataColumn(label: Text('Importo'), numeric: true),
          DataColumn(label: Text('Scadenza')),
          DataColumn(label: Text('Stato')),
          DataColumn(label: Text('')),
        ],
        rows: provider.taxPayments.map((payment) {
          return DataRow(
            cells: [
              DataCell(Text(payment.kindDisplay)),
              DataCell(Text('${payment.year}')),
              DataCell(Text(payment.description)),
              DataCell(Text(_currency.format(payment.amount))),
              DataCell(
                Text(
                  payment.dueDate == null
                      ? '-'
                      : _dateFormat.format(payment.dueDate!),
                ),
              ),
              DataCell(Text(payment.statusDisplay)),
              DataCell(
                payment.status == 'paid'
                    ? const SizedBox.shrink()
                    : FilledButton.tonal(
                        onPressed: () async {
                          final ok = await provider.markTaxPaid(payment.id, {
                            'paid_date': DateFormat(
                              'yyyy-MM-dd',
                            ).format(DateTime.now()),
                          });
                          if (!mounted) return;
                          if (ok) {
                            ApiErrorHandler.showSuccessSnackbar(
                              context,
                              'Versamento registrato',
                            );
                          }
                        },
                        child: const Text('Versa'),
                      ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
