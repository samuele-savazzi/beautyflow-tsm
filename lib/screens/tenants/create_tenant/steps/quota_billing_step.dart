import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../config/theme.dart';
import '../../../../providers/quota_type_provider.dart';
import '../../../../providers/billing_provider.dart';
import '../../../../models/billing_models.dart';

/// Step 2: Quota & Billing
class QuotaBillingStep extends StatefulWidget {
  final String initialQuotaTypeCode;
  final String initialBillingType;
  final int initialBillingDuration;
  final Function({
    required String quotaTypeCode,
    required String billingType,
    required int billingDuration,
    Map<String, dynamic>? contractConfig,
    Map<String, dynamic>? billingProfile,
  })
  onNext;

  const QuotaBillingStep({
    super.key,
    required this.initialQuotaTypeCode,
    required this.initialBillingType,
    required this.initialBillingDuration,
    required this.onNext,
  });

  @override
  State<QuotaBillingStep> createState() => _QuotaBillingStepState();
}

class _QuotaBillingStepState extends State<QuotaBillingStep> {
  late String _selectedQuotaType;
  late String _selectedBillingType;
  late int _billingDuration;

  // Contratto commerciale (facoltativo: si può creare anche dopo, dalla
  // scheda del tenant)
  bool _createContract = true;
  PriceListItem? _contractItem;
  int? _salespersonId;
  DateTime _contractStart = DateTime.now();

  // Dati fiscali: senza questi la fattura non parte, il backend rifiuta
  // l'emissione. Obbligatori solo se si sottoscrive subito un contratto.
  final _businessName = TextEditingController();
  final _vatNumber = TextEditingController();
  final _fiscalCode = TextEditingController();
  final _sdiCode = TextEditingController();
  final _pec = TextEditingController();
  final _billingEmail = TextEditingController();
  final _billingAddress = TextEditingController();
  final _billingZip = TextEditingController();
  final _billingCity = TextEditingController();
  final _billingProvince = TextEditingController();
  String? _billingError;

  @override
  void initState() {
    super.initState();
    _selectedQuotaType = widget.initialQuotaTypeCode;
    _selectedBillingType = widget.initialBillingType;
    _billingDuration = widget.initialBillingDuration;

    // Load quota types when widget initializes
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      context.read<QuotaTypeProvider>().loadQuotaTypes(isActive: true);

      final billing = context.read<BillingProvider>();
      await billing.loadPriceLists(status: 'active');
      await billing.loadSalespeople(onlyActive: true);
      if (!mounted) return;
      if (billing.priceLists.isNotEmpty) {
        await billing.loadPriceListDetail(billing.priceLists.first.id);
      }
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    for (final controller in [
      _businessName,
      _vatNumber,
      _fiscalCode,
      _sdiCode,
      _pec,
      _billingEmail,
      _billingAddress,
      _billingZip,
      _billingCity,
      _billingProvince,
    ]) {
      controller.dispose();
    }
    super.dispose();
  }

  void _handleNext() {
    final contractConfig = _buildContractConfig();

    // Con un contratto attivo ma senza ragione sociale le rate nascono e la
    // fattura non parte mai: meglio fermarsi qui che scoprirlo dai log.
    if (contractConfig != null && _businessName.text.trim().isEmpty) {
      setState(
        () => _billingError =
            'Con un contratto attivo servono i dati fiscali: senza ragione '
            'sociale la fattura non può essere emessa',
      );
      return;
    }
    setState(() => _billingError = null);

    widget.onNext(
      quotaTypeCode: _selectedQuotaType,
      billingType: _selectedBillingType,
      billingDuration: _billingDuration,
      contractConfig: contractConfig,
      billingProfile: _buildBillingProfile(),
    );
  }

