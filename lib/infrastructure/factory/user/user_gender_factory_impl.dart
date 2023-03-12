import 'package:flutter_clean_architecture/domain/factory/user/user_gender_factory.dart';
import 'package:flutter_clean_architecture/domain/value/user_gender.dart';

import '../../model/random_user_generator_api/user_gender.dart';

class UserGenderFactoryImpl implements UserGenderFactory {
  @override
  UserGender create(String value) {
    switch (value) {
      case 'male':
        return UserGender.male;
      case 'female':
        return UserGender.female;
      case 'other':
        return UserGender.other;
      default:
        throw ArgumentError();
    }
  }

  @override
  UserGender createFromModel(RugUserGender gender) {
    switch (gender) {
      case RugUserGender.male:
        return UserGender.male;
      case RugUserGender.female:
        return UserGender.female;
      default:
        return UserGender.other;
    }
  }
}
