// ignore_for_file: unused_local_variable

import 'package:flutter_clean_architecture/domain/repositories/device/file_repository.dart';
import 'package:flutter_clean_architecture/domain/repositories/user_repository.dart';

class UserUsecase {
  final UserRepository userRepository;
  final FileRepository fileRepository;
  UserUsecase(this.userRepository, this.fileRepository);

  Future someUserHandle() async {
    final foundUser = await userRepository.fetchUserProfile();

    // implement user handle
  }

  Future updateUserProfileImage() async {
    try {
      final file = await fileRepository.selectAnImage();

      // process image if needed

      final updatedUser = await userRepository.updateUserProfile();

      if (updatedUser.success) {
        // process user data
      } else {
        // handle error
      }
    } catch (e) {
      // handle error
    }
  }
}
