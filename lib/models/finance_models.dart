/// Modelli della contabilità aziendale: costi, cassa, IVA, imposte e report.
double _toDouble(dynamic value) {
  if (value == null) return 0;
  if (value is num) return value.toDouble();
  return double.tryParse(value.toString()) ?? 0;
}

DateTime? _toDate(dynamic value) {
  if (value == null || value.toString().isEmpty) return null;
  return DateTime.tryParse(value.toString());
}

// ============================================================
// ANAGRAFICHE
// ============================================================
class Vendor {
  final int id;
  final String name;
  final String vatNumber;
  final String fiscalCode;
  final String country;
  final bool isEu;
  final bool reverseCharge;
  final int? defaultCategoryId;
  final String email;
  final String iban;
  final String notes;
  final bool isActive;

  Vendor({
    required this.id,
    required this.name,
    required this.vatNumber,
    required this.fiscalCode,
    required this.country,
    required this.isEu,
    required this.reverseCharge,
    this.defaultCategoryId,
    required this.email,
    required this.iban,
    required this.notes,
    required this.isActive,
  });

  factory Vendor.fromJson(Map<String, dynamic> json) => Vendor(
        id: json['id'],
        name: json['name'] ?? '',
        vatNumber: json['vat_number'] ?? '',
        fiscalCode: json['fiscal_code'] ?? '',
        country: json['country'] ?? 'IT',
        isEu: json['is_eu'] ?? true,
        reverseCharge: json['reverse_charge'] ?? false,
        defaultCategoryId: json['default_category'],
        email: json['email'] ?? '',
        iban: json['iban'] ?? '',
        notes: json['notes'] ?? '',
        isActive: json['is_active'] ?? true,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'vat_number': vatNumber,
        'fiscal_code': fiscalCode,
        'country': country,
        'is_eu': isEu,
        'reverse_charge': reverseCharge,
        'default_category': defaultCategoryId,
        'email': email,
        'iban': iban,
        'notes': notes,
        'is_active': isActive,
      };
}

class ExpenseCategory {
  final int id;
  final String code;
  final String name;
  final String kind;
  final String kindDisplay;
  final double deductiblePercent;
  final double vatDeductiblePercent;
  final bool isRecurringDefault;
  final bool countsInPnl;
  final bool isActive;

  ExpenseCategory({
    required this.id,
    required this.code,
    required this.name,
    required this.kind,
    required this.kindDisplay,
    required this.deductiblePercent,
    required this.vatDeductiblePercent,
    required this.isRecurringDefault,
    required this.countsInPnl,
    required this.isActive,
  });

  factory ExpenseCategory.fromJson(Map<String, dynamic> json) =>
      ExpenseCategory(
        id: json['id'],
        code: json['code'] ?? '',
        name: json['name'] ?? '',
        kind: json['kind'] ?? 'operating_cost',
        kindDisplay: json['kind_display'] ?? '',
        deductiblePercent: _toDouble(json['deductible_percent']),
        vatDeductiblePercent: _toDouble(json['vat_deductible_percent']),
        isRecurringDefault: json['is_recurring_default'] ?? false,
        countsInPnl: json['counts_in_pnl'] ?? true,
        isActive: json['is_active'] ?? true,
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'name': name,
        'kind': kind,
        'deductible_percent': deductiblePercent.toStringAsFixed(2),
        'vat_deductible_percent': vatDeductiblePercent.toStringAsFixed(2),
        'is_recurring_default': isRecurringDefault,
        'is_active': isActive,
      };
}

// ============================================================
// COSTI
// ============================================================
class Expense {
  final int id;
  final int? vendorId;
  final String vendorName;
  final int categoryId;
  final String categoryName;
  final String categoryKind;
  final String description;
  final DateTime? documentDate;
  final String documentNumber;
  final DateTime? competenceStart;
  final DateTime? competenceEnd;
  final double taxableAmount;
  final double vatRate;
  final double vatAmount;
  final double totalAmount;
  final double vatDeductiblePercent;
  final double deductiblePercent;
  final double deductibleVat;
  final bool reverseCharge;
  final DateTime? paymentDueDate;
  final String status;
  final String statusDisplay;
  final DateTime? paidAt;
  final bool isRecurring;
  final String recurrenceRule;
  final DateTime? nextOccurrenceDate;
  final String notes;

