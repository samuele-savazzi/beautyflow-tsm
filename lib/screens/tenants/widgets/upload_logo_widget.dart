import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import '../../../config/theme.dart';
import '../../../utils/error_handler.dart';

/// Widget per upload logo/favicon
class UploadLogoWidget extends StatefulWidget {
  final int tenantId;
  final String? currentLogoUrl;
  final String uploadType; // 'logo' | 'favicon' | 'dark_logo'
  final Future<String?> Function(int tenantId, String filePath, String uploadType) onUpload;

  const UploadLogoWidget({
    super.key,
    required this.tenantId,
    this.currentLogoUrl,
    required this.uploadType,
    required this.onUpload,
  });

  @override
  State<UploadLogoWidget> createState() => _UploadLogoWidgetState();
}

class _UploadLogoWidgetState extends State<UploadLogoWidget> {
  String? _selectedFilePath;
  bool _isUploading = false;

  String get _title {
    switch (widget.uploadType) {
      case 'favicon':
        return 'Favicon';
      case 'dark_logo':
        return 'Logo Dark Mode';
      default:
        return 'Logo';
    }
  }

  int get _maxSizeMB {
    return widget.uploadType == 'favicon' ? 2 : 5;
  }

  Future<void> _pickFile() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg', 'jpeg'],
        allowMultiple: false,
      );

      if (result != null && result.files.single.path != null) {
        final file = File(result.files.single.path!);
        final sizeInMB = await file.length() / (1024 * 1024);

        if (sizeInMB > _maxSizeMB) {
          if (mounted) {
            ApiErrorHandler.showErrorMessage(
              context,
              'File troppo grande. Dimensione massima: ${_maxSizeMB}MB',
            );
          }
          return;
        }

        setState(() {
          _selectedFilePath = result.files.single.path;
        });
      }
    } catch (e) {
      if (mounted) {
        ApiErrorHandler.showErrorMessage(
          context,
          'Errore durante la selezione del file',
        );
      }
    }
  }

  Future<void> _upload() async {
    if (_selectedFilePath == null) return;

    setState(() {
      _isUploading = true;
    });

    try {
      final logoUrl = await widget.onUpload(
        widget.tenantId,
        _selectedFilePath!,
        widget.uploadType,
      );

      if (logoUrl != null && mounted) {
        ApiErrorHandler.showSuccessSnackbar(
          context,
          '$_title caricato con successo',
        );

        // Reset selection
        setState(() {
          _selectedFilePath = null;
        });

        // Notify parent to reload
        if (mounted) {
          Navigator.of(context).pop(true);
        }
      }
    } on DioException catch (e) {
      if (mounted) {
        ApiErrorHandler.showErrorSnackbar(context, e);
      }
    } finally {
      if (mounted) {
        setState(() {
          _isUploading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Icon(Icons.upload_file, color: AppColors.primary),
                const SizedBox(width: 12),
                Text(
                  'Carica $_title',
                  style: AppTextStyles.h3,
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Current Logo Preview
            if (widget.currentLogoUrl != null) ...[
              const Text(
                'Logo Corrente',
                style: AppTextStyles.caption,
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.border),
                ),
                child: Center(
                  child: Image.network(
                    widget.currentLogoUrl!,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.broken_image,
                        size: 48,
                        color: AppColors.textSecondary,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],

            // File Picker
            InkWell(
              onTap: _isUploading ? null : _pickFile,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: _selectedFilePath != null
                        ? AppColors.primary
                        : AppColors.border,
                    width: _selectedFilePath != null ? 2 : 1,
                  ),
                ),
                child: Column(
                  children: [
                    Icon(
                      _selectedFilePath != null
                          ? Icons.check_circle
                          : Icons.cloud_upload,
                      size: 48,
                      color: _selectedFilePath != null
                          ? AppColors.success
                          : AppColors.textSecondary,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      _selectedFilePath != null
                          ? 'File selezionato'
                          : 'Clicca per selezionare un file',
                      style: AppTextStyles.body,
                    ),
                    if (_selectedFilePath != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        _selectedFilePath!.split('/').last,
                        style: AppTextStyles.caption,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                    const SizedBox(height: 8),
                    Text(
                      'Formati: PNG, JPG, JPEG • Max: ${_maxSizeMB}MB',
                      style: AppTextStyles.caption,
                    ),
                  ],
                ),
              ),
            ),

            // Preview Selected File
            if (_selectedFilePath != null) ...[
              const SizedBox(height: 16),
              const Text(
                'Anteprima',
                style: AppTextStyles.caption,
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.border),
                ),
                child: Center(
                  child: Image.file(
                    File(_selectedFilePath!),
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.broken_image,
                        size: 48,
                        color: AppColors.textSecondary,
                      );
                    },
                  ),
                ),
              ),
            ],

            const SizedBox(height: 24),

            // Actions
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: _isUploading ? null : () => Navigator.of(context).pop(),
                  child: const Text('Annulla'),
                ),
                const SizedBox(width: 12),
                ElevatedButton.icon(
                  onPressed: _selectedFilePath != null && !_isUploading
                      ? _upload
                      : null,
                  icon: _isUploading
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : const Icon(Icons.upload),
                  label: Text(_isUploading ? 'Caricamento...' : 'Carica'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
