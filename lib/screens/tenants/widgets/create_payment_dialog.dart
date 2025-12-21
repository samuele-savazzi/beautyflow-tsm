import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:file_picker/file_picker.dart';
import '../../../config/theme.dart';
import '../../../providers/payment_provider.dart';
import '../../../utils/file_utils.dart';

/// Dialog per creare una transazione/pagamento manuale
class CreatePaymentDialog extends StatefulWidget {
  final int tenantId;
  final String tenantName;

  const CreatePaymentDialog({
    super.key,
    required this.tenantId,
    required this.tenantName,
  });

  @override
  State<CreatePaymentDialog> createState() => _CreatePaymentDialogState();
}

class _CreatePaymentDialogState extends State<CreatePaymentDialog> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _invoiceNumberController = TextEditingController();
  final _invoiceUrlController = TextEditingController();
  final _externalTxIdController = TextEditingController();

  // Campi condizionali
  final _smsQuantityController = TextEditingController();
  final _operatorsQuantityController = TextEditingController();
  final _workstationsQuantityController = TextEditingController();
  final _quotaTypeNameController = TextEditingController();

  String _transactionType = 'recharge_sms';
  String _status = 'completed';
  String? _paymentMethod;
  bool _isCreating = false;

  // File attachments
  List<PlatformFile> _selectedFiles = [];

  final List<Map<String, String>> _transactionTypes = [
    {'value': 'renew_plan', 'label': 'Rinnovo Piano'},
    {'value': 'recharge_sms', 'label': 'Ricarica SMS'},
    {'value': 'upgrade_plan', 'label': 'Upgrade Piano'},
    {'value': 'downgrade_plan', 'label': 'Downgrade Piano'},
    {'value': 'purchase_operators', 'label': 'Acquisto Operatori'},
    {'value': 'purchase_workstations', 'label': 'Acquisto Workstation'},
    {'value': 'addon', 'label': 'Addon Generico'},
    {'value': 'refund', 'label': 'Rimborso'},
    {'value': 'purchase_tier', 'label': 'Acquisto Tier'},
    {'value': 'first_purchase', 'label': 'Primo Acquisto'},
  ];

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
  void dispose() {
    _amountController.dispose();
    _descriptionController.dispose();
    _invoiceNumberController.dispose();
    _invoiceUrlController.dispose();
    _externalTxIdController.dispose();
    _smsQuantityController.dispose();
    _operatorsQuantityController.dispose();
    _workstationsQuantityController.dispose();
    _quotaTypeNameController.dispose();
    super.dispose();
  }

  Future<void> _pickFiles() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
        allowMultiple: true,
      );

      if (result != null && result.files.isNotEmpty) {
        setState(() {
          _selectedFiles.addAll(result.files);
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Errore nella selezione dei file'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  void _removeFile(int index) {
    setState(() {
      _selectedFiles.removeAt(index);
    });
  }

  Future<void> _createPayment() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isCreating = true;
    });

    try {
      // If files are selected, use multipart FormData
      if (_selectedFiles.isNotEmpty) {
        await _createPaymentWithAttachments();
      } else {
        // Standard JSON request
        await _createPaymentStandard();
      }
    } finally {
      if (mounted) {
        setState(() {
          _isCreating = false;
        });
      }
    }
  }

  Future<void> _createPaymentStandard() async {
    // Build payment data
    final paymentData = <String, dynamic>{
      'transaction_type': _transactionType,
      'amount': _amountController.text,
      'status': _status,
      'description': _descriptionController.text,
      if (_paymentMethod != null) 'payment_method': _paymentMethod,
      if (_invoiceNumberController.text.isNotEmpty)
        'invoice_number': _invoiceNumberController.text,
      if (_invoiceUrlController.text.isNotEmpty)
        'invoice_url': _invoiceUrlController.text,
      if (_externalTxIdController.text.isNotEmpty)
        'external_transaction_id': _externalTxIdController.text,
    };

    // Add conditional fields based on transaction type
    if (_transactionType == 'recharge_sms' && _smsQuantityController.text.isNotEmpty) {
      paymentData['sms_quantity'] = int.tryParse(_smsQuantityController.text);
    } else if (_transactionType == 'purchase_operators' &&
        _operatorsQuantityController.text.isNotEmpty) {
      paymentData['operators_quantity'] = int.tryParse(_operatorsQuantityController.text);
    } else if (_transactionType == 'purchase_workstations' &&
        _workstationsQuantityController.text.isNotEmpty) {
      paymentData['workstations_quantity'] =
          int.tryParse(_workstationsQuantityController.text);
    } else if ((_transactionType == 'renew_plan' || _transactionType == 'upgrade_plan') &&
        _quotaTypeNameController.text.isNotEmpty) {
      paymentData['quota_type_name'] = _quotaTypeNameController.text;
    }

    final paymentProvider = context.read<PaymentProvider>();
    final success = await paymentProvider.createPayment(
      tenantId: widget.tenantId,
      paymentData: paymentData,
    );

    if (mounted) {
      if (success) {
        Navigator.of(context).pop(true);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Transazione creata con successo'),
            backgroundColor: AppColors.success,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              paymentProvider.error ?? 'Errore durante la creazione',
            ),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  Future<void> _createPaymentWithAttachments() async {
    // Build payment data
    final paymentData = <String, dynamic>{
      'transaction_type': _transactionType,
      'amount': _amountController.text,
      'status': _status,
      'description': _descriptionController.text,
      if (_paymentMethod != null) 'payment_method': _paymentMethod,
      if (_invoiceNumberController.text.isNotEmpty)
        'invoice_number': _invoiceNumberController.text,
      if (_invoiceUrlController.text.isNotEmpty)
        'invoice_url': _invoiceUrlController.text,
      if (_externalTxIdController.text.isNotEmpty)
        'external_transaction_id': _externalTxIdController.text,
    };

    // Add conditional fields based on transaction type
    if (_transactionType == 'recharge_sms' && _smsQuantityController.text.isNotEmpty) {
      paymentData['sms_quantity'] = int.tryParse(_smsQuantityController.text);
    } else if (_transactionType == 'purchase_operators' &&
        _operatorsQuantityController.text.isNotEmpty) {
      paymentData['operators_quantity'] = int.tryParse(_operatorsQuantityController.text);
    } else if (_transactionType == 'purchase_workstations' &&
        _workstationsQuantityController.text.isNotEmpty) {
      paymentData['workstations_quantity'] =
          int.tryParse(_workstationsQuantityController.text);
    } else if ((_transactionType == 'renew_plan' || _transactionType == 'upgrade_plan') &&
        _quotaTypeNameController.text.isNotEmpty) {
      paymentData['quota_type_name'] = _quotaTypeNameController.text;
    }

    // Extract file paths
    final filePaths = _selectedFiles
        .where((file) => file.path != null)
        .map((file) => file.path!)
        .toList();

    final paymentProvider = context.read<PaymentProvider>();
    final success = await paymentProvider.createPaymentWithAttachments(
      tenantId: widget.tenantId,
      paymentData: paymentData,
      filePaths: filePaths,
    );

    if (mounted) {
      if (success) {
        Navigator.of(context).pop(true);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Transazione creata con successo con allegati'),
            backgroundColor: AppColors.success,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              paymentProvider.error ?? 'Errore durante la creazione',
            ),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  const Icon(Icons.payment, color: AppColors.primary),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Crea Transazione',
                          style: AppTextStyles.h3,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Tenant: ${widget.tenantName}',
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
                      // Transaction Type
                      DropdownButtonFormField<String>(
                        initialValue: _transactionType,
                        decoration: const InputDecoration(
                          labelText: 'Tipo Transazione *',
                          prefixIcon: Icon(Icons.category),
                        ),
                        items: _transactionTypes.map((type) {
                          return DropdownMenuItem(
                            value: type['value'],
                            child: Text(type['label']!),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _transactionType = value!;
                          });
                        },
                      ),
                      const SizedBox(height: 16),

                      // Amount
                      TextFormField(
                        controller: _amountController,
                        keyboardType: const TextInputType.numberWithOptions(decimal: true),
                        decoration: const InputDecoration(
                          labelText: 'Importo (€) *',
                          hintText: 'es. 50.00',
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
                          hintText: 'Dettagli sulla transazione',
                          prefixIcon: Icon(Icons.notes),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Inserisci una descrizione';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),

                      // Conditional fields based on transaction type
                      const Text(
                        'Dettagli Specifici',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 12),

                      if (_transactionType == 'recharge_sms') ...[
                        TextFormField(
                          controller: _smsQuantityController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Quantità SMS',
                            hintText: 'es. 500',
                            prefixIcon: Icon(Icons.sms),
                          ),
                        ),
                      ] else if (_transactionType == 'purchase_operators') ...[
                        TextFormField(
                          controller: _operatorsQuantityController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Quantità Operatori',
                            hintText: 'es. 5',
                            prefixIcon: Icon(Icons.people),
                          ),
                        ),
                      ] else if (_transactionType == 'purchase_workstations') ...[
                        TextFormField(
                          controller: _workstationsQuantityController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Quantità Workstation',
                            hintText: 'es. 3',
                            prefixIcon: Icon(Icons.desktop_windows),
                          ),
                        ),
                      ] else if (_transactionType == 'renew_plan' ||
                          _transactionType == 'upgrade_plan') ...[
                        TextFormField(
                          controller: _quotaTypeNameController,
                          decoration: const InputDecoration(
                            labelText: 'Nome Piano',
                            hintText: 'es. Premium',
                            prefixIcon: Icon(Icons.workspace_premium),
                          ),
                        ),
                      ],

                      const SizedBox(height: 24),

                      // Payment details
                      const Text(
                        'Dettagli Pagamento',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 12),

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
                          hintText: 'es. INV-2024-001',
                          prefixIcon: Icon(Icons.receipt_long),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Invoice URL
                      TextFormField(
                        controller: _invoiceUrlController,
                        decoration: const InputDecoration(
                          labelText: 'URL Fattura',
                          hintText: 'https://...',
                          prefixIcon: Icon(Icons.link),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // External Transaction ID
                      TextFormField(
                        controller: _externalTxIdController,
                        decoration: const InputDecoration(
                          labelText: 'ID Transazione Esterna',
                          hintText: 'es. stripe_ch_abc123',
                          prefixIcon: Icon(Icons.fingerprint),
                        ),
                      ),

                      // Attachments Section
                      const SizedBox(height: 24),
                      const Divider(),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Icon(Icons.attach_file, color: AppColors.primary),
                          const SizedBox(width: 8),
                          const Text(
                            'Allegati (Opzionale)',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const Spacer(),
                          if (_selectedFiles.isNotEmpty)
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
                                '${_selectedFiles.length}',
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

                      // Selected files list
                      if (_selectedFiles.isNotEmpty) ...[
                        ..._selectedFiles.asMap().entries.map((entry) {
                          final index = entry.key;
                          final file = entry.value;
                          return Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: FileUtils.getFileColor(
                                FileUtils.getFileExtension(file.name),
                              ).withOpacity(0.05),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: FileUtils.getFileColor(
                                  FileUtils.getFileExtension(file.name),
                                ).withOpacity(0.3),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  FileUtils.getFileIcon(
                                    FileUtils.getFileExtension(file.name),
                                  ),
                                  color: FileUtils.getFileColor(
                                    FileUtils.getFileExtension(file.name),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FileUtils.shortenFilename(file.name, maxLength: 35),
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      if (file.size != null) ...[
                                        const SizedBox(height: 2),
                                        Text(
                                          FileUtils.formatFileSize(file.size!),
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.close, size: 18),
                                  onPressed: () => _removeFile(index),
                                  tooltip: 'Rimuovi',
                                  color: AppColors.error,
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        const SizedBox(height: 12),
                      ],

                      // Add files button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          onPressed: _pickFiles,
                          icon: const Icon(Icons.add),
                          label: Text(
                            _selectedFiles.isEmpty
                                ? 'Seleziona File (PDF, JPG, PNG)'
                                : 'Aggiungi Altri File',
                          ),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                      ),
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
                    onPressed: _isCreating ? null : () => Navigator.of(context).pop(),
                    child: const Text('Annulla'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: _isCreating ? null : _createPayment,
                    icon: _isCreating
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          )
                        : const Icon(Icons.add),
                    label: Text(_isCreating ? 'Creazione...' : 'Crea Transazione'),
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
