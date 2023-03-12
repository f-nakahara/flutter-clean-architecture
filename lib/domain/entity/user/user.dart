import 'package:flutter_clean_architecture/domain/value/user_gender.dart';

/// ユーザー
class User {
  final String id; // 識別ID
  final String name; // 名前
  final UserGender gender; // 性別
  final String thumbnail; // サムネイルリンク
  final DateTime birthday; // 生年月日

  User({
    required this.id,
    required this.name,
    required this.gender,
    required this.thumbnail,
    required this.birthday,
  });

  /// [User]が誕生日であるか判定する
  bool isBirthday() {
    final today = DateTime.now();
    return birthday.month == today.month && birthday.day == today.day;
  }
}
