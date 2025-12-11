import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/pages/login/login_controller.dart';
import 'package:flutter_clean_architecture/app/pages/login/login_view.dart';
import 'package:flutter_clean_architecture/core/app_composition_root.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (context) => LoginController(
        context.read<AppCompositionRoot>().usecases.authUsecase,
      ),
      child: const LoginView(),
    );
  }
}
