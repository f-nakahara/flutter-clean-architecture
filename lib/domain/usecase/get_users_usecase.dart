import 'package:flutter_clean_architecture/application/usecase/get_users_usecase_impl.dart';
import 'package:flutter_clean_architecture/domain/entity/user/user.dart';
import 'package:flutter_clean_architecture/domain/repository/user_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getUsersUsecaseProvider = Provider<GetUsersUsecase>(
  (ref) => GetUsersUsecaseImpl(
    userRepository: ref.watch(userRepositoryProvider),
  ),
);

abstract class GetUsersUsecase {
  Future<List<User>> execute();
}
