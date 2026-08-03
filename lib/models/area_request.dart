/// Area request per creazione tenant.
///
/// I campi di localizzazione valgono solo per le sedi vere: la prima area
/// della lista diventa `main_area` lato backend, che e' il contenitore del
/// tenant e non un luogo fisico. Se le si passa un indirizzo la creazione
/// viene rifiutata con un 400.
class AreaRequest {
  final String name;
  final String? street;
  final String? streetNumber;
  final String? postalCode;
  final String? city;
  final String? province;
  final String? country;
  final String? latitude;
  final String? longitude;

  AreaRequest({
    required this.name,
    this.street,
    this.streetNumber,
    this.postalCode,
    this.city,
    this.province,
    this.country,
    this.latitude,
    this.longitude,
  });

  bool get hasLocation => [
        street,
        streetNumber,
        postalCode,
        city,
        province,
        country,
        latitude,
        longitude,
      ].any((value) => value != null && value.isNotEmpty);

  String get shortAddress {
    final pieces = [
      [street, streetNumber].where((p) => p != null && p.isNotEmpty).join(' '),
      [postalCode, city].where((p) => p != null && p.isNotEmpty).join(' '),
      if (province != null && province!.isNotEmpty) '($province)',
    ].where((p) => p.isNotEmpty).toList();
    return pieces.join(', ');
  }

  AreaRequest copyWith({
    String? name,
    String? street,
    String? streetNumber,
    String? postalCode,
    String? city,
    String? province,
    String? country,
    String? latitude,
    String? longitude,
  }) {
    return AreaRequest(
      name: name ?? this.name,
      street: street ?? this.street,
      streetNumber: streetNumber ?? this.streetNumber,
      postalCode: postalCode ?? this.postalCode,
      city: city ?? this.city,
      province: province ?? this.province,
      country: country ?? this.country,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      // Si mandano solo i campi valorizzati: una chiave vuota sulla main_area
      // e' innocua, ma tenere il payload pulito rende leggibili gli audit log.
      if (street != null && street!.isNotEmpty) 'street': street,
      if (streetNumber != null && streetNumber!.isNotEmpty)
        'street_number': streetNumber,
      if (postalCode != null && postalCode!.isNotEmpty)
        'postal_code': postalCode,
      if (city != null && city!.isNotEmpty) 'city': city,
      if (province != null && province!.isNotEmpty) 'province': province,
      if (country != null && country!.isNotEmpty) 'country': country,
      if (latitude != null && latitude!.isNotEmpty) 'latitude': latitude,
      if (longitude != null && longitude!.isNotEmpty) 'longitude': longitude,
    };
  }

  factory AreaRequest.fromJson(Map<String, dynamic> json) {
    return AreaRequest(
      name: json['name'],
      street: json['street'],
      streetNumber: json['street_number'],
      postalCode: json['postal_code'],
      city: json['city'],
      province: json['province'],
      country: json['country'],
      latitude: json['latitude']?.toString(),
      longitude: json['longitude']?.toString(),
    );
  }

  @override
  String toString() => name;
}
