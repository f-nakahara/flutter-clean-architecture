import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/exception/network_exception.dart';
import 'package:flutter_clean_architecture/infrastructure/model/random_user_generator_api/get_users_response.dart';

import 'random_user_generator_api_datasource.dart';

class RandomUserGeneratorApiDatasourceImpl
    implements RandomUserGeneratorApiDatasource {
  final Dio _dio;

  RandomUserGeneratorApiDatasourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<RugGetUsersResponse> getUsers({int results = 10}) async {
    final res = await _dio.get(
      '/',
      queryParameters: {
        'results': 10,
      },
    );
    if (res.statusCode == 200) {
      final body = res.data;
      final data = RugGetUsersResponse.fromJson(body);
      return data;
    } else {
      throw NetworkException('RandomUserGeneratorApiImpl getUsers() "/"');
    }
  }
}
