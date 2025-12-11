import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/usecases/user_usecase.dart';

class HomeController extends ChangeNotifier {
  final UserUsecase userUsecase;
  HomeController(this.userUsecase);

  // Home UI Control
}
