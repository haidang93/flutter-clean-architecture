import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/routes/routes.dart';
import 'package:flutter_clean_architecture/core/app_composition_root.dart';
import 'package:flutter_clean_architecture/core/config.dart';
import 'package:flutter_clean_architecture/l10n/generated/app_localizations.dart';
import 'package:flutter_clean_architecture/l10n/l10n_wrapper.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return L10nWrapper(
      builder: (locale) {
        return MultiProvider(
          providers: [
            Provider(create: (_) => AppCompositionRoot(locale, endpoint)),
          ],
          child: MaterialApp(
            title: 'Example',
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.login,
            routes: Routes.routes,
            locale: locale.locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            // other app configurations
          ),
        );
      },
    );
  }
}
