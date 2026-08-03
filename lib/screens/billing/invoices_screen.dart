import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/billing_models.dart';
import '../../providers/billing_provider.dart';
import '../../utils/error_handler.dart';

/// Fatture emesse. Il PDF è lo stesso che il cliente trova allegato alla
/// transazione nel proprio storico pagamenti.
class InvoicesScreen extends StatefulWidget {
  const InvoicesScreen({super.key});

  @override
  State<InvoicesScreen> createState() => _InvoicesScreenState();
}

class _InvoicesScreenState extends State<InvoicesScreen> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  final _dateFormat = DateFormat('dd/MM/yyyy');
  final _searchController = TextEditingController();

  int _page = 1;
  int? _year = DateTime.now().year;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _load() {
    context.read<BillingProvider>().loadInvoices(
          page: _page,
          year: _year,
          search: _searchController.text.trim(),
        );
  }

  Future<void> _download(Invoice invoice) async {
    final provider = context.read<BillingProvider>();
    final url = await provider.invoiceDownloadUrl(invoice.id);
    if (!mounted) return;
    if (url == null) {
      ApiErrorHandler.showErrorMessage(
          context, provider.error ?? 'PDF non disponibile');
      return;
    }
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }

  /// Rigenera il PDF sul documento già emesso.
  ///
  /// Serve quando il render era fallito o quando è cambiata l'intestazione
  /// aziendale: numero, importi e data restano quelli della fattura.
  Future<void> _regenerate(Invoice invoice) async {
    final provider = context.read<BillingProvider>();
    final ok = await provider.regenerateInvoicePdf(invoice.id);
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'PDF rigenerato');
      _load();
    } else {
      ApiErrorHandler.showErrorMessage(
          context, provider.error ?? 'Rigenerazione non riuscita');
    }
  }

  Future<void> _void(Invoice invoice) async {
    final controller = TextEditingController();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Annulla ${invoice.number}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Il numero non verrà riutilizzato e la rata tornerà da incassare.',
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  labelText: 'Motivo', border: OutlineInputBorder()),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Indietro')),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Annulla fattura'),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;

    final provider = context.read<BillingProvider>();
    final ok = await provider.voidInvoice(invoice.id, controller.text);
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Fattura annullata');
      _load();
    } else {
      ApiErrorHandler.showErrorMessage(
          context, provider.error ?? 'Annullamento non riuscito');
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
              Text('Fatture', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(width: 24),
              SizedBox(
                width: 260,
                child: TextField(
                  controller: _searchController,
                  decoration: const InputDecoration(
                    hintText: 'Numero o cliente',
                    prefixIcon: Icon(Icons.search),
                    isDense: true,
                    border: OutlineInputBorder(),
                  ),
                  onSubmitted: (_) => _load(),
                ),
              ),
              const SizedBox(width: 12),
              DropdownButton<int?>(
                value: _year,
                hint: const Text('Anno'),
                items: [
                  const DropdownMenuItem(value: null, child: Text('Tutti')),
                  for (var year = DateTime.now().year;
                      year >= DateTime.now().year - 5;
                      year--)
                    DropdownMenuItem(value: year, child: Text('$year')),
                ],
                onChanged: (value) {
                  setState(() {
                    _year = value;
                    _page = 1;
                  });
                  _load();
                },
              ),
              const Spacer(),
              IconButton(icon: const Icon(Icons.refresh), onPressed: _load),
            ],
          ),
          const SizedBox(height: 16),
          if (provider.isLoading)
            const LinearProgressIndicator()
          else if (provider.error != null)
            Text(provider.error!, style: const TextStyle(color: Colors.red))
          else if (provider.invoices.isEmpty)
            const Expanded(child: Center(child: Text('Nessuna fattura')))
          else
            Expanded(
              child: Card(
                child: SingleChildScrollView(
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Numero')),
                      DataColumn(label: Text('Data')),
                      DataColumn(label: Text('Cliente')),
                      DataColumn(label: Text('Imponibile'), numeric: true),
                      DataColumn(label: Text('IVA'), numeric: true),
                      DataColumn(label: Text('Totale'), numeric: true),
                      DataColumn(label: Text('Scadenza')),
                      DataColumn(label: Text('Stato')),
                      DataColumn(label: Text('')),
                    ],
                    rows: provider.invoices.map((invoice) {
                      return DataRow(cells: [
                        DataCell(Text(invoice.number,
                            style: TextStyle(
                              decoration: invoice.isVoided
                                  ? TextDecoration.lineThrough
                                  : null,
                            ))),
                        DataCell(Text(invoice.issueDate == null
                            ? '-'
                            : _dateFormat.format(invoice.issueDate!))),
                        DataCell(Text(invoice.tenantName)),
                        DataCell(Text(_currency.format(invoice.subtotal))),
                        DataCell(Text(_currency.format(invoice.vatAmount))),
                        DataCell(Text(_currency.format(invoice.total))),
                        DataCell(Text(invoice.dueDate == null
                            ? '-'
                            : _dateFormat.format(invoice.dueDate!))),
                        DataCell(invoice.isVoided
                            ? const Text('Annullata',
                                style: TextStyle(color: Colors.red))
                            : const Text('Emessa')),
                        DataCell(Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.picture_as_pdf, size: 20),
                              tooltip: 'Scarica PDF',
                              onPressed: () => _download(invoice),
                            ),
                            if (!invoice.isVoided) ...[
                              IconButton(
                                icon: const Icon(Icons.autorenew, size: 20),
                                tooltip: 'Rigenera PDF',
                                onPressed: () => _regenerate(invoice),
                              ),
                              IconButton(
                                icon: const Icon(Icons.block, size: 20),
                                tooltip: 'Annulla',
                                onPressed: () => _void(invoice),
                              ),
                            ],
                          ],
                        )),
                      ]);
                    }).toList(),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
