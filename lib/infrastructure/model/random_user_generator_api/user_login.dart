class RugUserLogin {
  final String uuid;
  final String username;

  RugUserLogin({
    required this.uuid,
    required this.username,
  });

  factory RugUserLogin.fromJson(Map<String, dynamic> json) {
    return RugUserLogin(
      uuid: json['uuid'],
      username: json['username'],
    );
  }
}
