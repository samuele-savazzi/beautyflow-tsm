# 🎯 Piano di Implementazione Completo - BeautyFlow TMS

**Versione**: 1.0
**Data**: 17 Dicembre 2025
**Progetto**: BeautyFlow Tenant Management System (Flutter Desktop)

---

## 📊 OVERVIEW

### Status Attuale (60% completato)
✅ **Implementato:**
- Auth flow completo (login, 2FA, setup, change password)
- Tenant list con paginazione e filtri
- Tenant detail (base)
- Tier models
- Layout e navigation
- Dashboard (dati mock)

❌ **Da Implementare (40%):**
- Create Tenant Wizard
- Update Tenant + Upload Logo
- Quota Management (upgrade, downgrade, ricarica SMS, limiti)
- Tier Management (list, activate, create)
- Transaction Management (history, create, attachments)
- QuotaType Management (CRUD + tier associations)
- TenantAdmin Management
- Dashboard con dati reali

---

## 🗂️ STRUTTURA IMPLEMENTAZIONE

Il piano è suddiviso in **7 Sprint** per un totale stimato di **6-7 settimane**.

### Sprint Overview
1. **TENANT MANAGEMENT** (1 settimana)
2. **QUOTA MANAGEMENT - Parte 1** (1 settimana)
3. **QUOTA MANAGEMENT - Parte 2 + TIER** (1 settimana)
4. **TRANSACTION MANAGEMENT** (1 settimana)
5. **QUOTATYPE MANAGEMENT** (1 settimana)
6. **ADMIN & DASHBOARD** (3-4 giorni)
7. **POLISH & TESTING** (2-3 giorni)

---

## 🔧 SPRINT 1: TENANT MANAGEMENT

### Obiettivi
- Create Tenant Wizard (multi-step form)
- Update Tenant Dialog
- Upload Logo/Favicon/Dark Logo
- Utilities (validators, error handler)

### API Endpoints

#### 1. Create Tenant
```
POST /admin-api/tenants/
```

**Request:**
```json
{
  "name": "Salone Bellezza Roma",
  "domain": "roma",
  "tenant_type": "salon",
  "admin_email": "admin@salonroma.it",
  "admin_phone": "+39321654987",
  "admin_first_name": "Giulia",
  "admin_last_name": "Bianchi",
  "quota_type_code": "PRO",
  "billing_type": "monthly",
  "billing_duration": 1,
  "areas": [
    {"name": "Area principale"},
    {"name": "Area VIP"}
  ],
  "registered_office": "Via del Corso 100, Roma",
  "theme": {
    "primaryColor": "#6366f1",
    "secondaryColor": "#8b5cf6"
  }
}
```

**Response (201):**
```json
{
  "message": "Tenant creato con successo",
  "tenant": {
    "id": 42,
    "name": "Salone Bellezza Roma",
    "domain_url": "roma.beautyflow.it"
  },
  "admin_user": {
    "email": "admin@salonroma.it",
    "temporary_password": "ChangeMe123!"
  }
}
```

#### 2. Update Tenant
```
POST /admin-api/tenants/update/
```

**Request:**
```json
{
  "tenant_id": 42,
  "name": "Salone Bellezza Roma Centro",
  "registered_office": "Via del Corso 150, Roma",
  "is_active": true,
  "theme": {
    "primaryColor": "#ff6600",
    "secondaryColor": "#ffcc00"
  }
}
```

#### 3. Upload Logo/Favicon
```
POST /admin-api/tenants/upload-logo/
POST /admin-api/tenants/upload-favicon/
POST /admin-api/tenants/upload-dark-logo/
```

**multipart/form-data:**
- `tenant_id`: int
- `logo`/`favicon`/`dark_logo`: file (PNG/JPG)
- Max size: Logo 5MB, Favicon 2MB

### File da Creare

```
lib/utils/
  ├── validators.dart
  └── error_handler.dart

lib/models/
  ├── create_tenant_request.dart
  ├── create_tenant_response.dart
  ├── area_request.dart
  └── theme_request.dart

lib/screens/tenants/create_tenant/
  ├── create_tenant_wizard.dart
  ├── steps/
  │   ├── tenant_info_step.dart
  │   ├── quota_billing_step.dart
  │   ├── areas_step.dart
  │   ├── theme_step.dart
  │   └── confirmation_step.dart
  ├── widgets/
  │   ├── step_indicator.dart
  │   ├── quota_type_selector.dart
  │   ├── billing_type_selector.dart
  │   ├── area_list_item.dart
  │   └── color_picker_field.dart
  └── success_screen.dart

lib/screens/tenants/
  ├── update_tenant_dialog.dart
  └── widgets/
      ├── upload_logo_widget.dart
      ├── image_preview_widget.dart
      └── tenant_status_toggle.dart
```

