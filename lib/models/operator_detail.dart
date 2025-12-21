/// Dettagli operatore con limiti workstation
class OperatorDetail {
  final int operatorId;
  final String firstName;
  final String lastName;
  final String email;
  final int maxWorkstations;
  final int currentWorkstations;
  final bool isCustomLimit;

  OperatorDetail({
    required this.operatorId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.maxWorkstations,
    required this.currentWorkstations,
    required this.isCustomLimit,
  });

  String get fullName => '$firstName $lastName';

  factory OperatorDetail.fromJson(Map<String, dynamic> json) {
    return OperatorDetail(
      operatorId: json['operator_id'],
      firstName: json['first_name'] ?? '',
      lastName: json['last_name'] ?? '',
      email: json['email'] ?? '',
      maxWorkstations: json['max_workstations'] ?? 1,
      currentWorkstations: json['current_workstations'] ?? 0,
      isCustomLimit: json['is_custom_limit'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'operator_id': operatorId,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'max_workstations': maxWorkstations,
      'current_workstations': currentWorkstations,
      'is_custom_limit': isCustomLimit,
    };
  }

  OperatorDetail copyWith({
    int? operatorId,
    String? firstName,
    String? lastName,
    String? email,
    int? maxWorkstations,
    int? currentWorkstations,
    bool? isCustomLimit,
  }) {
    return OperatorDetail(
      operatorId: operatorId ?? this.operatorId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      maxWorkstations: maxWorkstations ?? this.maxWorkstations,
      currentWorkstations: currentWorkstations ?? this.currentWorkstations,
      isCustomLimit: isCustomLimit ?? this.isCustomLimit,
    );
  }
}
