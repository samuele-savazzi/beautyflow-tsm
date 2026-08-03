/// Modelli dell'amministrazione BeautyFlow (app backend `internal_billing`).
///
/// Gli importi arrivano dal DRF come stringhe (Decimal serializzato): qui si
/// tengono come double per poterli sommare e formattare, con un parser
/// tollerante perché una stringa vuota o un null non devono far crashare la UI.
double _toDouble(dynamic value) {
  if (value == null) return 0;
  if (value is num) return value.toDouble();
  return double.tryParse(value.toString()) ?? 0;
}

DateTime? _toDate(dynamic value) {
  if (value == null || value.toString().isEmpty) return null;
  return DateTime.tryParse(value.toString());
}

String euro(double value) => '€ ${value.toStringAsFixed(2)}';

// ============================================================
// LISTINI
// ============================================================
class PriceListItem {
  final int id;
  final String itemKind;
  final int? quotaTypeId;
  final String? quotaTypeCode;
  final int? tierId;
  final String? tierCode;
  final String label;
  final int commitmentMonths;
  final int installmentCount;
  final double annualTotal;
  final double installmentAmount;
  final double setupFee;
  final double commissionRateY1;
  final double commissionRateY2;
  final double commissionRateY3plus;
  final double commissionSetupRate;
  final bool commissionMonthlyRule;
  final bool isActive;

  PriceListItem({
    required this.id,
    required this.itemKind,
    this.quotaTypeId,
    this.quotaTypeCode,
    this.tierId,
    this.tierCode,
    required this.label,
    required this.commitmentMonths,
    required this.installmentCount,
    required this.annualTotal,
    required this.installmentAmount,
    required this.setupFee,
    required this.commissionRateY1,
    required this.commissionRateY2,
    required this.commissionRateY3plus,
    required this.commissionSetupRate,
    required this.commissionMonthlyRule,
    required this.isActive,
  });

  factory PriceListItem.fromJson(Map<String, dynamic> json) => PriceListItem(
        id: json['id'],
        itemKind: json['item_kind'] ?? 'plan',
        quotaTypeId: json['quota_type'],
        quotaTypeCode: json['quota_type_code'],
        tierId: json['tier'],
        tierCode: json['tier_code'],
        label: json['label'] ?? '',
        commitmentMonths: json['commitment_months'] ?? 12,
        installmentCount: json['installment_count'] ?? 1,
        annualTotal: _toDouble(json['annual_total']),
        installmentAmount: _toDouble(json['installment_amount']),
        setupFee: _toDouble(json['setup_fee']),
        commissionRateY1: _toDouble(json['commission_rate_y1']),
        commissionRateY2: _toDouble(json['commission_rate_y2']),
        commissionRateY3plus: _toDouble(json['commission_rate_y3plus']),
        commissionSetupRate: _toDouble(json['commission_setup_rate']),
        commissionMonthlyRule: json['commission_monthly_rule'] ?? false,
        isActive: json['is_active'] ?? true,
      );

  Map<String, dynamic> toJson() => {
        'item_kind': itemKind,
        'quota_type': quotaTypeId,
        'tier': tierId,
        'commitment_months': commitmentMonths,
        'installment_count': installmentCount,
        'annual_total': annualTotal.toStringAsFixed(2),
        'setup_fee': setupFee.toStringAsFixed(2),
        'commission_rate_y1': commissionRateY1.toStringAsFixed(2),
        'commission_rate_y2': commissionRateY2.toStringAsFixed(2),
        'commission_rate_y3plus': commissionRateY3plus.toStringAsFixed(2),
        'commission_setup_rate': commissionSetupRate.toStringAsFixed(2),
        'commission_monthly_rule': commissionMonthlyRule,
        'is_active': isActive,
      };

  String get commitmentLabel {
    switch (commitmentMonths) {
      case 1:
        return 'Mensile';
      case 12:
        return 'Annuale';
      case 24:
        return 'Biennale';
      case 36:
        return 'Triennale';
      default:
        return '$commitmentMonths mesi';
    }
  }

