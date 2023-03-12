import 'package:flutter_clean_architecture/domain/entity/user/user.dart';
import 'package:flutter_clean_architecture/domain/factory/user/user_factory.dart';
import 'package:flutter_clean_architecture/domain/factory/user/user_gender_factory.dart';
import 'package:flutter_clean_architecture/infrastructure/model/random_user_generator_api/user.dart';

class UserFactoryImpl implements UserFactory {
  final UserGenderFactory _genderFactory;

  UserFactoryImpl({
    required UserGenderFactory genderFactory,
  }) : _genderFactory = genderFactory;

  @override
  User create({
    required String name,
    required String gender,
    required String thumbnail,
    required DateTime birthday,
  }) {
    return User(
      id: '12345', // uuid等で自動で生成する
      name: name,
      gender: _genderFactory.create(gender),
      thumbnail: thumbnail,
      birthday: birthday,
    );
  }

  @override
  User createFromModel(RugUser user) {
    return User(
      id: user.login.uuid,
      name: '${user.name.title} ${user.name.first} ${user.name.last}',
      gender: _genderFactory.createFromModel(user.gender),
      thumbnail: user.picture.thumbnail,
      birthday: user.dob.date,
    );
  }
}
