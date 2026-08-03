import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../models/billing_models.dart';
import '../../../providers/billing_provider.dart';

/// Sottoscrizione di un contratto.
///
/// Si sceglie una voce di listino: prezzo e aliquote provvigionali vengono
/// congelati sul contratto, così un futuro aumento di listino non tocca questo
/// cliente.
class CreateContractDialog extends StatefulWidget {
  final int tenantId;

  const CreateContractDialog({super.key, required this.tenantId});

  @override
  State<CreateContractDialog> createState() => _CreateContractDialogState();
}

class _CreateContractDialogState extends State<CreateContractDialog> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  final _dateFormat = DateFormat('dd/MM/yyyy');
  final _apiDate = DateFormat('yyyy-MM-dd');

  PriceList? _priceList;
  PriceListItem? _planItem;
  final List<_ExtraLine> _extras = [];
  int? _salespersonId;
  DateTime _startDate = DateTime.now();
  bool _applyQuota = true;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    final provider = context.read<BillingProvider>();
    await provider.loadPriceLists(status: 'active');
    await provider.loadSalespeople(onlyActive: true);
    if (!mounted) return;

    if (provider.priceLists.isNotEmpty) {
      await provider.loadPriceListDetail(provider.priceLists.first.id);
    }
    if (!mounted) return;
    setState(() {
      _priceList = provider.priceListDetail;
      _loading = false;
    });
  }

  List<PriceListItem> get _planItems =>
      _priceList?.items.where((item) => item.itemKind == 'plan').toList() ?? [];

  /// I tier ammessi sono solo quelli con lo stesso impegno e piano rate del
  /// piano scelto: mescolarli produrrebbe rate incoerenti.
  List<PriceListItem> get _tierItems {
    if (_planItem == null) return [];
    return _priceList!.items
        .where((item) =>
            item.itemKind == 'tier' &&
            item.commitmentMonths == _planItem!.commitmentMonths &&
            item.installmentCount == _planItem!.installmentCount)
        .toList();
  }

  double get _annualTotal {
    var total = _planItem?.annualTotal ?? 0;
    for (final extra in _extras) {
      total += extra.item.annualTotal * extra.quantity;
    }
    return total;
  }

  double get _setupTotal {
    var total = _planItem?.setupFee ?? 0;
    for (final extra in _extras) {
      total += extra.item.setupFee * extra.quantity;
    }
    return total;
  }

  void _submit() {
    if (_planItem == null) return;
    Navigator.of(context).pop({
      'price_list_id': _priceList!.id,
      'quota_type_id': _planItem!.quotaTypeId,
      'commitment_months': _planItem!.commitmentMonths,
      'installment_count': _planItem!.installmentCount,
      'start_date': _apiDate.format(_startDate),
      if (_salespersonId != null) 'salesperson_id': _salespersonId,
      'apply_quota': _applyQuota,
      'lines': [
        {'price_list_item_id': _planItem!.id, 'quantity': 1},
        for (final extra in _extras)
          {'price_list_item_id': extra.item.id, 'quantity': extra.quantity},
      ],
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BillingProvider>();

    return AlertDialog(
      title: const Text('Nuovo contratto'),
      content: SizedBox(
        width: 620,
        child: _loading
            ? const SizedBox(height: 120, child: Center(child: CircularProgressIndicator()))
            : _priceList == null
                ? const Text('Nessun listino attivo: attivane uno prima')
                : SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Listino ${_priceList!.code}',
                            style: const TextStyle(color: Colors.grey)),
                        const SizedBox(height: 12),
                        DropdownButtonFormField<PriceListItem>(
                          initialValue: _planItem,
                          isExpanded: true,
                          decoration: const InputDecoration(
                              labelText: 'Piano e impegno *',
                              border: OutlineInputBorder()),
                          items: _planItems
                              .map((item) => DropdownMenuItem(
                                    value: item,
                                    child: Text(
                                      '${item.label} · ${item.commitmentLabel} · '
                                      '${item.installmentLabel} · '
                                      '${_currency.format(item.annualTotal)}/anno',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                              .toList(),
                          onChanged: (value) => setState(() {
                            _planItem = value;
                            // Cambiando impegno gli extra scelti non sono più validi
                            _extras.clear();
                          }),
                        ),
                        const SizedBox(height: 12),
                        if (_planItem != null) _extrasSection(),
                        const SizedBox(height: 12),
                        DropdownButtonFormField<int>(
                          initialValue: _salespersonId,
                          decoration: const InputDecoration(
                              labelText: 'Commerciale',
                              helperText:
                                  'Se vuoto non maturano provvigioni su questo contratto',
                              border: OutlineInputBorder()),
                          items: provider.salespeople
                              .map((person) => DropdownMenuItem(
                                  value: person.id, child: Text(person.fullName)))
                              .toList(),
                          onChanged: (value) =>
                              setState(() => _salespersonId = value),
                        ),
                        const SizedBox(height: 12),
                        InkWell(
                          onTap: () async {
                            final picked = await showDatePicker(
                              context: context,
                              initialDate: _startDate,
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2100),
                            );
                            if (picked != null) {
                              setState(() => _startDate = picked);
                            }
                          },
                          child: InputDecorator(
                            decoration: const InputDecoration(
                                labelText: 'Decorrenza',
                                border: OutlineInputBorder()),
                            child: Text(_dateFormat.format(_startDate)),
                          ),
                        ),
                        const SizedBox(height: 8),
                        CheckboxListTile(
                          value: _applyQuota,
                          onChanged: (value) =>
                              setState(() => _applyQuota = value ?? true),
                          title: const Text('Allinea i limiti del tenant al piano'),
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                        ),
                        if (_planItem != null) ...[
                          const Divider(),
                          _summary(),
                        ],
                      ],
                    ),
                  ),
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annulla')),
        FilledButton(
          onPressed: _planItem == null ? null : _submit,
          child: const Text('Crea contratto'),
        ),
      ],
    );
  }

  Widget _extrasSection() {
    final available = _tierItems
        .where((item) => !_extras.any((extra) => extra.item.id == item.id))
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Moduli extra', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 4),
        ..._extras.map((extra) => ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(extra.item.label),
              subtitle: Text('${_currency.format(extra.item.annualTotal)}/anno'
                  '${extra.item.setupFee > 0 ? ' + ${_currency.format(extra.item.setupFee)} una tantum' : ''}'),
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
            )),
        if (available.isNotEmpty)
          DropdownButtonFormField<PriceListItem>(
            initialValue: null,
            isExpanded: true,
            decoration: const InputDecoration(
                labelText: 'Aggiungi modulo', border: OutlineInputBorder()),
            items: available
                .map((item) => DropdownMenuItem(
                      value: item,
                      child: Text(
                        '${item.label} · ${_currency.format(item.annualTotal)}/anno',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
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
    final vat = _annualTotal * 22 / 100;
    final perInstallment = _planItem!.installmentCount == 0
        ? _annualTotal
        : _annualTotal / _planItem!.installmentCount;

    return Card(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _row('Canone annuo (imponibile)', _annualTotal),
            if (_setupTotal > 0) _row('Una tantum', _setupTotal),
            _row('IVA 22% sul canone', vat),
            const Divider(),
            _row('Prima rata (con una tantum)',
                perInstallment + _setupTotal, bold: true),
            if (_planItem!.installmentCount > 1)
              _row('Rate successive', perInstallment),
            const SizedBox(height: 4),
            Text(
              '${_planItem!.commitmentLabel} · '
              '${_planItem!.installmentCount == 1 ? 'saldo unico' : '${_planItem!.installmentCount} rate all\'anno'}'
              '${_planItem!.commitmentMonths > 12 ? ' · ${_planItem!.commitmentMonths ~/ 12} annualità' : ''}',
              style: const TextStyle(fontSize: 11, color: Colors.grey),
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
          Text(label,
              style: TextStyle(
                  fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
          Text(_currency.format(value),
              style: TextStyle(
                  fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
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