  /// Dati fiscali da salvare subito dopo la creazione del tenant.
  /// Null se non è stata compilata nemmeno la ragione sociale: il profilo si
  /// può sempre compilare dopo, dalla scheda del tenant.
  Map<String, dynamic>? _buildBillingProfile() {
    if (_businessName.text.trim().isEmpty) return null;
    return {
      'business_name': _businessName.text.trim(),
      'vat_number': _vatNumber.text.trim(),
      'fiscal_code': _fiscalCode.text.trim(),
      'sdi_code': _sdiCode.text.trim(),
      'pec': _pec.text.trim(),
      'billing_email': _billingEmail.text.trim(),
      'address': _billingAddress.text.trim(),
      'zip_code': _billingZip.text.trim(),
      'city': _billingCity.text.trim(),
      'province': _billingProvince.text.trim().toUpperCase(),
    };
  }

  String _getPrice(QuotaTypeProvider provider) {
    final quotaType = provider.getByCode(_selectedQuotaType);
    if (quotaType == null) return 'N/A';

    if (_selectedBillingType == 'trial') {
      return 'Gratuito (30 giorni)';
    } else if (_selectedBillingType == 'monthly') {
      return '€${quotaType.monthlyPrice ?? '0.00'}/mese';
    } else {
      return '€${quotaType.yearlyPrice ?? '0.00'}/anno';
    }
  }

  /// Configurazione del contratto da creare subito dopo il tenant.
  /// Null se il contratto non è stato richiesto o non è stata scelta una voce
  /// di listino: in quel caso il tenant nasce comunque, e il contratto si crea
  /// più tardi dalla sua scheda.
  Map<String, dynamic>? _buildContractConfig() {
    if (!_createContract || _contractItem == null) return null;
    final billing = context.read<BillingProvider>();
    final priceList = billing.priceListDetail;
    if (priceList == null) return null;

    return {
      'price_list_id': priceList.id,
      'quota_type_id': _contractItem!.quotaTypeId,
      'commitment_months': _contractItem!.commitmentMonths,
      'installment_count': _contractItem!.installmentCount,
      'start_date':
          '${_contractStart.year.toString().padLeft(4, '0')}-'
          '${_contractStart.month.toString().padLeft(2, '0')}-'
          '${_contractStart.day.toString().padLeft(2, '0')}',
      // Il commerciale non è obbligatorio: senza, il contratto semplicemente
      // non genera provvigioni
      if (_salespersonId != null) 'salesperson_id': _salespersonId,
      'apply_quota': true,
      'lines': [
        {'price_list_item_id': _contractItem!.id, 'quantity': 1},
      ],
    };
  }

