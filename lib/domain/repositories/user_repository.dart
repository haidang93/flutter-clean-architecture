import 'package:flutter_clean_architecture/data/network/network.dart';
import 'package:flutter_clean_architecture/domain/entities/user_entity.dart';

abstract class UserRepository {
  DataResult<UserEntity> fetchUserProfile();

  DataResult<UserEntity> updateUserProfile();
}
