import 'package:flutter/material.dart';
import 'package:buzzer_beater/l10n/l10n.dart';
import 'package:buzzer_beater/view/body/application_frame.dart';

class ApplicationRoot extends StatelessWidget {
  const ApplicationRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // このタイトルどこで使ってる？
      title: 'Flutter Demo',

      // Localization
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,

      // Theme
      theme: ThemeData(
        // Applicationの基本色
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),

      // Contents
      debugShowCheckedModeBanner: false,
      home: ApplicationFrame(),
    );
  }
}
