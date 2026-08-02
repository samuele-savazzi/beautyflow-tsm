import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';
import '../../../models/area_detail.dart';
import '../../../providers/tenant_provider.dart';
import '../../../utils/error_handler.dart';
import 'area_location_form.dart';

/// Dialog per modificare indirizzo e coordinate di una sede esistente.
class EditAreaLocationDialog extends StatefulWidget {
  final int tenantId;
  final AreaDetail area;

  const EditAreaLocationDialog({
    super.key,
    required this.tenantId,
    required this.area,
  });

  @override
  State<EditAreaLocationDialog> createState() => _EditAreaLocationDialogState();
}

class _EditAreaLocationDialogState extends State<EditAreaLocationDialog> {
  final _formStateKey = GlobalKey<AreaLocationFormState>();
  bool _isLoading = false;

  Future<void> _handleSubmit() async {
    final formState = _formStateKey.currentState;
    if (formState == null) return;

    final validationError = formState.validate();
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
      await context.read<TenantProvider>().updateAreaLocation(
            widget.tenantId,
            widget.area.areaId,
            formState.toPayload(),
          );

      if (mounted) {
        ApiErrorHandler.showSuccessSnackbar(context, 'Indirizzo aggiornato');
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
      title: Text('Indirizzo — ${widget.area.areaName}'),
      content: SizedBox(
        width: 560,
        child: SingleChildScrollView(
          child: AreaLocationForm(
            key: _formStateKey,
            area: widget.area,
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
              : const Text('Salva'),
        ),
      ],
    );
  }
}
