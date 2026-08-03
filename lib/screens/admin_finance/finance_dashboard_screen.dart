import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../models/finance_models.dart';
import '../../providers/finance_provider.dart';

/// Cruscotto economico: quanto è entrato, quanto deve ancora entrare, e
/// soprattutto quanto si può davvero spendere una volta messi da parte IVA,
/// imposte, provvigioni e costi già impegnati.
class FinanceDashboardScreen extends StatefulWidget {
  const FinanceDashboardScreen({super.key});

  @override
  State<FinanceDashboardScreen> createState() => _FinanceDashboardScreenState();
}

class _FinanceDashboardScreenState extends State<FinanceDashboardScreen> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => context.read<FinanceProvider>().loadDashboard());
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<FinanceProvider>();
    final data = provider.dashboard;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Andamento economico',
                  style: Theme.of(context).textTheme.headlineSmall),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: provider.loadDashboard,
              ),
            ],
          ),
          const SizedBox(height: 16),
          if (provider.isLoading && data == null)
            const Expanded(child: Center(child: CircularProgressIndicator()))
          else if (provider.error != null && data == null)
            Expanded(child: Center(child: Text(provider.error!)))
          else if (data != null)
            Expanded(child: _body(data))
          else
            const Expanded(child: Center(child: Text('Nessun dato'))),
        ],
      ),
    );
  }

  Widget _body(FinanceDashboard data) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _availableCard(data),
          const SizedBox(height: 16),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              _kpi('Incassato questo mese', data.collectedThisMonth,
                  Icons.trending_up, Colors.green),
              _kpi('Fatturato questo mese', data.invoicedThisMonth,
                  Icons.receipt_long, Colors.blue),
              _kpi('Da incassare', data.toCollectTotal,
                  Icons.hourglass_bottom, Colors.orange),
              _kpi('Scaduto (${data.overdueCount})', data.overdueTotal,
                  Icons.warning_amber, Colors.red),
              _kpi('Ricavo mensile ricorrente', data.mrr,
                  Icons.autorenew, Colors.purple),
              _kpi('IVA da accantonare', data.vatToSetAside,
                  Icons.account_balance, Colors.teal),
              _kpi('Provvigioni da liquidare', data.commissionsPayable,
                  Icons.handshake, Colors.indigo),
            ],
          ),
          const SizedBox(height: 24),
          Text('Proiezione di cassa',
              style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          _projectionTable(data.projection),
        ],
      ),
    );
  }

  /// Il numero che conta davvero, in evidenza e con il dettaglio di cosa è
  /// stato messo da parte.
  Widget _availableCard(FinanceDashboard data) {
    final isNegative = data.available < 0;
    final color = isNegative ? Colors.red : Colors.green;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Liquidità realmente disponibile',
                      style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 4),
                  Text(
                    _currency.format(data.available),
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ),
                  const SizedBox(height: 4),
                  Text('Saldo sui conti: ${_currency.format(data.cashTotal)}',
                      style: const TextStyle(color: Colors.grey)),
                  if (isNegative)
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'Gli impegni superano la liquidità disponibile',
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ),
                ],
              ),
            ),
            const VerticalDivider(),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Accantonamenti',
                      style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 8),
                  _provisionRow('IVA', data.vatToSetAside),
                  _provisionRow('Provvigioni', data.commissionsPayable),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _provisionRow(String label, double amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text('- ${_currency.format(amount)}',
              style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _kpi(String label, double value, IconData icon, Color color) {
    return SizedBox(
      width: 240,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: color.withValues(alpha: 0.12),
                child: Icon(icon, color: color, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(label,
                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis),
                    const SizedBox(height: 2),
                    Text(_currency.format(value),
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _projectionTable(List<ProjectionRow> rows) {
    if (rows.isEmpty) return const Text('Nessuna scadenza nei prossimi mesi');

    return Card(
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Orizzonte')),
          DataColumn(label: Text('Incassi attesi'), numeric: true),
          DataColumn(label: Text('Uscite previste'), numeric: true),
          DataColumn(label: Text('Saldo'), numeric: true),
        ],
        rows: rows
            .map((row) => DataRow(cells: [
                  DataCell(Text('${row.days} giorni')),
                  DataCell(Text(_currency.format(row.incoming))),
                  DataCell(Text(_currency.format(row.outgoing))),
                  DataCell(Text(
                    _currency.format(row.net),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: row.net < 0 ? Colors.red : Colors.green,
                    ),
                  )),
                ]))
            .toList(),
      ),
    );
  }
}
