import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/finance_models.dart';
import '../../providers/finance_provider.dart';
import '../../utils/error_handler.dart';
import '../layout/main_layout.dart';

/// Impostazioni fiscali dell'azienda.
///
/// Due blocchi ben distinti: l'intestazione che finisce sulle fatture emesse
/// (senza la quale il PDF esce senza dati del fornitore) e le aliquote che
/// alimentano accantonamenti, liquidazione IVA e stima imposte.
class FiscalSettingsScreen extends StatefulWidget {
  const FiscalSettingsScreen({super.key});

  @override
  State<FiscalSettingsScreen> createState() => _FiscalSettingsScreenState();
}

class _FiscalSettingsScreenState extends State<FiscalSettingsScreen> {
  final _formKey = GlobalKey<FormState>();

  // Intestazione fattura
  final _businessName = TextEditingController();
  final _vatNumber = TextEditingController();
  final _fiscalCode = TextEditingController();
  final _address = TextEditingController();
  final _zipCode = TextEditingController();
  final _city = TextEditingController();
  final _province = TextEditingController();
  final _email = TextEditingController();
  final _iban = TextEditingController();
  final _rea = TextEditingController();
  final _shareCapital = TextEditingController();

  // Aliquote e regole
  String _vatPeriodType = 'quarterly';
  final _vatDefaultRate = TextEditingController();
  final _quarterlyInterestRate = TextEditingController();
  final _incomeTaxRate = TextEditingController();
  final _irapRate = TextEditingController();
  final _inpsRate = TextEditingController();
  final _extraProvision = TextEditingController();
  final _invoicePrefix = TextEditingController();
  final _paymentTermsDays = TextEditingController();
  int? _mainCashAccountId;

