import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/infrastructure/datasource/random_user_generator_api/random_user_generator_api_datasource_impl.dart';
import 'package:flutter_clean_architecture/infrastructure/model/random_user_generator_api/get_users_response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final randomUserGeneratorApiDatasourceProvider =
    Provider<RandomUserGeneratorApiDatasource>(
  (ref) => RandomUserGeneratorApiDatasourceImpl(
    dio: Dio(
      BaseOptions(baseUrl: 'https://randomuser.me/api'),
    ),
  ),
);

/// https://randomuser.me
abstract class RandomUserGeneratorApiDatasource {
  Future<RugGetUsersResponse> getUsers({int results});
}