  String get installmentLabel =>
      installmentCount == 1 ? 'Saldo unico' : '$installmentCount rate';
}

class PriceList {
  final int id;
  final String code;
  final String name;
  final String status;
  final bool isDefault;
  final double vatRate;
  final DateTime? validFrom;
  final String notes;
  final int itemsCount;
  final bool isEditable;
  final List<PriceListItem> items;

  PriceList({
    required this.id,
    required this.code,
    required this.name,
    required this.status,
    required this.isDefault,
    required this.vatRate,
    this.validFrom,
    required this.notes,
    required this.itemsCount,
    required this.isEditable,
    required this.items,
  });

  factory PriceList.fromJson(Map<String, dynamic> json) => PriceList(
        id: json['id'],
        code: json['code'] ?? '',
        name: json['name'] ?? '',
        status: json['status'] ?? 'draft',
        isDefault: json['is_default'] ?? false,
        vatRate: _toDouble(json['vat_rate']),
        validFrom: _toDate(json['valid_from']),
        notes: json['notes'] ?? '',
        itemsCount: json['items_count'] ?? 0,
        isEditable: json['is_editable'] ?? false,
        items: (json['items'] as List?)
                ?.map((e) => PriceListItem.fromJson(e))
                .toList() ??
            [],
      );

  String get statusLabel {
    switch (status) {
      case 'active':
        return 'Attivo';
      case 'archived':
        return 'Archiviato';
      default:
        return 'Bozza';
    }
  }
}

// ============================================================
// COMMERCIALI
// ============================================================
class Salesperson {
  final int id;
  final String code;
  final String firstName;
  final String lastName;
  final String displayName;
  final String fullName;
  final String email;
  final String phone;
  final int? tenantAdminId;
  final String contractType;
  final String vatNumber;
  final String fiscalCode;
  final String address;
  final String city;
  final String zipCode;
  final String province;
  final String pec;
  final String sdiCode;
  final String iban;
  final int paymentTermsDays;
  final bool appliesVat;
  final double vatRate;
  final double withholdingRate;
  final double withholdingBasePercent;
  final double enasarcoAgentRate;
  final double enasarcoCompanyRate;
  final bool isActive;
  final String notes;

  Salesperson({
    required this.id,
    required this.code,
    required this.firstName,
    required this.lastName,
    required this.displayName,
    required this.fullName,
    required this.email,
    required this.phone,
    this.tenantAdminId,
    required this.contractType,
    required this.vatNumber,
    required this.fiscalCode,
    required this.address,
    required this.city,
    required this.zipCode,
    required this.province,
    required this.pec,
    required this.sdiCode,
    required this.iban,
    required this.paymentTermsDays,
    required this.appliesVat,
    required this.vatRate,
    required this.withholdingRate,
    required this.withholdingBasePercent,
    required this.enasarcoAgentRate,
    required this.enasarcoCompanyRate,
    required this.isActive,
    required this.notes,
  });

