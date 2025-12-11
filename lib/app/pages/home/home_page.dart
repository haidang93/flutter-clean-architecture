import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/pages/home/home_view.dart';
import 'package:flutter_clean_architecture/app/pages/home/home_controller.dart';
import 'package:flutter_clean_architecture/core/app_composition_root.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (context) => HomeController(
        context.read<AppCompositionRoot>().usecases.userUsecase,
      ),
      child: const HomeView(),
    );
  }
}
