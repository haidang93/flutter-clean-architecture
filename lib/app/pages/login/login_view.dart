import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/pages/login/login_controller.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController get controller => context.read<LoginController>();

  Future handleLoginTap() async {
    try {
      await controller.loginHandle(context);
    } catch (e) {
      // handle error message display
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            TextField(
              controller: controller.email,
              decoration: InputDecoration(label: Text("Email")),
            ),
            TextField(
              controller: controller.password,
              obscureText: true,
              decoration: InputDecoration(label: Text("Email")),
            ),
            ElevatedButton(onPressed: handleLoginTap, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