  factory Salesperson.fromJson(Map<String, dynamic> json) => Salesperson(
        id: json['id'],
        code: json['code'] ?? '',
        firstName: json['first_name'] ?? '',
        lastName: json['last_name'] ?? '',
        displayName: json['display_name'] ?? '',
        fullName: json['full_name'] ?? '',
        email: json['email'] ?? '',
        phone: json['phone'] ?? '',
        tenantAdminId: json['tenant_admin'],
        contractType: json['contract_type'] ?? 'agent',
        vatNumber: json['vat_number'] ?? '',
        fiscalCode: json['fiscal_code'] ?? '',
        address: json['address'] ?? '',
        city: json['city'] ?? '',
        zipCode: json['zip_code'] ?? '',
        province: json['province'] ?? '',
        pec: json['pec'] ?? '',
        sdiCode: json['sdi_code'] ?? '',
        iban: json['iban'] ?? '',
        paymentTermsDays: json['payment_terms_days'] ?? 30,
        appliesVat: json['applies_vat'] ?? true,
        vatRate: _toDouble(json['vat_rate']),
        withholdingRate: _toDouble(json['withholding_rate']),
        withholdingBasePercent: _toDouble(json['withholding_base_percent']),
        enasarcoAgentRate: _toDouble(json['enasarco_agent_rate']),
        enasarcoCompanyRate: _toDouble(json['enasarco_company_rate']),
        isActive: json['is_active'] ?? true,
        notes: json['notes'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'first_name': firstName,
        'last_name': lastName,
        'display_name': displayName,
        'email': email,
        'phone': phone,
        'tenant_admin': tenantAdminId,
        'contract_type': contractType,
        'vat_number': vatNumber,
        'fiscal_code': fiscalCode,
        'address': address,
        'city': city,
        'zip_code': zipCode,
        'province': province,
        'pec': pec,
        'sdi_code': sdiCode,
        'iban': iban,
        'payment_terms_days': paymentTermsDays,
        'applies_vat': appliesVat,
        'vat_rate': vatRate.toStringAsFixed(2),
        'withholding_rate': withholdingRate.toStringAsFixed(2),
        'withholding_base_percent': withholdingBasePercent.toStringAsFixed(2),
        'enasarco_agent_rate': enasarcoAgentRate.toStringAsFixed(2),
        'enasarco_company_rate': enasarcoCompanyRate.toStringAsFixed(2),
        'is_active': isActive,
        'notes': notes,
      };

  String get contractTypeLabel {
    switch (contractType) {
      case 'agent':
        return 'Agente di commercio';
      case 'procacciatore':
        return "Procacciatore d'affari";
      case 'employee':
        return 'Dipendente';
      case 'occasional':
        return 'Collaborazione occasionale';
      default:
        return contractType;
    }
  }

  /// Anteprima locale della fiscalità, con le stesse formule del backend:
  /// serve a far vedere subito quanto si bonifica e quanto costa davvero.
  Map<String, double> preview(double taxable) {
    final vat = appliesVat ? taxable * vatRate / 100 : 0.0;
    final withholding =
        taxable * withholdingBasePercent / 100 * withholdingRate / 100;
    final enasarcoAgent = taxable * enasarcoAgentRate / 100;
    final enasarcoCompany = taxable * enasarcoCompanyRate / 100;
    return {
      'taxable': taxable,
      'vat': vat,
      'withholding': withholding,
      'enasarcoAgent': enasarcoAgent,
      'enasarcoCompany': enasarcoCompany,
      'net': taxable + vat - withholding - enasarcoAgent,
      'companyCost': taxable + enasarcoCompany,
    };
  }
}

// ============================================================
// CONTRATTI
// ============================================================
class ContractLine {
  final int id;
  final String lineKind;
  final String description;
  final int quantity;
  final double annualUnitPrice;
  final double annualTotal;
  final double setupFee;
  final double commissionRateY1;
  final double commissionRateY2;
  final double commissionRateY3plus;

  ContractLine({
    required this.id,
    required this.lineKind,
    required this.description,
    required this.quantity,
    required this.annualUnitPrice,
    required this.annualTotal,
    required this.setupFee,
    required this.commissionRateY1,
    required this.commissionRateY2,
    required this.commissionRateY3plus,
  });

  factory ContractLine.fromJson(Map<String, dynamic> json) => ContractLine(
        id: json['id'],
        lineKind: json['line_kind'] ?? 'plan',
        description: json['description'] ?? '',
        quantity: json['quantity'] ?? 1,
        annualUnitPrice: _toDouble(json['annual_unit_price']),
        annualTotal: _toDouble(json['annual_total']),
        setupFee: _toDouble(json['setup_fee']),
        commissionRateY1: _toDouble(json['commission_rate_y1']),
        commissionRateY2: _toDouble(json['commission_rate_y2']),
        commissionRateY3plus: _toDouble(json['commission_rate_y3plus']),
      );
}

class Installment {
  final int id;
  final int contractId;
  final int? tenantId;
  final String tenantName;
  final String? salespersonName;
  final int cycleNumber;
  final int sequence;
  final int installmentCount;
  final DateTime? dueDate;
  final DateTime? periodStart;
  final DateTime? periodEnd;
  final double amount;
  final double vatAmount;
  final double totalAmount;
  final String status;
  final String statusDisplay;
  final DateTime? paidAt;
  final String paymentMethod;
  final String externalReference;
  final int? invoiceId;
  final String? invoiceNumber;
  final String notes;

