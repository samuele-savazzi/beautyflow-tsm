import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../../models/billing_models.dart';
import '../../providers/billing_provider.dart';
import '../../utils/error_handler.dart';
import '../../widgets/wide_data_table.dart';
import 'widgets/mark_paid_dialog.dart';
import '../layout/main_layout.dart';

/// Scadenzario: tutte le rate da incassare, con quelle scadute in evidenza.
///
/// È la schermata operativa quotidiana dell'amministrazione: da qui si registra
/// l'incasso, che è l'operazione che aggiorna copertura, cassa e provvigioni.
class InstallmentsScreen extends StatefulWidget {
  const InstallmentsScreen({super.key});

  @override
  State<InstallmentsScreen> createState() => _InstallmentsScreenState();
}

class _InstallmentsScreenState extends State<InstallmentsScreen> {
  final _dateFormat = DateFormat('dd/MM/yyyy');
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');

  String _statusFilter = 'pending,overdue';
  int _page = 1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    context.read<BillingProvider>().loadInstallments(
      page: _page,
      status: _statusFilter.isEmpty ? null : _statusFilter,
    );
  }

  Future<void> _markPaid(Installment installment) async {
    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (_) => MarkPaidDialog(installment: installment),
    );
    if (result == null || !mounted) return;

    final provider = context.read<BillingProvider>();
    final ok = await provider.markInstallmentPaid(installment.id, result);
    if (!mounted) return;

    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(
        context,
        'Incasso registrato: ${installment.tenantName}',
      );
      _load();
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Registrazione non riuscita',
      );
    }
  }

  Future<void> _issueInvoice(Installment installment) async {
    final provider = context.read<BillingProvider>();
    final ok = await provider.issueInvoiceForInstallment(installment.id);
    if (!mounted) return;

    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Fattura emessa');
      _load();
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Emissione non riuscita',
      );
    }
  }

  /// Annulla una rata non incassata (contratto rinegoziato, storno).
  ///
  /// Se la rata ha già una fattura il backend la annulla a sua volta: il
  /// numero non viene riusato.
  Future<void> _cancel(Installment installment) async {
    final controller = TextEditingController();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Annulla rata'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'La rata di ${installment.tenantName} non sarà più esigibile. '
              'Se era già stata fatturata, la fattura viene annullata e la '
              'transazione del cliente stornata.',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Motivo',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('Indietro'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Annulla rata'),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;

    final provider = context.read<BillingProvider>();
    final ok = await provider.cancelInstallment(
      installment.id,
      controller.text,
    );
    if (!mounted) return;

    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Rata annullata');
      _load();
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Annullamento non riuscito',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BillingProvider>();

    return MainLayout(
      title: 'Scadenzario',
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
                  tooltip: 'Aggiorna',
                  onPressed: _load,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                _filterChip('Da incassare', 'pending,overdue'),
                _filterChip('Solo scadute', 'overdue'),
                _filterChip('Incassate', 'paid'),
                _filterChip('Tutte', ''),
              ],
            ),
            const SizedBox(height: 16),
            if (provider.isLoading)
              const LinearProgressIndicator()
            else if (provider.error != null)
              _ErrorBox(message: provider.error!, onRetry: _load)
            else if (provider.installments.isEmpty)
              const Expanded(
                child: Center(child: Text('Nessuna rata per i filtri scelti')),
              )
            else
              Expanded(child: _table(provider)),
            if (provider.installmentsPages > 1) _pagination(provider),
          ],
        ),
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

  Widget _table(BillingProvider provider) {
    return Card(
      child: SingleChildScrollView(
        child: WideDataTable(
          columns: const [
            DataColumn(label: Text('Cliente')),
            DataColumn(label: Text('Rata')),
            DataColumn(label: Text('Scadenza')),
            DataColumn(label: Text('Copertura')),
            DataColumn(label: Text('Importo'), numeric: true),
            DataColumn(label: Text('Stato')),
            DataColumn(label: Text('Fattura')),
            DataColumn(label: Text('Azioni')),
          ],
          rows: provider.installments.map((installment) {
            return DataRow(
              cells: [
                DataCell(Text(installment.tenantName)),
                DataCell(
                  Text(
                    'ciclo ${installment.cycleNumber} · ${installment.label}',
                  ),
                ),
                DataCell(
                  Text(
                    installment.dueDate == null
                        ? '-'
                        : _dateFormat.format(installment.dueDate!),
                  ),
                ),
                DataCell(
                  Text(
                    installment.periodStart == null ||
                            installment.periodEnd == null
                        ? '-'
                        : '${_dateFormat.format(installment.periodStart!)} - '
                              '${_dateFormat.format(installment.periodEnd!)}',
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                DataCell(Text(_currency.format(installment.totalAmount))),
                DataCell(_statusBadge(installment)),
                DataCell(Text(installment.invoiceNumber ?? '—')),
                DataCell(_actions(installment)),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _statusBadge(Installment installment) {
    final (color, label) = switch (installment.status) {
      'paid' => (Colors.green, 'Incassata'),
      'overdue' => (Colors.red, 'Scaduta'),
      'cancelled' => (Colors.grey, 'Annullata'),
      _ => (Colors.orange, 'Da incassare'),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(label, style: TextStyle(color: color, fontSize: 12)),
    );
  }

  Widget _actions(Installment installment) {
    if (!installment.isOpen) return const SizedBox.shrink();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (installment.invoiceId == null)
          IconButton(
            icon: const Icon(Icons.receipt_long, size: 20),
            tooltip: 'Emetti fattura ora',
            onPressed: () => _issueInvoice(installment),
          ),
        FilledButton.tonal(
          onPressed: () => _markPaid(installment),
          child: const Text('Incassa'),
        ),
        IconButton(
          icon: const Icon(Icons.block, size: 20),
          tooltip: 'Annulla rata',
          onPressed: () => _cancel(installment),
        ),
      ],
    );
  }

  Widget _pagination(BillingProvider provider) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: _page > 1
                ? () {
                    setState(() => _page--);
                    _load();
                  }
                : null,
          ),
          Text('$_page / ${provider.installmentsPages}'),
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: _page < provider.installmentsPages
                ? () {
                    setState(() => _page++);
                    _load();
                  }
                : null,
          ),
        ],
      ),
    );
  }
}

class _ErrorBox extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorBox({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.errorContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Icon(Icons.error_outline),
            const SizedBox(width: 12),
            Expanded(child: Text(message)),
            TextButton(onPressed: onRetry, child: const Text('Riprova')),
          ],
        ),
      ),
    );
  }
}