  Expense({
    required this.id,
    this.vendorId,
    required this.vendorName,
    required this.categoryId,
    required this.categoryName,
    required this.categoryKind,
    required this.description,
    this.documentDate,
    required this.documentNumber,
    this.competenceStart,
    this.competenceEnd,
    required this.taxableAmount,
    required this.vatRate,
    required this.vatAmount,
    required this.totalAmount,
    required this.vatDeductiblePercent,
    required this.deductiblePercent,
    required this.deductibleVat,
    required this.reverseCharge,
    this.paymentDueDate,
    required this.status,
    required this.statusDisplay,
    this.paidAt,
    required this.isRecurring,
    required this.recurrenceRule,
    this.nextOccurrenceDate,
    required this.notes,
  });

  factory Expense.fromJson(Map<String, dynamic> json) => Expense(
        id: json['id'],
        vendorId: json['vendor'],
        vendorName: json['vendor_name'] ?? '',
        categoryId: json['category'],
        categoryName: json['category_name'] ?? '',
        categoryKind: json['category_kind'] ?? '',
        description: json['description'] ?? '',
        documentDate: _toDate(json['document_date']),
        documentNumber: json['document_number'] ?? '',
        competenceStart: _toDate(json['competence_start']),
        competenceEnd: _toDate(json['competence_end']),
        taxableAmount: _toDouble(json['taxable_amount']),
        vatRate: _toDouble(json['vat_rate']),
        vatAmount: _toDouble(json['vat_amount']),
        totalAmount: _toDouble(json['total_amount']),
        vatDeductiblePercent: _toDouble(json['vat_deductible_percent']),
        deductiblePercent: _toDouble(json['deductible_percent']),
        deductibleVat: _toDouble(json['deductible_vat']),
        reverseCharge: json['reverse_charge'] ?? false,
        paymentDueDate: _toDate(json['payment_due_date']),
        status: json['status'] ?? 'to_pay',
        statusDisplay: json['status_display'] ?? '',
        paidAt: _toDate(json['paid_at']),
        isRecurring: json['is_recurring'] ?? false,
        recurrenceRule: json['recurrence_rule'] ?? '',
        nextOccurrenceDate: _toDate(json['next_occurrence_date']),
        notes: json['notes'] ?? '',
      );

  bool get isPaid => status == 'paid';
  bool get countsInPnl => categoryKind != 'non_cost' && categoryKind != 'capex';
}

// ============================================================
// CASSA
// ============================================================
class CashAccount {
  final int id;
  final String name;
  final String kind;
  final String kindDisplay;
  final String iban;
  final String currency;
  final double openingBalance;
  final double balance;
  final bool isActive;

  CashAccount({
    required this.id,
    required this.name,
    required this.kind,
    required this.kindDisplay,
    required this.iban,
    required this.currency,
    required this.openingBalance,
    required this.balance,
    required this.isActive,
  });

  factory CashAccount.fromJson(Map<String, dynamic> json) => CashAccount(
        id: json['id'],
        name: json['name'] ?? '',
        kind: json['kind'] ?? 'bank',
        kindDisplay: json['kind_display'] ?? '',
        iban: json['iban'] ?? '',
        currency: json['currency'] ?? 'EUR',
        openingBalance: _toDouble(json['opening_balance']),
        balance: _toDouble(json['balance']),
        isActive: json['is_active'] ?? true,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'kind': kind,
        'iban': iban,
        'currency': currency,
        'opening_balance': openingBalance.toStringAsFixed(2),
        'is_active': isActive,
      };
}

class CashMovement {
  final int id;
  final int accountId;
  final String accountName;
  final String direction;
  final double amount;
  final DateTime? valueDate;
  final String description;
  final String movementKind;
  final String kindDisplay;
  final int? categoryId;
  final String categoryName;
  final bool reconciled;
  final String externalReference;

  CashMovement({
    required this.id,
    required this.accountId,
    required this.accountName,
    required this.direction,
    required this.amount,
    this.valueDate,
    required this.description,
    required this.movementKind,
    required this.kindDisplay,
    this.categoryId,
    required this.categoryName,
    required this.reconciled,
    required this.externalReference,
  });

