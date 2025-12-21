import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';
import '../../../models/area_detail.dart';
import '../../../providers/tenant_provider.dart';
import '../../../utils/error_handler.dart';

/// Dialog per modificare limite operatori di un'area
class EditAreaLimitDialog extends StatefulWidget {
  final int tenantId;
  final AreaDetail area;

  const EditAreaLimitDialog({
    super.key,
    required this.tenantId,
    required this.area,
  });

  @override
  State<EditAreaLimitDialog> createState() => _EditAreaLimitDialogState();
}

class _EditAreaLimitDialogState extends State<EditAreaLimitDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _limitController;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _limitController = TextEditingController(
      text: widget.area.maxOperators.toString(),
    );
  }

  @override
  void dispose() {
    _limitController.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final tenantProvider = context.read<TenantProvider>();
      final newLimit = int.parse(_limitController.text);

      await tenantProvider.updateAreaQuotaLimit(
        widget.tenantId,
        widget.area.areaId,
        newLimit,
      );

      if (mounted) {
        ApiErrorHandler.showSuccessSnackbar(
          context,
          'Limite operatori aggiornato con successo',
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
    return AlertDialog(
      title: Row(
        children: [
          const Icon(Icons.edit, color: AppColors.primary),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'Modifica Limite - ${widget.area.areaName}',
              style: AppTextStyles.h3,
            ),
          ),
        ],
      ),
      content: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Info area
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.border),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.room, size: 16, color: AppColors.textSecondary),
                        const SizedBox(width: 8),
                        Text(
                          widget.area.areaName,
                          style: AppTextStyles.body,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Text('Operatori correnti: ', style: AppTextStyles.caption),
                        Text(
                          '${widget.area.currentOperators}',
                          style: AppTextStyles.caption.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Limite corrente: ', style: AppTextStyles.caption),
                        Text(
                          '${widget.area.maxOperators}',
                          style: AppTextStyles.caption.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (widget.area.isCustomLimit) ...[
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: AppColors.warning.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text(
                              'Personalizzato',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Input nuovo limite
              TextFormField(
                controller: _limitController,
                decoration: const InputDecoration(
                  labelText: 'Nuovo Limite Operatori *',
                  hintText: 'es: 10',
                  prefixIcon: Icon(Icons.people),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Limite richiesto';
                  }
                  final limit = int.tryParse(value);
                  if (limit == null || limit < 1) {
                    return 'Limite deve essere almeno 1';
                  }
                  if (limit < widget.area.currentOperators) {
                    return 'Limite non può essere inferiore a ${widget.area.currentOperators} (operatori correnti)';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16),

              // Warning validazione
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.warning.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.warning.withOpacity(0.3)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.info_outline,
                      size: 20,
                      color: AppColors.warning,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Il limite non può essere inferiore al numero di operatori attualmente associati all\'area (${widget.area.currentOperators}).',
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.warning,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _isLoading ? null : () => Navigator.of(context).pop(),
          child: const Text('Annulla'),
        ),
        ElevatedButton.icon(
          onPressed: _isLoading ? null : _handleSubmit,
          icon: _isLoading
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : const Icon(Icons.check),
          label: Text(_isLoading ? 'Salvataggio...' : 'Salva'),
        ),
      ],
    );
  }
}