  /// Dati fiscali del cliente: sono quelli che finiscono in fattura, e da qui
  /// deriva anche la sede legale mostrata nella scheda del tenant.
  Widget _buildBillingSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        const Divider(),
        const SizedBox(height: 24),
        const Text('Dati di fatturazione', style: AppTextStyles.body),
        const SizedBox(height: 4),
        Text(
          _createContract
              ? 'Necessari per emettere la fattura del contratto'
              : 'Facoltativi ora: servono quando si sottoscrive un contratto',
          style: AppTextStyles.caption,
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            _billingField(_businessName, 'Ragione sociale', width: 360),
            _billingField(_vatNumber, 'Partita IVA'),
            _billingField(_fiscalCode, 'Codice fiscale'),
            _billingField(_sdiCode, 'Codice destinatario SDI'),
            _billingField(_pec, 'PEC'),
            _billingField(
              _billingEmail,
              'Email amministrativa',
              helper: 'Se vuota si usano admin, titolare e segreteria',
              width: 360,
            ),
            _billingField(_billingAddress, 'Indirizzo', width: 360),
            _billingField(_billingZip, 'CAP', width: 120),
            _billingField(_billingCity, 'Città'),
            _billingField(_billingProvince, 'Provincia', width: 120),
          ],
        ),
        if (_billingError != null) ...[
          const SizedBox(height: 12),
          Text(_billingError!, style: const TextStyle(color: AppColors.error)),
        ],
      ],
    );
  }

  Widget _billingField(
    TextEditingController controller,
    String label, {
    String? helper,
    double width = 240,
  }) {
    return SizedBox(
      width: width,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          helperText: helper,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildContractSection() {
    final billing = context.watch<BillingProvider>();
    final priceList = billing.priceListDetail;
    final planItems =
        priceList?.items.where((item) => item.itemKind == 'plan').toList() ??
        [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        const Divider(),
        const SizedBox(height: 24),
        const Text('Contratto commerciale', style: AppTextStyles.body),
        const SizedBox(height: 4),
        const Text(
          'Facoltativo: si può sottoscrivere anche dopo, dalla scheda del tenant',
          style: AppTextStyles.caption,
        ),
        const SizedBox(height: 12),
        SwitchListTile(
          value: _createContract,
          onChanged: (value) => setState(() => _createContract = value),
          title: const Text('Sottoscrivi subito un contratto'),
          contentPadding: EdgeInsets.zero,
        ),
        if (_createContract) ...[
          if (priceList == null)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'Nessun listino attivo: attivane uno per poter creare contratti',
                style: TextStyle(color: AppColors.error),
              ),
            )
          else ...[
            DropdownButtonFormField<PriceListItem>(
              initialValue: _contractItem,
              isExpanded: true,
              decoration: const InputDecoration(
                labelText: 'Piano, impegno e rate *',
                border: OutlineInputBorder(),
              ),
              items: planItems
                  .map(
                    (item) => DropdownMenuItem(
                      value: item,
                      child: Text(
                        '${item.label} · ${item.commitmentLabel} · '
                        '${item.installmentLabel} · '
                        '€${item.annualTotal.toStringAsFixed(2)}/anno',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) => setState(() {
                _contractItem = value;
                // Il piano del contratto è la fonte di verità: allinea la quota
                if (value?.quotaTypeCode != null) {
                  _selectedQuotaType = value!.quotaTypeCode!;
                }
              }),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<int>(
              initialValue: _salespersonId,
              isExpanded: true,
              decoration: const InputDecoration(
                labelText: 'Commerciale',
                helperText:
                    'Facoltativo: senza commerciale non maturano provvigioni',
                border: OutlineInputBorder(),
              ),
              items: [
                const DropdownMenuItem<int>(
                  value: null,
                  child: Text('Nessuno (vendita diretta)'),
                ),
                ...billing.salespeople.map(
                  (person) => DropdownMenuItem(
                    value: person.id,
                    child: Text(person.fullName),
                  ),
                ),
              ],
              onChanged: (value) => setState(() => _salespersonId = value),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () async {
                final picked = await showDatePicker(
                  context: context,
                  initialDate: _contractStart,
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2100),
                );
                if (picked != null) setState(() => _contractStart = picked);
              },
              child: InputDecorator(
                decoration: const InputDecoration(
                  labelText: 'Decorrenza',
                  border: OutlineInputBorder(),
                ),
                child: Text(
                  '${_contractStart.day.toString().padLeft(2, '0')}/'
                  '${_contractStart.month.toString().padLeft(2, '0')}/'
                  '${_contractStart.year}',
                ),
              ),
            ),
          ],
        ],
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final quotaTypeProvider = context.watch<QuotaTypeProvider>();
    final quotaTypes = quotaTypeProvider.quotaTypes ?? [];

    if (quotaTypeProvider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (quotaTypeProvider.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: AppColors.error),
            const SizedBox(height: 16),
            Text(quotaTypeProvider.error!, style: AppTextStyles.body),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                quotaTypeProvider.loadQuotaTypes(isActive: true);
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Riprova'),
            ),
          ],
        ),
      );
    }

    if (quotaTypes.isEmpty) {
      return const Center(
        child: Text('Nessun piano disponibile', style: AppTextStyles.body),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Piano e Fatturazione', style: AppTextStyles.h3),
          const SizedBox(height: 8),
          const Text(
            'Seleziona il piano commerciale e il tipo di fatturazione',
            style: AppTextStyles.caption,
          ),
          const SizedBox(height: 32),

          // Quota Type Selection
          const Text('Piano Commerciale', style: AppTextStyles.body),
          const SizedBox(height: 16),

          ...quotaTypes.map((quotaType) {
            final isSelected = _selectedQuotaType == quotaType.code;

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _selectedQuotaType = quotaType.code;
                  });
                },
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primary.withOpacity(0.05)
                        : AppColors.surface,
                    border: Border.all(
                      color: isSelected ? AppColors.primary : AppColors.border,
                      width: isSelected ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      // Radio
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.border,
                            width: 2,
                          ),
                        ),
                        child: isSelected
                            ? Center(
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.primary,
                                  ),
                                ),
                              )
                            : null,
                      ),
                      const SizedBox(width: 16),

                      // Info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  quotaType.name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '€${quotaType.monthlyPrice ?? '0.00'}/mese',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ],
                            ),
                            if (quotaType.description != null) ...[
                              const SizedBox(height: 4),
                              Text(
                                quotaType.description!,
                                style: AppTextStyles.caption,
                              ),
                            ],
                            const SizedBox(height: 12),
                            // Features
                            Wrap(
                              spacing: 16,
                              runSpacing: 8,
                              children: [
                                if (quotaType.includedSms != null)
                                  _buildFeature(
                                    Icons.sms,
                                    '${quotaType.includedSms} SMS',
                                  ),
                                if (quotaType.includedOperatorsPerArea != null)
                                  _buildFeature(
                                    Icons.people,
                                    '${quotaType.includedOperatorsPerArea} operatori/area',
                                  ),
                                if (quotaType.includedWorkstationsPerArea !=
                                    null)
                                  _buildFeature(
                                    Icons.chair_outlined,
                                    '${quotaType.includedWorkstationsPerArea} postazioni/sede',
                                  ),
                                if (quotaType.includedWorkstationsPerOperator !=
                                    null)
                                  _buildFeature(
                                    Icons.chair,
                                    '${quotaType.includedWorkstationsPerOperator} postazioni/operatore',
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),

          const SizedBox(height: 32),
          const Divider(),
          const SizedBox(height: 24),

          // Billing Type
          const Text('Tipo di Fatturazione', style: AppTextStyles.body),
          const SizedBox(height: 16),

          _buildBillingTypeOption(
            'trial',
            'Trial 30 giorni',
            'Prova gratuita per 30 giorni',
            Icons.timer,
          ),
          const SizedBox(height: 12),
          _buildBillingTypeOption(
            'monthly',
            'Mensile',
            'Fatturazione mensile ricorrente',
            Icons.calendar_month,
          ),
          const SizedBox(height: 12),
          _buildBillingTypeOption(
            'yearly',
            'Annuale',
            'Fatturazione annuale (2 mesi gratis)',
            Icons.calendar_today,
          ),

          const SizedBox(height: 32),

          _buildContractSection(),

          _buildBillingSection(),

          const SizedBox(height: 32),

          // Price Preview
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.primary.withOpacity(0.3)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Prezzo', style: AppTextStyles.caption),
                    const SizedBox(height: 4),
                    Text(
                      _getPrice(quotaTypeProvider),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                if (_selectedBillingType == 'yearly')
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.success,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Risparmi 2 mesi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(height: 32),

          // Next Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _handleNext,
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Avanti'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeature(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: AppColors.textSecondary),
        const SizedBox(width: 4),
        Text(
          text,
          style: AppTextStyles.bodySmall.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }

  Widget _buildBillingTypeOption(
    String value,
    String title,
    String description,
    IconData icon,
  ) {
    final isSelected = _selectedBillingType == value;

    return InkWell(
      onTap: () {
        setState(() {
          _selectedBillingType = value;
        });
      },
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primary.withOpacity(0.05)
              : AppColors.surface,
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.border,
            width: isSelected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.primary : AppColors.textSecondary,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: isSelected
                          ? AppColors.primary
                          : AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(description, style: AppTextStyles.caption),
                ],
              ),
            ),
            if (isSelected)
              const Icon(Icons.check_circle, color: AppColors.primary),
          ],
        ),
      ),
    );
  }
}
