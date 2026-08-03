import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../models/billing_models.dart';
import '../../providers/billing_provider.dart';
import '../../utils/error_handler.dart';

/// Listini versionati.
///
/// Un listino attivo non si modifica: si clona, si ritocca la bozza e si
/// attiva. I contratti già firmati restano al prezzo con cui sono nati.
class PriceListsScreen extends StatefulWidget {
  const PriceListsScreen({super.key});

  @override
  State<PriceListsScreen> createState() => _PriceListsScreenState();
}

class _PriceListsScreenState extends State<PriceListsScreen> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  int? _selectedId;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => context.read<BillingProvider>().loadPriceLists());
  }

  Future<void> _clone(PriceList priceList) async {
    final codeController = TextEditingController();
    final nameController = TextEditingController();

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Nuova versione da ${priceList.code}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: codeController,
              decoration: const InputDecoration(
                  labelText: 'Codice (es. 2027-01)',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  labelText: 'Nome', border: OutlineInputBorder()),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Annulla')),
          FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Crea bozza')),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;

    final provider = context.read<BillingProvider>();
    final ok = await provider.clonePriceList(
        priceList.id, codeController.text.trim(), nameController.text.trim());
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Bozza creata');
    } else {
      ApiErrorHandler.showErrorMessage(
          context, provider.error ?? 'Clonazione non riuscita');
    }
  }

  Future<void> _activate(PriceList priceList) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Attiva ${priceList.code}'),
        content: const Text(
          'Diventerà il listino proposto nei nuovi contratti. Quelli già '
          'firmati non cambiano prezzo: vanno migrati uno per uno se serve.',
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Annulla')),
          FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Attiva')),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;

    final provider = context.read<BillingProvider>();
    final ok = await provider.activatePriceList(priceList.id);
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Listino attivato');
    } else {
      ApiErrorHandler.showErrorMessage(
          context, provider.error ?? 'Attivazione non riuscita');
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BillingProvider>();

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Listini', style: Theme.of(context).textTheme.headlineSmall),
              const Spacer(),
              IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: provider.loadPriceLists),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 320, child: _listPanel(provider)),
                const SizedBox(width: 24),
                Expanded(child: _detailPanel(provider)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _listPanel(BillingProvider provider) {
    if (provider.priceLists.isEmpty) {
      return const Card(
        child: Padding(
            padding: EdgeInsets.all(16), child: Text('Nessun listino')),
      );
    }

    return ListView(
      children: provider.priceLists.map((priceList) {
        return Card(
          color: _selectedId == priceList.id
              ? Theme.of(context).colorScheme.primaryContainer
              : null,
          child: ListTile(
            title: Text('${priceList.name} (${priceList.code})'),
            subtitle: Text(
                '${priceList.statusLabel} · ${priceList.itemsCount} voci · '
                'IVA ${priceList.vatRate.toStringAsFixed(0)}%'),
            trailing: PopupMenuButton<String>(
              itemBuilder: (_) => [
                const PopupMenuItem(value: 'clone', child: Text('Nuova versione')),
                if (priceList.status != 'active')
                  const PopupMenuItem(value: 'activate', child: Text('Attiva')),
              ],
              onSelected: (action) {
                if (action == 'clone') _clone(priceList);
                if (action == 'activate') _activate(priceList);
              },
            ),
            onTap: () {
              setState(() => _selectedId = priceList.id);
              provider.loadPriceListDetail(priceList.id);
            },
          ),
        );
      }).toList(),
    );
  }

  Widget _detailPanel(BillingProvider provider) {
    final detail = provider.priceListDetail;
    if (detail == null || _selectedId == null) {
      return const Center(child: Text('Seleziona un listino'));
    }

    // Le voci si leggono meglio raggruppate per piano/tier
    final grouped = <String, List<PriceListItem>>{};
    for (final item in detail.items) {
      grouped.putIfAbsent(item.label, () => []).add(item);
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(detail.name,
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(width: 12),
              Chip(label: Text(detail.statusLabel)),
              if (!detail.isEditable)
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Tooltip(
                    message:
                        'Un listino non in bozza è storia: per cambiare i prezzi '
                        'creane una nuova versione',
                    child: Icon(Icons.lock_outline, size: 18, color: Colors.grey),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          ...grouped.entries.map((entry) => _itemGroup(entry.key, entry.value)),
        ],
      ),
    );
  }

  Widget _itemGroup(String label, List<PriceListItem> items) {
    items.sort((a, b) {
      final byCommitment = a.commitmentMonths.compareTo(b.commitmentMonths);
      return byCommitment != 0
          ? byCommitment
          : a.installmentCount.compareTo(b.installmentCount);
    });

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            DataTable(
              columnSpacing: 24,
              columns: const [
                DataColumn(label: Text('Impegno')),
                DataColumn(label: Text('Rate')),
                DataColumn(label: Text('Totale annuo'), numeric: true),
                DataColumn(label: Text('Per rata'), numeric: true),
                DataColumn(label: Text('Una tantum'), numeric: true),
                DataColumn(label: Text('Provvigione A1/A2/A3')),
              ],
              rows: items
                  .map((item) => DataRow(cells: [
                        DataCell(Text(item.commitmentLabel)),
                        DataCell(Text(item.installmentLabel)),
                        DataCell(Text(_currency.format(item.annualTotal))),
                        DataCell(Text(_currency.format(item.installmentAmount))),
                        DataCell(Text(item.setupFee > 0
                            ? _currency.format(item.setupFee)
                            : '—')),
                        DataCell(Text(item.commissionMonthlyRule
                            ? '1 mensilità dopo il 3° pagamento'
                            : '${item.commissionRateY1.toStringAsFixed(0)}% / '
                                '${item.commissionRateY2.toStringAsFixed(0)}% / '
                                '${item.commissionRateY3plus.toStringAsFixed(0)}%')),
                      ]))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