  factory CashMovement.fromJson(Map<String, dynamic> json) => CashMovement(
        id: json['id'],
        accountId: json['account'],
        accountName: json['account_name'] ?? '',
        direction: json['direction'] ?? 'in',
        amount: _toDouble(json['amount']),
        valueDate: _toDate(json['value_date']),
        description: json['description'] ?? '',
        movementKind: json['movement_kind'] ?? 'other',
        kindDisplay: json['kind_display'] ?? '',
        categoryId: json['category'],
        categoryName: json['category_name'] ?? '',
        reconciled: json['reconciled'] ?? false,
        externalReference: json['external_reference'] ?? '',
      );

  bool get isIncoming => direction == 'in';
  double get signedAmount => isIncoming ? amount : -amount;
}

// ============================================================
// IVA E IMPOSTE
// ============================================================
class VatSettlement {
  final int id;
  final String periodType;
  final int year;
  final int period;
  final String label;
  final DateTime? periodStart;
  final DateTime? periodEnd;
  final double vatDebit;
  final double vatCredit;
  final double previousCredit;
  final double interestAmount;
  final double amountDue;
  final bool isCredit;
  final String status;
  final String statusDisplay;
  final DateTime? dueDate;
  final DateTime? paidAt;
  final String f24Reference;

  VatSettlement({
    required this.id,
    required this.periodType,
    required this.year,
    required this.period,
    required this.label,
    this.periodStart,
    this.periodEnd,
    required this.vatDebit,
    required this.vatCredit,
    required this.previousCredit,
    required this.interestAmount,
    required this.amountDue,
    required this.isCredit,
    required this.status,
    required this.statusDisplay,
    this.dueDate,
    this.paidAt,
    required this.f24Reference,
  });

  factory VatSettlement.fromJson(Map<String, dynamic> json) => VatSettlement(
        id: json['id'],
        periodType: json['period_type'] ?? 'quarterly',
        year: json['year'] ?? 0,
        period: json['period'] ?? 0,
        label: json['label'] ?? '',
        periodStart: _toDate(json['period_start']),
        periodEnd: _toDate(json['period_end']),
        vatDebit: _toDouble(json['vat_debit']),
        vatCredit: _toDouble(json['vat_credit']),
        previousCredit: _toDouble(json['previous_credit']),
        interestAmount: _toDouble(json['interest_amount']),
        amountDue: _toDouble(json['amount_due']),
        isCredit: json['is_credit'] ?? false,
        status: json['status'] ?? 'open',
        statusDisplay: json['status_display'] ?? '',
        dueDate: _toDate(json['due_date']),
        paidAt: _toDate(json['paid_at']),
        f24Reference: json['f24_reference'] ?? '',
      );
}

class TaxPayment {
  final int id;
  final String kind;
  final String kindDisplay;
  final int year;
  final String description;
  final double amount;
  final bool isAdvance;
  final DateTime? dueDate;
  final String status;
  final String statusDisplay;
  final DateTime? paidAt;
  final String f24Reference;

  TaxPayment({
    required this.id,
    required this.kind,
    required this.kindDisplay,
    required this.year,
    required this.description,
    required this.amount,
    required this.isAdvance,
    this.dueDate,
    required this.status,
    required this.statusDisplay,
    this.paidAt,
    required this.f24Reference,
  });

  factory TaxPayment.fromJson(Map<String, dynamic> json) => TaxPayment(
        id: json['id'],
        kind: json['kind'] ?? 'other',
        kindDisplay: json['kind_display'] ?? '',
        year: json['year'] ?? 0,
        description: json['description'] ?? '',
        amount: _toDouble(json['amount']),
        isAdvance: json['is_advance'] ?? false,
        dueDate: _toDate(json['due_date']),
        status: json['status'] ?? 'to_pay',
        statusDisplay: json['status_display'] ?? '',
        paidAt: _toDate(json['paid_at']),
        f24Reference: json['f24_reference'] ?? '',
      );
}

// ============================================================
// REPORT
// ============================================================
class LiquiditySnapshot {
  final double cashTotal;
  final double available;
  final double vatProvision;
  final double incomeTaxProvision;
  final double taxPaymentsDue;
  final double commissionsProvision;
  final double expensesProvision;
  final double provisionsTotal;
  final List<CashAccount> accounts;
  final List<ProjectionRow> projection;