### Validazioni

**lib/utils/validators.dart:**
```dart
class Validators {
  // Email
  static String? email(String? value) {
    if (value == null || value.isEmpty) return 'Email richiesta';
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!regex.hasMatch(value)) return 'Email non valida';
    return null;
  }

  // Password (8+ chars, uppercase, lowercase, number, special char)
  static String? password(String? value) {
    if (value == null || value.isEmpty) return 'Password richiesta';
    if (value.length < 8) return 'Minimo 8 caratteri';
    if (!value.contains(RegExp(r'[A-Z]'))) return 'Richiesta almeno una maiuscola';
    if (!value.contains(RegExp(r'[a-z]'))) return 'Richiesta almeno una minuscola';
    if (!value.contains(RegExp(r'[0-9]'))) return 'Richiesto almeno un numero';
    if (!value.contains(RegExp(r'[!@#\$%^&*]'))) return 'Richiesto almeno un carattere speciale';
    return null;
  }

  // Domain (lowercase, no spaces, alphanumeric + hyphen)
  static String? domain(String? value) {
    if (value == null || value.isEmpty) return 'Dominio richiesto';
    final regex = RegExp(r'^[a-z0-9-]+$');
    if (!regex.hasMatch(value)) return 'Solo lettere minuscole, numeri e trattini';
    return null;
  }

  // Phone (international format)
  static String? phone(String? value) {
    if (value == null || value.isEmpty) return 'Telefono richiesto';
    final regex = RegExp(r'^\+?[1-9]\d{1,14}$');
    if (!regex.hasMatch(value)) return 'Formato telefono non valido';
    return null;
  }

  // Hex color (#RRGGBB)
  static String? hexColor(String? value) {
    if (value == null || value.isEmpty) return null; // optional
    final regex = RegExp(r'^#[0-9A-Fa-f]{6}$');
    if (!regex.hasMatch(value)) return 'Formato colore non valido (es: #FF0000)';
    return null;
  }

  // Positive decimal (for prices)
  static String? decimalPrice(String? value) {
    if (value == null || value.isEmpty) return 'Prezzo richiesto';
    final decimal = double.tryParse(value);
    if (decimal == null || decimal < 0) return 'Prezzo non valido';
    return null;
  }

  // Required field
  static String? required(String? value, [String fieldName = 'Campo']) {
    if (value == null || value.isEmpty) return '$fieldName richiesto';
    return null;
  }

  // Min length
  static String? minLength(String? value, int min, [String fieldName = 'Campo']) {
    if (value == null || value.isEmpty) return '$fieldName richiesto';
    if (value.length < min) return '$fieldName deve essere almeno $min caratteri';
    return null;
  }

  // Max length
  static String? maxLength(String? value, int max, [String fieldName = 'Campo']) {
    if (value == null) return null;
    if (value.length > max) return '$fieldName non può superare $max caratteri';
    return null;
  }
}
```

**lib/utils/error_handler.dart:**
```dart
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../config/theme.dart';

class ApiErrorHandler {
  /// Estrae messaggio errore da DioException
  static String getErrorMessage(DioException error) {
    if (error.response == null) {
      return 'Errore di connessione. Verifica la tua connessione internet.';
    }

    final statusCode = error.response!.statusCode;
    final data = error.response!.data;

    switch (statusCode) {
      case 400:
        // Validation errors
        if (data is Map<String, dynamic>) {
          final errors = <String>[];
          data.forEach((key, value) {
            if (value is List) {
              errors.addAll(value.map((e) => e.toString()));
            } else {
              errors.add(value.toString());
            }
          });
          return errors.join('\n');
        }
        return data['error'] ?? 'Richiesta non valida';

      case 401:
        return data['error'] ?? 'Non autorizzato. Effettua nuovamente il login.';

      case 403:
        if (data['requires_2fa'] == true) {
          return 'Autenticazione 2FA richiesta';
        }
        return data['detail'] ?? 'Accesso negato. Permessi insufficienti.';

      case 404:
        return 'Risorsa non trovata';

      case 500:
        return 'Errore del server. Riprova più tardi.';

      default:
        return 'Errore imprevisto (${statusCode})';
    }
  }

  /// Mostra snackbar con errore
  static void showErrorSnackbar(BuildContext context, DioException error) {
    final message = getErrorMessage(error);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: AppColors.error,
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          label: 'OK',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  /// Parse validation errors (campo: [errori])
  static Map<String, List<String>> parseValidationErrors(Map<String, dynamic> data) {
    final errors = <String, List<String>>{};
    data.forEach((key, value) {
      if (value is List) {
        errors[key] = value.map((e) => e.toString()).toList();
      } else {
        errors[key] = [value.toString()];
      }
    });
    return errors;
  }

  /// Mostra success snackbar
  static void showSuccessSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: AppColors.success,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
```