  Installment({
    required this.id,
    required this.contractId,
    this.tenantId,
    required this.tenantName,
    this.salespersonName,
    required this.cycleNumber,
    required this.sequence,
    required this.installmentCount,
    this.dueDate,
    this.periodStart,
    this.periodEnd,
    required this.amount,
    required this.vatAmount,
    required this.totalAmount,
    required this.status,
    required this.statusDisplay,
    this.paidAt,
    required this.paymentMethod,
    required this.externalReference,
    this.invoiceId,
    this.invoiceNumber,
    required this.notes,
  });

  factory Installment.fromJson(Map<String, dynamic> json) => Installment(
        id: json['id'],
        contractId: json['contract'],
        tenantId: json['tenant_id'],
        tenantName: json['tenant_name'] ?? '',
        salespersonName: json['salesperson_name'],
        cycleNumber: json['cycle_number'] ?? 1,
        sequence: json['sequence'] ?? 1,
        installmentCount: json['installment_count'] ?? 1,
        dueDate: _toDate(json['due_date']),
        periodStart: _toDate(json['period_start']),
        periodEnd: _toDate(json['period_end']),
        amount: _toDouble(json['amount']),
        vatAmount: _toDouble(json['vat_amount']),
        totalAmount: _toDouble(json['total_amount']),
        status: json['status'] ?? 'pending',
        statusDisplay: json['status_display'] ?? '',
        paidAt: _toDate(json['paid_at']),
        paymentMethod: json['payment_method'] ?? '',
        externalReference: json['external_reference'] ?? '',
        invoiceId: json['invoice'],
        invoiceNumber: json['invoice_number'],
        notes: json['notes'] ?? '',
      );

  bool get isOpen => status == 'pending' || status == 'overdue';
  bool get isOverdue => status == 'overdue';
  String get label => '$sequence/$installmentCount';
}

class ContractDocument {
  final int id;
  final int version;
  final String documentType;
  final String documentTypeDisplay;
  final String changeReason;
  final String sha256;
  final int size;
  final DateTime? signedAt;
  final String signedByName;
  final bool signedFileUploaded;
  final DateTime? retentionUntil;
  final DateTime? deletedAt;
  final bool isAvailable;
  final DateTime? createdAt;

  ContractDocument({
    required this.id,
    required this.version,
    required this.documentType,
    required this.documentTypeDisplay,
    required this.changeReason,
    required this.sha256,
    required this.size,
    this.signedAt,
    required this.signedByName,
    required this.signedFileUploaded,
    this.retentionUntil,
    this.deletedAt,
    required this.isAvailable,
    this.createdAt,
  });

  factory ContractDocument.fromJson(Map<String, dynamic> json) =>
      ContractDocument(
        id: json['id'],
        version: json['version'] ?? 1,
        documentType: json['document_type'] ?? 'contract',
        documentTypeDisplay: json['document_type_display'] ?? '',
        changeReason: json['change_reason'] ?? '',
        sha256: json['sha256'] ?? '',
        size: json['size'] ?? 0,
        signedAt: _toDate(json['signed_at']),
        signedByName: json['signed_by_name'] ?? '',
        signedFileUploaded: json['signed_file_uploaded'] ?? false,
        retentionUntil: _toDate(json['retention_until']),
        deletedAt: _toDate(json['deleted_at']),
        isAvailable: json['is_available'] ?? false,
        createdAt: _toDate(json['created_at']),
      );
}

class Contract {
  final int id;
  final int tenantId;
  final String tenantName;
  final int? parentContractId;
  final int? priceListId;
  final String priceListCode;
  final String? quotaTypeCode;
  final int commitmentMonths;
  final int installmentCount;
  final int totalCycles;
  final int currentCycle;
  final DateTime? startDate;
  final DateTime? endDate;
  final double vatRate;
  final int? salespersonId;
  final String? salespersonName;
  final String status;
  final String statusDisplay;
  final double annualTotal;
  final double setupTotal;
  final double monthlyValue;
  final String notes;
  final int? previousContractId;
  final List<ContractLine> lines;
  final List<Installment> installments;
  final List<ContractDocument> documents;

