import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/tenant.dart';
import '../../models/tier.dart';
import '../../providers/quota_type_provider.dart';
import '../../providers/tier_provider.dart';
import '../../utils/error_handler.dart';
import '../../widgets/wide_data_table.dart';
import '../layout/main_layout.dart';
import 'widgets/quota_type_form_dialog.dart';
import 'widgets/tier_form_dialog.dart';

/// Catalogo: piani e moduli extra.
///
/// Sono due cose diverse e conviene tenerlo a mente:
/// - il **piano** porta i limiti operativi (postazioni, operatori, SMS) e si
///   applica al tenant;
/// - il **modulo** sblocca una funzionalità, e non tocca nessun limite.
///
/// Nessuno dei due ha un prezzo che il contratto guardi: quello sta sulla voce
/// di listino, ed è da lì che arriva in fattura.
class PlansTiersScreen extends StatefulWidget {
  const PlansTiersScreen({super.key});

  @override
  State<PlansTiersScreen> createState() => _PlansTiersScreenState();
}

class _PlansTiersScreenState extends State<PlansTiersScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<QuotaTypeProvider>().loadQuotaTypes();
      context.read<TierProvider>().loadTiers(refresh: true);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _editPlan({QuotaType? plan}) async {
    final data = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (_) => QuotaTypeFormDialog(quotaType: plan),
    );
    if (data == null || !mounted) return;

    final provider = context.read<QuotaTypeProvider>();
    final ok = await provider.saveQuotaType(data, id: plan?.id);
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(
        context,
        plan == null ? 'Piano creato' : 'Piano aggiornato',
      );
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Salvataggio non riuscito',
      );
    }
  }

  Future<void> _editTier({Tier? tier}) async {
    final data = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (_) => TierFormDialog(tier: tier),
    );
    if (data == null || !mounted) return;

    final provider = context.read<TierProvider>();
    final ok = tier == null
        ? await provider.createTier(data)
        : await provider.updateTier(tier.id, data);
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(
        context,
        tier == null ? 'Modulo creato' : 'Modulo aggiornato',
      );
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Salvataggio non riuscito',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Piani e moduli',
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Piani (limiti)'),
              Tab(text: 'Moduli extra (funzionalità)'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [_plansTab(), _tiersTab()],
            ),
          ),
        ],
      ),
    );
  }

  Widget _plansTab() {
    final provider = context.watch<QuotaTypeProvider>();
    final plans = provider.quotaTypes;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Il piano decide i limiti operativi del salone. Il prezzo di '
                  'vendita, invece, si imposta sulla voce di listino.',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              FilledButton.icon(
                onPressed: () => _editPlan(),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('Nuovo piano'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          if (provider.isLoading && plans == null)
            const Expanded(child: Center(child: CircularProgressIndicator()))
          else if (plans == null || plans.isEmpty)
            const Expanded(
              child: Center(child: Text('Nessun piano a catalogo')),
            )
          else
            Expanded(
              child: SingleChildScrollView(
                child: WideDataTable(
                  columns: const [
                    DataColumn(label: Text('Piano')),
                    DataColumn(label: Text('Codice')),
                    DataColumn(label: Text('Postazioni/sede'), numeric: true),
                    DataColumn(label: Text('Operatori/sede'), numeric: true),
                    DataColumn(
                      label: Text('Postazioni/operatore'),
                      numeric: true,
                    ),
                    DataColumn(label: Text('SMS inclusi'), numeric: true),
                    DataColumn(label: Text('Stato')),
                    DataColumn(label: Text('')),
                  ],
                  rows: plans
                      .map(
                        (plan) => DataRow(
                          cells: [
                            DataCell(Text(plan.name)),
                            DataCell(Text(plan.code)),
                            DataCell(
                              Text(
                                '${plan.includedWorkstationsPerArea ?? '—'}',
                              ),
                            ),
                            DataCell(
                              Text('${plan.includedOperatorsPerArea ?? '—'}'),
                            ),
                            DataCell(
                              Text(
                                '${plan.includedWorkstationsPerOperator ?? '—'}',
                              ),
                            ),
                            DataCell(Text('${plan.includedSms ?? '—'}')),
                            DataCell(
                              Text(
                                (plan.isActive ?? true) ? 'Attivo' : 'Sospeso',
                              ),
                            ),
                            DataCell(
                              IconButton(
                                icon: const Icon(Icons.edit, size: 18),
                                tooltip: 'Modifica limiti',
                                onPressed: () => _editPlan(plan: plan),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _tiersTab() {
    final provider = context.watch<TierProvider>();
    final tiers = provider.tiersPage?.results;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Il modulo sblocca una funzionalità e non cambia nessun '
                  'limite. Per venderlo serve poi una voce a listino.',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              FilledButton.icon(
                onPressed: () => _editTier(),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('Nuovo modulo'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          if (provider.isLoading && tiers == null)
            const Expanded(child: Center(child: CircularProgressIndicator()))
          else if (tiers == null || tiers.isEmpty)
            const Expanded(
              child: Center(child: Text('Nessun modulo a catalogo')),
            )
          else
            Expanded(
              child: ListView(
                children: tiers
                    .map(
                      (tier) => Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Text(tier.name.characters.first),
                          ),
                          title: Text('${tier.name} (${tier.code})'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(tier.description),
                              Text(
                                '${tier.category}'
                                '${tier.hasUsageLimit ? ' · limite ${tier.usageLimit} ${tier.usageUnit}' : ''}'
                                '${tier.isActive ? '' : ' · sospeso'}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          isThreeLine: true,
                          trailing: IconButton(
                            icon: const Icon(Icons.edit, size: 18),
                            tooltip: 'Modifica',
                            onPressed: () => _editTier(tier: tier),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }
}
