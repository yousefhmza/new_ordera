class PaginationModel<T> {
  final List<T> data;
  final int currentPage;
  final int totalItems;
  final int totalPage;
  final int nextPage;
  final int previousPage;
  final int lastPage;
  final int perPage;
  final String path;
  final dynamic currentList;
  final int from;
  final int to;
  final bool onFirstPage;
  final bool hasMorePages;
  final List<dynamic> links;

  PaginationModel({
    required this.data,
    required this.currentPage,
    required this.totalItems,
    required this.totalPage,
    required this.nextPage,
    required this.previousPage,
    required this.lastPage,
    required this.perPage,
    required this.path,
    required this.currentList,
    required this.from,
    required this.to,
    required this.onFirstPage,
    required this.hasMorePages,
    required this.links,
  });

  factory PaginationModel.fromJson(Map<String, dynamic> json, List<T> data) => PaginationModel(
        data: data,
        currentPage: json["current_page"] ?? 0,
        totalItems: json["total_items"] ?? 0,
        totalPage: json["total_page"] ?? 0,
        nextPage: json["next_page"] ?? 0,
        previousPage: json["previous_page"] ?? 0,
        lastPage: json["last_page"] ?? 0,
        perPage: json["per_page"] ?? 0,
        path: json["path"] ?? "",
        currentList: json["current_list"],
        from: json["from"] ?? 0,
        to: json["to"] ?? 0,
        onFirstPage: json["on_first_page"] ?? false,
        hasMorePages: json["hasMorePages"] ?? false,
        links: List<dynamic>.from(json["links"].map((x) => x)),
      );
}
