import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import '../../../../config/theme.dart';

/// Step 2: Logo and Dark Logo selection (OBBLIGATORIO)
class LogoStep extends StatefulWidget {
  final String? initialLogoPath;
  final String? initialDarkLogoPath;
  final String? initialFaviconPath;
  final Function({
    required String logoPath,
    required String darkLogoPath,
    required String faviconPath,
  })
  onNext;

  const LogoStep({
    super.key,
    this.initialLogoPath,
    this.initialDarkLogoPath,
    this.initialFaviconPath,
    required this.onNext,
  });

  @override
  State<LogoStep> createState() => _LogoStepState();
}

class _LogoStepState extends State<LogoStep> {
  final _formKey = GlobalKey<FormState>();
  String? _logoPath;
  String? _darkLogoPath;
  String? _faviconPath;

  @override
  void initState() {
    super.initState();
    _logoPath = widget.initialLogoPath;
    _darkLogoPath = widget.initialDarkLogoPath;
    _faviconPath = widget.initialFaviconPath;
  }

  Future<void> _pickFile(String type) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: type == 'favicon'
            ? ['png', 'ico']
            : ['png', 'jpg', 'jpeg', 'svg'],
        allowMultiple: false,
      );

      if (result != null && result.files.single.path != null) {
        final file = File(result.files.single.path!);
        final sizeInMB = await file.length() / (1024 * 1024);

        // Validazione dimensione
        final maxSize = type == 'favicon' ? 2 : 5;
        if (sizeInMB > maxSize) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('File troppo grande. Max: ${maxSize}MB'),
                backgroundColor: AppColors.error,
              ),
            );
          }
          return;
        }

        setState(() {
          switch (type) {
            case 'logo':
              _logoPath = result.files.single.path;
              break;
            case 'dark_logo':
              _darkLogoPath = result.files.single.path;
              break;
            case 'favicon':
              _faviconPath = result.files.single.path;
              break;
          }
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Errore durante la selezione del file'),
            backgroundColor: AppColors.error,
          ),
        );
      }
    }
  }

  void _removeFile(String type) {
    setState(() {
      switch (type) {
        case 'logo':
          _logoPath = null;
          break;
        case 'dark_logo':
          _darkLogoPath = null;
          break;
        case 'favicon':
          _faviconPath = null;
          break;
      }
    });
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      if (_logoPath == null || _darkLogoPath == null || _faviconPath == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Tutti i campi sono obbligatori'),
            backgroundColor: AppColors.error,
          ),
        );
        return;
      }

      widget.onNext(
        logoPath: _logoPath!,
        darkLogoPath: _darkLogoPath!,
        faviconPath: _faviconPath!,
      );
    }
  }

  Widget _buildFilePicker({
    required String label,
    required String type,
    required String? currentPath,
    required bool required,
    required String formats,
    required int maxSizeMB,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            if (required)
              const Text(
                ' *',
                style: TextStyle(color: AppColors.error, fontSize: 16),
              ),
          ],
        ),
        const SizedBox(height: 12),

        // File picker button or preview
        if (currentPath == null)
          InkWell(
            onTap: () => _pickFile(type),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.border),
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.cloud_upload,
                    size: 48,
                    color: AppColors.textSecondary,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Clicca per selezionare',
                    style: AppTextStyles.body,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Formati: $formats • Max: ${maxSizeMB}MB',
                    style: AppTextStyles.caption,
                  ),
                ],
              ),
            ),
          )
        else
          Column(
            children: [
              // Preview
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.success, width: 2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.file(
                    File(currentPath),
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(
                          Icons.broken_image,
                          size: 48,
                          color: AppColors.textSecondary,
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: AppColors.success,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      currentPath.split('/').last,
                      style: AppTextStyles.bodySmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 20),
                    onPressed: () => _removeFile(type),
                    tooltip: 'Rimuovi',
                    color: AppColors.error,
                  ),
                  OutlinedButton.icon(
                    onPressed: () => _pickFile(type),
                    icon: const Icon(Icons.upload, size: 16),
                    label: const Text('Cambia'),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

        // Validation error
        if (required && currentPath == null)
          FormField<String>(
            validator: (_) => currentPath == null ? 'Campo obbligatorio' : null,
            builder: (state) {
              return state.hasError
                  ? Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        state.errorText!,
                        style: const TextStyle(
                          color: AppColors.error,
                          fontSize: 12,
                        ),
                      ),
                    )
                  : const SizedBox.shrink();
            },
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              'Logo e Branding',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Carica i loghi per il nuovo tenant. Tutti i campi sono obbligatori.',
              style: AppTextStyles.caption,
            ),
            const SizedBox(height: 32),

            // Logo
            _buildFilePicker(
              label: 'Logo (Modalità Chiara)',
              type: 'logo',
              currentPath: _logoPath,
              required: true,
              formats: 'PNG, JPG, SVG',
              maxSizeMB: 5,
            ),
            const SizedBox(height: 32),

            // Dark Logo
            _buildFilePicker(
              label: 'Logo (Modalità Scura)',
              type: 'dark_logo',
              currentPath: _darkLogoPath,
              required: true,
              formats: 'PNG, JPG, SVG',
              maxSizeMB: 5,
            ),
            const SizedBox(height: 32),

            // Favicon (obbligatoria)
            _buildFilePicker(
              label: 'Favicon',
              type: 'favicon',
              currentPath: _faviconPath,
              required: true,
              formats: 'PNG, ICO',
              maxSizeMB: 2,
            ),

            const SizedBox(height: 32),

            // Next button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _submit,
                child: const Text('Continua'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
