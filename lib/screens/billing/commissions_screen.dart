import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../models/billing_models.dart';
import '../../providers/billing_provider.dart';
import '../../utils/error_handler.dart';
import '../layout/main_layout.dart';

/// Provvigioni: quanto è maturato per ogni commerciale e quanto va bonificato.
///
/// La distinzione tra imponibile, netto e costo azienda è la ragione d'essere
/// di questa schermata: con ritenuta d'acconto ed Enasarco i tre numeri sono
/// diversi e confonderli significa sbagliare i conti.
class CommissionsScreen extends StatefulWidget {
  const CommissionsScreen({super.key});

  @override
  State<CommissionsScreen> createState() => _CommissionsScreenState();
}

class _CommissionsScreenState extends State<CommissionsScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  final _dateFormat = DateFormat('dd/MM/yyyy');

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = context.read<BillingProvider>();
      provider.loadCommissionSummary();
      provider.loadCommissions();
      provider.loadPayouts();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _createPayout(CommissionSummaryRow row) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Liquida ${row.name}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Provvigioni maturate: ${_currency.format(row.payableTotal)}'),
            const SizedBox(height: 8),
            Text(
              'Netto da bonificare: ${_currency.format(row.payableNet)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Costo azienda: ${_currency.format(row.payableCompanyCost)}'),
            const SizedBox(height: 12),
            const Text(
              'Verrà creata la liquidazione e il costo corrispondente nel '
              'conto economico.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Annulla'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Liquida'),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;

    final provider = context.read<BillingProvider>();
    final payout = await provider.createPayout({
      'salesperson_id': row.salespersonId,
      'generate_expense': true,
    });
    if (!mounted) return;

    if (payout != null) {
      ApiErrorHandler.showSuccessSnackbar(
        context,
        'Liquidazione creata: ${_currency.format(payout.netAmount)} da bonificare',
      );
      provider.loadPayouts();
      provider.loadCommissionSummary();
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Liquidazione non riuscita',
      );
    }
  }

  Future<void> _markPayoutPaid(CommissionPayout payout) async {
    final provider = context.read<BillingProvider>();
    final ok = await provider.markPayoutPaid(payout.id, {
      'paid_date': DateFormat('yyyy-MM-dd').format(DateTime.now()),
      'payment_method': 'bank_transfer',
    });
    if (!mounted) return;

    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Bonifico registrato');
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Registrazione non riuscita',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Provvigioni',
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: const [
                Tab(text: 'Riepilogo'),
                Tab(text: 'Dettaglio'),
                Tab(text: 'Liquidazioni'),
              ],
            ),
            const SizedBox(height: 12),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [_summaryTab(), _detailTab(), _payoutsTab()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _summaryTab() {
    final provider = context.watch<BillingProvider>();
    if (provider.commissionSummary.isEmpty) {
      return const Center(child: Text('Nessuna provvigione maturata'));
    }

    return SingleChildScrollView(
      child: Card(
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Commerciale')),
            DataColumn(label: Text('Maturate'), numeric: true),
            DataColumn(label: Text('Netto da bonificare'), numeric: true),
            DataColumn(label: Text('Costo azienda'), numeric: true),
            DataColumn(label: Text('Già liquidate'), numeric: true),
            DataColumn(label: Text('')),
          ],
          rows: provider.commissionSummary.map((row) {
            return DataRow(
              cells: [
                DataCell(Text(row.name)),
                DataCell(Text(_currency.format(row.payableTotal))),
                DataCell(
                  Text(
                    _currency.format(row.payableNet),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataCell(Text(_currency.format(row.payableCompanyCost))),
                DataCell(Text(_currency.format(row.paidTotal))),
                DataCell(
                  row.payableTotal > 0
                      ? FilledButton.tonal(
                          onPressed: () => _createPayout(row),
                          child: const Text('Liquida'),
                        )
                      : const SizedBox.shrink(),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _detailTab() {
    final provider = context.watch<BillingProvider>();
    if (provider.commissions.isEmpty) {
      return const Center(child: Text('Nessuna riga di provvigione'));
    }

    return SingleChildScrollView(
      child: Card(
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Data')),
            DataColumn(label: Text('Commerciale')),
            DataColumn(label: Text('Cliente')),
            DataColumn(label: Text('Tipo')),
            DataColumn(label: Text('Anno')),
            DataColumn(label: Text('Base'), numeric: true),
            DataColumn(label: Text('%'), numeric: true),
            DataColumn(label: Text('Provvigione'), numeric: true),
            DataColumn(label: Text('Stato')),
          ],
          rows: provider.commissions.map((commission) {
            return DataRow(
              cells: [
                DataCell(
                  Text(
                    commission.createdAt == null
                        ? '-'
                        : _dateFormat.format(commission.createdAt!),
                  ),
                ),
                DataCell(Text(commission.salespersonName)),
                DataCell(Text(commission.tenantName)),
                DataCell(Text(commission.kindDisplay)),
                DataCell(Text('${commission.cycleNumber}')),
                DataCell(Text(_currency.format(commission.baseAmount))),
                DataCell(Text('${commission.rate.toStringAsFixed(0)}%')),
                DataCell(Text(_currency.format(commission.amount))),
                DataCell(Text(commission.statusDisplay)),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _payoutsTab() {
    final provider = context.watch<BillingProvider>();
    if (provider.payouts.isEmpty) {
      return const Center(child: Text('Nessuna liquidazione'));
    }

    return ListView.builder(
      itemCount: provider.payouts.length,
      itemBuilder: (context, index) {
        final payout = provider.payouts[index];
        return Card(
          child: ListTile(
            title: Text(payout.salespersonName),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Imponibile ${_currency.format(payout.taxableAmount)} · '
                  'IVA ${_currency.format(payout.vatAmount)} · '
                  'ritenuta ${_currency.format(payout.withholdingAmount)}',
                ),
                if (payout.enasarcoAgentAmount > 0 ||
                    payout.enasarcoCompanyAmount > 0)
                  Text(
                    'Enasarco agente '
                    '${_currency.format(payout.enasarcoAgentAmount)} · '
                    'ditta ${_currency.format(payout.enasarcoCompanyAmount)}',
                  ),
                Text(
                  'Costo azienda ${_currency.format(payout.companyCost)}',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            isThreeLine: true,
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  _currency.format(payout.netAmount),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (payout.status == 'to_pay')
                  TextButton(
                    onPressed: () => _markPayoutPaid(payout),
                    child: const Text('Segna pagata'),
                  )
                else
                  Text(
                    payout.statusDisplay,
                    style: const TextStyle(fontSize: 12, color: Colors.green),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
