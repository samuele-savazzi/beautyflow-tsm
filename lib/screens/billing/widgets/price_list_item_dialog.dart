import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/billing_models.dart';
import '../../../models/tenant.dart';
import '../../../models/tier.dart';
import '../../../providers/quota_type_provider.dart';
import '../../../providers/tier_provider.dart';

/// Voce di listino: è questa che decide quanto costa una cosa e quanto figura
/// in fattura.
///
/// Il piano (`QuotaType`) porta i limiti, il tier porta la funzionalità:
/// nessuno dei due ha un prezzo che il contratto guardi. Il prezzo è qui, e
/// alla firma viene copiato sulla riga del contratto.
class PriceListItemDialog extends StatefulWidget {
  final PriceListItem? item;
  final String priceListCode;

  const PriceListItemDialog({
    super.key,
    this.item,
    required this.priceListCode,
  });

  @override
  State<PriceListItemDialog> createState() => _PriceListItemDialogState();
}

class _PriceListItemDialogState extends State<PriceListItemDialog> {
  final _formKey = GlobalKey<FormState>();

  late String _itemKind;
  int? _quotaTypeId;
  int? _tierId;
  late int _commitmentMonths;
  late int _installmentCount;
  late final TextEditingController _annualTotal;
  late final TextEditingController _setupFee;
  late final TextEditingController _rateY1;
  late final TextEditingController _rateY2;
  late final TextEditingController _rateY3;
  late final TextEditingController _setupRate;
  late bool _monthlyRule;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    final item = widget.item;
    _itemKind = item?.itemKind ?? 'plan';
    _quotaTypeId = item?.quotaTypeId;
    _tierId = item?.tierId;
    _commitmentMonths = item?.commitmentMonths ?? 12;
    _installmentCount = item?.installmentCount ?? 1;
    _annualTotal = TextEditingController(
      text: item == null ? '' : item.annualTotal.toStringAsFixed(2),
    );
    _setupFee = TextEditingController(
      text: (item?.setupFee ?? 0).toStringAsFixed(2),
    );
    _rateY1 = TextEditingController(
      text: (item?.commissionRateY1 ?? 20).toStringAsFixed(2),
    );
    _rateY2 = TextEditingController(
      text: (item?.commissionRateY2 ?? 20).toStringAsFixed(2),
    );
    _rateY3 = TextEditingController(
      text: (item?.commissionRateY3plus ?? 20).toStringAsFixed(2),
    );
    _setupRate = TextEditingController(
      text: (item?.commissionSetupRate ?? 10).toStringAsFixed(2),
    );
    _monthlyRule = item?.commissionMonthlyRule ?? false;

    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  @override
  void dispose() {
    for (final controller in [
      _annualTotal,
      _setupFee,
      _rateY1,
      _rateY2,
      _rateY3,
      _setupRate,
    ]) {
      controller.dispose();
    }
    super.dispose();
  }

  Future<void> _load() async {
    await Future.wait([
      context.read<QuotaTypeProvider>().loadQuotaTypes(isActive: true),
      context.read<TierProvider>().loadTiers(isActive: true, refresh: true),
    ]);
    if (mounted) setState(() => _loading = false);
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    if (_itemKind == 'plan' && _quotaTypeId == null) return;
    if (_itemKind == 'tier' && _tierId == null) return;

    Navigator.of(context).pop({
      'item_kind': _itemKind,
      'quota_type': _itemKind == 'plan' ? _quotaTypeId : null,
      'tier': _itemKind == 'tier' ? _tierId : null,
      'commitment_months': _commitmentMonths,
      'installment_count': _installmentCount,
      'annual_total': _annualTotal.text.replaceAll(',', '.'),
      'setup_fee': _setupFee.text.replaceAll(',', '.'),
      'commission_rate_y1': _rateY1.text.replaceAll(',', '.'),
      'commission_rate_y2': _rateY2.text.replaceAll(',', '.'),
      'commission_rate_y3plus': _rateY3.text.replaceAll(',', '.'),
      'commission_setup_rate': _setupRate.text.replaceAll(',', '.'),
      'commission_monthly_rule': _monthlyRule,
      'is_active': true,
    });
  }

