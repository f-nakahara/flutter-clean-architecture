import 'package:flutter_clean_architecture/infrastructure/model/random_user_generator_api/get_users_response_info.dart';
import 'package:flutter_clean_architecture/infrastructure/model/random_user_generator_api/user.dart';

class RugGetUsersResponse {
  final List<RugUser> results;
  final RugGetUsersResponseInfo info;

  RugGetUsersResponse({
    required this.info,
    required this.results,
  });

  factory RugGetUsersResponse.fromJson(Map<String, dynamic> json) {
    return RugGetUsersResponse(
      info: RugGetUsersResponseInfo.fromJson(json['info']),
      results:
          json['results'].map<RugUser>((e) => RugUser.fromJson(e)).toList(),
    );
  }
}
