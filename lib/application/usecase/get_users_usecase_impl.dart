import 'package:flutter_clean_architecture/domain/entity/user/user.dart';
import 'package:flutter_clean_architecture/domain/repository/user_repository.dart';
import 'package:flutter_clean_architecture/domain/usecase/get_users_usecase.dart';

class GetUsersUsecaseImpl implements GetUsersUsecase {
  final UserRepository _userRepository;

  GetUsersUsecaseImpl({
    required UserRepository userRepository,
  }) : _userRepository = userRepository;

  @override
  Future<List<User>> execute() async {
    return await _userRepository.findAll();
  }
}