  /// Add-on sottoscritti in corso d'opera: sono contratti a sé, e per togliere
  /// un modulo aggiunto dopo si cessa il figlio, non il contratto principale.
  final List<Contract> childContracts;

  Contract({
    required this.id,
    required this.tenantId,
    required this.tenantName,
    this.parentContractId,
    this.priceListId,
    required this.priceListCode,
    this.quotaTypeCode,
    required this.commitmentMonths,
    required this.installmentCount,
    required this.totalCycles,
    required this.currentCycle,
    this.startDate,
    this.endDate,
    required this.vatRate,
    this.salespersonId,
    this.salespersonName,
    required this.status,
    required this.statusDisplay,
    required this.annualTotal,
    required this.setupTotal,
    required this.monthlyValue,
    required this.notes,
    this.previousContractId,
    required this.lines,
    required this.installments,
    required this.documents,
    this.childContracts = const [],
  });

  factory Contract.fromJson(Map<String, dynamic> json) => Contract(
        id: json['id'],
        tenantId: json['tenant'],
        tenantName: json['tenant_name'] ?? '',
        parentContractId: json['parent_contract'],
        priceListId: json['price_list'],
        priceListCode: json['price_list_code'] ?? '',
        quotaTypeCode: json['quota_type_code'],
        commitmentMonths: json['commitment_months'] ?? 12,
        installmentCount: json['installment_count'] ?? 1,
        totalCycles: json['total_cycles'] ?? 1,
        currentCycle: json['current_cycle'] ?? 1,
        startDate: _toDate(json['start_date']),
        endDate: _toDate(json['end_date']),
        vatRate: _toDouble(json['vat_rate']),
        salespersonId: json['salesperson'],
        salespersonName: json['salesperson_name'],
        status: json['status'] ?? 'active',
        statusDisplay: json['status_display'] ?? '',
        annualTotal: _toDouble(json['annual_total']),
        setupTotal: _toDouble(json['setup_total']),
        monthlyValue: _toDouble(json['monthly_value']),
        notes: json['notes'] ?? '',
        lines: (json['lines'] as List?)
                ?.map((e) => ContractLine.fromJson(e))
                .toList() ??
            [],
        installments: (json['installments'] as List?)
                ?.map((e) => Installment.fromJson(e))
                .toList() ??
            [],
        documents: (json['documents'] as List?)
                ?.map((e) => ContractDocument.fromJson(e))
                .toList() ??
            [],
        previousContractId: json['previous_contract'],
        childContracts: (json['child_contracts'] as List?)
                ?.map((e) => Contract.fromJson(e))
                .toList() ??
            const [],
      );

  String get commitmentLabel {
    switch (commitmentMonths) {
      case 1:
        return 'Mensile';
      case 12:
        return 'Annuale';
      case 24:
        return 'Biennale';
      case 36:
        return 'Triennale';
      default:
        return '$commitmentMonths mesi';
    }
  }

  bool get isActive => status == 'active';
}

// ============================================================
// FATTURE
// ============================================================
class InvoiceLine {
  final String description;
  final double quantity;
  final double unitPrice;
  final double amount;

  InvoiceLine({
    required this.description,
    required this.quantity,
    required this.unitPrice,
    required this.amount,
  });