  bool _hydrated = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = context.read<FinanceProvider>();
      provider.loadAccounts();
      provider.loadFiscalSettings();
    });
  }

  @override
  void dispose() {
    for (final controller in [
      _businessName,
      _vatNumber,
      _fiscalCode,
      _address,
      _zipCode,
      _city,
      _province,
      _email,
      _iban,
      _rea,
      _shareCapital,
      _vatDefaultRate,
      _quarterlyInterestRate,
      _incomeTaxRate,
      _irapRate,
      _inpsRate,
      _extraProvision,
      _invoicePrefix,
      _paymentTermsDays,
    ]) {
      controller.dispose();
    }
    super.dispose();
  }

  /// Riempie i campi la prima volta che arrivano i dati dal backend: dopo
  /// non si tocca piu' nulla, altrimenti si sovrascrive quello che si sta
  /// digitando a ogni notifyListeners.
  void _hydrate(FiscalSettings settings) {
    if (_hydrated) return;
    _hydrated = true;

    final snapshot = settings.companySnapshot;
    _businessName.text = snapshot['business_name']?.toString() ?? '';
    _vatNumber.text = snapshot['vat_number']?.toString() ?? '';
    _fiscalCode.text = snapshot['fiscal_code']?.toString() ?? '';
    _address.text = snapshot['address']?.toString() ?? '';
    _zipCode.text = snapshot['zip_code']?.toString() ?? '';
    _city.text = snapshot['city']?.toString() ?? '';
    _province.text = snapshot['province']?.toString() ?? '';
    _email.text = snapshot['email']?.toString() ?? '';
    _iban.text = snapshot['iban']?.toString() ?? '';
    _rea.text = snapshot['rea']?.toString() ?? '';
    _shareCapital.text = snapshot['share_capital']?.toString() ?? '';

    _vatPeriodType = settings.vatPeriodType;
    _vatDefaultRate.text = settings.vatDefaultRate.toStringAsFixed(2);
    _quarterlyInterestRate.text = settings.quarterlyInterestRate
        .toStringAsFixed(2);
    _incomeTaxRate.text = settings.incomeTaxRate.toStringAsFixed(2);
    _irapRate.text = settings.irapRate.toStringAsFixed(2);
    _inpsRate.text = settings.inpsRate.toStringAsFixed(2);
    _extraProvision.text = settings.extraProvisionPercent.toStringAsFixed(2);
    _invoicePrefix.text = settings.invoicePrefix;
    _paymentTermsDays.text = '${settings.invoicePaymentTermsDays}';
    _mainCashAccountId = settings.mainCashAccountId;
  }

  Future<void> _save() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final provider = context.read<FinanceProvider>();
    final ok = await provider.saveFiscalSettings({
      'vat_period_type': _vatPeriodType,
      'vat_default_rate': _vatDefaultRate.text.replaceAll(',', '.'),
      'quarterly_interest_rate': _quarterlyInterestRate.text.replaceAll(
        ',',
        '.',
      ),
      'income_tax_rate': _incomeTaxRate.text.replaceAll(',', '.'),
      'irap_rate': _irapRate.text.replaceAll(',', '.'),
      'inps_rate': _inpsRate.text.replaceAll(',', '.'),
      'extra_provision_percent': _extraProvision.text.replaceAll(',', '.'),
      'invoice_prefix': _invoicePrefix.text.trim(),
      'invoice_payment_terms_days':
          int.tryParse(_paymentTermsDays.text.trim()) ?? 14,
      'main_cash_account': _mainCashAccountId,
      'company_snapshot': {
        'business_name': _businessName.text.trim(),
        'vat_number': _vatNumber.text.trim(),
        'fiscal_code': _fiscalCode.text.trim(),
        'address': _address.text.trim(),
        'zip_code': _zipCode.text.trim(),
        'city': _city.text.trim(),
        'province': _province.text.trim(),
        'email': _email.text.trim(),
        'iban': _iban.text.trim(),
        'rea': _rea.text.trim(),
        'share_capital': _shareCapital.text.trim(),
      },
    });
    if (!mounted) return;
    if (ok) {
      ApiErrorHandler.showSuccessSnackbar(context, 'Impostazioni salvate');
    } else {
      ApiErrorHandler.showErrorMessage(
        context,
        provider.error ?? 'Salvataggio non riuscito',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<FinanceProvider>();
    final settings = provider.fiscalSettings;
    if (settings != null) _hydrate(settings);

    return MainLayout(
      title: 'Impostazioni fiscali',
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Spacer(),
                FilledButton.icon(
                  onPressed: settings == null ? null : _save,
                  icon: const Icon(Icons.save),
                  label: const Text('Salva'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (settings == null)
              Expanded(
                child: Center(
                  child: provider.isLoading
                      ? const CircularProgressIndicator()
                      : Text(provider.error ?? 'Impostazioni non disponibili'),
                ),
              )
            else
              Expanded(
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!settings.isCompanySnapshotComplete)
                          Card(
                            color: Colors.orange.withValues(alpha: 0.12),
                            child: const Padding(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.warning_amber,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Text(
                                      'Intestazione incompleta: le fatture verranno '
                                      'emesse senza i dati del fornitore. Compila '
                                      'almeno ragione sociale e partita IVA.',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        const SizedBox(height: 12),
                        _card('Intestazione in fattura', [
                          _text(
                            _businessName,
                            'Ragione sociale',
                            required: true,
                          ),
                          _text(_vatNumber, 'Partita IVA', required: true),
                          _text(_fiscalCode, 'Codice fiscale'),
                          _text(_address, 'Indirizzo', flex: 2),
                          _text(_zipCode, 'CAP'),
                          _text(_city, 'Città'),
                          _text(_province, 'Provincia'),
                          _text(_email, 'Email'),
                          _text(_iban, 'IBAN', flex: 2),
                          _text(_rea, 'REA'),
                          _text(_shareCapital, 'Capitale sociale'),
                        ]),
                        const SizedBox(height: 16),
                        _card('Fatturazione', [
                          _text(_invoicePrefix, 'Prefisso numerazione'),
                          _text(
                            _paymentTermsDays,
                            'Giorni di anticipo emissione fattura',
                            numeric: true,
                          ),
                          SizedBox(
                            width: 260,
                            child: DropdownButtonFormField<int?>(
                              initialValue: _mainCashAccountId,
                              decoration: const InputDecoration(
                                labelText: 'Conto d\'incasso predefinito',
                                border: OutlineInputBorder(),
                              ),
                              items: [
                                const DropdownMenuItem<int?>(
                                  value: null,
                                  child: Text('Nessuno'),
                                ),
                                ...provider.accounts.map(
                                  (account) => DropdownMenuItem<int?>(
                                    value: account.id,
                                    child: Text(account.name),
                                  ),
                                ),
                              ],
                              onChanged: (value) =>
                                  setState(() => _mainCashAccountId = value),
                            ),
                          ),
                        ]),
                        const SizedBox(height: 16),
                        _card('Aliquote e accantonamenti', [
                          SizedBox(
                            width: 260,
                            child: DropdownButtonFormField<String>(
                              initialValue: _vatPeriodType,
                              decoration: const InputDecoration(
                                labelText: 'Periodicità IVA',
                                border: OutlineInputBorder(),
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: 'monthly',
                                  child: Text('Mensile'),
                                ),
                                DropdownMenuItem(
                                  value: 'quarterly',
                                  child: Text('Trimestrale'),
                                ),
                              ],
                              onChanged: (value) => setState(
                                () => _vatPeriodType = value ?? 'quarterly',
                              ),
                            ),
                          ),
                          _text(
                            _vatDefaultRate,
                            'IVA di default %',
                            numeric: true,
                          ),
                          _text(
                            _quarterlyInterestRate,
                            'Interessi trimestrali %',
                            numeric: true,
                          ),
                          _text(
                            _incomeTaxRate,
                            'Imposta sul reddito %',
                            numeric: true,
                          ),
                          _text(_irapRate, 'IRAP %', numeric: true),
                          _text(_inpsRate, 'INPS %', numeric: true),
                          _text(
                            _extraProvision,
                            'Cuscinetto prudenziale %',
                            numeric: true,
                          ),
                        ]),
                        const SizedBox(height: 12),
                        Text(
                          'Aliquota complessiva usata per la stima imposte: '
                          '${settings.totalTaxRate.toStringAsFixed(2)}%. '
                          'Confermala con il commercialista prima della prima '
                          'liquidazione.',
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _card(String title, List<Widget> fields) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 16),
            Wrap(spacing: 16, runSpacing: 16, children: fields),
          ],
        ),
      ),
    );
  }

  Widget _text(
    TextEditingController controller,
    String label, {
    bool required = false,
    bool numeric = false,
    int flex = 1,
  }) {
    return SizedBox(
      width: flex == 2 ? 440 : 260,
      child: TextFormField(
        controller: controller,
        keyboardType: numeric ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          if (required && (value == null || value.trim().isEmpty)) {
            return 'Campo obbligatorio';
          }
          if (numeric && value != null && value.trim().isNotEmpty) {
            if (double.tryParse(value.replaceAll(',', '.')) == null) {
              return 'Valore non valido';
            }
          }
          return null;
        },
      ),
    );
  }
}
