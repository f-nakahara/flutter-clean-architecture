class RugGetUsersResponseInfo {
  final String seed;
  final int results;
  final int page;
  final String version;

  RugGetUsersResponseInfo({
    required this.results,
    required this.page,
    required this.seed,
    required this.version,
  });

  factory RugGetUsersResponseInfo.fromJson(Map<String, dynamic> json) {
    return RugGetUsersResponseInfo(
      results: json['results'],
      page: json['page'],
      seed: json['seed'],
      version: json['version'],
    );
  }
}
