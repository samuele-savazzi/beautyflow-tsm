import 'package:flutter/foundation.dart';

enum AppSection {
  dashboard,
  tenants,
  tiers,
  admins,
  profile,
}

class NavigationProvider with ChangeNotifier {
  AppSection _currentSection = AppSection.dashboard;
  int? _selectedTenantId;
  int? _selectedTierId;

  AppSection get currentSection => _currentSection;
  int? get selectedTenantId => _selectedTenantId;
  int? get selectedTierId => _selectedTierId;

  void navigateTo(AppSection section) {
    _currentSection = section;
    // Clear selections when changing sections
    _selectedTenantId = null;
    _selectedTierId = null;
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

  void clearSelection() {
    _selectedTenantId = null;
    _selectedTierId = null;
    notifyListeners();
  }
}
