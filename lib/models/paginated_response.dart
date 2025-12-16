class PaginatedResponse<T> {
  final int count;
  final String? next;
  final String? previous;
  final List<T> results;

  PaginatedResponse({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    return PaginatedResponse(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((item) => fromJsonT(item as Map<String, dynamic>))
          .toList(),
    );
  }

  bool get hasNext => next != null;
  bool get hasPrevious => previous != null;
  bool get isEmpty => results.isEmpty;
  bool get isNotEmpty => results.isNotEmpty;

  int get currentPage {
    if (previous == null) return 1;
    final uri = Uri.parse(previous!);
    final pageParam = uri.queryParameters['page'];
    return pageParam != null ? int.parse(pageParam) + 1 : 1;
  }

  int get totalPages {
    final pageSize = results.length;
    if (pageSize == 0) return 1;
    return (count / pageSize).ceil();
  }
}
