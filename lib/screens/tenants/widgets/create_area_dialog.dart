import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';
import '../../../providers/tenant_provider.dart';
import '../../../utils/error_handler.dart';
import 'area_location_form.dart';

/// Dialog per creare una nuova sede in un tenant esistente.
///
/// Il backend, oltre alla riga Aree, crea gli orari chiusi sui 7 giorni,
/// collega gli admin del tenant e prepara le config reminder: la sede nasce
/// gia' configurabile dal gestionale.
class CreateAreaDialog extends StatefulWidget {
  final int tenantId;
  final String tenantName;

  const CreateAreaDialog({
    super.key,
    required this.tenantId,
    required this.tenantName,
  });

  @override
  State<CreateAreaDialog> createState() => _CreateAreaDialogState();
}

class _CreateAreaDialogState extends State<CreateAreaDialog> {
  final _formKey = GlobalKey<FormState>();
  final _formStateKey = GlobalKey<AreaLocationFormState>();
  final _nameController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    final formState = _formStateKey.currentState;
    final validationError = formState?.validate();
    if (validationError != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(validationError),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      await context.read<TenantProvider>().createArea(
            widget.tenantId,
            name: _nameController.text.trim(),
            location: formState?.toPayload(),
          );

      if (mounted) {
        ApiErrorHandler.showSuccessSnackbar(context, 'Sede creata con successo');
        Navigator.of(context).pop(true);
      }
    } on DioException catch (e) {
      if (mounted) ApiErrorHandler.showErrorSnackbar(context, e);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Nuova sede — ${widget.tenantName}'),
      content: SizedBox(
        width: 560,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _nameController,
                  autofocus: true,
                  maxLength: 255,
                  decoration: const InputDecoration(
                    labelText: 'Nome sede *',
                    hintText: 'Es. Sede Centro',
                    counterText: '',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                  validator: (v) => (v == null || v.trim().isEmpty)
                      ? 'Il nome della sede e\' obbligatorio'
                      : null,
                ),
                const SizedBox(height: 8),
                Text(
                  'L\'indirizzo e\' facoltativo e puo\' essere completato in seguito, '
                  'anche dal gestionale del salone.',
                  style: AppTextStyles.caption,
                ),
                const SizedBox(height: 16),
                AreaLocationForm(key: _formStateKey, prefillCountry: true),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _isLoading ? null : () => Navigator.of(context).pop(false),
          child: const Text('Annulla'),
        ),
        ElevatedButton(
          onPressed: _isLoading ? null : _handleSubmit,
          child: _isLoading
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('Crea sede'),
        ),
      ],
    );
  }
}
