import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../config/theme.dart';
import '../../../models/area_detail.dart';

/// Campi indirizzo di una sede, condivisi da "crea sede" e "modifica
/// indirizzo": due form separati divergerebbero alla prima modifica.
class AreaLocationForm extends StatefulWidget {
  const AreaLocationForm({super.key, this.area, this.prefillCountry = false});

  /// Sede esistente da cui precompilare i campi. Null in creazione.
  final AreaDetail? area;

  /// In creazione precompiliamo "Italia"; il modello lato backend non ha
  /// default, cosi' l'area principale resta davvero vuota.
  final bool prefillCountry;

  @override
  State<AreaLocationForm> createState() => AreaLocationFormState();
}

class AreaLocationFormState extends State<AreaLocationForm> {
  late final TextEditingController _street;
  late final TextEditingController _streetNumber;
  late final TextEditingController _postalCode;
  late final TextEditingController _city;
  late final TextEditingController _province;
  late final TextEditingController _country;
  late final TextEditingController _latitude;
  late final TextEditingController _longitude;

  @override
  void initState() {
    super.initState();
    final a = widget.area;
    _street = TextEditingController(text: a?.street ?? '');
    _streetNumber = TextEditingController(text: a?.streetNumber ?? '');
    _postalCode = TextEditingController(text: a?.postalCode ?? '');
    _city = TextEditingController(text: a?.city ?? '');
    _province = TextEditingController(text: a?.province ?? '');
    _country = TextEditingController(
      text: a?.country ?? (widget.prefillCountry ? 'Italia' : ''),
    );
    _latitude = TextEditingController(
      text: a?.latitude != null ? '${a!.latitude}' : '',
    );
    _longitude = TextEditingController(
      text: a?.longitude != null ? '${a!.longitude}' : '',
    );
  }

  @override
  void dispose() {
    _street.dispose();
    _streetNumber.dispose();
    _postalCode.dispose();
    _city.dispose();
    _province.dispose();
    _country.dispose();
    _latitude.dispose();
    _longitude.dispose();
    super.dispose();
  }

  /// Errore di coerenza, o null se il form e' valido.
  /// Le coordinate valgono solo in coppia: lo intercettiamo qui per dare un
  /// messaggio puntuale invece del 400 generico del backend.
  String? validate() {
    final hasLat = _latitude.text.trim().isNotEmpty;
    final hasLng = _longitude.text.trim().isNotEmpty;
    if (hasLat != hasLng) {
      return 'Latitudine e longitudine vanno inserite insieme (o lasciate entrambe vuote)';
    }
    if (hasLat && double.tryParse(_latitude.text.trim()) == null) {
      return 'Latitudine non valida';
    }
    if (hasLng && double.tryParse(_longitude.text.trim()) == null) {
      return 'Longitudine non valida';
    }
    final cap = _postalCode.text.trim();
    if (cap.isNotEmpty && (cap.length != 5 || int.tryParse(cap) == null)) {
      return 'Il CAP deve essere di 5 cifre';
    }
    final prov = _province.text.trim();
    if (prov.isNotEmpty && prov.length != 2) {
      return 'La provincia deve essere una sigla di 2 lettere';
    }
    return null;
  }

  /// Payload per il backend. Stringa vuota diventa null = azzeramento.
  Map<String, dynamic> toPayload() {
    String? clean(TextEditingController c) {
      final v = c.text.trim();
      return v.isEmpty ? null : v;
    }

    final lat = _latitude.text.trim();
    final lng = _longitude.text.trim();

    return {
      'street': clean(_street),
      'street_number': clean(_streetNumber),
      'postal_code': clean(_postalCode),
      'city': clean(_city),
      'province': clean(_province)?.toUpperCase(),
      'country': clean(_country),
      'latitude': lat.isEmpty ? null : double.parse(lat),
      'longitude': lng.isEmpty ? null : double.parse(lng),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 3, child: _field(_street, 'Via', maxLength: 255)),
            const SizedBox(width: 12),
            Expanded(
              child: _field(_streetNumber, 'Civico', maxLength: 10, hint: '12/A'),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _field(
                _postalCode,
                'CAP',
                maxLength: 5,
                keyboardType: TextInputType.number,
                formatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(flex: 2, child: _field(_city, 'Citta\'', maxLength: 100)),
            const SizedBox(width: 12),
            Expanded(
              child: _field(
                _province,
                'Prov.',
                maxLength: 2,
                formatters: [UpperCaseTextFormatter()],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        _field(_country, 'Nazione', maxLength: 100),
        const SizedBox(height: 20),
        Text('Coordinate (facoltative)', style: AppTextStyles.body.copyWith(
          fontWeight: FontWeight.bold,
        )),
        const SizedBox(height: 4),
        Text(
          'Servono per calcolare la sede piu\' vicina al cliente. '
          'Vanno inserite entrambe o lasciate entrambe vuote.',
          style: AppTextStyles.caption,
        ),
        const SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _field(_latitude, 'Latitudine', hint: '41.902800'),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _field(_longitude, 'Longitudine', hint: '12.496400'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _field(
    TextEditingController controller,
    String label, {
    int? maxLength,
    String? hint,
    TextInputType? keyboardType,
    List<TextInputFormatter>? formatters,
  }) {
    return TextFormField(
      controller: controller,
      maxLength: maxLength,
      keyboardType: keyboardType,
      inputFormatters: formatters,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        counterText: '',
        border: const OutlineInputBorder(),
        isDense: true,
      ),
    );
  }
}

/// Forza la sigla provincia in maiuscolo mentre si digita.
class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
