import 'package:flutter_clean_architecture/domain/entities/user_entity.dart';

class AuthEntity {
  String? accessToken;
  UserEntity? user;

  AuthEntity({this.accessToken, this.user});
}
