import 'package:flutter_clean_architecture/domain/factory/user/user_factory.dart';
import 'package:flutter_clean_architecture/infrastructure/datasource/random_user_generator_api/random_user_generator_api_datasource.dart';
import 'package:flutter_clean_architecture/infrastructure/repository/user_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../entity/user/user.dart';

final userRepositoryProvider = Provider<UserRepository>(
  (ref) => UserRepositoryImpl(
    randomUserGeneratorApi: ref.watch(randomUserGeneratorApiDatasourceProvider),
    userFactory: ref.watch(userFactoryProvider),
  ),
);

abstract class UserRepository {
  /// ユーザー一覧の取得
  Future<List<User>> findAll();
}
