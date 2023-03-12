import 'package:flutter_clean_architecture/domain/entity/user/user.dart';
import 'package:flutter_clean_architecture/domain/factory/user/user_gender_factory.dart';
import 'package:flutter_clean_architecture/infrastructure/factory/user/user_factory_impl.dart';
import 'package:flutter_clean_architecture/infrastructure/model/random_user_generator_api/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userFactoryProvider = Provider<UserFactory>(
  (ref) => UserFactoryImpl(
    genderFactory: ref.watch(userGenderFactoryProvider),
  ),
);

abstract class UserFactory {
  /// [User]を生成する
  User create({
    required String name,
    required String gender,
    required String thumbnail,
    required DateTime birthday,
  });

  /// [RugUser]から[User]を生成する
  User createFromModel(RugUser user);
}
