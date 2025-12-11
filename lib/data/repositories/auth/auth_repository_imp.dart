import 'package:flutter_clean_architecture/data/network/network.dart';
import 'package:flutter_clean_architecture/data/repositories/auth/models/auth_model.dart';
import 'package:flutter_clean_architecture/domain/entities/auth_entity.dart';
import 'package:flutter_clean_architecture/domain/repositories/auth_repository.dart';
import 'package:flutter_clean_architecture/domain/repositories/base_repository.dart';

class AuthRepositoryImp extends BaseRepository implements AuthRepository {
  AuthRepositoryImp(super.network);

  @override
  DataResult<AuthEntity> login({
    required String username,
    required String password,
  }) {
    return network.post(
      url: '/auth/login',
      body: {'username': username, 'password': password},
      logoutOnAuthFailed: false,
      convertor: (body) => AuthModel.fromJson(body).toEntity,
    );
  }

  @override
  DataResult<dynamic> logout() {
    return network.post(url: '/auth/logout', logoutOnAuthFailed: false);
  }
}
