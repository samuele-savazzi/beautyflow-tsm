import 'package:flutter/material.dart';

import '../../../models/tier.dart';

/// Modulo extra: sblocca una funzionalità per il salone.
///
/// Non sposta nessun limite operativo - quelli stanno sul piano - e il prezzo
/// che conta per la fattura è quello della voce di listino, non questo.
class TierFormDialog extends StatefulWidget {
  final Tier? tier;

  const TierFormDialog({super.key, this.tier});

  @override
  State<TierFormDialog> createState() => _TierFormDialogState();
}

class _TierFormDialogState extends State<TierFormDialog> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _name;
  late final TextEditingController _code;
  late final TextEditingController _description;
  late final TextEditingController _icon;
  late final TextEditingController _usageLimit;
  late final TextEditingController _usageUnit;
  late final TextEditingController _trialDays;
  late String _category;
  late bool _hasUsageLimit;
  late bool _allowTrial;
  late bool _isPublic;

  static const _categories = {
    'core': 'Funzionalità core',
    'premium': 'Premium',
    'integration': 'Integrazioni',
    'analytics': 'Analytics e report',
    'automation': 'Automazione',
  };

  @override
  void initState() {
    super.initState();
    final tier = widget.tier;
    _name = TextEditingController(text: tier?.name ?? '');
    _code = TextEditingController(text: tier?.code ?? '');
    _description = TextEditingController(text: tier?.description ?? '');
    _icon = TextEditingController(text: tier?.icon ?? 'star');
    _usageLimit = TextEditingController(
        text: tier?.usageLimit == null ? '' : '${tier!.usageLimit}');
    _usageUnit = TextEditingController(text: tier?.usageUnit ?? '');
    _trialDays = TextEditingController(text: '${tier?.trialDays ?? 14}');
    _category = tier?.category ?? 'premium';
    _hasUsageLimit = tier?.hasUsageLimit ?? false;
    _allowTrial = tier?.allowTrial ?? false;
    _isPublic = tier?.isPublic ?? false;
  }

  @override
  void dispose() {
    for (final controller in [
      _name, _code, _description, _icon, _usageLimit, _usageUnit, _trialDays,
    ]) {
      controller.dispose();
    }
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    Navigator.of(context).pop({
      'name': _name.text.trim(),
      if (widget.tier == null) 'code': _code.text.trim().toUpperCase(),
      'description': _description.text.trim(),
      'icon': _icon.text.trim().isEmpty ? 'star' : _icon.text.trim(),
      'category': _category,
      'is_active': true,
      'is_public': _isPublic,
      'has_usage_limit': _hasUsageLimit,
      if (_hasUsageLimit && _usageLimit.text.trim().isNotEmpty)
        'usage_limit': int.parse(_usageLimit.text.trim()),
      if (_hasUsageLimit) 'usage_unit': _usageUnit.text.trim(),
      'allow_trial': _allowTrial,
      if (_allowTrial) 'trial_days': int.parse(_trialDays.text.trim()),
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.tier == null ? 'Nuovo modulo' : 'Modifica modulo'),
      content: SizedBox(
        width: 540,
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
                      child: TextFormField(
                        controller: _name,
                        decoration: const InputDecoration(
                          labelText: 'Nome *',
                          hintText: 'es. Cassa e fiscale',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) =>
                            (value ?? '').trim().isEmpty ? 'Obbligatorio' : null,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextFormField(
                        controller: _code,
                        enabled: widget.tier == null,
                        decoration: const InputDecoration(
                          labelText: 'Codice *',
                          hintText: 'CASSA_FISCALE',
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
                TextFormField(
                  controller: _description,
                  maxLines: 2,
                  decoration: const InputDecoration(
                    labelText: 'Descrizione *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) =>
                      (value ?? '').trim().isEmpty ? 'Obbligatorio' : null,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: DropdownButtonFormField<String>(
                        initialValue: _category,
                        decoration: const InputDecoration(
                          labelText: 'Categoria',
                          border: OutlineInputBorder(),
                        ),
                        items: _categories.entries
                            .map((entry) => DropdownMenuItem(
                                value: entry.key, child: Text(entry.value)))
                            .toList(),
                        onChanged: (value) =>
                            setState(() => _category = value ?? 'premium'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextFormField(
                        controller: _icon,
                        decoration: const InputDecoration(
                          labelText: 'Icona',
                          hintText: 'point_of_sale',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                CheckboxListTile(
                  value: _isPublic,
                  onChanged: (value) => setState(() => _isPublic = value ?? false),
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  title: const Text('Visibile nel marketplace del salone'),
                  subtitle: const Text(
                    'Se spento resta attivabile solo da qui',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                CheckboxListTile(
                  value: _hasUsageLimit,
                  onChanged: (value) =>
                      setState(() => _hasUsageLimit = value ?? false),
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  title: const Text('Ha un limite di utilizzo'),
                  subtitle: const Text(
                    'Consumo a quantità (es. 100 invii al mese). Non c\'entra '
                    'con postazioni e operatori, che stanno sul piano.',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                if (_hasUsageLimit)
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _usageLimit,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Limite mensile',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) =>
                              int.tryParse((value ?? '').trim()) == null
                                  ? 'Numero non valido'
                                  : null,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: TextFormField(
                          controller: _usageUnit,
                          decoration: const InputDecoration(
                            labelText: 'Unità di misura',
                            hintText: 'invii, export',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                CheckboxListTile(
                  value: _allowTrial,
                  onChanged: (value) =>
                      setState(() => _allowTrial = value ?? false),
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  title: const Text('Permetti un periodo di prova'),
                ),
                if (_allowTrial)
                  TextFormField(
                    controller: _trialDays,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Giorni di prova',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      final parsed = int.tryParse((value ?? '').trim());
                      if (parsed == null) return 'Numero non valido';
                      return parsed < 1 || parsed > 90 ? 'Da 1 a 90' : null;
                    },
                  ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Dopo aver salvato, per venderlo aggiungi una voce al '
                    'listino in bozza: è quella che porta il prezzo in fattura.',
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
}
