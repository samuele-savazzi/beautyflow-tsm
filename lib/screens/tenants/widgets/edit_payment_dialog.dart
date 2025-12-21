import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:file_picker/file_picker.dart';
import '../../../config/theme.dart';
import '../../../providers/payment_provider.dart';
import '../../../utils/file_utils.dart';

/// Dialog per modificare una transazione esistente
class EditPaymentDialog extends StatefulWidget {
  final int tenantId;
  final Map<String, dynamic> payment;

  const EditPaymentDialog({
    super.key,
    required this.tenantId,
    required this.payment,
  });

  @override
  State<EditPaymentDialog> createState() => _EditPaymentDialogState();
}

class _EditPaymentDialogState extends State<EditPaymentDialog> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _invoiceNumberController = TextEditingController();
  final _invoiceUrlController = TextEditingController();

  String _status = 'completed';
  String? _paymentMethod;
  bool _isUpdating = false;
  bool _isUploadingAttachment = false;
  String? _attachmentPath;

  final List<Map<String, String>> _statuses = [
    {'value': 'pending', 'label': 'In Attesa'},
    {'value': 'processing', 'label': 'In Elaborazione'},
    {'value': 'completed', 'label': 'Completato'},
    {'value': 'failed', 'label': 'Fallito'},
    {'value': 'refunded', 'label': 'Rimborsato'},
    {'value': 'cancelled', 'label': 'Annullato'},
  ];

  final List<Map<String, String>> _paymentMethods = [
    {'value': 'stripe', 'label': 'Stripe'},
    {'value': 'paypal', 'label': 'PayPal'},
    {'value': 'bank_transfer', 'label': 'Bonifico Bancario'},
    {'value': 'credit_card', 'label': 'Carta di Credito'},
    {'value': 'manual', 'label': 'Manuale'},
  ];

  @override
  void initState() {
    super.initState();
    _populateFields();
  }

  void _populateFields() {
    _amountController.text = widget.payment['amount']?.toString() ?? '';
    _descriptionController.text = widget.payment['description']?.toString() ?? '';
    _invoiceNumberController.text = widget.payment['invoice_number']?.toString() ?? '';
    _invoiceUrlController.text = widget.payment['invoice_url']?.toString() ?? '';

    // Status - convert empty string to default
    final statusValue = widget.payment['status']?.toString() ?? '';
    _status = statusValue.isEmpty ? 'completed' : statusValue;

    // Payment method - convert empty string to null
    final paymentMethodValue = widget.payment['payment_method']?.toString() ?? '';
    _paymentMethod = paymentMethodValue.isEmpty ? null : paymentMethodValue;
  }

  @override
  void dispose() {
    _amountController.dispose();
    _descriptionController.dispose();
    _invoiceNumberController.dispose();
    _invoiceUrlController.dispose();
    super.dispose();
  }

  Future<void> _pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
      );

      if (result != null) {
        setState(() {
          _attachmentPath = result.files.single.path;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Errore nella selezione del file'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  Future<void> _uploadAttachment() async {
    if (_attachmentPath == null) return;

    setState(() {
      _isUploadingAttachment = true;
    });

    try {
      final paymentProvider = context.read<PaymentProvider>();
      final url = await paymentProvider.uploadPaymentAttachment(
        tenantId: widget.tenantId,
        paymentId: widget.payment['id'],
        filePath: _attachmentPath!,
      );

      if (mounted) {
        if (url != null) {
          setState(() {
            _attachmentPath = null;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Allegato caricato con successo'),
              backgroundColor: AppColors.success,
            ),
          );

          // Close dialog to refresh the payment list
          Navigator.of(context).pop(true);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                paymentProvider.error ?? 'Errore durante il caricamento',
              ),
              backgroundColor: AppColors.error,
            ),
          );
        }
      }
    } finally {
      if (mounted) {
        setState(() {
          _isUploadingAttachment = false;
        });
      }
    }
  }

  Future<void> _deleteAttachment(int attachmentId, String fileName) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Elimina Allegato'),
        content: Text('Vuoi eliminare definitivamente "$fileName"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Annulla'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.error,
            ),
            child: const Text('Elimina'),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    try {
      final paymentProvider = context.read<PaymentProvider>();
      final success = await paymentProvider.deleteAttachment(
        tenantId: widget.tenantId,
        paymentId: widget.payment['id'],
        attachmentId: attachmentId,
      );

      if (mounted) {
        if (success) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Allegato eliminato con successo'),
              backgroundColor: AppColors.success,
            ),
          );

          // Close dialog to refresh the payment list
          Navigator.of(context).pop(true);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                paymentProvider.error ?? 'Errore durante l\'eliminazione',
              ),
              backgroundColor: AppColors.error,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Errore: ${e.toString()}'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  void _openAttachment(String url, String fileName) {
    FileUtils.openUrl(url, context: context);
  }

  Future<void> _updatePayment() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isUpdating = true;
    });

    // Build payment data (only fields that can be updated)
    final paymentData = <String, dynamic>{
      'amount': _amountController.text,
      'status': _status,
      'description': _descriptionController.text,
      if (_paymentMethod != null) 'payment_method': _paymentMethod,
      if (_invoiceNumberController.text.isNotEmpty)
        'invoice_number': _invoiceNumberController.text,
      if (_invoiceUrlController.text.isNotEmpty)
        'invoice_url': _invoiceUrlController.text,
    };

    try {
      final paymentProvider = context.read<PaymentProvider>();
      final success = await paymentProvider.updatePayment(
        tenantId: widget.tenantId,
        paymentId: widget.payment['id'],
        paymentData: paymentData,
      );

      if (mounted) {
        if (success) {
          Navigator.of(context).pop(true);

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Transazione aggiornata con successo'),
              backgroundColor: AppColors.success,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                paymentProvider.error ?? 'Errore durante l\'aggiornamento',
              ),
              backgroundColor: AppColors.error,
            ),
          );
        }
      }
    } finally {
      if (mounted) {
        setState(() {
          _isUpdating = false;
        });
      }
    }
  }

  Widget _buildAttachmentCard(Map<String, dynamic> attachment) {
    final fileName = attachment['file_name']?.toString() ?? 'File';
    final fileSize = attachment['file_size'] as int? ?? 0;
    final contentType = attachment['content_type']?.toString();
    final fileUrl = attachment['file_url']?.toString();
    final attachmentId = attachment['id'] as int?;
    final uploadedAt = attachment['uploaded_at']?.toString();

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: FileUtils.getFileColor(contentType).withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: FileUtils.getFileColor(contentType).withOpacity(0.3),
        ),
      ),
      child: Row(
        children: [
          // File icon
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: FileUtils.getFileColor(contentType).withOpacity(0.1),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(
              FileUtils.getFileIcon(contentType),
              color: FileUtils.getFileColor(contentType),
              size: 24,
            ),
          ),
          const SizedBox(width: 12),

          // File info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  FileUtils.shortenFilename(fileName, maxLength: 35),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      FileUtils.formatFileSize(fileSize),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    if (uploadedAt != null) ...[
                      const Text(' • ', style: TextStyle(color: Colors.grey)),
                      Text(
                        uploadedAt.split('T')[0],
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),

          // Action buttons
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Download button
              if (fileUrl != null)
                IconButton(
                  icon: const Icon(Icons.download, size: 20),
                  onPressed: () => _openAttachment(fileUrl, fileName),
                  tooltip: 'Scarica',
                  color: AppColors.primary,
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.primary.withOpacity(0.1),
                  ),
                ),
              const SizedBox(width: 4),

              // Delete button
              if (attachmentId != null)
                IconButton(
                  icon: const Icon(Icons.delete_outline, size: 20),
                  onPressed: () => _deleteAttachment(attachmentId, fileName),
                  tooltip: 'Elimina',
                  color: AppColors.error,
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.error.withOpacity(0.1),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final transactionType = widget.payment['transaction_type']?.toString() ?? '';
    final transactionTypeDisplay =
        widget.payment['transaction_type_display']?.toString() ?? transactionType;

    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600, maxHeight: 800),
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Modifica Transazione',
                          style: AppTextStyles.h3,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'ID: ${widget.payment['id']}',
                          style: AppTextStyles.caption,
                        ),
                      ],
                    ),
                  ),
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
                      // Transaction Type (readonly)
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.border),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.category,
                              color: AppColors.textSecondary,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Tipo Transazione',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    transactionTypeDisplay,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.warning.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                'Non modificabile',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: AppColors.warning,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Amount
                      TextFormField(
                        controller: _amountController,
                        keyboardType: const TextInputType.numberWithOptions(decimal: true),
                        decoration: const InputDecoration(
                          labelText: 'Importo (€) *',
                          prefixIcon: Icon(Icons.euro),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Inserisci l\'importo';
                          }
                          final amount = double.tryParse(value);
                          if (amount == null) {
                            return 'Inserisci un importo valido';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Status
                      DropdownButtonFormField<String>(
                        initialValue: _status,
                        decoration: const InputDecoration(
                          labelText: 'Stato *',
                          prefixIcon: Icon(Icons.check_circle),
                        ),
                        items: _statuses.map((status) {
                          return DropdownMenuItem(
                            value: status['value'],
                            child: Text(status['label']!),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _status = value!;
                          });
                        },
                      ),
                      const SizedBox(height: 16),

                      // Description
                      TextFormField(
                        controller: _descriptionController,
                        maxLines: 3,
                        decoration: const InputDecoration(
                          labelText: 'Descrizione *',
                          prefixIcon: Icon(Icons.notes),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Inserisci una descrizione';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Payment Method
                      DropdownButtonFormField<String>(
                        value: _paymentMethod,
                        decoration: const InputDecoration(
                          labelText: 'Metodo di Pagamento',
                          prefixIcon: Icon(Icons.payment),
                        ),
                        items: [
                          const DropdownMenuItem<String>(
                            value: null,
                            child: Text('Nessuno'),
                          ),
                          ..._paymentMethods.map((method) {
                            return DropdownMenuItem<String>(
                              value: method['value'],
                              child: Text(method['label']!),
                            );
                          }),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _paymentMethod = value;
                          });
                        },
                      ),
                      const SizedBox(height: 16),

                      // Invoice Number
                      TextFormField(
                        controller: _invoiceNumberController,
                        decoration: const InputDecoration(
                          labelText: 'Numero Fattura',
                          prefixIcon: Icon(Icons.receipt_long),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Invoice URL (legacy field - readonly)
                      TextFormField(
                        controller: _invoiceUrlController,
                        decoration: const InputDecoration(
                          labelText: 'URL Fattura (Legacy)',
                          prefixIcon: Icon(Icons.link),
                          helperText: 'Usa "Allegati" per gestire i file',
                        ),
                        readOnly: true,
                      ),

                      // Existing Attachments Section
                      const SizedBox(height: 24),
                      const Divider(),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Icon(Icons.attach_file, color: AppColors.primary),
                          const SizedBox(width: 8),
                          const Text(
                            'Allegati Esistenti',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const Spacer(),
                          if (widget.payment['attachments'] != null &&
                              widget.payment['attachments'] is List)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.primary.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                '${(widget.payment['attachments'] as List).length}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 12),

                      if (widget.payment['attachments'] != null &&
                          widget.payment['attachments'] is List &&
                          (widget.payment['attachments'] as List).isNotEmpty) ...[
                        ...(widget.payment['attachments'] as List)
                            .map((attachment) => _buildAttachmentCard(attachment))
                            .toList(),
                      ] else ...[
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.background,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.border,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.info_outline,
                                  color: AppColors.textSecondary, size: 20),
                              SizedBox(width: 12),
                              Text(
                                'Nessun allegato presente',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],

                      // Upload New Attachment Section
                      const SizedBox(height: 24),
                      const Divider(),
                      const SizedBox(height: 16),
                      const Row(
                        children: [
                          Icon(Icons.cloud_upload, color: AppColors.primary),
                          SizedBox(width: 8),
                          Text(
                            'Carica Nuovo Allegato',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),

                      if (_attachmentPath != null) ...[
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.primary.withOpacity(0.3)),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                FileUtils.getFileIcon(
                                  FileUtils.getFileExtension(_attachmentPath!),
                                ),
                                color: AppColors.primary,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _attachmentPath!.split('/').last,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 2),
                                    const Text(
                                      'Pronto per il caricamento',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.close, size: 18),
                                onPressed: () {
                                  setState(() {
                                    _attachmentPath = null;
                                  });
                                },
                                tooltip: 'Rimuovi',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: _isUploadingAttachment ? null : _uploadAttachment,
                            icon: _isUploadingAttachment
                                ? const SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      valueColor:
                                          AlwaysStoppedAnimation<Color>(Colors.white),
                                    ),
                                  )
                                : const Icon(Icons.cloud_upload),
                            label: Text(
                              _isUploadingAttachment
                                  ? 'Caricamento in corso...'
                                  : 'Carica Allegato',
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        ),
                      ] else ...[
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            onPressed: _pickFile,
                            icon: const Icon(Icons.attach_file),
                            label: const Text('Seleziona File (PDF, JPG, PNG)'),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        ),
                      ],
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
                    onPressed: _isUpdating ? null : () => Navigator.of(context).pop(),
                    child: const Text('Annulla'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: _isUpdating ? null : _updatePayment,
                    icon: _isUpdating
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          )
                        : const Icon(Icons.save),
                    label: Text(_isUpdating ? 'Salvataggio...' : 'Salva Modifiche'),
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
