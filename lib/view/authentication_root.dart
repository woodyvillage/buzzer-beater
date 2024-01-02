import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:buzzer_beater/view/authentication/authentication_frame.dart';

class AuthenticationRoot extends StatelessWidget {
  const AuthenticationRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Localization
      localizationsDelegates: [
        ...AppLocalizations.localizationsDelegates,
        FirebaseUILocalizations.delegate,
      ],
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
      home: const AuthenticationFrame(),
    );
  }
}
