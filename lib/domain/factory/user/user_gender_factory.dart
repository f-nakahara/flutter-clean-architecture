import 'package:flutter_clean_architecture/domain/value/user_gender.dart';
import 'package:flutter_clean_architecture/infrastructure/factory/user/user_gender_factory_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../infrastructure/model/random_user_generator_api/user_gender.dart';

final userGenderFactoryProvider = Provider<UserGenderFactory>(
  (ref) => UserGenderFactoryImpl(),
);

abstract class UserGenderFactory {
  /// [UserGender]を生成する
  UserGender create(String value);

  /// [RugUserGender]から[UserGender]を生成する
  UserGender createFromModel(RugUserGender gender);
}
