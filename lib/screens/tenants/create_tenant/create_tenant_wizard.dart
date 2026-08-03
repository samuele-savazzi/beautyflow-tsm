import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';
import '../../../config/predefined_themes.dart';
import '../../../providers/tenant_provider.dart';
import '../../../providers/billing_provider.dart';
import '../../../models/create_tenant_request.dart';
import '../../../models/create_tenant_response.dart';
import '../../../models/area_request.dart';
import '../../../models/theme_request.dart';
import '../../../utils/error_handler.dart';
import '../../../api/services/api_version_manager.dart';
import 'widgets/step_indicator.dart';
import 'steps/tenant_info_step.dart';
import 'steps/logo_step.dart';
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
  final int _totalSteps = 6; // Aggiunto step Logo

  // Form data
  String _name = '';
  String _domain = '';
  String _tenantType = 'HAIRDRESSER'; // Default tenant type
  String _adminEmail = '';
  String _adminPhone = '';
  String _adminFirstName = '';
  String _adminLastName = '';
  String? _logoPath; // NUOVO
  String? _darkLogoPath; // NUOVO
  String? _faviconPath; // NUOVO (obbligatoria)
  String _quotaTypeCode = 'BASIC';
  String _billingType = 'trial';
  int _billingDuration = 1;
  Map<String, dynamic>? _contractConfig;
  Map<String, dynamic>? _billingProfile;
  List<AreaRequest> _areas = [];
  late ThemeRequest _theme; // Non più opzionale

  final List<String> _stepTitles = [
    'Info Base',
    'Logo',
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
    required String logoPath,
    required String darkLogoPath,
    required String faviconPath,
  }) {
    setState(() {
      _logoPath = logoPath;
      _darkLogoPath = darkLogoPath;
      _faviconPath = faviconPath;
    });
    _nextStep();
  }

  void _updateStep3Data({
    required String quotaTypeCode,
    required String billingType,
    required int billingDuration,
    Map<String, dynamic>? contractConfig,
    Map<String, dynamic>? billingProfile,
  }) {
    setState(() {
      _quotaTypeCode = quotaTypeCode;
      _billingType = billingType;
      _billingDuration = billingDuration;
      _contractConfig = contractConfig;
      _billingProfile = billingProfile;
    });
    _nextStep();
  }

  void _updateStep4Data({
    required List<AreaRequest> areas,
  }) {
    setState(() {
      _areas = areas;
    });
    _nextStep();
  }

  void _updateStep5Data({required ThemeRequest theme}) {
    setState(() {
      _theme = theme;
    });
    _nextStep();
  }

  Future<void> _submitTenant() async {
    // Validazione loghi obbligatori
    if (_logoPath == null || _darkLogoPath == null || _faviconPath == null) {
      if (mounted) {
        ApiErrorHandler.showErrorMessage(
          context,
          'Logo, Dark Logo e Favicon sono obbligatori',
        );
      }
      return;
    }

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
      // La sede legale non si digita piu' qui: la deriva il backend dal
      // profilo di fatturazione, che e' anche quello che finisce in fattura.
      theme: _theme,
      apiVersion: apiVersion,
    );

    try {
      final tenantProvider = context.read<TenantProvider>();
      // Preso prima dell'await: dopo, il context potrebbe non essere piu' valido
      final billingProvider = context.read<BillingProvider>();
      final response = await tenantProvider.createTenantWithFiles(
        request: request,
        logoFilePath: _logoPath!,
        darkLogoFilePath: _darkLogoPath!,
        faviconFilePath: _faviconPath!,
      );

      if (response != null && mounted) {
        // Dati fiscali prima del contratto: la fattura della prima rata li
        // pretende, e senza il backend salta l'emissione.
        if (_billingProfile != null) {
          final saved = await billingProvider.saveBillingProfile(
            response.tenant.id,
            _billingProfile!,
          );
          if (!saved && mounted) {
            ApiErrorHandler.showErrorMessage(
              context,
              'Tenant creato, ma i dati di fatturazione non sono stati '
              'salvati: ${billingProvider.error ?? 'errore sconosciuto'}. '
              'Compilali dalla scheda del tenant, altrimenti le fatture non '
              'vengono emesse.',
            );
          }
        }

        // Il contratto si crea DOPO il tenant e non deve poterlo far fallire:
        // se qualcosa va storto lo si sottoscrive dalla scheda del tenant
        if (_contractConfig != null) {
          final contract = await billingProvider.createContract(
            response.tenant.id,
            _contractConfig!,
          );
          if (contract == null && mounted) {
            ApiErrorHandler.showErrorMessage(
              context,
              'Tenant creato, ma il contratto non è stato registrato: '
              '${billingProvider.error ?? 'errore sconosciuto'}. '
              'Puoi sottoscriverlo dalla scheda del tenant.',
            );
          }
        }
        if (!mounted) return;

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
        return LogoStep(
          initialLogoPath: _logoPath,
          initialDarkLogoPath: _darkLogoPath,
          initialFaviconPath: _faviconPath,
          onNext: _updateStep2Data,
        );
      case 3:
        return QuotaBillingStep(
          initialQuotaTypeCode: _quotaTypeCode,
          initialBillingType: _billingType,
          initialBillingDuration: _billingDuration,
          onNext: _updateStep3Data,
        );
      case 4:
        return AreasStep(
          tenantName: _name,
          initialAreas: _areas,
          onNext: _updateStep4Data,
        );
      case 5:
        return ThemeStep(
          initialTheme: _theme,
          onNext: _updateStep5Data,
        );
      case 6:
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
          billingProfile: _billingProfile,
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
