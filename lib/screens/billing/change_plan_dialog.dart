import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../models/billing_models.dart';
import '../../providers/billing_provider.dart';

/// Upgrade, downgrade o rimozione di moduli: sono la stessa operazione.
///
/// Il contratto in corso non si modifica - i prezzi sono pinnati alla firma e
/// le fatture emesse non si riscrivono - quindi si cessa e se ne firma uno
/// nuovo, riportando come sconto sulla prima rata il canone già pagato e non
/// goduto. La copertura del servizio non viene mai accorciata.
class ChangePlanDialog extends StatefulWidget {
  final Contract contract;

  const ChangePlanDialog({super.key, required this.contract});

  @override
  State<ChangePlanDialog> createState() => _ChangePlanDialogState();
}

class _ChangePlanDialogState extends State<ChangePlanDialog> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  final _dateFormat = DateFormat('dd/MM/yyyy');
  final _apiDate = DateFormat('yyyy-MM-dd');

  PriceList? _priceList;
  PriceListItem? _planItem;
  final List<_ExtraLine> _extras = [];
  DateTime _startDate = DateTime.now();
  bool _applyCredit = true;
  bool _applyQuota = true;
  final _reasonController = TextEditingController();

  double? _credit;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    final provider = context.read<BillingProvider>();
    await provider.loadPriceLists(status: 'active');
    if (!mounted) return;
    if (provider.priceLists.isNotEmpty) {
      await provider.loadPriceListDetail(provider.priceLists.first.id);
    }
    if (!mounted) return;

    final detail = provider.priceListDetail;
    // Il piano di partenza è quello attuale: così un downgrade parte già dal
    // punto giusto e chi vuole solo togliere un modulo non tocca il piano
    PriceListItem? current;
    if (detail != null) {
      for (final item in detail.items) {
        if (item.itemKind == 'plan' &&
            item.quotaTypeCode == widget.contract.quotaTypeCode &&
            item.commitmentMonths == widget.contract.commitmentMonths &&
            item.installmentCount == widget.contract.installmentCount) {
          current = item;
          break;
        }
      }
    }

    setState(() {
      _priceList = detail;
      _planItem = current;
      _loading = false;
    });
    _refreshCredit();
  }

  Future<void> _refreshCredit() async {
    final credit = await context.read<BillingProvider>().residualCredit(
      widget.contract.id,
      _startDate,
    );
    if (!mounted) return;
    setState(() => _credit = credit);
  }

  List<PriceListItem> get _planItems =>
      _priceList?.items.where((item) => item.itemKind == 'plan').toList() ?? [];

  List<PriceListItem> get _tierItems {
    if (_planItem == null) return [];
    return _priceList!.items
        .where(
          (item) =>
              item.itemKind == 'tier' &&
              item.commitmentMonths == _planItem!.commitmentMonths &&
              item.installmentCount == _planItem!.installmentCount,
        )
        .toList();
  }

  double get _annualTotal {
    var total = _planItem?.annualTotal ?? 0;
    for (final extra in _extras) {
      total += extra.item.annualTotal * extra.quantity;
    }
    return total;
  }

  double get _effectiveCredit => _applyCredit ? (_credit ?? 0) : 0;

  double get _firstInstallment {
    final count = _planItem?.installmentCount ?? 1;
    final share = count == 0 ? _annualTotal : _annualTotal / count;
    final setup = _planItem?.setupFee ?? 0;
    return share + setup - _effectiveCredit;
  }

  bool get _isUpgrade => _annualTotal > widget.contract.annualTotal;

  void _submit() {
    if (_planItem == null) return;
    Navigator.of(context).pop({
      'price_list_id': _priceList!.id,
      'quota_type_id': _planItem!.quotaTypeId,
      'commitment_months': _planItem!.commitmentMonths,
      'installment_count': _planItem!.installmentCount,
      'start_date': _apiDate.format(_startDate),
      'apply_quota': _applyQuota,
      'apply_credit': _applyCredit,
      'reason': _reasonController.text.trim(),
      'lines': [
        {'price_list_item_id': _planItem!.id, 'quantity': 1},
        for (final extra in _extras)
          {'price_list_item_id': extra.item.id, 'quantity': extra.quantity},
      ],
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Cambia piano'),
      content: SizedBox(
        width: 640,
        child: _loading
            ? const SizedBox(
                height: 120,
                child: Center(child: CircularProgressIndicator()),
              )
            : _priceList == null
            ? const Text('Nessun listino attivo')
            : SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _currentCard(),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<PriceListItem>(
                      initialValue: _planItem,
                      isExpanded: true,
                      decoration: const InputDecoration(
                        labelText: 'Nuovo piano e impegno *',
                        border: OutlineInputBorder(),
                      ),
                      items: _planItems
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(
                                '${item.label} · ${item.commitmentLabel} · '
                                '${item.installmentLabel} · '
                                '${_currency.format(item.annualTotal)}/anno',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) => setState(() {
                        _planItem = value;
                        _extras.clear();
                      }),
                    ),
                    const SizedBox(height: 12),
                    if (_planItem != null) _extrasSection(),
                    const SizedBox(height: 12),
                    InkWell(
                      onTap: () async {
                        final picked = await showDatePicker(
                          context: context,
                          initialDate: _startDate,
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2100),
                          helpText: 'Decorrenza del nuovo contratto',
                        );
                        if (picked != null) {
                          setState(() => _startDate = picked);
                          _refreshCredit();
                        }
                      },
                      child: InputDecorator(
                        decoration: const InputDecoration(
                          labelText: 'Decorrenza',
                          border: OutlineInputBorder(),
                        ),
                        child: Text(_dateFormat.format(_startDate)),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: _reasonController,
                      decoration: const InputDecoration(
                        labelText: 'Motivo',
                        hintText: 'es: upgrade a Salone, tolto Premium',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    CheckboxListTile(
                      value: _applyCredit,
                      onChanged: (value) =>
                          setState(() => _applyCredit = value ?? true),
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      title: const Text('Riconosci il credito residuo'),
                      subtitle: const Text(
                        'Canone già pagato e non goduto, scalato dalla prima rata',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    CheckboxListTile(
                      value: _applyQuota,
                      onChanged: (value) =>
                          setState(() => _applyQuota = value ?? true),
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      title: const Text('Allinea subito i limiti del tenant'),
                    ),
                    if (_planItem != null) ...[const Divider(), _summary()],
                  ],
                ),
              ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Annulla'),
        ),
        FilledButton(
          onPressed: _planItem == null ? null : _submit,
          child: Text(_isUpgrade ? 'Applica upgrade' : 'Applica cambio'),
        ),
      ],
    );
  }

  Widget _currentCard() {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contratto in corso #${widget.contract.id}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              '${widget.contract.quotaTypeCode ?? '—'} · '
              '${widget.contract.commitmentLabel} · '
              '${_currency.format(widget.contract.annualTotal)}/anno',
            ),
            const SizedBox(height: 4),
            const Text(
              'Verrà cessato e le rate non ancora incassate annullate. '
              'La copertura già pagata resta valida.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _extrasSection() {
    final available = _tierItems
        .where((item) => !_extras.any((extra) => extra.item.id == item.id))
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Moduli extra',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const Text(
          'Quelli non riportati qui non faranno parte del nuovo contratto',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 4),
        ..._extras.map(
          (extra) => ListTile(
            contentPadding: EdgeInsets.zero,
            dense: true,
            title: Text(extra.item.label),
            subtitle: Text('${_currency.format(extra.item.annualTotal)}/anno'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove, size: 18),
                  onPressed: extra.quantity > 1
                      ? () => setState(() => extra.quantity--)
                      : null,
                ),
                Text('${extra.quantity}'),
                IconButton(
                  icon: const Icon(Icons.add, size: 18),
                  onPressed: () => setState(() => extra.quantity++),
                ),
                IconButton(
                  icon: const Icon(Icons.delete_outline, size: 18),
                  onPressed: () => setState(() => _extras.remove(extra)),
                ),
              ],
            ),
          ),
        ),
        if (available.isNotEmpty)
          DropdownButtonFormField<PriceListItem>(
            initialValue: null,
            isExpanded: true,
            decoration: const InputDecoration(
              labelText: 'Aggiungi modulo',
              border: OutlineInputBorder(),
            ),
            items: available
                .map(
                  (item) => DropdownMenuItem(
                    value: item,
                    child: Text(
                      '${item.label} · ${_currency.format(item.annualTotal)}/anno',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() => _extras.add(_ExtraLine(value)));
              }
            },
          ),
      ],
    );
  }

  Widget _summary() {
    final delta = _annualTotal - widget.contract.annualTotal;

    return Card(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _row('Canone annuo attuale', widget.contract.annualTotal),
            _row('Nuovo canone annuo', _annualTotal),
            _row(
              delta >= 0
                  ? 'Differenza in aumento'
                  : 'Differenza in diminuzione',
              delta.abs(),
            ),
            const Divider(),
            if (_credit == null)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  'Calcolo del credito residuo...',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              )
            else
              _row('Credito residuo riconosciuto', -_effectiveCredit),
            _row('Prima rata da fatturare', _firstInstallment, bold: true),
            const SizedBox(height: 6),
            const Text(
              'La fattura della prima rata viene emessa subito, alla conferma.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _row(String label, double value, {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            _currency.format(value),
            style: TextStyle(
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class _ExtraLine {
  final PriceListItem item;
  int quantity = 1;

  _ExtraLine(this.item);
}