  LiquiditySnapshot({
    required this.cashTotal,
    required this.available,
    required this.vatProvision,
    required this.incomeTaxProvision,
    required this.taxPaymentsDue,
    required this.commissionsProvision,
    required this.expensesProvision,
    required this.provisionsTotal,
    required this.accounts,
    required this.projection,
  });

  factory LiquiditySnapshot.fromJson(Map<String, dynamic> json) {
    final provisions = (json['provisions'] as Map?) ?? {};
    return LiquiditySnapshot(
      cashTotal: _toDouble(json['cash_total']),
      available: _toDouble(json['available']),
      vatProvision: _toDouble(provisions['vat']),
      incomeTaxProvision: _toDouble(provisions['income_tax_estimated']),
      taxPaymentsDue: _toDouble(provisions['tax_payments_due']),
      commissionsProvision: _toDouble(provisions['commissions']),
      expensesProvision: _toDouble(provisions['expenses']),
      provisionsTotal: _toDouble(provisions['total']),
      accounts: (json['accounts'] as List?)
              ?.map((e) => CashAccount.fromJson({
                    ...Map<String, dynamic>.from(e),
                    'balance': e['balance'],
                  }))
              .toList() ??
          [],
      projection: (json['projection'] as List?)
              ?.map((e) => ProjectionRow.fromJson(e))
              .toList() ??
          [],
    );
  }
}

class ProjectionRow {
  final int days;
  final DateTime? horizon;
  final double incoming;
  final double outgoing;
  final double net;

  ProjectionRow({
    required this.days,
    this.horizon,
    required this.incoming,
    required this.outgoing,
    required this.net,
  });

  factory ProjectionRow.fromJson(Map<String, dynamic> json) => ProjectionRow(
        days: json['days'] ?? 0,
        horizon: _toDate(json['horizon']),
        incoming: _toDouble(json['incoming']),
        outgoing: _toDouble(json['outgoing']),
        net: _toDouble(json['net']),
      );
}

class PnlCategoryRow {
  final String code;
  final String name;
  final String kind;
  final double amount;
  final double incidence;

  PnlCategoryRow({
    required this.code,
    required this.name,
    required this.kind,
    required this.amount,
    required this.incidence,
  });

  factory PnlCategoryRow.fromJson(Map<String, dynamic> json) => PnlCategoryRow(
        code: json['code'] ?? '',
        name: json['name'] ?? '',
        kind: json['kind'] ?? '',
        amount: _toDouble(json['amount']),
        incidence: _toDouble(json['incidence']),
      );
}

class PnlReport {
  final DateTime? periodStart;
  final DateTime? periodEnd;
  final double revenue;
  final double costsTotal;
  final double margin;
  final double marginPercent;
  final List<PnlCategoryRow> costsByCategory;
  final double? previousRevenue;
  final double? previousCosts;
  final double? previousMargin;

  PnlReport({
    this.periodStart,
    this.periodEnd,
    required this.revenue,
    required this.costsTotal,
    required this.margin,
    required this.marginPercent,
    required this.costsByCategory,
    this.previousRevenue,
    this.previousCosts,
    this.previousMargin,
  });

  factory PnlReport.fromJson(Map<String, dynamic> json) {
    final previous = json['previous'] as Map?;
    return PnlReport(
      periodStart: _toDate(json['period_start']),
      periodEnd: _toDate(json['period_end']),
      revenue: _toDouble(json['revenue']),
      costsTotal: _toDouble(json['costs_total']),
      margin: _toDouble(json['margin']),
      marginPercent: _toDouble(json['margin_percent']),
      costsByCategory: (json['costs_by_category'] as List?)
              ?.map((e) => PnlCategoryRow.fromJson(e))
              .toList() ??
          [],
      previousRevenue: previous == null ? null : _toDouble(previous['revenue']),
      previousCosts:
          previous == null ? null : _toDouble(previous['costs_total']),
      previousMargin: previous == null ? null : _toDouble(previous['margin']),
    );
  }
}

