import 'user_dob.dart';
import 'user_gender.dart';
import 'user_login.dart';
import 'user_name.dart';
import 'user_picture.dart';

class RugUser {
  final RugUserGender gender;
  final RugUserName name;
  final RugUserLogin login;
  final RugUserPicture picture;
  final RugUserDob dob;

  RugUser({
    required this.gender,
    required this.name,
    required this.login,
    required this.picture,
    required this.dob,
  });

  factory RugUser.fromJson(json) {
    return RugUser(
      gender: RugUserGender.from(json['gender']),
      name: RugUserName.fromJson(json['name']),
      login: RugUserLogin.fromJson(json['login']),
      picture: RugUserPicture.fromJson(json['picture']),
      dob: RugUserDob.fromJson(json['dob']),
    );
  }
}
