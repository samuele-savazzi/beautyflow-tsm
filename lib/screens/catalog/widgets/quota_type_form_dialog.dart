import 'package:flutter/material.dart';

import '../../../models/tenant.dart';

/// Piano: qui si impostano i limiti operativi che il salone si ritrova quando
/// il piano gli viene applicato.
///
/// I prezzi che compaiono in fondo non sono quelli di vendita - il canone e le
/// rate stanno sulla voce di listino - ma servono agli extra a consumo.
class QuotaTypeFormDialog extends StatefulWidget {
  final QuotaType? quotaType;

  const QuotaTypeFormDialog({super.key, this.quotaType});

  @override
  State<QuotaTypeFormDialog> createState() => _QuotaTypeFormDialogState();
}

class _QuotaTypeFormDialogState extends State<QuotaTypeFormDialog> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _name;
  late final TextEditingController _code;
  late final TextEditingController _description;
  late final TextEditingController _workstationsPerArea;
  late final TextEditingController _operatorsPerArea;
  late final TextEditingController _workstationsPerOperator;
  late final TextEditingController _sms;
  late final TextEditingController _extraSmsPrice;
  late final TextEditingController _extraOperatorPrice;
  late final TextEditingController _extraWorkstationPrice;

  @override
  void initState() {
    super.initState();
    final plan = widget.quotaType;
    _name = TextEditingController(text: plan?.name ?? '');
    _code = TextEditingController(text: plan?.code ?? '');
    _description = TextEditingController(text: plan?.description ?? '');
    _workstationsPerArea =
        TextEditingController(text: '${plan?.includedWorkstationsPerArea ?? 5}');
    _operatorsPerArea =
        TextEditingController(text: '${plan?.includedOperatorsPerArea ?? 3}');
    _workstationsPerOperator = TextEditingController(
        text: '${plan?.includedWorkstationsPerOperator ?? 1}');
    _sms = TextEditingController(text: '${plan?.includedSms ?? 100}');
    _extraSmsPrice = TextEditingController(text: plan?.extraSmsPrice ?? '0.12');
    _extraOperatorPrice =
        TextEditingController(text: plan?.extraOperatorPrice ?? '10.00');
    _extraWorkstationPrice =
        TextEditingController(text: plan?.extraWorkstationPrice ?? '5.00');
  }

  @override
  void dispose() {
    for (final controller in [
      _name, _code, _description, _workstationsPerArea, _operatorsPerArea,
      _workstationsPerOperator, _sms, _extraSmsPrice, _extraOperatorPrice,
      _extraWorkstationPrice,
    ]) {
      controller.dispose();
    }
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    Navigator.of(context).pop({
      'name': _name.text.trim(),
      // Il codice identifica il piano e non si tocca più dopo la creazione
      if (widget.quotaType == null) 'code': _code.text.trim().toUpperCase(),
      'description': _description.text.trim(),
      'included_workstations_per_area': int.parse(_workstationsPerArea.text),
      'included_operators_per_area': int.parse(_operatorsPerArea.text),
      'included_workstations_per_operator':
          int.parse(_workstationsPerOperator.text),
      'included_sms': int.parse(_sms.text),
      'extra_sms_price': _extraSmsPrice.text.replaceAll(',', '.'),
      'extra_operator_price': _extraOperatorPrice.text.replaceAll(',', '.'),
      'extra_workstation_price': _extraWorkstationPrice.text.replaceAll(',', '.'),
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.quotaType == null ? 'Nuovo piano' : 'Modifica piano'),
      content: SizedBox(
        width: 560,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: _text(_name, 'Nome *', required: true),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextFormField(
                        controller: _code,
                        enabled: widget.quotaType == null,
                        decoration: const InputDecoration(
                          labelText: 'Codice *',
                          hintText: 'SALONE',
                          border: OutlineInputBorder(),
                        ),
                        textCapitalization: TextCapitalization.characters,
                        validator: (value) =>
                            (value ?? '').trim().isEmpty ? 'Obbligatorio' : null,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _text(_description, 'Descrizione', maxLines: 2),
                const SizedBox(height: 20),
                const Text('Limiti inclusi',
                    style: TextStyle(fontWeight: FontWeight.w600)),
                const Text(
                  'Vengono applicati al salone nel momento in cui il piano '
                  'viene attivato sul contratto',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: _number(_workstationsPerArea, 'Postazioni per sede'),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _number(_operatorsPerArea, 'Operatori per sede'),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: _number(
                          _workstationsPerOperator, 'Postazioni per operatore'),
                    ),
                    const SizedBox(width: 12),
                    Expanded(child: _number(_sms, 'SMS inclusi')),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('Prezzi a consumo',
                    style: TextStyle(fontWeight: FontWeight.w600)),
                const Text(
                  'Valgono per gli extra oltre i limiti, non per il canone',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(child: _money(_extraSmsPrice, 'SMS extra')),
                    const SizedBox(width: 12),
                    Expanded(
                        child: _money(_extraOperatorPrice, 'Operatore extra')),
                    const SizedBox(width: 12),
                    Expanded(
                        child:
                            _money(_extraWorkstationPrice, 'Postazione extra')),
                  ],
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

  Widget _text(TextEditingController controller, String label,
      {bool required = false, int maxLines = 1}) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
          labelText: label, border: const OutlineInputBorder()),
      validator: required
          ? (value) => (value ?? '').trim().isEmpty ? 'Obbligatorio' : null
          : null,
    );
  }

  Widget _number(TextEditingController controller, String label) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: label, border: const OutlineInputBorder()),
      validator: (value) {
        final parsed = int.tryParse((value ?? '').trim());
        if (parsed == null) return 'Numero non valido';
        return parsed < 0 ? 'Non può essere negativo' : null;
      },
    );
  }

  Widget _money(TextEditingController controller, String label) {
    return TextFormField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: label,
        prefixText: '€ ',
        border: const OutlineInputBorder(),
      ),
      validator: (value) =>
          double.tryParse((value ?? '').replaceAll(',', '.').trim()) == null
              ? 'Importo non valido'
              : null,
    );
  }
}
