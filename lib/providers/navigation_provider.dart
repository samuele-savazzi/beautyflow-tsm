import 'package:flutter/foundation.dart';

enum AppSection {
  dashboard,
  tenants,
  tiers,
  admins,
  profile,

  // Commerciale: accessibile ad admin e commerciale
  contracts,
  installments,
  invoices,
  commissions,

  // Amministrazione: solo ruolo admin (il backend risponde 403 agli altri)
  financeDashboard,
  expenses,
  cash,
  vat,
  reports,
  priceLists,
  salespeople,
  fiscalSettings,
}

class NavigationProvider with ChangeNotifier {
  AppSection _currentSection = AppSection.dashboard;
  int? _selectedTenantId;
  int? _selectedTierId;
  int? _selectedContractId;

  AppSection get currentSection => _currentSection;
  int? get selectedTenantId => _selectedTenantId;
  int? get selectedTierId => _selectedTierId;
  int? get selectedContractId => _selectedContractId;

  void navigateTo(AppSection section) {
    _currentSection = section;
    // Clear selections when changing sections
    _selectedTenantId = null;
    _selectedTierId = null;
    _selectedContractId = null;
    notifyListeners();
  }

  void navigateToTenantDetail(int tenantId) {
    _currentSection = AppSection.tenants;
    _selectedTenantId = tenantId;
    notifyListeners();
  }

  void navigateToTierDetail(int tierId) {
    _currentSection = AppSection.tiers;
    _selectedTierId = tierId;
    notifyListeners();
  }

  void navigateToContractDetail(int contractId) {
    _currentSection = AppSection.contracts;
    _selectedContractId = contractId;
    notifyListeners();
  }

  void clearSelection() {
    _selectedTenantId = null;
    _selectedTierId = null;
    _selectedContractId = null;
    notifyListeners();
  }
}
