import 'dart:async';
import 'dart:io';

// Custom Exceptions
class PermissionException implements Exception {}

abstract class FileRepository {
  Future<File?> selectAnImage();
  Future<Directory?> selectADir();
}
