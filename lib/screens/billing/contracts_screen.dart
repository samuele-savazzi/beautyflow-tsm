import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../providers/billing_provider.dart';
import '../../providers/navigation_provider.dart';

/// Elenco dei contratti attivi, con impegno, valore e commerciale.
class ContractsScreen extends StatefulWidget {
  const ContractsScreen({super.key});

  @override
  State<ContractsScreen> createState() => _ContractsScreenState();
}

class _ContractsScreenState extends State<ContractsScreen> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  final _dateFormat = DateFormat('dd/MM/yyyy');

  String? _statusFilter = 'active';
  int _page = 1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    context
        .read<BillingProvider>()
        .loadContracts(page: _page, status: _statusFilter);
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
              Text('Contratti',
                  style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(width: 16),
              Text('${provider.contractsCount} totali',
                  style: const TextStyle(color: Colors.grey)),
              const Spacer(),
              IconButton(icon: const Icon(Icons.refresh), onPressed: _load),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: [
              _filterChip('Attivi', 'active'),
              _filterChip('Conclusi', 'completed'),
              _filterChip('Cessati', 'terminated'),
              _filterChip('Tutti', null),
            ],
          ),
          const SizedBox(height: 16),
          if (provider.isLoading)
            const LinearProgressIndicator()
          else if (provider.error != null)
            Text(provider.error!, style: const TextStyle(color: Colors.red))
          else if (provider.contracts.isEmpty)
            const Expanded(child: Center(child: Text('Nessun contratto')))
          else
            Expanded(
              child: Card(
                child: SingleChildScrollView(
                  child: DataTable(
                    showCheckboxColumn: false,
                    columns: const [
                      DataColumn(label: Text('Cliente')),
                      DataColumn(label: Text('Piano')),
                      DataColumn(label: Text('Impegno')),
                      DataColumn(label: Text('Rate')),
                      DataColumn(label: Text('Anno')),
                      DataColumn(label: Text('Canone annuo'), numeric: true),
                      DataColumn(label: Text('Scadenza')),
                      DataColumn(label: Text('Commerciale')),
                      DataColumn(label: Text('Stato')),
                    ],
                    rows: provider.contracts.map((contract) {
                      return DataRow(
                        onSelectChanged: (_) => context
                            .read<NavigationProvider>()
                            .navigateToContractDetail(contract.id),
                        cells: [
                          DataCell(Text(contract.tenantName)),
                          DataCell(Text(contract.quotaTypeCode ?? '—')),
                          DataCell(Text(contract.commitmentLabel)),
                          DataCell(Text(contract.installmentCount == 1
                              ? 'saldo unico'
                              : '${contract.installmentCount} rate')),
                          DataCell(Text(
                              '${contract.currentCycle}/${contract.totalCycles}')),
                          DataCell(
                              Text(_currency.format(contract.annualTotal))),
                          DataCell(Text(contract.endDate == null
                              ? '-'
                              : _dateFormat.format(contract.endDate!))),
                          DataCell(Text(contract.salespersonName ?? '—')),
                          DataCell(Text(contract.statusDisplay)),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _filterChip(String label, String? value) {
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
}
