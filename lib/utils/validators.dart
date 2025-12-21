/// Validators per form fields
class Validators {
  /// Email validator
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email richiesta';
    }
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!regex.hasMatch(value)) {
      return 'Email non valida';
    }
    return null;
  }

  /// Password validator (8+ chars, uppercase, lowercase, number, special char)
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password richiesta';
    }
    if (value.length < 8) {
      return 'Minimo 8 caratteri';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Richiesta almeno una maiuscola';
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return 'Richiesta almeno una minuscola';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Richiesto almeno un numero';
    }
    if (!value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
      return 'Richiesto almeno un carattere speciale';
    }
    return null;
  }

  /// Domain validator (lowercase, no spaces, alphanumeric + hyphen)
  static String? domain(String? value) {
    if (value == null || value.isEmpty) {
      return 'Dominio richiesto';
    }
    final regex = RegExp(r'^[a-z0-9-]+$');
    if (!regex.hasMatch(value)) {
      return 'Solo lettere minuscole, numeri e trattini';
    }
    if (value.startsWith('-') || value.endsWith('-')) {
      return 'Il dominio non può iniziare o finire con un trattino';
    }
    if (value.length < 3) {
      return 'Il dominio deve essere almeno 3 caratteri';
    }
    return null;
  }

  /// Phone validator (international format)
  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Telefono richiesto';
    }
    // Remove spaces and dashes for validation
    final cleaned = value.replaceAll(RegExp(r'[\s-]'), '');
    final regex = RegExp(r'^\+?[1-9]\d{1,14}$');
    if (!regex.hasMatch(cleaned)) {
      return 'Formato telefono non valido (es: +39123456789)';
    }
    return null;
  }

  /// Hex color validator (#RRGGBB)
  static String? hexColor(String? value) {
    if (value == null || value.isEmpty) {
      return null; // optional field
    }
    final regex = RegExp(r'^#[0-9A-Fa-f]{6}$');
    if (!regex.hasMatch(value)) {
      return 'Formato colore non valido (es: #FF0000)';
    }
    return null;
  }

  /// Positive decimal validator (for prices)
  static String? decimalPrice(String? value) {
    if (value == null || value.isEmpty) {
      return 'Prezzo richiesto';
    }
    final decimal = double.tryParse(value);
    if (decimal == null) {
      return 'Prezzo non valido';
    }
    if (decimal < 0) {
      return 'Il prezzo non può essere negativo';
    }
    return null;
  }

  /// Positive integer validator
  static String? positiveInteger(String? value, [String fieldName = 'Valore']) {
    if (value == null || value.isEmpty) {
      return '$fieldName richiesto';
    }
    final number = int.tryParse(value);
    if (number == null) {
      return '$fieldName non valido';
    }
    if (number <= 0) {
      return '$fieldName deve essere maggiore di zero';
    }
    return null;
  }

  /// Non-negative integer validator (allows 0)
  static String? nonNegativeInteger(String? value, [String fieldName = 'Valore']) {
    if (value == null || value.isEmpty) {
      return '$fieldName richiesto';
    }
    final number = int.tryParse(value);
    if (number == null) {
      return '$fieldName non valido';
    }
    if (number < 0) {
      return '$fieldName non può essere negativo';
    }
    return null;
  }

  /// Required field validator
  static String? required(String? value, [String fieldName = 'Campo']) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName richiesto';
    }
    return null;
  }

  /// Min length validator
  static String? minLength(String? value, int min, [String fieldName = 'Campo']) {
    if (value == null || value.isEmpty) {
      return '$fieldName richiesto';
    }
    if (value.length < min) {
      return '$fieldName deve essere almeno $min caratteri';
    }
    return null;
  }

  /// Max length validator
  static String? maxLength(String? value, int max, [String fieldName = 'Campo']) {
    if (value == null) {
      return null;
    }
    if (value.length > max) {
      return '$fieldName non può superare $max caratteri';
    }
    return null;
  }

  /// Range validator for numbers
  static String? range(String? value, int min, int max, [String fieldName = 'Valore']) {
    if (value == null || value.isEmpty) {
      return '$fieldName richiesto';
    }
    final number = int.tryParse(value);
    if (number == null) {
      return '$fieldName non valido';
    }
    if (number < min || number > max) {
      return '$fieldName deve essere tra $min e $max';
    }
    return null;
  }

  /// URL validator
  static String? url(String? value) {
    if (value == null || value.isEmpty) {
      return null; // optional
    }
    final regex = RegExp(
      r'^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$',
    );
    if (!regex.hasMatch(value)) {
      return 'URL non valido';
    }
    return null;
  }

  /// Invoice number validator
  static String? invoiceNumber(String? value) {
    if (value == null || value.isEmpty) {
      return null; // optional
    }
    if (value.length < 3) {
      return 'Numero fattura troppo corto';
    }
    return null;
  }

  /// Code validator (uppercase, alphanumeric + underscore)
  static String? code(String? value, [String fieldName = 'Codice']) {
    if (value == null || value.isEmpty) {
      return '$fieldName richiesto';
    }
    final regex = RegExp(r'^[A-Z0-9_]+$');
    if (!regex.hasMatch(value)) {
      return '$fieldName deve contenere solo lettere maiuscole, numeri e underscore';
    }
    if (value.length < 2) {
      return '$fieldName deve essere almeno 2 caratteri';
    }
    return null;
  }

  /// Combine multiple validators
  static String? combine(String? value, List<String? Function(String?)> validators) {
    for (final validator in validators) {
      final error = validator(value);
      if (error != null) {
        return error;
      }
    }
    return null;
  }
}
