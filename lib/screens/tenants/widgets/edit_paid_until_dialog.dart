import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../config/theme.dart';
import '../../../models/tenant.dart';
import '../../../providers/tenant_provider.dart';
import '../../../utils/error_handler.dart';

/// Forza a mano la scadenza dell'abbonamento del tenant.
///
/// `paid_until` e' l'unico campo che il backend guarda per il blocco 402 e in
/// esercizio lo scrivono solo la creazione del tenant e l'incasso delle rate:
/// da qui si sposta avanti (per sbloccare) o indietro (per provare il blocco).
class EditPaidUntilDialog extends StatefulWidget {
  final Tenant tenant;

  const EditPaidUntilDialog({super.key, required this.tenant});

  @override
  State<EditPaidUntilDialog> createState() => _EditPaidUntilDialogState();
}

class _EditPaidUntilDialogState extends State<EditPaidUntilDialog> {
  late DateTime _selectedDate;
  final _reasonController = TextEditingController();
  bool _syncPlanExpiresAt = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    final current = widget.tenant.paidUntil;
    _selectedDate = current != null
        ? (DateTime.tryParse(current) ?? _today())
        : _today();
  }

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  static DateTime _today() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  bool get _isExpired => _selectedDate.isBefore(_today());

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      // Volutamente larga: il tester deve poter andare anche nel passato
      firstDate: DateTime(2020),
      lastDate: DateTime(_today().year + 10),
      helpText: 'Scadenza abbonamento',
    );
    if (picked != null) {
      setState(() => _selectedDate = picked);
    }
  }

  void _shift(int days) {
    setState(() => _selectedDate = _today().add(Duration(days: days)));
  }

  Future<void> _handleSubmit() async {
    setState(() => _isLoading = true);

    try {
      final result = await context.read<TenantProvider>().updatePaidUntil(
            widget.tenant.id,
            _selectedDate,
            reason: _reasonController.text.trim(),
            syncPlanExpiresAt: _syncPlanExpiresAt,
          );

      if (mounted) {
        ApiErrorHandler.showSuccessSnackbar(
          context,
          result?['message']?.toString() ?? 'Scadenza aggiornata',
        );
        Navigator.of(context).pop(true);
      }
    } on DioException catch (e) {
      if (mounted) {
        ApiErrorHandler.showErrorSnackbar(context, e);
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final formatted = DateFormat('dd/MM/yyyy').format(_selectedDate);

    return AlertDialog(
      title: Row(
        children: [
          const Icon(Icons.event_repeat, color: AppColors.primary),
          const SizedBox(width: 12),
          Expanded(
            child: Text('Scadenza abbonamento', style: AppTextStyles.h3),
          ),
        ],
      ),
      content: SizedBox(
        width: 420,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.border),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.store, size: 16,
                        color: AppColors.textSecondary),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(widget.tenant.name, style: AppTextStyles.body),
                    ),
                    Text(
                      widget.tenant.paidUntil != null
                          ? 'ora: ${_formatIso(widget.tenant.paidUntil!)}'
                          : 'nessuna scadenza',
                      style: AppTextStyles.caption,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              InkWell(
                onTap: _isLoading ? null : _pickDate,
                borderRadius: BorderRadius.circular(8),
                child: InputDecorator(
                  decoration: const InputDecoration(
                    labelText: 'Pagato fino al',
                    prefixIcon: Icon(Icons.calendar_today),
                  ),
                  child: Text(formatted, style: AppTextStyles.body),
                ),
              ),

              const SizedBox(height: 12),

              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _shortcut('Scaduto ieri', -1),
                  _shortcut('+7 giorni', 7),
                  _shortcut('+30 giorni', 30),
                  _shortcut('+1 anno', 365),
                ],
              ),

              const SizedBox(height: 16),

              TextField(
                controller: _reasonController,
                enabled: !_isLoading,
                decoration: const InputDecoration(
                  labelText: 'Motivo (opzionale)',
                  hintText: 'es: test blocco 402',
                  prefixIcon: Icon(Icons.notes),
                ),
                maxLength: 255,
              ),

              CheckboxListTile(
                value: _syncPlanExpiresAt,
                onChanged: _isLoading
                    ? null
                    : (v) => setState(() => _syncPlanExpiresAt = v ?? true),
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text('Allinea anche la scadenza del piano',
                    style: AppTextStyles.body),
                subtitle: Text(
                  'Il salone vede la stessa data nella sua area abbonamento',
                  style: AppTextStyles.caption,
                ),
              ),

              const SizedBox(height: 8),

              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: (_isExpired ? AppColors.error : AppColors.success)
                      .withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: (_isExpired ? AppColors.error : AppColors.success)
                        .withOpacity(0.3),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      _isExpired ? Icons.lock : Icons.check_circle_outline,
                      size: 20,
                      color: _isExpired ? AppColors.error : AppColors.success,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _isExpired
                            ? 'Data passata: titolare, segreteria e operatori '
                                'riceveranno 402 dalla prossima richiesta. '
                                'I clienti continuano a prenotare.'
                            : 'Abbonamento attivo fino al $formatted.',
                        style: AppTextStyles.bodySmall.copyWith(
                          color: _isExpired
                              ? AppColors.error
                              : AppColors.success,
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

  Widget _shortcut(String label, int days) {
    return OutlinedButton(
      onPressed: _isLoading ? null : () => _shift(days),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      child: Text(label, style: AppTextStyles.bodySmall),
    );
  }

  static String _formatIso(String iso) {
    final parsed = DateTime.tryParse(iso);
    return parsed != null ? DateFormat('dd/MM/yyyy').format(parsed) : iso;
  }
}
