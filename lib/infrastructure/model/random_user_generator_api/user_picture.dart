class RugUserPicture {
  final String large;
  final String medium;
  final String thumbnail;

  RugUserPicture({
    required this.thumbnail,
    required this.large,
    required this.medium,
  });

  factory RugUserPicture.fromJson(Map<String, dynamic> json) {
    return RugUserPicture(
      thumbnail: json['thumbnail'],
      large: json['large'],
      medium: json['medium'],
    );
  }
}
