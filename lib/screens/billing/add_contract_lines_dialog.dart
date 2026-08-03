import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../models/billing_models.dart';
import '../../providers/billing_provider.dart';

/// Voci aggiunte in corso d'opera a un contratto già attivo.
///
/// Il backend crea un contratto figlio che eredita impegno, piano rate e
/// commerciale dal padre: qui si scelgono solo le voci e le quantità, e per
/// coerenza delle rate si mostrano solo i tier con lo stesso impegno e lo
/// stesso numero di rate del contratto padre.
class AddContractLinesDialog extends StatefulWidget {
  final Contract contract;

  const AddContractLinesDialog({super.key, required this.contract});

  @override
  State<AddContractLinesDialog> createState() => _AddContractLinesDialogState();
}

class _AddContractLinesDialogState extends State<AddContractLinesDialog> {
  final _currency = NumberFormat.currency(locale: 'it_IT', symbol: '€');
  final _apiDate = DateFormat('yyyy-MM-dd');

  PriceList? _priceList;
  final Map<int, int> _quantities = {};
  DateTime _startDate = DateTime.now();
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    final provider = context.read<BillingProvider>();
    final priceListId = widget.contract.priceListId;
    if (priceListId != null) {
      await provider.loadPriceListDetail(priceListId);
    }
    if (!mounted) return;
    setState(() {
      _priceList = provider.priceListDetail;
      _loading = false;
    });
  }

  List<PriceListItem> get _items {
    if (_priceList == null) return [];
    return _priceList!.items
        .where((item) =>
            item.itemKind == 'tier' &&
            item.commitmentMonths == widget.contract.commitmentMonths &&
            item.installmentCount == widget.contract.installmentCount)
        .toList();
  }

  double get _annualTotal {
    var total = 0.0;
    for (final entry in _quantities.entries) {
      final item = _items.firstWhere((i) => i.id == entry.key);
      total += item.annualTotal * entry.value;
    }
    return total;
  }

  double get _setupTotal {
    var total = 0.0;
    for (final entry in _quantities.entries) {
      final item = _items.firstWhere((i) => i.id == entry.key);
      total += item.setupFee * entry.value;
    }
    return total;
  }

  void _submit() {
    if (_quantities.isEmpty) return;
    Navigator.of(context).pop({
      'start_date': _apiDate.format(_startDate),
      'lines': _quantities.entries
          .map((entry) =>
              {'price_list_item_id': entry.key, 'quantity': entry.value})
          .toList(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Aggiungi voci al contratto'),
      content: SizedBox(
        width: 560,
        child: _loading
            ? const SizedBox(
                height: 120, child: Center(child: CircularProgressIndicator()))
            : _items.isEmpty
                ? Text(
                    'Nel listino ${widget.contract.priceListCode} non ci sono '
                    'voci con impegno ${widget.contract.commitmentLabel} e '
                    '${widget.contract.installmentCount} rate.')
                : SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Le voci vengono fatturate a un contratto figlio con '
                          'lo stesso impegno del padre. I prezzi sono quelli '
                          'del listino ${widget.contract.priceListCode} e '
                          'restano congelati alla firma.',
                          style: const TextStyle(
                              fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(height: 16),
                        ..._items.map(_itemRow),
                        const Divider(height: 32),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: const Text('Decorrenza'),
                          subtitle: Text(
                              DateFormat('dd/MM/yyyy').format(_startDate)),
                          trailing: TextButton(
                            onPressed: () async {
                              final picked = await showDatePicker(
                                context: context,
                                initialDate: _startDate,
                                firstDate: DateTime(2024),
                                lastDate: DateTime(DateTime.now().year + 3),
                              );
                              if (picked != null) {
                                setState(() => _startDate = picked);
                              }
                            },
                            child: const Text('Cambia'),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Canone annuo aggiuntivo'),
                            Text(_currency.format(_annualTotal),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        if (_setupTotal > 0)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Una tantum'),
                              Text(_currency.format(_setupTotal)),
                            ],
                          ),
                      ],
                    ),
                  ),
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annulla')),
        FilledButton(
          onPressed: _quantities.isEmpty ? null : _submit,
          child: const Text('Aggiungi'),
        ),
      ],
    );
  }

  Widget _itemRow(PriceListItem item) {
    final quantity = _quantities[item.id] ?? 0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.label),
                Text(
                  '${_currency.format(item.annualTotal)}/anno'
                  '${item.setupFee > 0 ? ' + ${_currency.format(item.setupFee)} una tantum' : ''}',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.remove_circle_outline),
            onPressed: quantity == 0
                ? null
                : () => setState(() {
                      if (quantity <= 1) {
                        _quantities.remove(item.id);
                      } else {
                        _quantities[item.id] = quantity - 1;
                      }
                    }),
          ),
          Text('$quantity'),
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () =>
                setState(() => _quantities[item.id] = quantity + 1),
          ),
        ],
      ),
    );
  }
}