  factory InvoiceLine.fromJson(Map<String, dynamic> json) => InvoiceLine(
        description: json['description'] ?? '',
        quantity: _toDouble(json['quantity']),
        unitPrice: _toDouble(json['unit_price']),
        amount: _toDouble(json['amount']),
      );
}

class Invoice {
  final int id;
  final String number;
  final int tenantId;
  final String tenantName;
  final DateTime? issueDate;
  final DateTime? dueDate;
  final String vatPeriod;
  final double subtotal;
  final double vatAmount;
  final double total;
  final double vatRate;
  final String currency;
  final String status;
  final String pdfUrl;
  final List<InvoiceLine> lines;

  Invoice({
    required this.id,
    required this.number,
    required this.tenantId,
    required this.tenantName,
    this.issueDate,
    this.dueDate,
    required this.vatPeriod,
    required this.subtotal,
    required this.vatAmount,
    required this.total,
    required this.vatRate,
    required this.currency,
    required this.status,
    required this.pdfUrl,
    required this.lines,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
        id: json['id'],
        number: json['number'] ?? '',
        tenantId: json['tenant'],
        tenantName: json['tenant_name'] ?? '',
        issueDate: _toDate(json['issue_date']),
        dueDate: _toDate(json['due_date']),
        vatPeriod: json['vat_period'] ?? '',
        subtotal: _toDouble(json['subtotal']),
        vatAmount: _toDouble(json['vat_amount']),
        total: _toDouble(json['total']),
        vatRate: _toDouble(json['vat_rate']),
        currency: json['currency'] ?? 'EUR',
        status: json['status'] ?? 'issued',
        pdfUrl: json['pdf_url'] ?? '',
        lines: (json['lines'] as List?)
                ?.map((e) => InvoiceLine.fromJson(e))
                .toList() ??
            [],
      );

  bool get isVoided => status == 'voided';
}

// ============================================================
// PROVVIGIONI
// ============================================================
class Commission {
  final int id;
  final int salespersonId;
  final String salespersonName;
  final int contractId;
  final String tenantName;
  final int cycleNumber;
  final String kind;
  final String kindDisplay;
  final double baseAmount;
  final double rate;
  final double amount;
  final String status;
  final String statusDisplay;
  final DateTime? createdAt;

  Commission({
    required this.id,
    required this.salespersonId,
    required this.salespersonName,
    required this.contractId,
    required this.tenantName,
    required this.cycleNumber,
    required this.kind,
    required this.kindDisplay,
    required this.baseAmount,
    required this.rate,
    required this.amount,
    required this.status,
    required this.statusDisplay,
    this.createdAt,
  });

  factory Commission.fromJson(Map<String, dynamic> json) => Commission(
        id: json['id'],
        salespersonId: json['salesperson'],
        salespersonName: json['salesperson_name'] ?? '',
        contractId: json['contract'],
        tenantName: json['tenant_name'] ?? '',
        cycleNumber: json['cycle_number'] ?? 1,
        kind: json['kind'] ?? 'recurring',
        kindDisplay: json['kind_display'] ?? '',
        baseAmount: _toDouble(json['base_amount']),
        rate: _toDouble(json['rate']),
        amount: _toDouble(json['amount']),
        status: json['status'] ?? 'payable',
        statusDisplay: json['status_display'] ?? '',
        createdAt: _toDate(json['created_at']),
      );
}

class CommissionPayout {
  final int id;
  final int salespersonId;
  final String salespersonName;
  final double taxableAmount;
  final double vatAmount;
  final double withholdingAmount;
  final double enasarcoAgentAmount;
  final double enasarcoCompanyAmount;
  final double netAmount;
  final double companyCost;
  final String status;
  final String statusDisplay;
  final DateTime? dueDate;
  final DateTime? paidAt;
  final int commissionsCount;
  final List<Commission> commissions;

