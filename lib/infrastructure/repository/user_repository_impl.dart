import 'package:flutter_clean_architecture/domain/entity/user/user.dart';
import 'package:flutter_clean_architecture/domain/repository/user_repository.dart';
import 'package:flutter_clean_architecture/infrastructure/datasource/random_user_generator_api/random_user_generator_api_datasource.dart';

import '../../domain/factory/user/user_factory.dart';

class UserRepositoryImpl implements UserRepository {
  final RandomUserGeneratorApiDatasource _randomUserGeneratorApi;
  final UserFactory _userFactory;

  UserRepositoryImpl({
    required RandomUserGeneratorApiDatasource randomUserGeneratorApi,
    required UserFactory userFactory,
  })  : _randomUserGeneratorApi = randomUserGeneratorApi,
        _userFactory = userFactory;

  @override
  Future<List<User>> findAll() async {
    try {
      final res = await _randomUserGeneratorApi.getUsers();
      return res.results
          .map(
            (e) => _userFactory.createFromModel(e),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
