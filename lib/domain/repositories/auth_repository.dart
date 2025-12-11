import 'package:flutter_clean_architecture/data/network/network.dart';
import 'package:flutter_clean_architecture/domain/entities/auth_entity.dart';

abstract class AuthRepository {
  DataResult<AuthEntity> login({
    required String username,
    required String password,
  });

  DataResult logout();
}
