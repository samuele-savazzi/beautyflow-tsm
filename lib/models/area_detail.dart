import 'operator_detail.dart';

/// Dettagli area con operatori e limiti
class AreaDetail {
  final int areaId;
  final String areaName;
  final int maxOperators;
  final int currentOperators;
  final bool isCustomLimit;
  final List<OperatorDetail> operators;

  AreaDetail({
    required this.areaId,
    required this.areaName,
    required this.maxOperators,
    required this.currentOperators,
    required this.isCustomLimit,
    required this.operators,
  });

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
    };
  }

  AreaDetail copyWith({
    int? areaId,
    String? areaName,
    int? maxOperators,
    int? currentOperators,
    bool? isCustomLimit,
    List<OperatorDetail>? operators,
  }) {
    return AreaDetail(
      areaId: areaId ?? this.areaId,
      areaName: areaName ?? this.areaName,
      maxOperators: maxOperators ?? this.maxOperators,
      currentOperators: currentOperators ?? this.currentOperators,
      isCustomLimit: isCustomLimit ?? this.isCustomLimit,
      operators: operators ?? this.operators,
    );
  }
}