### Acceptance Criteria Sprint 1
- [ ] Validators utility implementato con tutti i metodi
- [ ] Error handler con parsing errori 400/401/403/404/500
- [ ] Create Tenant Wizard: 5 steps funzionanti
- [ ] Step 1: Info base con validazione email/phone/domain
- [ ] Step 2: QuotaType selector con pricing preview
- [ ] Step 3: Aree (add/remove) min 1 area
- [ ] Step 4: Theme color picker con preview live
- [ ] Step 5: Confirmation summary read-only
- [ ] Success screen con credenziali admin copyable
- [ ] Update Tenant dialog pre-filled con dati esistenti
- [ ] Upload logo con file picker + preview + validazione size/type

---

## 🔧 SPRINT 2: QUOTA MANAGEMENT - PARTE 1

### Obiettivi
- Models: TenantQuota, QuotaType, SMS Info
- SMS Widget con progress bar
- Dialogs: Ricarica SMS, Upgrade Piano, Downgrade Piano, Modifica Limiti

### API Endpoints

#### 1. Get Tenant Quota
```
GET /admin-api/tenants/{tenant_id}/quota/
```

**Response (200):**
```json
{
  "id": 1,
  "tenant_id": 1,
  "quota_type": {
    "id": 2,
    "name": "Piano PRO",
    "code": "PRO",
    "included_sms": 1000,
    "included_operators_per_area": 5,
    "monthly_price": "49.99"
  },
  "sms_quota_limit": 1500,
  "sms_quota_used": 450,
  "sms_remaining": 1050,
  "sms_percentage_used": 30.0,
  "default_max_operators_per_area": 5,
  "default_max_workstations_per_operator": 2,
  "billing_cycle": "monthly",
  "plan_expires_at": "2025-01-01"
}
```

#### 2. Ricarica SMS
```
POST /admin-api/tenants/{tenant_id}/quota/recharge-sms/
```

**Request:**
```json
{
  "tenant_id": 1,
  "sms_quantity": 500,
  "payment_amount": "50.00",
  "payment_method": "stripe",
  "invoice_number": "INV-2024-002"
}
```

**Response (200):**
```json
{
  "message": "Ricarica 500 SMS completata con successo",
  "sms_added": 500,
  "payment_amount": "50.00",
  "old_sms_limit": 1500,
  "new_sms_limit": 2000
}
```

#### 3. Upgrade Piano
```
POST /admin-api/tenants/{tenant_id}/quota/upgrade/
```

**Request:**
```json
{
  "tenant_id": 1,
  "new_quota_type_code": "ENTERPRISE",
  "payment_amount": "99.99",
  "payment_method": "stripe",
  "invoice_number": "INV-2024-003"
}
```

#### 4. Downgrade Piano
```
POST /admin-api/tenants/{tenant_id}/quota/downgrade/
```

**Request:**
```json
{
  "tenant_id": 1,
  "new_quota_type_code": "BASIC"
}
```

#### 5. Update Limits
```
PUT /admin-api/tenants/{tenant_id}/quota/limits/
```

**Request:**
```json
{
  "tenant_id": 1,
  "sms_quota_limit": 2500,
  "default_max_operators_per_area": 10,
  "default_max_workstations_per_operator": 3
}
```

### File da Creare

```
lib/models/
  ├── tenant_quota.dart
  ├── quota_type.dart (estendere esistente)
  ├── sms_info.dart
  ├── recharge_sms_request.dart
  ├── upgrade_quota_request.dart
  └── downgrade_quota_request.dart

lib/providers/
  └── quota_provider.dart

lib/screens/quota/
  ├── recharge_sms_dialog.dart
  ├── upgrade_quota_dialog.dart
  ├── downgrade_quota_dialog.dart
  ├── update_quota_limits_dialog.dart
  └── widgets/
      ├── sms_quota_widget.dart
      ├── sms_progress_bar.dart
      ├── quota_comparison_table.dart
      └── payment_method_selector.dart
```

### Models

