import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../config/theme.dart';

/// API Error Handler utility
class ApiErrorHandler {
  /// Estrae messaggio errore da DioException
  static String getErrorMessage(DioException error) {
    if (error.response == null) {
      if (error.type == DioExceptionType.connectionTimeout) {
        return 'Timeout connessione. Verifica la tua connessione internet.';
      }
      if (error.type == DioExceptionType.receiveTimeout) {
        return 'Timeout ricezione dati. Riprova più tardi.';
      }
      if (error.type == DioExceptionType.sendTimeout) {
        return 'Timeout invio dati. Riprova più tardi.';
      }
      return 'Errore di connessione. Verifica la tua connessione internet.';
    }

    final statusCode = error.response!.statusCode;
    final data = error.response!.data;

    switch (statusCode) {
      case 400:
        // Validation errors
        if (data is Map<String, dynamic>) {
          // Check if there's a general error message
          if (data.containsKey('error')) {
            return data['error'].toString();
          }
          if (data.containsKey('detail')) {
            return data['detail'].toString();
          }

          // Parse field-specific errors
          final errors = <String>[];
          data.forEach((key, value) {
            if (value is List) {
              errors.addAll(value.map((e) => '${_formatFieldName(key)}: $e'));
            } else {
              errors.add('${_formatFieldName(key)}: $value');
            }
          });

          if (errors.isNotEmpty) {
            return errors.join('\n');
          }
        }
        return 'Richiesta non valida';

      case 401:
        return _messageFromBody(data) ??
            'Non autorizzato. Effettua nuovamente il login.';

      case 403:
        if (data is Map<String, dynamic>) {
          if (data['requires_2fa'] == true) {
            return 'Autenticazione 2FA richiesta';
          }
          if (data.containsKey('detail')) {
            return data['detail'].toString();
          }
        }
        return 'Accesso negato. Permessi insufficienti.';

      case 404:
        return _messageFromBody(data) ?? 'Risorsa non trovata';

      case 409:
        return _messageFromBody(data) ?? 'Conflitto. La risorsa esiste già.';

      case 500:
        return 'Errore del server. Riprova più tardi.';

      case 502:
        return 'Bad Gateway. Il server non è raggiungibile.';

      case 503:
        return 'Servizio temporaneamente non disponibile. Riprova tra qualche minuto.';

      default:
        if (data is Map<String, dynamic>) {
          if (data.containsKey('error')) {
            return data['error'].toString();
          }
          if (data.containsKey('detail')) {
            return data['detail'].toString();
          }
        }
        return 'Errore imprevisto ($statusCode)';
    }
  }

  /// Estrae 'error' o 'detail' dal body, solo se il body e' davvero una mappa.
  ///
  /// Serve perche' non tutte le risposte d'errore sono JSON: un 404 su una
  /// rotta inesistente arriva come pagina HTML di Django, un 502 come testo
  /// del proxy. Prima si faceva `data?['error']` diretto e su una String
  /// l'operatore [] pretende un int: l'app crashava invece di mostrare
  /// l'errore.
  static String? _messageFromBody(dynamic data) {
    if (data is Map) {
      final value = data['error'] ?? data['detail'];
      if (value != null) return value.toString();
    }
    return null;
  }

  /// Formatta nome campo (snake_case -> Titolo)
  static String _formatFieldName(String key) {
    if (key == 'non_field_errors') {
      return 'Errore';
    }
    // Convert snake_case to Title Case
    return key
        .split('_')
        .map((word) => word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1))
        .join(' ');
  }

  /// Mostra snackbar con errore
  static void showErrorSnackbar(BuildContext context, DioException error) {
    final message = getErrorMessage(error);

    if (!context.mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: AppColors.error,
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          label: 'OK',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  /// Mostra snackbar con messaggio errore custom
  static void showErrorMessage(BuildContext context, String message) {
    if (!context.mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: AppColors.error,
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          label: 'OK',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  /// Parse validation errors (campo: [errori])
  static Map<String, List<String>> parseValidationErrors(Map<String, dynamic> data) {
    final errors = <String, List<String>>{};
    data.forEach((key, value) {
      if (value is List) {
        errors[key] = value.map((e) => e.toString()).toList();
      } else {
        errors[key] = [value.toString()];
      }
    });
    return errors;
  }

  /// Alias per compatibilità con codice esistente
  static Map<String, List<String>> getFieldErrors(DioException error) {
    if (error.response?.statusCode == 400 &&
        error.response?.data is Map<String, dynamic>) {
      return parseValidationErrors(error.response!.data as Map<String, dynamic>);
    }
    return {};
  }

  /// Mostra success snackbar
  static void showSuccessSnackbar(BuildContext context, String message) {
    if (!context.mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: AppColors.success,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  /// Mostra info snackbar
  static void showInfoSnackbar(BuildContext context, String message) {
    if (!context.mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: AppColors.info,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  /// Mostra warning snackbar
  static void showWarningSnackbar(BuildContext context, String message) {
    if (!context.mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: AppColors.warning,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  /// Mostra dialog errore
  static Future<void> showErrorDialog(
    BuildContext context,
    String title,
    String message,
  ) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            const Icon(Icons.error_outline, color: AppColors.error),
            const SizedBox(width: 8),
            Text(title),
          ],
        ),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  /// Mostra confirmation dialog
  static Future<bool> showConfirmDialog(
    BuildContext context,
    String title,
    String message, {
    String confirmText = 'Conferma',
    String cancelText = 'Annulla',
    bool isDestructive = false,
  }) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelText),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: isDestructive
                ? ElevatedButton.styleFrom(backgroundColor: AppColors.error)
                : null,
            child: Text(confirmText),
          ),
        ],
      ),
    );
    return result ?? false;
  }

  /// Verifica se l'errore è di tipo "non autorizzato"
  static bool isUnauthorizedError(DioException error) {
    return error.response?.statusCode == 401;
  }

  /// Verifica se l'errore è di tipo "forbidden"
  static bool isForbiddenError(DioException error) {
    return error.response?.statusCode == 403;
  }

  /// Verifica se l'errore è di tipo "not found"
  static bool isNotFoundError(DioException error) {
    return error.response?.statusCode == 404;
  }

  /// Verifica se l'errore è di tipo "validation"
  static bool isValidationError(DioException error) {
    return error.response?.statusCode == 400;
  }
}
