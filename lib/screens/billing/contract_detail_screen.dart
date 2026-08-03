import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:file_picker/file_picker.dart';

import '../../models/billing_models.dart';
import '../../providers/billing_provider.dart';
import '../../providers/navigation_provider.dart';
import '../../utils/error_handler.dart';
import '../../utils/file_utils.dart';
import '../../widgets/wide_data_table.dart';
import 'add_contract_lines_dialog.dart';
import 'change_plan_dialog.dart';
import 'widgets/mark_paid_dialog.dart';
import '../layout/main_layout.dart';

/// Dettaglio di un contratto: righe pinnate, scadenzario, provvigioni e
/// versioni archiviate.
class ContractDetailScreen extends StatefulWidget {
  final int contractId;

  const ContractDetailScreen({super.key, required this.contractId});

  @override
  State<ContractDetailScreen> createState() => _ContractDetailScreenState();
}

class _ContractDetailScreenState extends State<ContractDetailScreen> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  final _dateFormat = DateFormat('dd/MM/yyyy');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) =>
          context.read<BillingProvider>().loadContractDetail(widget.contractId),
    );
  }

  Future<void> _terminate(Contract contract) async {
    final controller = TextEditingController();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Cessa contratto'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Le rate non ancora incassate verranno annullate. La copertura '
              'già pagata resta valida fino alla sua scadenza naturale.',
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
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Annulla'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Cessa'),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;

    final provider = context.read<BillingProvider>();
    final ok = await provider.terminateContract(contract.id, controller.text);
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Contratto cessato');
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Operazione non riuscita',
      );
    }
  }

  Future<void> _renew(Contract contract) async {
    final provider = context.read<BillingProvider>();
    final ok = await provider.renewContractCycle(contract.id);
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(
        context,
        'Rinnovata un\'altra annualità',
      );
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Rinnovo non riuscito',
      );
    }
  }

  /// Sposta il contratto su un altro listino.
  ///
  /// Ri-snapshotta le righe risolvibili e rigenera solo le rate non ancora
  /// incassate: quello che il cliente ha già pagato non si tocca.
  Future<void> _migratePriceList(Contract contract) async {
    final provider = context.read<BillingProvider>();
    await provider.loadPriceLists(status: 'active');
    if (!mounted) return;

    final candidates = provider.priceLists
        .where((list) => list.code != contract.priceListCode)
        .toList();
    if (candidates.isEmpty) {
      ApiErrorHandler.showErrorMessage(
        context,
        'Nessun altro listino attivo su cui migrare',
      );
      return;
    }

    int? selected = candidates.first.id;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (_, setDialogState) => AlertDialog(
          title: const Text('Cambia listino'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Il contratto passa dal listino ${contract.priceListCode} a '
                'quello scelto. Vengono riprezzate solo le rate ancora da '
                'incassare; quelle già pagate restano come sono.',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<int>(
                initialValue: selected,
                decoration: const InputDecoration(
                  labelText: 'Listino di destinazione',
                  border: OutlineInputBorder(),
                ),
                items: candidates
                    .map(
                      (list) => DropdownMenuItem(
                        value: list.id,
                        child: Text('${list.code} - ${list.name}'),
                      ),
                    )
                    .toList(),
                onChanged: (value) => setDialogState(() => selected = value),
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
              child: const Text('Migra'),
            ),
          ],
        ),
      ),
    );
    if (confirmed != true || selected == null || !mounted) return;

    final ok = await provider.migrateContractPriceList(contract.id, selected!);
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Listino aggiornato');
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Migrazione non riuscita',
      );
    }
  }

  /// Upgrade, downgrade o rimozione di moduli: una sola operazione.
  Future<void> _changePlan(Contract contract) async {
    final payload = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (_) => ChangePlanDialog(contract: contract),
    );
    if (payload == null || !mounted) return;

    final provider = context.read<BillingProvider>();
    final created = await provider.changePlan(contract.id, payload);
    if (!mounted) return;
    if (created != null) {
      ApiErrorHandler.showSuccessSnackbar(
        context,
        'Nuovo contratto #${created.id} attivo',
      );
      context.read<NavigationProvider>().navigateToContractDetail(created.id);
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Cambio piano non riuscito',
      );
    }
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
      ApiErrorHandler.showSuccessSnackbar(context, 'Incasso registrato');
      await provider.loadContractDetail(widget.contractId);
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
      await provider.loadContractDetail(widget.contractId);
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Emissione non riuscita',
      );
    }
  }

  Future<void> _cancelInstallment(Installment installment) async {
    final controller = TextEditingController();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Annulla rata'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'La rata non sarà più esigibile. Se era già fatturata, la '
              'fattura viene annullata e la transazione del cliente stornata.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
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
      await provider.loadContractDetail(widget.contractId);
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Annullamento non riuscito',
      );
    }
  }

  Future<void> _addLines(Contract contract) async {
    final payload = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (_) => AddContractLinesDialog(contract: contract),
    );
    if (payload == null || !mounted) return;

    final provider = context.read<BillingProvider>();
    final addon = await provider.createAddon(contract.id, payload);
    if (!mounted) return;
    if (addon != null) {
      ApiErrorHandler.showSuccessSnackbar(
        context,
        'Voci aggiunte con il contratto #${addon.id}',
      );
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Aggiunta non riuscita',
      );
    }
  }

  /// Carica il PDF firmato dal cliente sull'ultima versione archiviata.
  Future<void> _uploadSigned(Contract contract) async {
    final picked = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      withData: true,
    );
    if (picked == null || picked.files.isEmpty || !mounted) return;

    final file = picked.files.first;
    final bytes = file.bytes;
    if (bytes == null) {
      ApiErrorHandler.showErrorMessage(context, 'File non leggibile');
      return;
    }
    final sizeError = FileUtils.validateFileSize(bytes.length);
    if (sizeError != null) {
      ApiErrorHandler.showErrorMessage(context, sizeError);
      return;
    }

    final nameController = TextEditingController();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Contratto firmato'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(file.name),
            const SizedBox(height: 12),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Firmato da',
                border: OutlineInputBorder(),
              ),
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
            child: const Text('Carica'),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;

    final provider = context.read<BillingProvider>();
    final ok = await provider.uploadSignedContract(
      contract.id,
      fileName: file.name,
      bytes: bytes,
      signedByName: nameController.text.trim(),
    );
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(
        context,
        'Contratto firmato caricato',
      );
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Upload non riuscito',
      );
    }
  }

  Future<void> _openDocument(ContractDocument document) async {
    final provider = context.read<BillingProvider>();
    final url = await provider.contractDocumentUrl(document.id);
    if (!mounted) return;
    if (url == null) {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Documento non disponibile',
      );
      return;
    }
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BillingProvider>();
    final contract = provider.contractDetail;

    return MainLayout(
      title: "Contratto #${widget.contractId}",
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => context
                      .read<NavigationProvider>()
                      .navigateTo(AppSection.contracts),
                ),
                const Spacer(),
                if (contract != null) ...[
                  OutlinedButton.icon(
                    onPressed: () => _uploadSigned(contract),
                    icon: const Icon(Icons.upload_file, size: 18),
                    label: const Text('Contratto firmato'),
                  ),
                  const SizedBox(width: 8),
                ],
                if (contract != null && contract.isActive) ...[
                  FilledButton.tonalIcon(
                    onPressed: () => _changePlan(contract),
                    icon: const Icon(Icons.swap_horiz, size: 18),
                    label: const Text('Cambia piano'),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () => _addLines(contract),
                    child: const Text('Aggiungi voci'),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () => _migratePriceList(contract),
                    child: const Text('Cambia listino'),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () => _renew(contract),
                    child: const Text('Rinnova annualità'),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: () => _terminate(contract),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                    ),
                    child: const Text('Cessa'),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 16),
            if (provider.isLoading && contract == null)
              const Expanded(child: Center(child: CircularProgressIndicator()))
            else if (contract == null)
              Expanded(
                child: Center(
                  child: Text(provider.error ?? 'Contratto non trovato'),
                ),
              )
            else
              Expanded(child: _body(contract, provider)),
          ],
        ),
      ),
    );
  }

  Widget _body(Contract contract, BillingProvider provider) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _header(contract),
          const SizedBox(height: 16),
          _section('Voci del contratto', _linesTable(contract)),
          const SizedBox(height: 16),
          if (contract.childContracts.isNotEmpty) ...[
            _section(
              'Moduli aggiunti dopo la firma',
              _childContracts(contract),
            ),
            const SizedBox(height: 16),
          ],
          _section('Scadenzario', _installmentsTable(contract)),
          const SizedBox(height: 16),
          if (provider.commissions.isNotEmpty)
            _section('Provvigioni', _commissionsTable(provider)),
          const SizedBox(height: 16),
          _section('Versioni archiviate', _documentsList(contract)),
        ],
      ),
    );
  }

  Widget _header(Contract contract) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 32,
          runSpacing: 12,
          children: [
            _info('Cliente', contract.tenantName),
            _info('Piano', contract.quotaTypeCode ?? '—'),
            _info('Impegno', contract.commitmentLabel),
            _info(
              'Annualità',
              '${contract.currentCycle} di ${contract.totalCycles}',
            ),
            _info('Rate per anno', '${contract.installmentCount}'),
            _info('Canone annuo', _currency.format(contract.annualTotal)),
            if (contract.setupTotal > 0)
              _info('Una tantum', _currency.format(contract.setupTotal)),
            _info(
              'Decorrenza',
              contract.startDate == null
                  ? '-'
                  : _dateFormat.format(contract.startDate!),
            ),
            _info(
              'Scadenza',
              contract.endDate == null
                  ? '-'
                  : _dateFormat.format(contract.endDate!),
            ),
            _info('Listino', contract.priceListCode),
            _info('Commerciale', contract.salespersonName ?? '—'),
            _info('Stato', contract.statusDisplay),
          ],
        ),
      ),
    );
  }

  Widget _info(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: const TextStyle(fontSize: 11, color: Colors.grey)),
        Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
      ],
    );
  }

  Widget _section(String title, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        child,
      ],
    );
  }

  Widget _linesTable(Contract contract) {
    return Card(
      child: WideDataTable(
        columns: const [
          DataColumn(label: Text('Voce')),
          DataColumn(label: Text('Q.tà'), numeric: true),
          DataColumn(label: Text('Canone annuo'), numeric: true),
          DataColumn(label: Text('Una tantum'), numeric: true),
          DataColumn(label: Text('Provvigione A1/A2/A3')),
        ],
        rows: contract.lines
            .map(
              (line) => DataRow(
                cells: [
                  DataCell(Text(line.description)),
                  DataCell(Text('${line.quantity}')),
                  DataCell(Text(_currency.format(line.annualTotal))),
                  DataCell(Text(_currency.format(line.setupFee))),
                  DataCell(
                    Text(
                      '${line.commissionRateY1.toStringAsFixed(0)}% / '
                      '${line.commissionRateY2.toStringAsFixed(0)}% / '
                      '${line.commissionRateY3plus.toStringAsFixed(0)}%',
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _installmentsTable(Contract contract) {
    return Card(
      child: WideDataTable(
        columns: const [
          DataColumn(label: Text('Anno')),
          DataColumn(label: Text('Rata')),
          DataColumn(label: Text('Scadenza')),
          DataColumn(label: Text('Copertura fino al')),
          DataColumn(label: Text('Totale'), numeric: true),
          DataColumn(label: Text('Stato')),
          DataColumn(label: Text('Fattura')),
          DataColumn(label: Text('')),
        ],
        rows: contract.installments
            .map(
              (installment) => DataRow(
                cells: [
                  DataCell(Text('${installment.cycleNumber}')),
                  DataCell(Text(installment.label)),
                  DataCell(
                    Text(
                      installment.dueDate == null
                          ? '-'
                          : _dateFormat.format(installment.dueDate!),
                    ),
                  ),
                  DataCell(
                    Text(
                      installment.periodEnd == null
                          ? '-'
                          : _dateFormat.format(installment.periodEnd!),
                    ),
                  ),
                  DataCell(Text(_currency.format(installment.totalAmount))),
                  DataCell(Text(installment.statusDisplay)),
                  DataCell(Text(installment.invoiceNumber ?? '—')),
                  DataCell(_installmentActions(installment)),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  /// Le stesse azioni dello scadenzario, qui dove si guarda il contratto:
  /// per incassare una rata non deve servire cambiare schermata.
  Widget _installmentActions(Installment installment) {
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
          onPressed: () => _cancelInstallment(installment),
        ),
      ],
    );
  }

  /// Add-on sottoscritti dopo la firma: sono contratti separati, e senza
  /// vederli da qui non si saprebbe nemmeno che esistono.
  Widget _childContracts(Contract contract) {
    return Card(
      child: Column(
        children: contract.childContracts.map((child) {
          return ListTile(
            leading: const Icon(Icons.extension),
            title: Text(child.lines.map((line) => line.description).join(', ')),
            subtitle: Text(
              '${_currency.format(child.annualTotal)}/anno · '
              '${child.statusDisplay}'
              '${child.startDate == null ? '' : ' · dal ${_dateFormat.format(child.startDate!)}'}',
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (child.isActive)
                  TextButton(
                    onPressed: () => _terminate(child),
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    child: const Text('Rimuovi'),
                  ),
                const Icon(Icons.chevron_right),
              ],
            ),
            onTap: () => context
                .read<NavigationProvider>()
                .navigateToContractDetail(child.id),
          );
        }).toList(),
      ),
    );
  }

  Widget _commissionsTable(BillingProvider provider) {
    return Card(
      child: WideDataTable(
        columns: const [
          DataColumn(label: Text('Commerciale')),
          DataColumn(label: Text('Tipo')),
          DataColumn(label: Text('Anno')),
          DataColumn(label: Text('Base'), numeric: true),
          DataColumn(label: Text('%'), numeric: true),
          DataColumn(label: Text('Importo'), numeric: true),
          DataColumn(label: Text('Stato')),
        ],
        rows: provider.commissions
            .map(
              (commission) => DataRow(
                cells: [
                  DataCell(Text(commission.salespersonName)),
                  DataCell(Text(commission.kindDisplay)),
                  DataCell(Text('${commission.cycleNumber}')),
                  DataCell(Text(_currency.format(commission.baseAmount))),
                  DataCell(Text('${commission.rate.toStringAsFixed(0)}%')),
                  DataCell(Text(_currency.format(commission.amount))),
                  DataCell(Text(commission.statusDisplay)),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _documentsList(Contract contract) {
    if (contract.documents.isEmpty) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('Nessuna versione archiviata'),
        ),
      );
    }

    return Card(
      child: Column(
        children: contract.documents.map((document) {
          return ListTile(
            leading: CircleAvatar(child: Text('v${document.version}')),
            title: Text(document.documentTypeDisplay),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (document.changeReason.isNotEmpty)
                  Text(document.changeReason),
                if (document.signedFileUploaded)
                  Text(
                    'Firmato da ${document.signedByName}',
                    style: const TextStyle(fontSize: 12),
                  ),
                if (document.retentionUntil != null)
                  Text(
                    'Conservazione fino al '
                    '${_dateFormat.format(document.retentionUntil!)}',
                    style: const TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                if (document.deletedAt != null)
                  const Text(
                    'Cancellato per fine conservazione',
                    style: TextStyle(fontSize: 11, color: Colors.red),
                  ),
              ],
            ),
            isThreeLine: true,
            trailing: document.isAvailable
                ? IconButton(
                    icon: const Icon(Icons.download),
                    tooltip: 'Scarica (link valido 15 minuti)',
                    onPressed: () => _openDocument(document),
                  )
                : null,
          );
        }).toList(),
      ),
    );
  }
}
