import 'package:flutter_clean_architecture/data/network/network.dart';
import 'package:flutter_clean_architecture/data/repositories/auth/auth_repository_imp.dart';
import 'package:flutter_clean_architecture/data/repositories/user/user_repository_imp.dart';
import 'package:flutter_clean_architecture/device/repositories/file_repository_imp.dart';
import 'package:flutter_clean_architecture/domain/usecases/auth_usecase.dart';
import 'package:flutter_clean_architecture/domain/usecases/user_usecase.dart';
import 'package:flutter_clean_architecture/l10n/l10n.dart';

class AppCompositionRoot {
  AppCompositionRoot(L10nEnum locale, String endpoint)
    : network = Network(endpoint, locale);
  final Network network;

  late final repositories = AppRepositories(network);
  late final usecases = AppUsecases(repositories);
}

/// Declare repositories
class AppRepositories {
  final Network network;
  AppRepositories(this.network);

  // Data repo
  late final authRepository = AuthRepositoryImp(network);
  late final userRepository = UserRepositoryImp(network);

  // Device repo
  late final fileRepository = FileRepositoryImp();
}

/// Declare usecases
class AppUsecases {
  final AppRepositories appRepositories;

  AppUsecases(this.appRepositories);

  late final userUsecase = UserUsecase(
    appRepositories.userRepository,
    appRepositories.fileRepository,
  );
  late final authUsecase = AuthUsecase(appRepositories.authRepository);
}