**lib/models/tenant_quota.dart:**
```dart
class TenantQuota {
  final int id;
  final int tenantId;
  final String tenantName;
  final QuotaType quotaType;
  final int smsQuotaLimit;
  final int smsQuotaUsed;
  final int smsRemaining;
  final double smsPercentageUsed;
  final int defaultMaxOperatorsPerArea;
  final int defaultMaxWorkstationsPerOperator;
  final DateTime? lastPaymentDate;
  final String? lastPaymentAmount;
  final String? planExpiresAt;
  final String billingCycle;
  final bool autoRenew;
  final bool isActive;

  TenantQuota({
    required this.id,
    required this.tenantId,
    required this.tenantName,
    required this.quotaType,
    required this.smsQuotaLimit,
    required this.smsQuotaUsed,
    required this.smsRemaining,
    required this.smsPercentageUsed,
    required this.defaultMaxOperatorsPerArea,
    required this.defaultMaxWorkstationsPerOperator,
    this.lastPaymentDate,
    this.lastPaymentAmount,
    this.planExpiresAt,
    required this.billingCycle,
    required this.autoRenew,
    required this.isActive,
  });

  factory TenantQuota.fromJson(Map<String, dynamic> json) {
    return TenantQuota(
      id: json['id'],
      tenantId: json['tenant_id'],
      tenantName: json['tenant_name'],
      quotaType: QuotaType.fromJson(json['quota_type']),
      smsQuotaLimit: json['sms_quota_limit'],
      smsQuotaUsed: json['sms_quota_used'],
      smsRemaining: json['sms_remaining'],
      smsPercentageUsed: (json['sms_percentage_used'] as num).toDouble(),
      defaultMaxOperatorsPerArea: json['default_max_operators_per_area'],
      defaultMaxWorkstationsPerOperator: json['default_max_workstations_per_operator'],
      lastPaymentDate: json['last_payment_date'] != null
          ? DateTime.parse(json['last_payment_date'])
          : null,
      lastPaymentAmount: json['last_payment_amount'],
      planExpiresAt: json['plan_expires_at'],
      billingCycle: json['billing_cycle'],
      autoRenew: json['auto_renew'] ?? false,
      isActive: json['is_active'] ?? true,
    );
  }
}
```

**lib/models/quota_type.dart** (estendere esistente):
```dart
class QuotaType {
  final int id;
  final String name;
  final String code;
  final String description;
  final int includedSms;
  final int includedOperatorsPerArea;
  final int includedWorkstationsPerOperator;
  final String monthlyPrice;
  final String yearlyPrice;
  final String currency;
  final String extraSmsPrice;
  final String extraOperatorPrice;
  final String extraWorkstationPrice;
  final bool isActive;
  final bool isFeatured;
  final int displayOrder;
  final DateTime createdAt;
  final DateTime updatedAt;

  QuotaType({...});

  factory QuotaType.fromJson(Map<String, dynamic> json) {...}
}
```

### Provider

**lib/providers/quota_provider.dart:**
```dart
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import '../api/services/api_service.dart';
import '../config/environment.dart';
import '../models/tenant_quota.dart';

class QuotaProvider with ChangeNotifier {
  final ApiService _apiService;

  TenantQuota? _currentQuota;
  bool _isLoading = false;
  String? _error;

  TenantQuota? get currentQuota => _currentQuota;
  bool get isLoading => _isLoading;
  String? get error => _error;

  QuotaProvider(this._apiService);

  Future<void> loadQuota(int tenantId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _apiService.dio.get(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/quota/',
      );

      _currentQuota = TenantQuota.fromJson(response.data);
      _error = null;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> rechargeSms({
    required int tenantId,
    required int smsQuantity,
    required String paymentAmount,
    String? paymentMethod,
    String? invoiceNumber,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/quota/recharge-sms/',
        data: {
          'tenant_id': tenantId,
          'sms_quantity': smsQuantity,
          'payment_amount': paymentAmount,
          if (paymentMethod != null) 'payment_method': paymentMethod,
          if (invoiceNumber != null) 'invoice_number': invoiceNumber,
        },
      );

      // Reload quota
      await loadQuota(tenantId);

      return true;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<bool> upgradeQuota({
    required int tenantId,
    required String newQuotaTypeCode,
    required String paymentAmount,
    String? paymentMethod,
    String? invoiceNumber,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/quota/upgrade/',
        data: {
          'tenant_id': tenantId,
          'new_quota_type_code': newQuotaTypeCode,
          'payment_amount': paymentAmount,
          if (paymentMethod != null) 'payment_method': paymentMethod,
          if (invoiceNumber != null) 'invoice_number': invoiceNumber,
        },
      );

      await loadQuota(tenantId);
      return true;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<bool> downgradeQuota({
    required int tenantId,
    required String newQuotaTypeCode,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/quota/downgrade/',
        data: {
          'tenant_id': tenantId,
          'new_quota_type_code': newQuotaTypeCode,
        },
      );

      await loadQuota(tenantId);
      return true;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<bool> updateQuotaLimits({
    required int tenantId,
    int? smsQuotaLimit,
    int? defaultMaxOperatorsPerArea,
    int? defaultMaxWorkstationsPerOperator,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.put(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/quota/limits/',
        data: {
          'tenant_id': tenantId,
          if (smsQuotaLimit != null) 'sms_quota_limit': smsQuotaLimit,
          if (defaultMaxOperatorsPerArea != null) 'default_max_operators_per_area': defaultMaxOperatorsPerArea,
          if (defaultMaxWorkstationsPerOperator != null) 'default_max_workstations_per_operator': defaultMaxWorkstationsPerOperator,
        },
      );

      await loadQuota(tenantId);
      return true;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  String _getErrorMessage(DioException error) {
    if (error.response?.data is Map) {
      final data = error.response!.data as Map<String, dynamic>;
      return data['error'] ?? data['detail'] ?? 'Errore durante la richiesta';
    }
    return 'Errore durante la richiesta';
  }
}
```

