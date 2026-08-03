import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../models/billing_models.dart';
import '../../providers/billing_provider.dart';
import '../../widgets/wide_data_table.dart';
import '../../utils/error_handler.dart';
import 'widgets/salesperson_form_dialog.dart';
import '../layout/main_layout.dart';

/// Anagrafica commerciali.
///
/// La colonna che conta è l'ultima: con ritenuta ed Enasarco, quello che si
/// bonifica non coincide né con la provvigione lorda né col costo aziendale.
class SalespeopleScreen extends StatefulWidget {
  const SalespeopleScreen({super.key});

  @override
  State<SalespeopleScreen> createState() => _SalespeopleScreenState();
}

class _SalespeopleScreenState extends State<SalespeopleScreen> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<BillingProvider>().loadSalespeople(),
    );
  }

  Future<void> _openForm({Salesperson? salesperson}) async {
    final data = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (_) => SalespersonFormDialog(salesperson: salesperson),
    );
    if (data == null || !mounted) return;

    final provider = context.read<BillingProvider>();
    final ok = await provider.saveSalesperson(data, id: salesperson?.id);
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Commerciale salvato');
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Salvataggio non riuscito',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BillingProvider>();

    return MainLayout(
      title: 'Commerciali',
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Spacer(),
                FilledButton.icon(
                  onPressed: () => _openForm(),
                  icon: const Icon(Icons.person_add),
                  label: const Text('Nuovo commerciale'),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: provider.loadSalespeople,
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (provider.isLoading)
              const LinearProgressIndicator()
            else if (provider.salespeople.isEmpty)
              const Expanded(
                child: Center(child: Text('Nessun commerciale registrato')),
              )
            else
              Expanded(
                child: Card(
                  child: SingleChildScrollView(
                    child: WideDataTable(
                      columns: const [
                        DataColumn(label: Text('Codice')),
                        DataColumn(label: Text('Nome')),
                        DataColumn(label: Text('Rapporto')),
                        DataColumn(label: Text('P.IVA')),
                        DataColumn(label: Text('Ritenuta')),
                        DataColumn(label: Text('Enasarco')),
                        DataColumn(label: Text('Su 1.000 € netto/costo')),
                        DataColumn(label: Text('')),
                      ],
                      rows: provider.salespeople.map((salesperson) {
                        final preview = salesperson.preview(1000);
                        return DataRow(
                          cells: [
                            DataCell(Text(salesperson.code)),
                            DataCell(
                              Text(
                                salesperson.fullName,
                                style: TextStyle(
                                  color: salesperson.isActive
                                      ? null
                                      : Colors.grey,
                                ),
                              ),
                            ),
                            DataCell(Text(salesperson.contractTypeLabel)),
                            DataCell(
                              Text(
                                salesperson.vatNumber.isEmpty
                                    ? '—'
                                    : salesperson.vatNumber,
                              ),
                            ),
                            DataCell(
                              Text(
                                '${salesperson.withholdingRate.toStringAsFixed(0)}% '
                                'su ${salesperson.withholdingBasePercent.toStringAsFixed(0)}%',
                              ),
                            ),
                            DataCell(
                              Text(
                                salesperson.enasarcoAgentRate == 0 &&
                                        salesperson.enasarcoCompanyRate == 0
                                    ? '—'
                                    : '${salesperson.enasarcoAgentRate.toStringAsFixed(1)}% / '
                                          '${salesperson.enasarcoCompanyRate.toStringAsFixed(1)}%',
                              ),
                            ),
                            DataCell(
                              Text(
                                '${_currency.format(preview['net'])} / '
                                '${_currency.format(preview['companyCost'])}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            DataCell(
                              IconButton(
                                icon: const Icon(Icons.edit, size: 18),
                                onPressed: () =>
                                    _openForm(salesperson: salesperson),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
