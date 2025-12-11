import 'package:flutter_clean_architecture/data/repositories/user/models/user_model.dart';
import 'package:flutter_clean_architecture/domain/entities/auth_entity.dart';

class AuthModel {
  String? accessToken;
  UserModel? user;

  AuthModel({this.accessToken, this.user});

  AuthModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    user = json['user'] != null ? UserModel?.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['accessToken'] = accessToken;
    if (user != null) {
      data['user'] = user?.toJson();
    }
    return data;
  }

  AuthEntity get toEntity =>
      AuthEntity(accessToken: accessToken, user: user?.toEntity);
}