### Acceptance Criteria Sprint 2
- [ ] TenantQuota model con tutti i campi
- [ ] QuotaType model esteso
- [ ] QuotaProvider con metodi: loadQuota, rechargeSms, upgrade, downgrade, updateLimits
- [ ] SMS Widget con progress bar animata
- [ ] Ricarica SMS dialog con validazione quantity > 0
- [ ] Upgrade dialog con comparison table (current vs new plan)
- [ ] Downgrade dialog con warning e conferma
- [ ] Update Limits dialog con before/after preview

---

## 🔧 SPRINT 3: QUOTA MANAGEMENT - PARTE 2 + TIER

### Obiettivi
- Modifica limiti granulari (singola Area, singolo Operatore)
- Tier List Screen
- Activate Tier Dialog con validazioni
- Create Tier Screen (Admin only)

### API Endpoints

#### 1. Update Area Quota
```
PUT /admin-api/tenants/{tenant_id}/areas/{area_id}/quota/
```

**Request:**
```json
{
  "max_operators": 10
}
```

**Validation:** `max_operators` ≥ current operators count

#### 2. Update Operator Quota
```
PUT /admin-api/tenants/{tenant_id}/operators/{operator_id}/quota/
```

**Request:**
```json
{
  "max_workstations": 3
}
```

**Validation:** `max_workstations` ≥ current workstations count

#### 3. List Tiers
```
GET /admin-api/tiers/?page={page}&category={cat}&is_active={bool}&search={query}
```

#### 4. Activate Tier
```
POST /admin-api/tenants/{tenant_id}/tiers/activate/
```

**Request:**
```json
{
  "tier_id": 15,
  "is_trial": false,
  "billing_cycle": "monthly",
  "custom_usage_limit": null
}
```

**Error Cases:**
- 400: Tier già attivo
- 400: Dipendenze mancanti (`requires_tiers`)
- 400: Conflitto (`conflicts_with`)

#### 5. Create Tier (Admin Only)
```
POST /admin-api/tiers/
```

**Request:**
```json
{
  "name": "Analytics Pro",
  "code": "ANALYTICS_PRO",
  "description": "Analytics avanzate",
  "icon": "analytics",
  "category": "analytics",
  "is_public": true,
  "allow_trial": true,
  "trial_days": 14,
  "monthly_price": "49.99",
  "yearly_price": "499.00",
  "has_usage_limit": true,
  "usage_limit": 50,
  "usage_unit": "export PDF",
  "features": ["Dashboard personalizzabili"],
  "requires_tiers": [],
  "conflicts_with": []
}
```

### File da Creare

```
lib/models/
  ├── area_info.dart
  ├── operator_info.dart
  ├── activate_tier_request.dart
  └── create_tier_request.dart

lib/screens/quota/
  ├── update_area_quota_dialog.dart
  └── update_operator_quota_dialog.dart

lib/screens/tiers/
  ├── tier_list_screen.dart
  ├── activate_tier_dialog.dart
  ├── create_tier_screen.dart
  └── widgets/
      ├── tier_card.dart
      ├── tier_category_badge.dart
      ├── tier_selector_dropdown.dart
      ├── tier_dependencies_warning.dart
      ├── tier_features_editor.dart
      └── pricing_preview_widget.dart
```

### Tier Validation Logic

```dart
// In ActivateTierDialog
Future<bool> _validateTierActivation(Tier selectedTier, List<TenantTier> activeTiers) async {
  // Check dependencies
  if (selectedTier.requiresTiers.isNotEmpty) {
    final activeTierCodes = activeTiers.map((t) => t.tier.code).toList();
    final missingDeps = selectedTier.requiresTiers
        .where((code) => !activeTierCodes.contains(code))
        .toList();

    if (missingDeps.isNotEmpty) {
      // Show warning dialog
      await showDialog(
        context: context,
        builder: (_) => TierDependenciesWarningDialog(
          missingTierCodes: missingDeps,
        ),
      );
      return false;
    }
  }

  // Check conflicts
  final conflictingTier = activeTiers.firstWhere(
    (tt) => selectedTier.conflictsWith.contains(tt.tier.code),
    orElse: () => null,
  );

  if (conflictingTier != null) {
    // Show error
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Tier in conflitto con "${conflictingTier.tier.name}"'),
        backgroundColor: Colors.red,
      ),
    );
    return false;
  }

  return true;
}
```