class FinanceDashboard {
  final double collectedThisMonth;
  final double invoicedThisMonth;
  final double toCollectTotal;
  final double overdueTotal;
  final int overdueCount;
  final double mrr;
  final int activeContracts;
  final double cashTotal;
  final double available;
  final double vatToSetAside;
  final double commissionsPayable;
  final List<ProjectionRow> projection;

  FinanceDashboard({
    required this.collectedThisMonth,
    required this.invoicedThisMonth,
    required this.toCollectTotal,
    required this.overdueTotal,
    required this.overdueCount,
    required this.mrr,
    required this.activeContracts,
    required this.cashTotal,
    required this.available,
    required this.vatToSetAside,
    required this.commissionsPayable,
    required this.projection,
  });

  factory FinanceDashboard.fromJson(Map<String, dynamic> json) =>
      FinanceDashboard(
        collectedThisMonth: _toDouble(json['collected_this_month']),
        invoicedThisMonth: _toDouble(json['invoiced_this_month']),
        toCollectTotal: _toDouble(json['to_collect_total']),
        overdueTotal: _toDouble(json['overdue_total']),
        overdueCount: json['overdue_count'] ?? 0,
        mrr: _toDouble(json['mrr']),
        activeContracts: json['active_contracts'] ?? 0,
        cashTotal: _toDouble(json['cash_total']),
        available: _toDouble(json['available']),
        vatToSetAside: _toDouble(json['vat_to_set_aside']),
        commissionsPayable: _toDouble(json['commissions_payable']),
        projection: (json['projection'] as List?)
                ?.map((e) => ProjectionRow.fromJson(e))
                .toList() ??
            [],
      );
}

/// Impostazioni fiscali dell'azienda (singleton lato backend).
///
/// `companySnapshot` e' l'intestazione che finisce sulle fatture emesse: se
/// resta vuota il PDF esce senza dati del fornitore.
class FiscalSettings {
  final String vatPeriodType;
  final double vatDefaultRate;
  final double quarterlyInterestRate;
  final double incomeTaxRate;
  final double irapRate;
  final double inpsRate;
  final double extraProvisionPercent;
  final double totalTaxRate;
  final int? mainCashAccountId;
  final int fiscalYearStartMonth;
  final String invoicePrefix;
  final int invoicePaymentTermsDays;
  final Map<String, dynamic> companySnapshot;
  final DateTime? updatedAt;

  FiscalSettings({
    required this.vatPeriodType,
    required this.vatDefaultRate,
    required this.quarterlyInterestRate,
    required this.incomeTaxRate,
    required this.irapRate,
    required this.inpsRate,
    required this.extraProvisionPercent,
    required this.totalTaxRate,
    this.mainCashAccountId,
    required this.fiscalYearStartMonth,
    required this.invoicePrefix,
    required this.invoicePaymentTermsDays,
    required this.companySnapshot,
    this.updatedAt,
  });

  bool get isCompanySnapshotComplete =>
      (companySnapshot['business_name']?.toString().isNotEmpty ?? false) &&
      (companySnapshot['vat_number']?.toString().isNotEmpty ?? false);

  String get vatPeriodLabel =>
      vatPeriodType == 'monthly' ? 'Mensile' : 'Trimestrale';

  factory FiscalSettings.fromJson(Map<String, dynamic> json) => FiscalSettings(
        vatPeriodType: json['vat_period_type'] ?? 'quarterly',
        vatDefaultRate: _toDouble(json['vat_default_rate']),
        quarterlyInterestRate: _toDouble(json['quarterly_interest_rate']),
        incomeTaxRate: _toDouble(json['income_tax_rate']),
        irapRate: _toDouble(json['irap_rate']),
        inpsRate: _toDouble(json['inps_rate']),
        extraProvisionPercent: _toDouble(json['extra_provision_percent']),
        totalTaxRate: _toDouble(json['total_tax_rate']),
        mainCashAccountId: json['main_cash_account'],
        fiscalYearStartMonth: json['fiscal_year_start_month'] ?? 1,
        invoicePrefix: json['invoice_prefix'] ?? 'BF',
        invoicePaymentTermsDays: json['invoice_payment_terms_days'] ?? 14,
        companySnapshot:
            Map<String, dynamic>.from(json['company_snapshot'] ?? {}),
        updatedAt: _toDate(json['updated_at']),
      );
}
