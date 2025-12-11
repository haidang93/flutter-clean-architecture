import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/routes/routes.dart';
import 'package:flutter_clean_architecture/domain/usecases/auth_usecase.dart';

class LoginController extends ChangeNotifier {
  final AuthUsecase authUsecase;
  LoginController(this.authUsecase);
  final email = TextEditingController();
  final password = TextEditingController();

  Future loginHandle(BuildContext context) async {
    await authUsecase.handleLogin(
      username: email.text,
      password: password.text,
    );

    if (context.mounted) {
      Navigator.of(context).pushReplacementNamed(Routes.home);
    }
  }
}