### Acceptance Criteria Sprint 3
- [ ] AreaInfo/OperatorInfo models
- [ ] Update area quota con validazione ≥ current
- [ ] Update operator quota con validazione ≥ current
- [ ] Tier list screen con filtri (category, is_active)
- [ ] Activate tier dialog con dropdown search
- [ ] Validazione dependencies pre-submit
- [ ] Warning dialog se mancano tier richiesti
- [ ] Error se conflitto con tier attivo
- [ ] Create tier form (Admin only)
- [ ] Tier features editor (add/remove features)

---

## 🔧 SPRINT 4: TRANSACTION MANAGEMENT

### Obiettivi
- Transaction model
- Transaction List con filtri
- Create/Update Transaction
- Upload Attachments
- TransactionProvider

### API Endpoints

#### 1. List Transactions
```
GET /admin-api/tenants/{tenant_id}/transactions/?transaction_type={type}&status={status}&date_from={date}&page={page}
```

**Response:**
```json
{
  "count": 156,
  "results": [
    {
      "id": 42,
      "transaction_type": "recharge_sms",
      "transaction_type_display": "Ricarica SMS",
      "amount": "50.00",
      "currency": "EUR",
      "description": "Ricarica 500 SMS",
      "status": "completed",
      "payment_method": "stripe",
      "invoice_number": "INV-2024-002",
      "created_at": "2024-12-01T10:30:00Z",
      "sms_quantity": 500,
      "attachments_count": 2
    }
  ]
}
```

#### 2. Create Transaction
```
POST /admin-api/tenants/{tenant_id}/transactions/
```

**Request:**
```json
{
  "transaction_type": "recharge_sms",
  "amount": "50.00",
  "description": "Ricarica 500 SMS",
  "status": "completed",
  "payment_method": "bank_transfer",
  "invoice_number": "INV-2024-003",
  "sms_quantity": 500
}
```

#### 3. Update Transaction
```
PUT /admin-api/tenants/{tenant_id}/transactions/{transaction_id}/
```

#### 4. Upload Attachment
```
POST /admin-api/tenants/{tenant_id}/transactions/{transaction_id}/attachments/
```

**multipart/form-data:**
- `file`: file (max 10MB)

### File da Creare

```
lib/models/
  ├── transaction.dart
  ├── transaction_attachment.dart
  ├── create_transaction_request.dart
  └── update_transaction_request.dart

lib/providers/
  └── transaction_provider.dart

lib/screens/transactions/
  ├── transaction_list_screen.dart
  ├── create_transaction_dialog.dart
  ├── update_transaction_dialog.dart
  ├── transaction_detail_screen.dart
  └── widgets/
      ├── transaction_card.dart
      ├── transaction_status_badge.dart
      ├── transaction_type_badge.dart
      ├── transaction_filters.dart
      ├── attachment_upload_widget.dart
      └── attachment_list_widget.dart
```

### Models

**lib/models/transaction.dart:**
```dart
class Transaction {
  final int id;
  final String transactionType;
  final String transactionTypeDisplay;
  final String amount;
  final String currency;
  final String description;
  final String status;
  final String statusDisplay;
  final String? paymentMethod;
  final String? paymentMethodDisplay;
  final String? invoiceNumber;
  final String? invoiceUrl;
  final DateTime createdAt;
  final DateTime? completedAt;
  final int? smsQuantity;
  final int? operatorsQuantity;
  final int? workstationsQuantity;
  final Map<String, dynamic>? metadata;
  final int attachmentsCount;
  final bool hasAttachments;

  Transaction({...});

  factory Transaction.fromJson(Map<String, dynamic> json) {...}
}

// Transaction Types Enum
enum TransactionType {
  renewPlan,
  rechargeSms,
  upgradePlan,
  downgradePlan,
  purchaseOperators,
  purchaseWorkstations,
  addon,
  refund,
  purchaseTier,
  firstPurchase
}

// Transaction Status Enum
enum TransactionStatus {
  pending,
  completed,
  failed,
  refunded
}
```

### Acceptance Criteria Sprint 4
- [ ] Transaction model completo
- [ ] TransactionProvider: load, create, update, uploadAttachment
- [ ] Transaction list con filtri (type, status, date range)
- [ ] Transaction cards con badges
- [ ] Create transaction dialog con type selector
- [ ] Update transaction dialog
- [ ] Upload attachment con progress indicator
- [ ] Attachment list con download link

