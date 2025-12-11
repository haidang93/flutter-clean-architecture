import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_clean_architecture/domain/repositories/device/file_repository.dart';
import 'package:permission_handler/permission_handler.dart';

class FileRepositoryImp implements FileRepository {
  @override
  Future<File?> selectAnImage() async {
    await checkPermission();

    final file = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (file != null) {
      return File(file.paths.first ?? '');
    } else {
      return null;
    }
  }

  @override
  Future<Directory?> selectADir() async {
    await checkPermission();

    final dir = await FilePicker.platform.getDirectoryPath();

    if (dir != null) {
      return Directory(dir);
    } else {
      return null;
    }
  }

  Future checkPermission() async {
    final status = await Permission.storage.request().isGranted;

    if (!status) {
      throw PermissionException();
    }
  }
}
