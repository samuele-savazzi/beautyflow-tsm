/// Area request per creazione tenant
class AreaRequest {
  final String name;

  AreaRequest({
    required this.name,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }

  factory AreaRequest.fromJson(Map<String, dynamic> json) {
    return AreaRequest(
      name: json['name'],
    );
  }

  @override
  String toString() => name;
}