  CommissionPayout({
    required this.id,
    required this.salespersonId,
    required this.salespersonName,
    required this.taxableAmount,
    required this.vatAmount,
    required this.withholdingAmount,
    required this.enasarcoAgentAmount,
    required this.enasarcoCompanyAmount,
    required this.netAmount,
    required this.companyCost,
    required this.status,
    required this.statusDisplay,
    this.dueDate,
    this.paidAt,
    required this.commissionsCount,
    required this.commissions,
  });

  factory CommissionPayout.fromJson(Map<String, dynamic> json) =>
      CommissionPayout(
        id: json['id'],
        salespersonId: json['salesperson'],
        salespersonName: json['salesperson_name'] ?? '',
        taxableAmount: _toDouble(json['taxable_amount']),
        vatAmount: _toDouble(json['vat_amount']),
        withholdingAmount: _toDouble(json['withholding_amount']),
        enasarcoAgentAmount: _toDouble(json['enasarco_agent_amount']),
        enasarcoCompanyAmount: _toDouble(json['enasarco_company_amount']),
        netAmount: _toDouble(json['net_amount']),
        companyCost: _toDouble(json['company_cost']),
        status: json['status'] ?? 'to_pay',
        statusDisplay: json['status_display'] ?? '',
        dueDate: _toDate(json['due_date']),
        paidAt: _toDate(json['paid_at']),
        commissionsCount: json['commissions_count'] ?? 0,
        commissions: (json['commissions'] as List?)
                ?.map((e) => Commission.fromJson(e))
                .toList() ??
            [],
      );
}

class CommissionSummaryRow {
  final int salespersonId;
  final String name;
  final double payableTotal;
  final double paidTotal;
  final int payableCount;
  final double payableNet;
  final double payableCompanyCost;

  CommissionSummaryRow({
    required this.salespersonId,
    required this.name,
    required this.payableTotal,
    required this.paidTotal,
    required this.payableCount,
    required this.payableNet,
    required this.payableCompanyCost,
  });

  factory CommissionSummaryRow.fromJson(Map<String, dynamic> json) =>
      CommissionSummaryRow(
        salespersonId: json['salesperson'] ?? 0,
        name: json['name'] ?? '',
        payableTotal: _toDouble(json['payable_total']),
        paidTotal: _toDouble(json['paid_total']),
        payableCount: json['payable_count'] ?? 0,
        payableNet: _toDouble(json['payable_net_amount']),
        payableCompanyCost: _toDouble(json['payable_company_cost']),
      );
}

// ============================================================
// PROFILO FISCALE DEL CLIENTE
// ============================================================
class TenantBillingProfile {
  final int? id;
  final String businessName;
  final String vatNumber;
  final String fiscalCode;
  final String sdiCode;
  final String pec;
  final String billingEmail;
  final String address;
  final String city;
  final String zipCode;
  final String province;
  final String country;
  final String notes;

  TenantBillingProfile({
    this.id,
    required this.businessName,
    required this.vatNumber,
    required this.fiscalCode,
    required this.sdiCode,
    required this.pec,
    required this.billingEmail,
    required this.address,
    required this.city,
    required this.zipCode,
    required this.province,
    required this.country,
    required this.notes,
  });

  factory TenantBillingProfile.fromJson(Map<String, dynamic> json) =>
      TenantBillingProfile(
        id: json['id'],
        businessName: json['business_name'] ?? '',
        vatNumber: json['vat_number'] ?? '',
        fiscalCode: json['fiscal_code'] ?? '',
        sdiCode: json['sdi_code'] ?? '',
        pec: json['pec'] ?? '',
        billingEmail: json['billing_email'] ?? '',
        address: json['address'] ?? '',
        city: json['city'] ?? '',
        zipCode: json['zip_code'] ?? '',
        province: json['province'] ?? '',
        country: json['country'] ?? 'IT',
        notes: json['notes'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        'business_name': businessName,
        'vat_number': vatNumber,
        'fiscal_code': fiscalCode,
        'sdi_code': sdiCode,
        'pec': pec,
        'billing_email': billingEmail,
        'address': address,
        'city': city,
        'zip_code': zipCode,
        'province': province,
        'country': country,
        'notes': notes,
      };
}
