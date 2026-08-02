import 'operator_detail.dart';

/// Dettagli area con operatori, limiti e localizzazione
class AreaDetail {
  final int areaId;
  final String areaName;
  final int maxOperators;
  final int currentOperators;
  final bool isCustomLimit;
  final List<OperatorDetail> operators;

  // Localizzazione. Tutti nullable: una sede si compila anche a piu' riprese
  // e l'area principale non ha indirizzo per definizione.
  final String? street;
  final String? streetNumber;
  final String? postalCode;
  final String? city;
  final String? province;
  final String? country;
  final double? latitude;
  final double? longitude;

  /// Indirizzo gia' formattato dal backend: null finche' non ci sono almeno
  /// via e citta'. Non lo ricomponiamo qui, cosi' TSM, gestionale e app
  /// cliente mostrano tutti la stessa stringa.
  final String? fullAddress;
  final String? photoUrl;

  AreaDetail({
    required this.areaId,
    required this.areaName,
    required this.maxOperators,
    required this.currentOperators,
    required this.isCustomLimit,
    required this.operators,
    this.street,
    this.streetNumber,
    this.postalCode,
    this.city,
    this.province,
    this.country,
    this.latitude,
    this.longitude,
    this.fullAddress,
    this.photoUrl,
  });

  bool get hasCoordinates => latitude != null && longitude != null;

  /// Le coordinate arrivano come numero JSON, ma una stringa non deve far
  /// crashare il dettaglio tenant.
  static double? _toDouble(dynamic value) {
    if (value == null) return null;
    if (value is num) return value.toDouble();
    return double.tryParse(value.toString());
  }

  factory AreaDetail.fromJson(Map<String, dynamic> json) {
    return AreaDetail(
      areaId: json['area_id'],
      areaName: json['area_name'] ?? '',
      maxOperators: json['max_operators'] ?? 1,
      currentOperators: json['current_operators'] ?? 0,
      isCustomLimit: json['is_custom_limit'] ?? false,
      operators: (json['operators'] as List<dynamic>?)
              ?.map((op) => OperatorDetail.fromJson(op as Map<String, dynamic>))
              .toList() ??
          [],
      street: json['street'] as String?,
      streetNumber: json['street_number'] as String?,
      postalCode: json['postal_code'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      country: json['country'] as String?,
      latitude: _toDouble(json['latitude']),
      longitude: _toDouble(json['longitude']),
      fullAddress: json['full_address'] as String?,
      photoUrl: json['photo_url'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'area_id': areaId,
      'area_name': areaName,
      'max_operators': maxOperators,
      'current_operators': currentOperators,
      'is_custom_limit': isCustomLimit,
      'operators': operators.map((op) => op.toJson()).toList(),
      'street': street,
      'street_number': streetNumber,
      'postal_code': postalCode,
      'city': city,
      'province': province,
      'country': country,
      'latitude': latitude,
      'longitude': longitude,
      'full_address': fullAddress,
      'photo_url': photoUrl,
    };
  }

  AreaDetail copyWith({
    int? areaId,
    String? areaName,
    int? maxOperators,
    int? currentOperators,
    bool? isCustomLimit,
    List<OperatorDetail>? operators,
    String? street,
    String? streetNumber,
    String? postalCode,
    String? city,
    String? province,
    String? country,
    double? latitude,
    double? longitude,
    String? fullAddress,
    String? photoUrl,
  }) {
    return AreaDetail(
      areaId: areaId ?? this.areaId,
      areaName: areaName ?? this.areaName,
      maxOperators: maxOperators ?? this.maxOperators,
      currentOperators: currentOperators ?? this.currentOperators,
      isCustomLimit: isCustomLimit ?? this.isCustomLimit,
      operators: operators ?? this.operators,
      street: street ?? this.street,
      streetNumber: streetNumber ?? this.streetNumber,
      postalCode: postalCode ?? this.postalCode,
      city: city ?? this.city,
      province: province ?? this.province,
      country: country ?? this.country,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      fullAddress: fullAddress ?? this.fullAddress,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }
}
