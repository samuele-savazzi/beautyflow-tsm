import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../models/billing_models.dart';
import '../../../models/tenant.dart';
import '../../../providers/billing_provider.dart';
import '../../../providers/navigation_provider.dart';
import '../../../utils/error_handler.dart';
import 'billing_profile_dialog.dart';
import 'create_contract_dialog.dart';

/// Tab "Contratti & Fatturazione" della scheda tenant.
///
/// Da qui si compilano i dati fiscali (senza i quali non si può emettere
/// fattura) e si sottoscrive un contratto.
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
    provider.loadContracts(tenantId: widget.tenant.id, status: null);
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
          context, provider.error ?? 'Salvataggio non riuscito');
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
                child: const Text('Procedi comunque')),
            FilledButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Compila')),
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
      ApiErrorHandler.showSuccessSnackbar(context, 'Contratto creato');
      _loadAll();
    } else {
      ApiErrorHandler.showErrorMessage(
          context, provider.error ?? 'Creazione non riuscita');
    }
  }

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
              Text('Contratti',
                  style: Theme.of(context).textTheme.titleMedium),
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
        ],
      ),
    );
  }

  Widget _profileCard() {
    if (_loadingProfile) {
      return const Card(
        child: Padding(
            padding: EdgeInsets.all(16), child: LinearProgressIndicator()),
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
              'questo cliente'),
          trailing: FilledButton(
              onPressed: _editProfile, child: const Text('Compila')),
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
                Text('Dati di fatturazione',
                    style: Theme.of(context).textTheme.titleMedium),
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
                _info('Indirizzo',
                    '${profile.address} ${profile.zipCode} ${profile.city} ${profile.province}'),
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

    return Card(
      child: Column(
        children: provider.contracts.map((contract) {
          return ListTile(
            title: Text('${contract.quotaTypeCode ?? 'Contratto'} · '
                '${contract.commitmentLabel}'),
            subtitle: Text(
              '${_currency.format(contract.annualTotal)}/anno · '
              '${contract.installmentCount == 1 ? 'saldo unico' : '${contract.installmentCount} rate'} · '
              'anno ${contract.currentCycle}/${contract.totalCycles}'
              '${contract.endDate == null ? '' : ' · scade il ${_dateFormat.format(contract.endDate!)}'}',
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Chip(
                  label: Text(contract.statusDisplay,
                      style: const TextStyle(fontSize: 11)),
                  visualDensity: VisualDensity.compact,
                ),
                const Icon(Icons.chevron_right),
              ],
            ),
            onTap: () => context
                .read<NavigationProvider>()
                .navigateToContractDetail(contract.id),
          );
        }).toList(),
      ),
    );
  }
}
