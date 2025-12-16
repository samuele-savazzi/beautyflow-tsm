import 'package:dio/dio.dart';

class ApiErrorHandler {
  static String getErrorMessage(DioException error) {
    if (error.response == null) {
      return 'Errore di connessione. Verifica la tua connessione internet.';
    }

    final statusCode = error.response!.statusCode;
    final data = error.response!.data;

    switch (statusCode) {
      case 400:
        // Validation errors
        if (data is Map<String, dynamic>) {
          final errors = <String>[];
          data.forEach((key, value) {
            if (value is List) {
              errors.addAll(value.map((e) => e.toString()));
            } else {
              errors.add(value.toString());
            }
          });
          return errors.join('\n');
        }
        return data['error'] ?? 'Richiesta non valida';

      case 401:
        return data['error'] ?? 'Non autorizzato. Effettua il login.';

      case 403:
        if (data['requires_2fa'] == true) {
          return 'Autenticazione 2FA richiesta';
        }
        return data['detail'] ?? data['error'] ?? 'Accesso negato';

      case 404:
        return 'Risorsa non trovata';

      case 500:
        return 'Errore del server. Riprova più tardi.';

      default:
        return 'Errore imprevisto (${statusCode ?? 'unknown'})';
    }
  }

  static Map<String, List<String>> getFieldErrors(DioException error) {
    final errors = <String, List<String>>{};

    if (error.response?.statusCode == 400 &&
        error.response?.data is Map<String, dynamic>) {
      final data = error.response!.data as Map<String, dynamic>;

      data.forEach((key, value) {
        if (value is List) {
          errors[key] = value.map((e) => e.toString()).toList();
        } else {
          errors[key] = [value.toString()];
        }
      });
    }

    return errors;
  }
}
