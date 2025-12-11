import 'package:flutter_clean_architecture/domain/repositories/auth_repository.dart';

class AuthUsecase {
  final AuthRepository authRepository;
  AuthUsecase(this.authRepository);

  Future handleLogin({
    required String username,
    required String password,
  }) async {
    // validate input

    final auth = await authRepository.login(
      username: username,
      password: password,
    );

    if (auth.success) {
      // handle login logic
    } else {
      // handle error
    }
  }
}
