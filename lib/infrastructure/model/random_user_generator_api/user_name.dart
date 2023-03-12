class RugUserName {
  final String title;
  final String first;
  final String last;

  RugUserName({
    required this.first,
    required this.last,
    required this.title,
  });

  factory RugUserName.fromJson(Map<String, dynamic> json) {
    return RugUserName(
      first: json['first'],
      last: json['last'],
      title: json['title'],
    );
  }
}
