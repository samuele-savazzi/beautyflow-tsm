import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';
import '../../config/theme.dart';
import '../../providers/auth_provider.dart';
import '../../utils/error_handler.dart';

class Verify2FAScreen extends StatefulWidget {
  const Verify2FAScreen({super.key});

  @override
  State<Verify2FAScreen> createState() => _Verify2FAScreenState();
}

class _Verify2FAScreenState extends State<Verify2FAScreen> {
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());
  bool _isLoading = false;
  bool _useBackupCode = false;
  final _backupCodeController = TextEditingController();

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    _backupCodeController.dispose();
    super.dispose();
  }

  Future<void> _handleVerify() async {
    final code = _useBackupCode
        ? _backupCodeController.text.trim()
        : _controllers.map((c) => c.text).join();

    if (code.isEmpty || (!_useBackupCode && code.length != 6)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Inserisci un codice valido'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      final authProvider = Provider.of<AuthProvider>(context, listen: false);
      await authProvider.verify2FA(code, isBackupCode: _useBackupCode);
    } on DioException catch (e) {
      if (mounted) {
        final errorMsg = ApiErrorHandler.getErrorMessage(e);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMsg),
            backgroundColor: AppColors.error,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Widget _buildCodeInput() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return Container(
          width: 60,
          height: 80,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          child: TextField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            enabled: !_isLoading,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            style: AppTextStyles.h2,
            decoration: InputDecoration(
              counterText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (value) {
              if (value.isNotEmpty && index < 5) {
                _focusNodes[index + 1].requestFocus();
              }
              if (value.isEmpty && index > 0) {
                _focusNodes[index - 1].requestFocus();
              }

              // Auto-submit when all 6 digits are entered
              if (index == 5 && value.isNotEmpty) {
                _handleVerify();
              }
            },
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verifica 2FA'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            final authProvider =
                Provider.of<AuthProvider>(context, listen: false);
            authProvider.logout();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.security,
                  size: 64,
                  color: AppColors.primary,
                ),
                const SizedBox(height: 24),

                const Text(
                  'Autenticazione a Due Fattori',
                  style: AppTextStyles.h2,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),

                Text(
                  _useBackupCode
                      ? 'Inserisci un Backup Code'
                      : 'Inserisci il codice a 6 cifre da Google Authenticator',
                  style: AppTextStyles.caption,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                if (_useBackupCode)
                  TextField(
                    controller: _backupCodeController,
                    enabled: !_isLoading,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      labelText: 'Backup Code (es. ABCD-1234)',
                      hintText: 'XXXX-XXXX',
                    ),
                  )
                else
                  _buildCodeInput(),

                const SizedBox(height: 32),

                ElevatedButton(
                  onPressed: _isLoading ? null : _handleVerify,
                  child: _isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(AppColors.surface),
                          ),
                        )
                      : const Text('VERIFICA'),
                ),
                const SizedBox(height: 16),

                TextButton(
                  onPressed: _isLoading
                      ? null
                      : () {
                          setState(() {
                            _useBackupCode = !_useBackupCode;
                          });
                        },
                  child: Text(_useBackupCode
                      ? 'Usa Codice 2FA'
                      : 'Usa Backup Code'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