---

## 🔧 SPRINT 5: QUOTATYPE MANAGEMENT

### Obiettivi
- QuotaType CRUD completo
- QuotaType Detail con tier associati
- Associate/Remove Tier to QuotaType
- QuotaTypeProvider

### API Endpoints

#### 1. List QuotaTypes
```
GET /admin-api/quota-types/?is_active={bool}&search={query}
```

#### 2. Create QuotaType
```
POST /admin-api/quota-types/
```

**Request:**
```json
{
  "name": "Piano ENTERPRISE",
  "code": "ENTERPRISE",
  "description": "Piano enterprise",
  "included_sms": 5000,
  "included_operators_per_area": 20,
  "included_workstations_per_operator": 5,
  "monthly_price": "199.99",
  "yearly_price": "1999.99",
  "is_featured": true
}
```

#### 3. Get QuotaType Detail
```
GET /admin-api/quota-types/{quota_type_id}/
```

**Response:**
```json
{
  "id": 2,
  "name": "Piano PRO",
  "associated_tiers": [
    {
      "tier_id": 3,
      "tier_name": "Integrazione WhatsApp",
      "is_included": true
    }
  ]
}
```

#### 4. Associate Tier
```
POST /admin-api/quota-types/{quota_type_id}/tiers/
```

**Request:**
```json
{
  "tier_id": 5,
  "is_included": true
}
```

#### 5. Update/Delete Tier Association
```
PUT /admin-api/quota-types/{quota_type_id}/tiers/{tier_id}/
DELETE /admin-api/quota-types/{quota_type_id}/tiers/{tier_id}/
```

### File da Creare

```
lib/providers/
  └── quota_type_provider.dart

lib/screens/quota_types/
  ├── quota_type_list_screen.dart
  ├── create_quota_type_screen.dart
  ├── update_quota_type_screen.dart
  ├── quota_type_detail_screen.dart
  ├── associate_tier_dialog.dart
  └── widgets/
      ├── quota_type_card.dart
      ├── quota_type_featured_badge.dart
      ├── quota_limits_section.dart
      ├── pricing_section.dart
      └── associated_tiers_list.dart
```

### Acceptance Criteria Sprint 5
- [ ] QuotaTypeProvider: load, create, update, delete, associateTier, removeTier
- [ ] QuotaType list con search e filtro is_active
- [ ] Create QuotaType form completo
- [ ] QuotaType detail con tab Tier Associati
- [ ] Associate tier dialog con flag is_included
- [ ] Soft delete con validazione (se tenant usano il piano)

---

## 🔧 SPRINT 6: ADMIN & DASHBOARD

### Obiettivi
- TenantAdmin List + Create (Admin only)
- Dashboard con dati reali
- Profile Screen

### API Endpoints

#### 1. List TenantAdmins
```
GET /admin-api/admins/?page={page}&role={role}&is_active={bool}
```

#### 2. Create TenantAdmin
```
POST /admin-api/admins/
```

**Request:**
```json
{
  "email": "commerciale@beautyflow.it",
  "first_name": "Luca",
  "last_name": "Verdi",
  "phone_number": "+39333444555",
  "role": "commerciale"
}
```

**Response:**
```json
{
  "message": "TenantAdmin creato",
  "admin": {...},
  "temporary_password": "Abc123XYZ!@#"
}
```

### File da Creare

```
lib/providers/
  └── admin_provider.dart

lib/screens/admins/
  ├── admin_list_screen.dart
  ├── create_admin_dialog.dart
  └── widgets/
      ├── admin_card.dart
      ├── admin_role_badge.dart
      └── password_display_widget.dart

lib/screens/profile/
  ├── profile_screen.dart
  └── regenerate_backup_codes_dialog.dart

lib/screens/home/
  └── widgets/
      ├── recent_tenants_widget.dart
      └── stats_summary_widget.dart
```

### Dashboard Provider

```dart
lib/providers/dashboard_provider.dart

class DashboardProvider with ChangeNotifier {
  DashboardStats? stats;
  List<Tenant>? recentTenants;

  Future<void> loadDashboardData() async {
    await Future.wait([
      loadStats(),
      loadRecentTenants(),
    ]);
  }

  Future<void> loadStats() async {
    // GET /admin-api/tenants/?page_size=1 → count
    // GET /admin-api/tenants/?is_active=true&page_size=1 → active count
  }

  Future<void> loadRecentTenants() async {
    // GET /admin-api/tenants/?page=1&page_size=5&ordering=-created_on
  }
}
```

