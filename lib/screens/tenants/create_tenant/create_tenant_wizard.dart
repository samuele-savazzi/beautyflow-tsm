import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';
import '../../../config/predefined_themes.dart';
import '../../../providers/tenant_provider.dart';
import '../../../models/create_tenant_request.dart';
import '../../../models/create_tenant_response.dart';
import '../../../models/area_request.dart';
import '../../../models/theme_request.dart';
import '../../../utils/error_handler.dart';
import '../../../api/services/api_version_manager.dart';
import 'widgets/step_indicator.dart';
import 'steps/tenant_info_step.dart';
import 'steps/quota_billing_step.dart';
import 'steps/areas_step.dart';
import 'steps/theme_step.dart';
import 'steps/confirmation_step.dart';
import 'success_screen.dart';

/// Create Tenant Wizard - Multi-step form
class CreateTenantWizard extends StatefulWidget {
  const CreateTenantWizard({super.key});

  @override
  State<CreateTenantWizard> createState() => _CreateTenantWizardState();
}

class _CreateTenantWizardState extends State<CreateTenantWizard> {
  int _currentStep = 1;
  final int _totalSteps = 5;

  // Form data
  String _name = '';
  String _domain = '';
  String _tenantType = 'HAIRDRESSER'; // Default tenant type
  String _adminEmail = '';
  String _adminPhone = '';
  String _adminFirstName = '';
  String _adminLastName = '';
  String _quotaTypeCode = 'BASIC';
  String _billingType = 'trial';
  int _billingDuration = 1;
  List<AreaRequest> _areas = [];
  String? _registeredOffice;
  late ThemeRequest _theme; // Non più opzionale

  final List<String> _stepTitles = [
    'Info Base',
    'Quota & Billing',
    'Aree',
    'Theme',
    'Conferma',
  ];

  bool get _isFirstStep => _currentStep == 1;
  bool get _isLastStep => _currentStep == _totalSteps;

  @override
  void initState() {
    super.initState();
    // Inizializza theme con il default (Corporate Slate)
    _theme = predefinedThemes[0].themeData;
  }

  void _nextStep() {
    if (_currentStep < _totalSteps) {
      setState(() {
        _currentStep++;
      });
    }
  }

  void _previousStep() {
    if (_currentStep > 1) {
      setState(() {
        _currentStep--;
      });
    }
  }

  void _updateStep1Data({
    required String name,
    required String domain,
    required String tenantType,
    required String adminEmail,
    required String adminPhone,
    required String adminFirstName,
    required String adminLastName,
  }) {
    setState(() {
      _name = name;
      _domain = domain;
      _tenantType = tenantType;
      _adminEmail = adminEmail;
      _adminPhone = adminPhone;
      _adminFirstName = adminFirstName;
      _adminLastName = adminLastName;
    });
    _nextStep();
  }

  void _updateStep2Data({
    required String quotaTypeCode,
    required String billingType,
    required int billingDuration,
  }) {
    setState(() {
      _quotaTypeCode = quotaTypeCode;
      _billingType = billingType;
      _billingDuration = billingDuration;
    });
    _nextStep();
  }

  void _updateStep3Data({
    required List<AreaRequest> areas,
  }) {
    setState(() {
      _areas = areas;
    });
    _nextStep();
  }

  void _updateStep4Data({
    required ThemeRequest theme,
    String? registeredOffice,
  }) {
    setState(() {
      _theme = theme;
      _registeredOffice = registeredOffice;
    });
    _nextStep();
  }

  Future<void> _submitTenant() async {
    // Leggi l'api_version corrente
    final apiVersion = await ApiVersionManager().getApiVersion();

    final request = CreateTenantRequest(
      name: _name,
      domain: _domain,
      type: _tenantType,
      adminEmail: _adminEmail,
      adminPhone: _adminPhone,
      adminFirstName: _adminFirstName,
      adminLastName: _adminLastName,
      quotaTypeCode: _quotaTypeCode,
      billingType: _billingType,
      billingDuration: _billingDuration,
      areas: _areas,
      registeredOffice: _registeredOffice,
      theme: _theme,
      apiVersion: apiVersion,
    );

    try {
      final tenantProvider = context.read<TenantProvider>();
      final response = await tenantProvider.createTenantWithResponse(request);

      if (response != null && mounted) {
        // Navigate to success screen
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => SuccessScreen(response: response),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        if (e is DioException) {
          ApiErrorHandler.showErrorSnackbar(context, e);
        } else {
          ApiErrorHandler.showErrorMessage(
            context,
            'Errore durante la creazione del tenant',
          );
        }
      }
    }
  }

  Widget _buildCurrentStep() {
    switch (_currentStep) {
      case 1:
        return TenantInfoStep(
          initialName: _name,
          initialDomain: _domain,
          initialTenantType: _tenantType,
          initialAdminEmail: _adminEmail,
          initialAdminPhone: _adminPhone,
          initialAdminFirstName: _adminFirstName,
          initialAdminLastName: _adminLastName,
          onNext: _updateStep1Data,
        );
      case 2:
        return QuotaBillingStep(
          initialQuotaTypeCode: _quotaTypeCode,
          initialBillingType: _billingType,
          initialBillingDuration: _billingDuration,
          onNext: _updateStep2Data,
        );
      case 3:
        return AreasStep(
          tenantName: _name,
          initialAreas: _areas,
          onNext: _updateStep3Data,
        );
      case 4:
        return ThemeStep(
          initialTheme: _theme,
          initialRegisteredOffice: _registeredOffice,
          onNext: _updateStep4Data,
        );
      case 5:
        return ConfirmationStep(
          name: _name,
          domain: _domain,
          tenantType: _tenantType,
          adminEmail: _adminEmail,
          adminPhone: _adminPhone,
          adminFirstName: _adminFirstName,
          adminLastName: _adminLastName,
          quotaTypeCode: _quotaTypeCode,
          billingType: _billingType,
          billingDuration: _billingDuration,
          areas: _areas,
          registeredOffice: _registeredOffice,
          theme: _theme,
          onSubmit: _submitTenant,
        );
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crea Nuovo Tenant'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () async {
            final confirm = await ApiErrorHandler.showConfirmDialog(
              context,
              'Annulla creazione',
              'Sei sicuro di voler annullare? I dati inseriti andranno persi.',
              confirmText: 'Sì, annulla',
              cancelText: 'Continua',
              isDestructive: true,
            );
            if (confirm && mounted) {
              Navigator.of(context).pop();
            }
          },
        ),
      ),
      body: Column(
        children: [
          // Step indicator
          StepIndicator(
            currentStep: _currentStep,
            totalSteps: _totalSteps,
            stepTitles: _stepTitles,
          ),

          // Step content
          Expanded(
            child: _buildCurrentStep(),
          ),

          // Navigation buttons (shown only if not last step)
          if (!_isLastStep)
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.surface,
                border: Border(
                  top: BorderSide(
                    color: AppColors.border,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (!_isFirstStep)
                    TextButton.icon(
                      onPressed: _previousStep,
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('Indietro'),
                    )
                  else
                    const SizedBox.shrink(),
                  const SizedBox(width: 16),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
