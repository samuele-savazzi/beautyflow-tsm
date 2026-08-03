import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../models/billing_models.dart';
import '../../../models/tenant.dart';
import '../../../providers/billing_provider.dart';
import '../../../providers/navigation_provider.dart';
import '../../../utils/error_handler.dart';
import '../../../widgets/wide_data_table.dart';
import '../../billing/add_contract_lines_dialog.dart';
import '../../billing/change_plan_dialog.dart';
import '../../billing/widgets/mark_paid_dialog.dart';
import 'billing_profile_dialog.dart';
import 'create_contract_dialog.dart';

/// Tab "Contratti & Fatturazione" della scheda tenant.
///
/// È deliberatamente autosufficiente: contratto, rate e fatture di questo
/// cliente si gestiscono tutti da qui, senza uscire dalla sua scheda. Il
/// dettaglio contratto resta a disposizione per le versioni archiviate e le
/// provvigioni, ma non serve per il lavoro di tutti i giorni.
class TenantBillingTab extends StatefulWidget {
  final Tenant tenant;

  const TenantBillingTab({super.key, required this.tenant});

  @override
  State<TenantBillingTab> createState() => _TenantBillingTabState();
}

class _TenantBillingTabState extends State<TenantBillingTab> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  final _dateFormat = DateFormat('dd/MM/yyyy');

  TenantBillingProfile? _profile;
  bool _loadingProfile = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadAll());
  }

  Future<void> _loadAll() async {
    final provider = context.read<BillingProvider>();
    await provider.loadContracts(tenantId: widget.tenant.id, status: null);
    await provider.loadInstallments(tenantId: widget.tenant.id);
    await provider.loadInvoices(tenantId: widget.tenant.id);
    final profile = await provider.loadBillingProfile(widget.tenant.id);
    if (!mounted) return;
    setState(() {
      _profile = profile;
      _loadingProfile = false;
    });
  }

  Future<void> _editProfile() async {
    final data = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (_) => BillingProfileDialog(
        profile: _profile,
        tenantName: widget.tenant.name,
      ),
    );
    if (data == null || !mounted) return;

    final provider = context.read<BillingProvider>();
    final ok = await provider.saveBillingProfile(widget.tenant.id, data);
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Dati fiscali salvati');
      _loadAll();
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Salvataggio non riuscito',
      );
    }
  }

  Future<void> _createContract() async {
    if (_profile == null) {
      final proceed = await showDialog<bool>(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Dati fiscali mancanti'),
          content: const Text(
            'Senza ragione sociale e dati fiscali non sarà possibile emettere '
            'la fattura. Vuoi compilarli adesso?',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Procedi comunque'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Compila'),
            ),
          ],
        ),
      );
      if (proceed == true) {
        await _editProfile();
        return;
      }
    }
    if (!mounted) return;

    final data = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (_) => CreateContractDialog(tenantId: widget.tenant.id),
    );
    if (data == null || !mounted) return;

    final provider = context.read<BillingProvider>();
    final contract = await provider.createContract(widget.tenant.id, data);
    if (!mounted) return;
    if (contract != null) {
      ApiErrorHandler.showSuccessSnackbar(
        context,
        'Contratto creato, fattura della prima rata emessa',
      );
      _loadAll();
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Creazione non riuscita',
      );
    }
  }

  // ----- azioni sul contratto -------------------------------------------

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
      _loadAll();
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Cambio piano non riuscito',
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
      _loadAll();
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Aggiunta non riuscita',
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
      _loadAll();
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Rinnovo non riuscito',
      );
    }
  }

  Future<void> _terminate(Contract contract) async {
    final controller = TextEditingController();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Cessa contratto'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Le rate non ancora incassate verranno annullate. La copertura '
              'già pagata resta valida fino alla sua scadenza naturale.',
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
            child: const Text('Annulla'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
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
      _loadAll();
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Operazione non riuscita',
      );
    }
  }

  // ----- azioni sulla rata ------------------------------------------------

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
        'Incasso registrato, copertura estesa',
      );
      _loadAll();
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
      _loadAll();
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
      _loadAll();
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Annullamento non riuscito',
      );
    }
  }

  Future<void> _downloadInvoice(Invoice invoice) async {
    final provider = context.read<BillingProvider>();
    final url = await provider.invoiceDownloadUrl(invoice.id);
    if (!mounted) return;
    if (url == null) {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'PDF non disponibile',
      );
      return;
    }
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }

  // ----- interfaccia ------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BillingProvider>();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _profileCard(),
          const SizedBox(height: 24),
          Row(
            children: [
              Text('Contratti', style: Theme.of(context).textTheme.titleMedium),
              const Spacer(),
              FilledButton.icon(
                onPressed: _createContract,
                icon: const Icon(Icons.add),
                label: const Text('Nuovo contratto'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _contractsList(provider),
          const SizedBox(height: 24),
          Text('Fatture', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          _invoicesCard(provider),
        ],
      ),
    );
  }

  Widget _profileCard() {
    if (_loadingProfile) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: LinearProgressIndicator(),
        ),
      );
    }

    if (_profile == null) {
      return Card(
        color: Theme.of(context).colorScheme.errorContainer,
        child: ListTile(
          leading: const Icon(Icons.warning_amber),
          title: const Text('Dati fiscali non compilati'),
          subtitle: const Text(
            'Necessari per emettere fattura: senza, il giro notturno salta '
            'questo cliente',
          ),
          trailing: FilledButton(
            onPressed: _editProfile,
            child: const Text('Compila'),
          ),
        ),
      );
    }

    final profile = _profile!;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Dati di fatturazione',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: _editProfile,
                  icon: const Icon(Icons.edit, size: 16),
                  label: const Text('Modifica'),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 32,
              runSpacing: 8,
              children: [
                _info('Ragione sociale', profile.businessName),
                _info('P.IVA', profile.vatNumber),
                _info('Codice fiscale', profile.fiscalCode),
                _info('SDI', profile.sdiCode),
                _info('PEC', profile.pec),
                _info('Email amministrativa', profile.billingEmail),
                _info(
                  'Indirizzo',
                  '${profile.address} ${profile.zipCode} ${profile.city} ${profile.province}',
                ),
              ],
            ),
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
        Text(value.trim().isEmpty ? '—' : value),
      ],
    );
  }

  Widget _contractsList(BillingProvider provider) {
    if (provider.contracts.isEmpty) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('Nessun contratto per questo cliente'),
        ),
      );
    }

    return Column(
      children: provider.contracts
          .map((contract) => _contractCard(contract, provider))
          .toList(),
    );
  }

  /// Contratto con dentro il suo scadenzario: si apre e si incassa da qui.
  Widget _contractCard(Contract contract, BillingProvider provider) {
    final installments =
        provider.installments
            .where((rata) => rata.contractId == contract.id)
            .toList()
          ..sort((a, b) {
            final byCycle = a.cycleNumber.compareTo(b.cycleNumber);
            return byCycle != 0 ? byCycle : a.sequence.compareTo(b.sequence);
          });

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ExpansionTile(
        initiallyExpanded: contract.isActive,
        title: Text(
          '${contract.quotaTypeCode ?? 'Contratto'} · '
          '${contract.commitmentLabel}',
        ),
        subtitle: Text(
          '${_currency.format(contract.annualTotal)}/anno · '
          '${contract.installmentCount == 1 ? 'saldo unico' : '${contract.installmentCount} rate'} · '
          'anno ${contract.currentCycle}/${contract.totalCycles}'
          '${contract.endDate == null ? '' : ' · scade il ${_dateFormat.format(contract.endDate!)}'}',
        ),
        trailing: Chip(
          label: Text(
            contract.statusDisplay,
            style: const TextStyle(fontSize: 11),
          ),
          visualDensity: VisualDensity.compact,
        ),
        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        children: [
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              if (contract.isActive) ...[
                FilledButton.tonalIcon(
                  onPressed: () => _changePlan(contract),
                  icon: const Icon(Icons.swap_horiz, size: 18),
                  label: const Text('Cambia piano'),
                ),
                OutlinedButton(
                  onPressed: () => _addLines(contract),
                  child: const Text('Aggiungi voci'),
                ),
                OutlinedButton(
                  onPressed: () => _renew(contract),
                  child: const Text('Rinnova annualità'),
                ),
                OutlinedButton(
                  onPressed: () => _terminate(contract),
                  style: OutlinedButton.styleFrom(foregroundColor: Colors.red),
                  child: const Text('Cessa'),
                ),
              ],
              TextButton.icon(
                onPressed: () => context
                    .read<NavigationProvider>()
                    .navigateToContractDetail(contract.id),
                icon: const Icon(Icons.open_in_new, size: 16),
                label: const Text('Documenti e provvigioni'),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (installments.isEmpty)
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Nessuna rata generata',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            )
          else
            _installmentsTable(installments),
        ],
      ),
    );
  }

  Widget _installmentsTable(List<Installment> installments) {
    return WideDataTable(
      columns: const [
        DataColumn(label: Text('Rata')),
        DataColumn(label: Text('Scadenza')),
        DataColumn(label: Text('Copre fino al')),
        DataColumn(label: Text('Totale'), numeric: true),
        DataColumn(label: Text('Stato')),
        DataColumn(label: Text('Fattura')),
        DataColumn(label: Text('')),
      ],
      rows: installments
          .map(
            (rata) => DataRow(
              cells: [
                DataCell(Text('${rata.cycleNumber}° anno · ${rata.label}')),
                DataCell(
                  Text(
                    rata.dueDate == null
                        ? '-'
                        : _dateFormat.format(rata.dueDate!),
                  ),
                ),
                DataCell(
                  Text(
                    rata.periodEnd == null
                        ? '-'
                        : _dateFormat.format(rata.periodEnd!),
                  ),
                ),
                DataCell(Text(_currency.format(rata.totalAmount))),
                DataCell(_statusBadge(rata)),
                DataCell(Text(rata.invoiceNumber ?? '—')),
                DataCell(_installmentActions(rata)),
              ],
            ),
          )
          .toList(),
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

  Widget _invoicesCard(BillingProvider provider) {
    if (provider.invoices.isEmpty) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('Nessuna fattura emessa a questo cliente'),
        ),
      );
    }

    return Card(
      child: Column(
        children: provider.invoices.map((invoice) {
          final voided = invoice.status == 'voided';
          return ListTile(
            dense: true,
            leading: Icon(
              voided ? Icons.receipt_long_outlined : Icons.receipt_long,
              color: voided ? Colors.grey : null,
            ),
            title: Text(
              invoice.number,
              style: TextStyle(
                decoration: voided ? TextDecoration.lineThrough : null,
              ),
            ),
            subtitle: Text(
              '${invoice.issueDate == null ? '' : 'del ${_dateFormat.format(invoice.issueDate!)} · '}'
              'imponibile ${_currency.format(invoice.subtotal)} + IVA '
              '${_currency.format(invoice.vatAmount)}'
              '${voided ? ' · annullata' : ''}',
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _currency.format(invoice.total),
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                IconButton(
                  icon: const Icon(Icons.download, size: 20),
                  tooltip: 'Scarica PDF',
                  onPressed: () => _downloadInvoice(invoice),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