### Acceptance Criteria Sprint 6
- [ ] AdminProvider: load, create
- [ ] Admin list con filtri (role, is_active)
- [ ] Create admin dialog con password copyable
- [ ] Permission check (Admin only)
- [ ] Dashboard con stats cards reali (total, active, tiers)
- [ ] Recent tenants widget (ultimi 5)
- [ ] Profile screen con info utente
- [ ] Regenerate backup codes dialog

---

## 🔧 SPRINT 7: POLISH & TESTING

### Obiettivi
- Loading skeletons
- Error handling consistency
- UI/UX refinements
- Testing completo

### Tasks

1. **Loading Skeletons**
   - TenantCardSkeleton
   - TierCardSkeleton
   - TransactionCardSkeleton
   - DashboardSkeleton

2. **Error Handling**
   - Consistency in error messages
   - Retry mechanisms
   - Offline handling

3. **Permission Guards**
   ```dart
   lib/widgets/permission_guard.dart

   class PermissionGuard extends StatelessWidget {
     final Widget child;
     final bool Function(AdminUser?) canAccess;
     final Widget? fallback;
   }
   ```

4. **Testing**
   - Widget tests for critical dialogs
   - Integration tests for flows
   - Provider tests

### Acceptance Criteria Sprint 7
- [ ] Skeleton screens per tutte le liste
- [ ] Error handling uniforme
- [ ] Permission guards implementati
- [ ] Retry button su errori
- [ ] Offline indicator
- [ ] Widget tests > 80% coverage
- [ ] Integration tests per create tenant, activate tier

---

## 📦 PACKAGES DA AGGIUNGERE

```yaml
dependencies:
  # File management
  file_picker: ^6.1.1
  image_picker: ^1.0.4
  image_cropper: ^5.0.1

  # UI Components
  flex_color_picker: ^3.4.1  # color picker
  dropdown_search: ^5.0.6    # dropdown con search

  # Charts (per dashboard)
  fl_chart: ^0.66.0

  # PDF viewer (per allegati)
  pdf_viewer_plugin: ^2.0.1

dev_dependencies:
  # Testing
  mockito: ^5.4.4
  integration_test:
    sdk: flutter
```

---

## 📊 RIEPILOGO FILE DA CREARE

### Models (15+)
- create_tenant_request.dart
- create_tenant_response.dart
- area_request.dart, area_info.dart
- operator_info.dart
- tenant_quota.dart
- sms_info.dart
- recharge_sms_request.dart
- upgrade_quota_request.dart
- downgrade_quota_request.dart
- transaction.dart
- transaction_attachment.dart
- create_transaction_request.dart
- activate_tier_request.dart
- create_tier_request.dart

### Providers (5)
- quota_provider.dart
- transaction_provider.dart
- quota_type_provider.dart
- admin_provider.dart
- dashboard_provider.dart

### Screens/Dialogs (30+)
- Create Tenant Wizard (6 files)
- Update Tenant Dialog
- Upload Logo Widget
- Ricarica SMS Dialog
- Upgrade/Downgrade Quota Dialogs
- Update Quota Limits Dialog
- Update Area/Operator Quota Dialogs
- Tier List Screen
- Activate Tier Dialog
- Create Tier Screen
- Transaction List Screen
- Create/Update Transaction Dialogs
- QuotaType List/Create/Detail Screens
- Associate Tier Dialog
- Admin List/Create
- Profile Screen

### Utilities (3)
- validators.dart
- error_handler.dart
- permission_guard.dart

### Widgets (20+)
- SMS quota widget
- Progress bars
- Badges (status, type, category)
- Cards (tenant, tier, transaction, quota type)
- Selectors (quota type, billing, payment method)
- Comparison tables
- Features editors
- Upload widgets
- Skeleton loaders

---

## 🎯 TOTAL EFFORT

**Tempo stimato**: 6-7 settimane (full-time)
**Complessità**: Media-Alta
**Priorità**: Alta

**Sprint Breakdown:**
1. Tenant Management: 1 settimana
2. Quota Management 1: 1 settimana
3. Quota Management 2 + Tier: 1 settimana
4. Transaction Management: 1 settimana
5. QuotaType Management: 1 settimana
6. Admin + Dashboard: 3-4 giorni
7. Polish + Testing: 2-3 giorni

---

## ✅ DEFINITION OF DONE

Ogni sprint è considerato completato quando:
- [ ] Tutti i file previsti sono creati
- [ ] Tutti gli acceptance criteria sono soddisfatti
- [ ] Nessun errore di compilazione
- [ ] Error handling implementato
- [ ] Permission checks implementati dove necessario
- [ ] UI responsive (tablet + desktop)
- [ ] Code review passato
- [ ] Testing manuale completato

---

**Ultimo aggiornamento**: 17 Dicembre 2025
**Versione**: 1.0
**Autore**: BeautyFlow Development Team
