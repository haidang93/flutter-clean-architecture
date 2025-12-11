import 'package:flutter_clean_architecture/data/network/network.dart';
import 'package:flutter_clean_architecture/data/repositories/user/models/user_model.dart';
import 'package:flutter_clean_architecture/domain/entities/user_entity.dart';
import 'package:flutter_clean_architecture/domain/repositories/base_repository.dart';
import 'package:flutter_clean_architecture/domain/repositories/user_repository.dart';

class UserRepositoryImp extends BaseRepository implements UserRepository {
  UserRepositoryImp(super.network);

  @override
  DataResult<UserEntity> fetchUserProfile() {
    return network.post(
      url: '/user/profile',
      convertor: (body) => UserModel.fromJson(body).toEntity,
    );
  }

  @override
  DataResult<UserEntity> updateUserProfile() {
    return network.patch(
      url: '/user/profile',
      body: {
        // your update data here
      },
      convertor: (body) => UserModel.fromJson(body).toEntity,
    );
  }
}
