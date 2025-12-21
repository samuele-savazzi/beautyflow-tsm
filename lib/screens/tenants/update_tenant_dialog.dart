import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../config/theme.dart';
import '../../models/tenant.dart';
import '../../models/update_tenant_request.dart';
import '../../providers/tenant_provider.dart';
import '../../utils/error_handler.dart';
import '../../utils/validators.dart';

/// Dialog per aggiornamento tenant
class UpdateTenantDialog extends StatefulWidget {
  final Tenant tenant;

  const UpdateTenantDialog({
    super.key,
    required this.tenant,
  });

  @override
  State<UpdateTenantDialog> createState() => _UpdateTenantDialogState();
}

class _UpdateTenantDialogState extends State<UpdateTenantDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _registeredOfficeController;
  late final TextEditingController _apiVersionController;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.tenant.name);
    _registeredOfficeController = TextEditingController(
      text: widget.tenant.registeredOffice ?? '',
    );
    _apiVersionController = TextEditingController(
      text: widget.tenant.apiVersion ?? '',
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _registeredOfficeController.dispose();
    _apiVersionController.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final request = UpdateTenantRequest(
        tenantId: widget.tenant.id,
        name: _nameController.text.trim() != widget.tenant.name
            ? _nameController.text.trim()
            : null,
        registeredOffice: _registeredOfficeController.text.trim().isNotEmpty &&
                _registeredOfficeController.text.trim() !=
                    (widget.tenant.registeredOffice ?? '')
            ? _registeredOfficeController.text.trim()
            : null,
        apiVersion: _apiVersionController.text.trim().isNotEmpty &&
                _apiVersionController.text.trim() !=
                    (widget.tenant.apiVersion ?? '')
            ? _apiVersionController.text.trim()
            : null,
      );

      final tenantProvider = context.read<TenantProvider>();
      final success = await tenantProvider.updateTenant(
        widget.tenant.id,
        request.toJson(),
      );

      if (success && mounted) {
        ApiErrorHandler.showSuccessSnackbar(
          context,
          'Tenant aggiornato con successo',
        );
        Navigator.of(context).pop(true);
      }
    } on DioException catch (e) {
      if (mounted) {
        ApiErrorHandler.showErrorSnackbar(context, e);
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600, maxHeight: 700),
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.surface,
                border: Border(
                  bottom: BorderSide(color: AppColors.border, width: 1),
                ),
              ),
              child: Row(
                children: [
                  const Icon(Icons.edit, color: AppColors.primary),
                  const SizedBox(width: 12),
                  const Text(
                    'Modifica Tenant',
                    style: AppTextStyles.h3,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Nome
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Nome Tenant *',
                          hintText: 'es: Salone Bellezza Roma',
                          prefixIcon: Icon(Icons.business),
                        ),
                        validator: (value) =>
                            Validators.minLength(value, 3, 'Nome'),
                      ),
                      const SizedBox(height: 16),

                      // Registered Office
                      TextFormField(
                        controller: _registeredOfficeController,
                        decoration: const InputDecoration(
                          labelText: 'Sede Legale',
                          hintText: 'Via del Corso 100, Roma',
                          prefixIcon: Icon(Icons.location_on),
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(height: 16),

                      // API Version
                      TextFormField(
                        controller: _apiVersionController,
                        decoration: const InputDecoration(
                          labelText: 'Versione API',
                          hintText: 'es: v1, v2',
                          prefixIcon: Icon(Icons.api),
                        ),
                      ),

                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),

            // Footer
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.surface,
                border: Border(
                  top: BorderSide(color: AppColors.border, width: 1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: _isLoading
                        ? null
                        : () => Navigator.of(context).pop(),
                    child: const Text('Annulla'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: _isLoading ? null : _handleSubmit,
                    icon: _isLoading
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          )
                        : const Icon(Icons.check),
                    label: Text(_isLoading ? 'Salvataggio...' : 'Salva'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
