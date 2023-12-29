import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:buzzer_beater/view/auth/signup/sign_up.dart';

class ApplicationSign extends StatelessWidget {
  const ApplicationSign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Localization
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // Theme
      theme: ThemeData(
        // Applicationの基本色
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),

      // Contents
      debugShowCheckedModeBanner: false,
      home: const SignUp(),
    );
  }
}
