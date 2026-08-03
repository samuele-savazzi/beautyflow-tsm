import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../models/finance_models.dart';
import '../../providers/finance_provider.dart';
import '../../utils/error_handler.dart';
import '../../utils/file_utils.dart';

/// Conto economico per competenza + export per il commercialista.
class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  final _apiDate = DateFormat('yyyy-MM-dd');
  final _displayDate = DateFormat('dd/MM/yyyy');

  late DateTime _start;
  late DateTime _end;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _start = DateTime(now.year, now.month, 1);
    _end = DateTime(now.year, now.month + 1, 0);
    WidgetsBinding.instance.addPostFrameCallback((_) => _reload());
  }

  void _reload() {
    context.read<FinanceProvider>().loadPnl(
          start: _apiDate.format(_start),
          end: _apiDate.format(_end),
        );
  }

  Future<void> _pickRange() async {
    final range = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2024),
      lastDate: DateTime(DateTime.now().year + 2),
      initialDateRange: DateTimeRange(start: _start, end: _end),
      locale: const Locale('it', 'IT'),
    );
    if (range == null) return;
    setState(() {
      _start = range.start;
      _end = range.end;
    });
    _reload();
  }

  void _presetMonth(int offset) {
    final now = DateTime.now();
    setState(() {
      _start = DateTime(now.year, now.month + offset, 1);
      _end = DateTime(now.year, now.month + offset + 1, 0);
    });
    _reload();
  }

  void _presetYear() {
    final now = DateTime.now();
    setState(() {
      _start = DateTime(now.year, 1, 1);
      _end = DateTime(now.year, 12, 31);
    });
    _reload();
  }

  Future<void> _export(String dataset) async {
    final provider = context.read<FinanceProvider>();
    final path = await provider.downloadExport(
      dataset,
      start: _apiDate.format(_start),
      end: _apiDate.format(_end),
    );
    if (!mounted) return;
    if (path == null) {
      ApiErrorHandler.showErrorMessage(
          context, provider.error ?? 'Export non riuscito');
      return;
    }
    ApiErrorHandler.showSuccessSnackbar(context, 'Export salvato in $path');
    await FileUtils.openUrl(Uri.file(path).toString(), context: context);
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<FinanceProvider>();
    final report = provider.pnl;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Conto economico',
                  style: Theme.of(context).textTheme.headlineSmall),
              const Spacer(),
              PopupMenuButton<String>(
                icon: const Icon(Icons.download),
                tooltip: 'Export per il commercialista',
                onSelected: _export,
                itemBuilder: (_) => const [
                  PopupMenuItem(
                      value: 'invoices', child: Text('Fatture emesse (CSV)')),
                  PopupMenuItem(value: 'expenses', child: Text('Costi (CSV)')),
                  PopupMenuItem(
                      value: 'movements', child: Text('Movimenti cassa (CSV)')),
                ],
              ),
              IconButton(
                  icon: const Icon(Icons.refresh), onPressed: _reload),
            ],
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              OutlinedButton.icon(
                onPressed: _pickRange,
                icon: const Icon(Icons.date_range, size: 18),
                label: Text(
                    '${_displayDate.format(_start)} - ${_displayDate.format(_end)}'),
              ),
              TextButton(
                  onPressed: () => _presetMonth(0),
                  child: const Text('Mese corrente')),
              TextButton(
                  onPressed: () => _presetMonth(-1),
                  child: const Text('Mese scorso')),
              TextButton(onPressed: _presetYear, child: const Text('Anno')),
            ],
          ),
          const SizedBox(height: 16),
          if (provider.isLoading && report == null)
            const Expanded(child: Center(child: CircularProgressIndicator()))
          else if (report == null)
            Expanded(
                child: Center(
                    child: Text(provider.error ?? 'Nessun dato nel periodo')))
          else
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _totals(report),
                    const SizedBox(height: 24),
                    Text('Costi per categoria',
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 8),
                    _costsTable(report),
                    const SizedBox(height: 16),
                    const Text(
                      'Le uscite classificate come "non costo" (versamenti IVA e '
                      'imposte, prelievi, giroconti) restano fuori dal conto '
                      'economico: le trovi solo in cassa.',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _totals(PnlReport report) {
    return Row(
      children: [
        _totalCard('Ricavi', report.revenue, report.previousRevenue,
            Colors.green, higherIsBetter: true),
        const SizedBox(width: 16),
        _totalCard('Costi', report.costsTotal, report.previousCosts,
            Colors.redAccent, higherIsBetter: false),
        const SizedBox(width: 16),
        _totalCard('Margine', report.margin, report.previousMargin,
            Colors.indigo,
            higherIsBetter: true,
            subtitle: '${report.marginPercent.toStringAsFixed(1)}% sui ricavi'),
      ],
    );
  }

  Widget _totalCard(String label, double value, double? previous, Color color,
      {required bool higherIsBetter, String? subtitle}) {
    String? delta;
    Color? deltaColor;
    if (previous != null && previous != 0) {
      final change = (value - previous) / previous.abs() * 100;
      delta = '${change >= 0 ? '+' : ''}${change.toStringAsFixed(1)}% '
          'sul periodo precedente';
      final improved = higherIsBetter ? change >= 0 : change <= 0;
      deltaColor = improved ? Colors.green : Colors.red;
    }

    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 4),
              Text(_currency.format(value),
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: color)),
              if (subtitle != null)
                Text(subtitle, style: const TextStyle(fontSize: 12)),
              if (delta != null)
                Text(delta,
                    style: TextStyle(fontSize: 12, color: deltaColor)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _costsTable(PnlReport report) {
    if (report.costsByCategory.isEmpty) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('Nessun costo di competenza nel periodo'),
        ),
      );
    }

    return Card(
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Categoria')),
          DataColumn(label: Text('Tipo')),
          DataColumn(label: Text('Importo'), numeric: true),
          DataColumn(label: Text('Incidenza'), numeric: true),
        ],
        rows: report.costsByCategory
            .map((row) => DataRow(cells: [
                  DataCell(Text(row.name)),
                  DataCell(Text(row.kind)),
                  DataCell(Text(_currency.format(row.amount))),
                  DataCell(Text('${row.incidence.toStringAsFixed(1)}%')),
                ]))
            .toList(),
      ),
    );
  }
}