  @override
  Widget build(BuildContext context) {
    final quotaTypes = context.watch<QuotaTypeProvider>().quotaTypes ?? [];
    final tiers = context.watch<TierProvider>().tiersPage?.results ?? [];

    return AlertDialog(
      title: Text(
        widget.item == null
            ? 'Nuova voce · ${widget.priceListCode}'
            : 'Modifica voce · ${widget.priceListCode}',
      ),
      content: SizedBox(
        width: 560,
        child: _loading
            ? const SizedBox(
                height: 100,
                child: Center(child: CircularProgressIndicator()),
              )
            : Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SegmentedButton<String>(
                        segments: const [
                          ButtonSegment(
                            value: 'plan',
                            label: Text('Piano'),
                            icon: Icon(Icons.workspace_premium, size: 16),
                          ),
                          ButtonSegment(
                            value: 'tier',
                            label: Text('Modulo extra'),
                            icon: Icon(Icons.extension, size: 16),
                          ),
                        ],
                        selected: {_itemKind},
                        onSelectionChanged: (values) =>
                            setState(() => _itemKind = values.first),
                      ),
                      const SizedBox(height: 16),
                      if (_itemKind == 'plan')
                        _quotaTypeField(quotaTypes)
                      else
                        _tierField(tiers),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(child: _commitmentField()),
                          const SizedBox(width: 12),
                          Expanded(child: _installmentField()),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: _money(
                              _annualTotal,
                              'Totale annuo (IVA esclusa) *',
                              required: true,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _money(_setupFee, 'Attivazione una tantum'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Provvigione al commerciale',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        'Percentuale sull\'imponibile incassato, per annualità',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(child: _percent(_rateY1, 'Anno 1 %')),
                          const SizedBox(width: 8),
                          Expanded(child: _percent(_rateY2, 'Anno 2 %')),
                          const SizedBox(width: 8),
                          Expanded(child: _percent(_rateY3, 'Anno 3+ %')),
                          const SizedBox(width: 8),
                          Expanded(child: _percent(_setupRate, 'Una tantum %')),
                        ],
                      ),
                      CheckboxListTile(
                        value: _monthlyRule,
                        onChanged: _commitmentMonths == 1
                            ? (value) =>
                                  setState(() => _monthlyRule = value ?? false)
                            : null,
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        title: const Text('Provvigione a mensilità'),
                        subtitle: const Text(
                          'Una mensilità dopo il terzo pagamento, al posto della '
                          'percentuale. Solo sull\'impegno mensile.',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Annulla'),
        ),
        FilledButton(onPressed: _submit, child: const Text('Salva')),
      ],
    );
  }

  Widget _quotaTypeField(List<QuotaType> quotaTypes) {
    return DropdownButtonFormField<int>(
      initialValue: _quotaTypeId,
      isExpanded: true,
      decoration: const InputDecoration(
        labelText: 'Piano *',
        helperText: 'I limiti operativi vengono dal piano, non da questa voce',
        border: OutlineInputBorder(),
      ),
      items: quotaTypes
          .map(
            (quota) => DropdownMenuItem(
              value: quota.id,
              child: Text(
                '${quota.name} (${quota.code})',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
          .toList(),
      validator: (value) => value == null ? 'Scegli un piano' : null,
      onChanged: (value) => setState(() => _quotaTypeId = value),
    );
  }

  Widget _tierField(List<Tier> tiers) {
    return DropdownButtonFormField<int>(
      initialValue: _tierId,
      isExpanded: true,
      decoration: const InputDecoration(
        labelText: 'Modulo *',
        helperText: 'Il modulo va creato prima in Piani e moduli',
        border: OutlineInputBorder(),
      ),
      items: tiers
          .map(
            (tier) => DropdownMenuItem(
              value: tier.id,
              child: Text(
                '${tier.name} (${tier.code})',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
          .toList(),
      validator: (value) => value == null ? 'Scegli un modulo' : null,
      onChanged: (value) => setState(() => _tierId = value),
    );
  }

  Widget _commitmentField() {
    return DropdownButtonFormField<int>(
      initialValue: _commitmentMonths,
      decoration: const InputDecoration(
        labelText: 'Impegno',
        border: OutlineInputBorder(),
      ),
      items: const [
        DropdownMenuItem(value: 1, child: Text('Mensile')),
        DropdownMenuItem(value: 12, child: Text('Annuale')),
        DropdownMenuItem(value: 24, child: Text('Biennale')),
        DropdownMenuItem(value: 36, child: Text('Triennale')),
      ],
      onChanged: (value) => setState(() {
        _commitmentMonths = value ?? 12;
        if (_commitmentMonths == 1) {
          _installmentCount = 12;
        } else {
          _monthlyRule = false;
          if (_installmentCount == 12) _installmentCount = 1;
        }
      }),
    );
  }

  Widget _installmentField() {
    return DropdownButtonFormField<int>(
      initialValue: _installmentCount,
      decoration: const InputDecoration(
        labelText: 'Rate per anno',
        border: OutlineInputBorder(),
      ),
      items: const [
        DropdownMenuItem(value: 1, child: Text('Saldo unico')),
        DropdownMenuItem(value: 2, child: Text('2 rate')),
        DropdownMenuItem(value: 3, child: Text('3 rate')),
        DropdownMenuItem(value: 12, child: Text('12 rate (mensile)')),
      ],
      onChanged: (value) => setState(() => _installmentCount = value ?? 1),
    );
  }

  Widget _money(
    TextEditingController controller,
    String label, {
    bool required = false,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixText: '€ ',
        border: const OutlineInputBorder(),
      ),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      validator: (value) {
        final text = (value ?? '').replaceAll(',', '.').trim();
        if (text.isEmpty) return required ? 'Obbligatorio' : null;
        return double.tryParse(text) == null ? 'Importo non valido' : null;
      },
    );
  }

  Widget _percent(TextEditingController controller, String label) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        suffixText: '%',
        border: const OutlineInputBorder(),
      ),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      validator: (value) {
        final text = (value ?? '').replaceAll(',', '.').trim();
        if (text.isEmpty) return null;
        final parsed = double.tryParse(text);
        if (parsed == null) return 'Non valido';
        return parsed < 0 || parsed > 100 ? '0-100' : null;
      },
    );
  }
}
